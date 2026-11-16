#!/usr/bin/env python3
"""fpc264irc x86_64-darwin unit build driver - byte, 2026-10-09
usage: drive.py <repo> <units.txt> <rtl unit dir> <out dir> [source root]
Builds every unit of units.txt (made by units.py) with bin/ppcx64 -Tdarwin, dependencies first (the "uses" lists from
the i386 .ppu), into <out dir> (fv/ units into <out dir>/fv). The RTL units already built by the RTL Makefile
(<rtl unit dir>) are copied, not rebuilt. Units that fail are retried after the others, until nothing more builds.
Log per unit in <out dir>/../log/<unit>.log; summary in <out dir>/../build.txt."""
import os, re, sys, subprocess, shutil, glob
R, LIST, RU, OUT = [os.path.abspath(x) for x in sys.argv[1:5]]
S = os.path.abspath(sys.argv[5]) if len(sys.argv) > 5 else R + '/src'   # build.sh passes a date-fixed copy of src/
RTL = S + '/rtl'; PC = R + '/bin/ppcx64'; T = R + '/bin/tools/i386-darwin'
LOG = os.path.dirname(OUT) + '/log'; os.makedirs(LOG, exist_ok=True); os.makedirs(OUT + '/fv', exist_ok=True)
units = []
for l in open(LIST):
    sub, n, src, uses = l.rstrip('\n').split('|')
    units.append((sub, n, S + src[3:] if src.startswith('src/') else R + '/' + src, [u for u in uses.split(',') if u]))
RTLDIRS = [RTL + x for x in ('/inc', '/x86_64', '/unix', '/bsd', '/bsd/x86_64', '/darwin/x86_64', '/darwin', '/objpas',
           '/objpas/sysutils', '/objpas/classes', '/objpas/fgl')]
index = {}
for dp, dn, fn in os.walk(S):
    if '/attic' in dp: continue
    for f in fn: index.setdefault(f.lower(), []).append(dp)
def incdirs(src):
    d = os.path.dirname(src)
    if src.startswith(RTL + '/') or '/darwin64-build/patched' in src:
        return [d] + RTLDIRS
    p = os.path.dirname(d); dirs = [d, d + '/inc', p + '/inc', p]
    for o in ('darwin', 'macosx', 'bsd', 'unix', 'x86_64', 'x86'):
        dirs += [d + '/' + o, p + '/' + o, p + '/src/' + o]
    return [x for x in dirs if os.path.isdir(x)]
def pkgopts(src):
    m = re.match(re.escape(S) + r'/packages/([^/]+)/', src)
    if not m: return []
    mf = S + '/packages/' + m.group(1) + '/Makefile.fpc'; o = []
    if os.path.exists(mf):
        for l in open(mf, errors='replace'):
            mm = re.match(r'^\s*(options|options_darwin|options_x86_64_darwin)\s*=\s*(.*)$', l) or \
                 re.match(r'^\s*override FPCOPT\+=(.*)$', l)
            if mm: o += mm.groups()[-1].split()
    fm = S + '/packages/' + m.group(1) + '/fpmake.pp'
    if os.path.exists(fm):
        o += re.findall(r"P\.Options\.Add\('(-[^']+)'\)", open(fm, errors='replace').read())
    return [x for x in o if x.startswith('-') and '$' not in x]
EXTRA = {'graph': ['-Sg']}           # as for the i386 set (docs/ROADMAP-UNITS.md, item 1)
have = {}   # (sub, name) -> True
for p in glob.glob(RU + '/*.ppu'):
    n = os.path.basename(p)[:-4]
    for ext in ('.ppu', '.o', '.rst'):
        if os.path.exists(RU + '/' + n + ext): shutil.copy(RU + '/' + n + ext, OUT + '/' + n + ext)
    have[('', n.lower())] = True
names = {n for s, n, _, _ in units if s == ''}
FVNAMES = {n for s, n, _, _ in units if s == 'fv'}
def dep(src, x):     # where a used unit lives: FV's own dialogs/menus are in fv/
    return ('fv', x) if '/packages/fv/' in src and x in FVNAMES else ('', x)
# units that use each other (a cycle through an implementation "uses"): built in one compiler run, from the first one
GROUP = {('fv', 'dialogs'): [('', 'validate'), ('', 'msgbox'), ('', 'app')], ('', 'glut'): [('', 'freeglut')]}
MEMBER = {m: h for h, ms in GROUP.items() for m in ms}
SRC = {(s, n): (src, uses) for s, n, src, uses in units}
def ready(u):
    sub, n, src, uses = u
    if (sub, n) in MEMBER: return MEMBER[(sub, n)] in have
    grp = [(sub, n)] + GROUP.get((sub, n), [])
    uses = [x for k in grp for x in SRC[k][1] if dep(src, x) not in grp]
    return all(dep(src, x) in have or (x not in names and x not in FVNAMES) or dep(src, x) == (sub, n) for x in uses)
