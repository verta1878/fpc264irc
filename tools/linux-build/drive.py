#!/usr/bin/env python3
"""fpc264irc Linux unit build driver (from tools/freebsd-build/drive.py) - byte, 2026-10-13
usage: drive.py <repo> <cpu> <units.txt> <rtl unit dir> <out dir> <source root> [extra compiler options...]
Builds every unit of units.txt (made by units.py) with bin/ppc386 (i386) or bin/ppcx64 (x86_64) -Tlinux,
dependencies first (the "uses" lists of the shipped .ppu), into <out dir>. Units the RTL Makefile built (<rtl unit
dir>) are copied, not rebuilt. Each unit is compiled from a copy in an empty folder into an empty output folder, so the
compiler cannot build some other unit on the fly into the wrong place. Failed units are retried until nothing more
builds. Log per unit in <out dir>/../log/<unit>.log, summary in <out dir>/../build.txt."""
import os, re, sys, subprocess, shutil, glob
R, CPU, LIST, RU, OUT, S = sys.argv[1], sys.argv[2], *[os.path.abspath(x) for x in sys.argv[3:7]]
R = os.path.abspath(R); XOPT = sys.argv[7:]; OS = 'linux'
RTL = S + '/rtl'; PC = R + ('/bin/ppc386' if CPU == 'i386' else '/bin/ppcx64'); T = R + '/bin/tools/i386-linux'
LOG = os.path.dirname(OUT) + '/log'; os.makedirs(LOG, exist_ok=True); os.makedirs(OUT, exist_ok=True)
units = []
for l in open(LIST):
    n, src, uses = l.rstrip('\n').split('|')
    units.append((n, S + src[3:] if src.startswith('src/') else R + '/' + src, [u for u in uses.split(',') if u]))
RTLDIRS = [RTL + x for x in ('/inc', '/' + CPU, '/x86', '/unix', '/linux/' + CPU, '/linux',
           '/objpas', '/objpas/sysutils', '/objpas/classes', '/objpas/fgl')]
def incdirs(src):
    d = os.path.dirname(src)
    if src.startswith(RTL + '/') or '/linux-build/patched' in src or '/darwin64-build/patched' in src:
        return [d] + RTLDIRS
    p = os.path.dirname(d); dirs = [d, d + '/inc', p + '/inc', p]
    for o in ('linux', 'unix', CPU, 'x86'):
        dirs += [d + '/' + o, p + '/' + o, p + '/src/' + o]
    return [x for x in dirs if os.path.isdir(x)]
def pkgopts_all(src):
    m = re.match(re.escape(S) + r'/packages/([^/]+)/', src)
    if not m: return []
    mf = S + '/packages/' + m.group(1) + '/Makefile.fpc'; o = []
    if os.path.exists(mf):
        for l in open(mf, errors='replace'):
            mm = re.match(r'^\s*(options|options_linux|options_%s_linux)\s*=\s*(.*)$' % CPU, l) or \
                 re.match(r'^\s*override FPCOPT\+=(.*)$', l)
            if mm: o += mm.groups()[-1].split()
    fm = S + '/packages/' + m.group(1) + '/fpmake.pp'
    if os.path.exists(fm):
        o += re.findall(r"P\.Options\.Add\('(-[^']+)'\)", open(fm, errors='replace').read())
    return [x for x in o if x.startswith('-') and '$' not in x]
OPTFILE = {}            # opts-<cpu>.txt: the options the shipped unit was built with (pickopts.py)
_of = os.path.join(os.path.dirname(os.path.abspath(__file__)), f'opts-{CPU}.txt')
if os.path.exists(_of):
    for l in open(_of):
        if l.strip() and not l.startswith('#'): u, o = l.rstrip('\n').split('|'); OPTFILE[u] = o.split()
EXTRA = {'graph': ['-Sg'], 'ggigraph': ['-Sg'], 'sdlgraph': ['-Sg']}
have = {}
for p in glob.glob(RU + '/*.ppu'):
    n = os.path.basename(p)[:-4]
    if n.lower() not in {u[0] for u in units}: continue        # only the units the shipped folder has
    for ext in ('.ppu', '.o', '.rst'):
        if os.path.exists(RU + '/' + n + ext): shutil.copy(RU + '/' + n + ext, OUT + '/' + n + ext)
    have[n.lower()] = True
for f in glob.glob(RU + '/*prt0.o'):          # startup objects: only those the shipped folder has
    if os.path.exists(f"{R}/bin/units/{CPU}-linux/{os.path.basename(f)}"): shutil.copy(f, OUT)
