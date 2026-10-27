#!/usr/bin/env python3
"""fpc264irc: build the Lazarus unit set of bin/lazarus/units/i386-linux - byte, 2026-10-13
usage: lazdrive.py <repo> <laz-i386.txt> <rtl unit dir> <out dir> <source root>
<laz-i386.txt> (lazunits.py) gives each unit's folder, source and the folder of every unit it uses (matched by
checksum). Units are built dependency first, each from a copy in an empty folder with only the folders it needs on
the unit path, with the options of its Lazarus package (OPTS below, from the package Makefiles / .compiled files).
Log per unit in <out dir>/../lazlog/, summary in <out dir>/../lazbuild.txt."""
import os, re, sys, subprocess, shutil
R, LIST, RU, OUT, S = [os.path.abspath(x) for x in sys.argv[1:6]]
CPU = 'x86_64' if 'x86_64' in os.path.basename(LIST) else 'i386'      # laz-x86_64.txt / lazmain-x86_64.txt: x86_64 (2026-10-27)
PC = R + ('/bin/ppcx64' if CPU == 'x86_64' else '/bin/ppc386'); T = R + f'/bin/tools/{CPU}-linux'
LZ = None
FIX = os.environ.get('LAZBUILDDIR', '/tmp/fpc264irc-lazbuild')
# the source tree is reached through a fixed link as well (include files are recorded with their full path)
os.makedirs(FIX, exist_ok=True)
if os.path.islink(FIX + '/src'): os.remove(FIX + '/src')
os.symlink(S, FIX + '/src'); S = FIX + '/src'; LZ = S + '/lazarus'
LOG = os.path.dirname(OUT) + '/lazlog'; os.makedirs(LOG, exist_ok=True)
CD = ['-dLCL', '-dLCLcustomdrawn']
OPTS = {   # folder -> (options, include dirs relative to src/lazarus)
  'lazutils':                (['-MObjFPC', '-Scghi', '-O1'], ['components/lazutils']),
  'lcl':                     (['-gl'], ['lcl/include', 'lcl', 'lcl/forms', 'lcl/widgetset', 'lcl/nonwin32']),
  'lcl/customdrawn':         (['-gl'], ['lcl/interfaces/customdrawn', 'lcl/include', 'lcl/interfaces']),
  'lazcontrols/customdrawn': (['-MObjFPC', '-Scghi', '-O1', '-g', '-gl'] + CD, ['components/lazcontrols']),
  'ideintf/customdrawn':     (['-MObjFPC', '-Scghi', '-O1', '-g', '-gl'] + CD, ['components/ideintf', 'components/ideintf/images']),
  'synedit/customdrawn':     (['-MObjFPC', '-Scghi', '-CR', '-O1', '-g', '-gl', '-dgc'] + CD, ['components/synedit']),
}
if CPU == 'x86_64':   # x86_64-linux (2026-10-27): the shipped units of these folders are PIC (-Cg), lazutils is not
  for f in ('lcl', 'lcl/customdrawn', 'lazcontrols/customdrawn', 'ideintf/customdrawn', 'synedit/customdrawn'):
    OPTS[f] = (OPTS[f][0] + ['-Cg'], OPTS[f][1])
  OPTS['codetools'] = (['-MObjFPC', '-Scghi', '-O1', '-g', '-gl', '-Cg'], ['components/codetools'])
  # the flat LCL copy in bin/units/x86_64-linux/lcl: lazutils + LCL + the nogui widgetset in one folder, no debug info
  # FCL units a Lazarus folder holds a copy of (lazutils: avl_tree contnrs fpimage gettext pipes process uriparser):
  # built with the options of the main-folder copy (opts-x86_64.txt), so both copies have the same checksums
  MAINOPT = {}
  for l in open(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'opts-x86_64.txt')):
    if l.strip() and not l.startswith('#'): u, o = l.rstrip('\n').split('|'); MAINOPT[u] = o.split()
  OPTS['mainlcl'] = ([], ['lcl/include', 'lcl', 'lcl/forms', 'lcl/widgetset', 'lcl/nonwin32', 'lcl/interfaces/nogui',
                          'lcl/interfaces', 'components/lazutils'])
if os.environ.get('LAZOPTS'):          # experiments: folder=opt opt;folder=...
    for part in os.environ['LAZOPTS'].split(';'):
        f, o = part.split('='); OPTS[f] = (o.split(), OPTS[f][1])
units = {}
EXTRA = LIST.replace('laz-', 'laz-extra-')
for fn in (LIST, EXTRA):
    if not os.path.exists(fn): continue
    for l in open(fn):
        if l.startswith('#') or not l.strip(): continue
        folder, n, src, flags, deps = l.rstrip('\n').split('|')
        units[(folder, n)] = (S + src[3:], [tuple(d.split(':')) for d in deps.split(',') if d])
byname = {}
for k in units: byname.setdefault(k[1], []).append(k)
for k, (src, deps) in units.items():       # a used unit no shipped folder has: the extra built for it
    for i, d in enumerate(deps):
        if d[0] == '?' and d[1] in byname: deps[i] = byname[d[1]][0]
def closure(k, seen=None):
    seen = set() if seen is None else seen
    for d in units.get(k, (None, []))[1]:
        if d[0] not in ('rtl', '?') and d not in seen: seen.add(d); closure(d, seen)
    return seen
