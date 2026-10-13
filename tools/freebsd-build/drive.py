#!/usr/bin/env python3
"""fpc264irc FreeBSD unit build driver - byte, 2026-10-10
usage: drive.py <repo> <cpu> <units.txt> <rtl unit dir> <out dir> <source root> [extra compiler options...]
Builds every unit of units.txt (made by units.py) with bin/ppc386 (i386) or bin/ppcx64 (x86_64) -Tfreebsd,
dependencies first (the "uses" lists of the shipped .ppu), into <out dir>. Units the RTL Makefile built (<rtl unit
dir>) are copied, not rebuilt. Each unit is compiled from a copy in an empty folder into an empty output folder, so the
compiler cannot build some other unit on the fly into the wrong place. Failed units are retried until nothing more
builds. Log per unit in <out dir>/../log/<unit>.log, summary in <out dir>/../build.txt."""
import os, re, sys, subprocess, shutil, glob
R, CPU, LIST, RU, OUT, S = sys.argv[1], sys.argv[2], *[os.path.abspath(x) for x in sys.argv[3:7]]
R = os.path.abspath(R); XOPT = sys.argv[7:]
RTL = S + '/rtl'; PC = R + ('/bin/ppc386' if CPU == 'i386' else '/bin/ppcx64'); T = R + '/bin/tools/i386-freebsd'
LOG = os.path.dirname(OUT) + '/log'; os.makedirs(LOG, exist_ok=True); os.makedirs(OUT, exist_ok=True)
units = []
for l in open(LIST):
    n, src, uses = l.rstrip('\n').split('|')
    units.append((n, S + src[3:] if src.startswith('src/') else R + '/' + src, [u for u in uses.split(',') if u]))
RTLDIRS = [RTL + x for x in ('/inc', '/' + CPU, '/x86', '/unix', '/bsd', '/bsd/' + CPU, '/freebsd/' + CPU, '/freebsd',
           '/objpas', '/objpas/sysutils', '/objpas/classes', '/objpas/fgl')]
def incdirs(src):
    d = os.path.dirname(src)
    if src.startswith(RTL + '/') or '/freebsd-build/patched' in src or '/darwin64-build/patched' in src:
        return [d] + RTLDIRS
    p = os.path.dirname(d); dirs = [d, d + '/inc', p + '/inc', p]
    for o in ('freebsd', 'bsd', 'unix', CPU, 'x86'):
        dirs += [d + '/' + o, p + '/' + o, p + '/src/' + o]
    return [x for x in dirs if os.path.isdir(x)]
def pkgopts(src):
    m = re.match(re.escape(S) + r'/packages/([^/]+)/', src)
    if not m: return []
    mf = S + '/packages/' + m.group(1) + '/Makefile.fpc'; o = []
    if os.path.exists(mf):
        for l in open(mf, errors='replace'):
            mm = re.match(r'^\s*(options|options_freebsd|options_%s_freebsd)\s*=\s*(.*)$' % CPU, l) or \
                 re.match(r'^\s*override FPCOPT\+=(.*)$', l)
            if mm: o += mm.groups()[-1].split()
    fm = S + '/packages/' + m.group(1) + '/fpmake.pp'
    if os.path.exists(fm):
        o += re.findall(r"P\.Options\.Add\('(-[^']+)'\)", open(fm, errors='replace').read())
    return [x for x in o if x.startswith('-') and '$' not in x]
EXTRA = {'graph': ['-Sg'], 'ggigraph': ['-Sg'], 'sdlgraph': ['-Sg']}
have = {}
for p in glob.glob(RU + '/*.ppu'):
    n = os.path.basename(p)[:-4]
    if n.lower() not in {u[0] for u in units}: continue        # only the units the shipped folder has
    for ext in ('.ppu', '.o', '.rst'):
        if os.path.exists(RU + '/' + n + ext): shutil.copy(RU + '/' + n + ext, OUT + '/' + n + ext)
    have[n.lower()] = True
for f in glob.glob(RU + '/*prt0.o'): shutil.copy(f, OUT)
names = {n for n, _, _ in units}
def ready(u):
    n, src, uses = u
    return all(x in have or x not in names or x == n for x in uses)
todo = [u for u in units if u[0] not in have]
res = {n: 'OK (RTL Makefile)' for n in have}
def build(u):
    n, src, uses = u
    extra = ['-dNOMOUSE'] if src.startswith(RTL + '/') else pkgopts(src)
    extra += EXTRA.get(n, [])
    wd = os.path.dirname(OUT) + '/w/' + n; o = wd + '/o'
    shutil.rmtree(wd, ignore_errors=True); os.makedirs(o); shutil.copy2(src, wd)
    cmd = [PC, '-Tfreebsd', '-P' + CPU, '-FD' + T, '-n', '-vw'] + XOPT + extra + ['-FU' + o, '-Fu' + OUT] + \
          ['-Fi' + x for x in incdirs(src)] + [os.path.basename(src)]
    try:
        r = subprocess.run(cmd, cwd=wd, capture_output=True, text=True, errors='replace', timeout=900)
        out, ok = r.stdout + r.stderr, r.returncode == 0
    except subprocess.TimeoutExpired:
        out, ok = 'TIMEOUT', False
    if ok:
        for f in os.listdir(o):
            if os.path.splitext(f)[0].lower() == n: shutil.move(o + '/' + f, OUT + '/' + f)
        left = os.listdir(o)
        if left: out += '\nUNEXPECTED OUTPUT: ' + ' '.join(left); ok = False
    open(f'{LOG}/{n}.log', 'w').write(' '.join(cmd) + '\n' + out)
    shutil.rmtree(wd, ignore_errors=True)
    if ok:
        have[n] = True; res[n] = 'OK'; return True
    res[n] = 'FAIL ' + ' / '.join([l for l in out.splitlines() if 'Error' in l or 'Fatal' in l][:2]); return False
while True:
    nbuilt = len(have)
    while True:
        batch = [u for u in todo if ready(u)]
        if not batch: break
        for u in batch: build(u)
        todo = [u for u in todo if u not in batch]
    for u in [u for u in units if res.get(u[0], '').startswith('FAIL')] + todo: build(u)
    todo = [u for u in todo if u[0] not in have]
    if len(have) == nbuilt: break
with open(os.path.dirname(OUT) + '/build.txt', 'w') as f:
    for n in sorted(names): f.write(f'{n}: {res.get(n, "NOT BUILT")}\n')
print('built', len(have), 'of', len(names), '- failed:', sum(1 for n in names if n not in have))