names = {n for n, _, _ in units}
SRC = {n: (src, uses) for n, src, uses in units}
# units that use each other (through an implementation "uses", e.g. Free Vision dialogs / validate / msgbox / app) are
# built together: strongly connected components of the uses graph, compiled in one folder
graph = {n: [u for u in uses if u in names and u != n] for n, _, uses in units}
idx = {}; low = {}; st = []; on = set(); sccs = []; c = [0]
sys.setrecursionlimit(10000)
def tarjan(v):
    idx[v] = low[v] = c[0]; c[0] += 1; st.append(v); on.add(v)
    for w in graph[v]:
        if w not in idx: tarjan(w); low[v] = min(low[v], low[w])
        elif w in on: low[v] = min(low[v], idx[w])
    if low[v] == idx[v]:
        comp = []
        while True:
            w = st.pop(); on.discard(w); comp.append(w)
            if w == v: break
        sccs.append(tuple(sorted(comp)))
for v in sorted(graph):
    if v not in idx: tarjan(v)
GROUP = {n: g for g in sccs for n in g}
def ready(g):
    return all(x in have or x not in names or x in g for n in g for x in SRC[n][1])
res = {n: 'OK (RTL Makefile)' for n in have}
def build(g):
    wd = os.path.dirname(OUT) + '/w/' + g[0]; o = wd + '/o'
    shutil.rmtree(wd, ignore_errors=True); os.makedirs(o)
    incs = []
    for n in g:
        shutil.copy2(SRC[n][0], wd)
        for x in incdirs(SRC[n][0]):
            if x not in incs: incs.append(x)
    out, ok = '', True
    for n in g:
        if any(f.lower() == n + '.ppu' for f in os.listdir(o)): continue
        src = SRC[n][0]
        extra = ['-dNOMOUSE'] + EXTRA.get(n, [])
        # package units: without the package Makefile options, as the shipped ones were built; with them only when
        # the unit does not compile otherwise (e.g. pipesipc needs -S2)
        tries = [extra] if src.startswith(RTL + '/') else [EXTRA.get(n, []), pkgopts_all(src) + EXTRA.get(n, [])]
        if n in OPTFILE: tries = [OPTFILE[n] + EXTRA.get(n, [])]
        for ex in tries:
            cmd = [PC, '-T' + OS, '-P' + CPU, '-FD' + T, '-n', '-vw'] + XOPT + ex + ['-FU' + o, '-Fu' + o, '-Fu' + OUT] + \
                  ['-Fi' + x for x in incs] + [os.path.basename(src)]
            try:
                r = subprocess.run(cmd, cwd=wd, capture_output=True, text=True, errors='replace', timeout=900)
                out += ' '.join(cmd) + '\n' + r.stdout + r.stderr; ok = r.returncode == 0
            except subprocess.TimeoutExpired:
                out += 'TIMEOUT'; ok = False
            if ok: break
        if not ok: break
    if ok:
        for f in os.listdir(o):
            if os.path.splitext(f)[0].lower() in g: shutil.move(o + '/' + f, OUT + '/' + f)
        left = os.listdir(o)
        if left: out += '\nUNEXPECTED OUTPUT: ' + ' '.join(left); ok = False
    open(f'{LOG}/{g[0]}.log', 'w').write(out)
    shutil.rmtree(wd, ignore_errors=True)
    for n in g:
        if ok: have[n] = True; res[n] = 'OK' + (' (group of %d)' % len(g) if len(g) > 1 else '')
        else: res[n] = 'FAIL ' + ' / '.join([l for l in out.splitlines() if 'Error' in l or 'Fatal' in l][:2])
    return ok
todo = list(dict.fromkeys(GROUP[n] for n, _, _ in units if n not in have))
while True:
    nbuilt = len(have)
    while True:
        batch = [g for g in todo if ready(g)]
        if not batch: break
        for g in batch: build(g)
        todo = [g for g in todo if g not in batch]
    for g in todo: build(g)
    todo = [g for g in todo if not all(n in have for n in g)]
    if len(have) == nbuilt: break
with open(os.path.dirname(OUT) + '/build.txt', 'w') as f:
    for n in sorted(names): f.write(f'{n}: {res.get(n, "NOT BUILT")}\n')
print('built', len(have), 'of', len(names), '- failed:', sum(1 for n in names if n not in have))