SKIP = {'mmx': 'i386 only (rtl/i386/mmx.pp)',
        'graph': 'Mac backend draws with Carbon HIView/QuickDraw calls that 64-bit macOS does not have',
        'displays': 'univint Displays uses univint Video (same name as the RTL video unit); deprecated API',
        'drawsprocket': 'PowerPC-only framework; uses Displays',
        'sdlutils': '32-bit only: keeps pointers in cardinal variables', 'sdlgraph': 'uses sdlutils',
        'macos': 'univint umbrella unit that uses Displays (MacOSAll is the one to use)'}
todo = [u for u in units if (u[0], u[1]) not in have and u[1] not in SKIP]
res = {(s, n): 'SKIP ' + SKIP[n] for s, n, _, _ in units if n in SKIP}
def build(u):
    sub, n, src, uses = u
    o = OUT + ('/fv' if sub == 'fv' else '')
    fu = (['-Fu' + OUT + '/fv'] if '/packages/fv/' in src else []) + ['-Fu' + OUT]
    extra = ['-dFPC_USE_LIBC', '-dNOMOUSE'] if src.startswith(RTL + '/') else pkgopts(src)
    extra += EXTRA.get(n, [])
    cmd = [PC, '-Tdarwin', '-Px86_64', '-FD' + T, '-n', '-O2', '-Ur', '-vw'] + extra + ['-FU' + o] + fu + \
          ['-Fi' + x for x in incdirs(src)] + [os.path.basename(src)]
    # compile a copy in an empty folder: the compiler then cannot find (and silently build into the wrong place) the
    # source of another unit; a unit whose dependencies are not built yet fails and is tried again later
    wd = os.path.dirname(OUT) + '/w/' + (sub + '_' if sub else '') + n
    shutil.rmtree(wd, ignore_errors=True); os.makedirs(wd); shutil.copy2(src, wd)
    if (sub, n) in MEMBER:
        ok = MEMBER[(sub, n)] in have; res[(sub, n)] = 'OK (built with %s)' % MEMBER[(sub, n)][1] if ok else 'FAIL group'
        if ok: have[(sub, n)] = True
        return ok
    # output to a temporary folder too (the compiler searches its -FU folder before every -Fu folder, so FV units must
    # not be written straight into the main folder, where univint's Dialogs/Menus would hide FV's), then moved
    grp = GROUP.get((sub, n), [])
    for m in grp: shutil.copy2(SRC[m][0], wd)
    o = wd + '/o'; os.makedirs(o)
    cmd = [x for x in cmd if not x.startswith('-FU')]; cmd.insert(-1, '-FU' + o)
    if grp: cmd.insert(-1, '-Fu' + o)
    try:
        r = subprocess.run(cmd, cwd=wd, capture_output=True, text=True, errors='replace', timeout=900)
        out, ok = r.stdout + r.stderr, r.returncode == 0
    except subprocess.TimeoutExpired:
        out, ok = 'TIMEOUT', False
    if ok:
        for s, m in [(sub, n)] + grp:
            for f in os.listdir(o):
                if os.path.splitext(f)[0].lower() == m:
                    shutil.move(o + '/' + f, OUT + ('/fv' if s == 'fv' else '') + '/' + f)
        left = os.listdir(o)
        if left: out += '\nUNEXPECTED OUTPUT: ' + ' '.join(left); ok = False
    o = OUT + ('/fv' if sub == 'fv' else '')
    open(f'{LOG}/{sub + "_" if sub else ""}{n}.log', 'w').write(' '.join(cmd) + '\n' + out)
    shutil.rmtree(wd, ignore_errors=True)
    if ok and any(f.lower() == n + '.ppu' for f in os.listdir(o)):
        have[(sub, n)] = True; res[(sub, n)] = 'OK'; return True
    res[(sub, n)] = 'FAIL ' + ' / '.join([l for l in out.splitlines() if 'Error' in l or 'Fatal' in l][:2]); return False
rnd = 0
while True:
    nbuilt = sum(v.startswith('OK') for v in res.values())
    while True:                # each unit is tried as soon as everything it uses is built
        rnd += 1
        batch = [u for u in todo if ready(u)]
        if not batch: break
        for u in batch: build(u)
        todo = [u for u in todo if u not in batch]
        print(f'round {rnd}: tried {len(batch)}, built {sum(v.startswith("OK") for v in res.values())}, left {len(todo)}', flush=True)
    # then the failed ones and the never-ready ones once more (some use units their i386 .ppu does not list)
    again = [u for u in units if res.get((u[0], u[1]), '').startswith('FAIL')] + todo
    for u in again: build(u)
    todo = [u for u in todo if not res.get((u[0], u[1]), '').startswith('OK')]
    now = sum(v.startswith('OK') for v in res.values())
    print(f'retry: built {now}', flush=True)
    if now == nbuilt: break
todo = [u for u in units if res.get((u[0], u[1]), 'OK').startswith('FAIL')]
with open(os.path.dirname(OUT) + '/build.txt', 'w') as f:
    for (s, n), v in sorted(res.items()):
        f.write(f'{s + "/" if s else ""}{n}: {v}\n')
print('failed:', len(todo))