# units that use each other (through an implementation "uses") are built together: strongly connected components
graph = {k: [d for d in v[1] if d in units] for k, v in units.items()}
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
        sccs.append(sorted(comp))
for v in sorted(units):
    if v not in idx: tarjan(v)
GROUP = {k: tuple(g) for g in sccs for k in g}
have = set(); res = {}
def ready(g):
    return all(d[0] in ('rtl', '?') or d in have or d in g for k in g for d in units[k][1])
def incdirs(folder, src):
    sd = os.path.dirname(src); d = [sd, sd + '/include']
    if '/lazarus/' not in src: d += [sd + '/unix', sd + '/linux']
    return [x for x in d + [LZ + '/' + i for i in OPTS[folder][1]] if os.path.isdir(x)]
def build(g):
    folders = {f for f, n in g}
    cl = set()
    for k in g: cl |= closure(k)
    fl = []
    for f, u in sorted(cl):
        if f not in fl and (f, u) not in g: fl.append(f)
    name = g[0][0].replace('/', '_') + '_' + g[0][1] + ('_grp%d' % len(g) if len(g) > 1 else '')
    # debug info records the folder a unit is compiled in: always the same path (a fixed folder named after the
    # source folder), so a rebuild is byte-identical wherever the kit runs
    wd = FIX + '/build/' + os.path.relpath(os.path.dirname(units[g[0]][0]), S); o = wd + '/o'
    shutil.rmtree(wd, ignore_errors=True); os.makedirs(o)
    for k in g:
        shutil.copy2(units[k][0], wd)
        sd = os.path.dirname(units[k][0])     # resources ({$R forms/x.lfm}, images) are found relative to the source
        for e in os.listdir(sd):
            ep = os.path.join(sd, e)
            if os.path.exists(os.path.join(wd, e)): continue
            if os.path.isdir(ep) or e.lower().endswith(('.lfm', '.lrs', '.res', '.rc', '.xpm', '.png', '.ico', '.bmp', '.cur')):
                os.symlink(ep, os.path.join(wd, e))
    incs = []
    for k in g:
        for x in incdirs(k[0], units[k][0]):
            if x not in incs: incs.append(x)
    out, ok = '', True
    for k in g:      # first one builds the cycle; the rest are already in o/ unless nothing used them
        if any(os.path.splitext(f)[0].lower() == k[1] and f.endswith('.ppu') for f in os.listdir(o)): continue
        uo = OPTS[k[0]][0]
        if CPU == 'x86_64' and '/lazarus/' not in units[k][0]: uo = MAINOPT.get(k[1], [])
        # lazutils units other folders hold a copy of (lcl: lazutf8, lazfileutils, laz2_* ...): lazutils options, so
        # both copies have the same checksums and the folder order of a program does not matter
        if CPU == 'x86_64' and '/components/lazutils/' in units[k][0] and k[0] not in ('lazutils', 'mainlcl'):
            uo = OPTS['lazutils'][0]
        cmd = [PC, '-Tlinux', '-P' + CPU, '-FD' + T, '-n', '-vw'] + uo + ['-FU' + o, '-Fu' + o] + \
              ['-Fu' + OUT + '/' + f for f in fl] + ['-Fu' + RU] + ['-Fi' + x for x in incs] + [os.path.basename(units[k][0])]
        r = subprocess.run(cmd, cwd=wd, capture_output=True, text=True, errors='replace', timeout=1800)
        out += ' '.join(cmd) + '\n' + r.stdout + r.stderr
        if r.returncode != 0: ok = False; break
    if ok:
        names = {n: f for f, n in g}
        for f in os.listdir(o):
            b = os.path.splitext(f)[0].lower()
            if b in names:
                os.makedirs(OUT + '/' + names[b], exist_ok=True); shutil.move(o + '/' + f, OUT + '/' + names[b] + '/' + f)
        for f in os.listdir(o):            # forms the compiler copies next to the unit ({$R x.lfm})
            if f.lower().endswith('.lfm'): shutil.move(o + '/' + f, OUT + '/' + g[0][0] + '/' + f)
        left = os.listdir(o)
        if left: out += '\nUNEXPECTED OUTPUT: ' + ' '.join(left); ok = False
    open(f"{LOG}/{name}.log", 'w').write(out)
    shutil.rmtree(wd, ignore_errors=True)
    for k in g:
        if ok: have.add(k); res[k] = 'OK' + (' (group of %d)' % len(g) if len(g) > 1 else '')
        else: res[k] = 'FAIL ' + ' / '.join([l for l in out.splitlines() if 'Error' in l or 'Fatal' in l][:2])
    return ok
todo = list(dict.fromkeys(GROUP[k] for k in units))
while True:
    n0 = len(have)
    while True:
        batch = [g for g in todo if ready(g)]
        if not batch: break
        for g in batch: build(g)
        todo = [g for g in todo if g not in batch]
    for g in todo: build(g)
    todo = [g for g in todo if not all(k in have for k in g)]
    if len(have) == n0: break
with open(os.path.dirname(OUT) + '/lazbuild.txt', 'w') as f:
    for k in sorted(units): f.write(f'{k[0]}/{k[1]}: {res.get(k, "NOT BUILT")}\n')
print('built', len(have), 'of', len(units))
