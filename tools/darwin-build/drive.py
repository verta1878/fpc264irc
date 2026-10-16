#!/usr/bin/env python3
"""fpc264irc i386-darwin unit build driver - byte, 2026-10-16 (from tools/darwin64-build/drive.py)
usage: drive.py <repo> <units.txt> <rtl unit dir> <out dir> [source root]
Builds every unit of units.txt (made by units.py) with bin/ppc386 -Tdarwin, dependencies first (the "uses" lists from
the shipped .ppu), into <out dir> (fv/ units into <out dir>/fv, univint/ units into <out dir>/univint). The RTL units already built by the RTL Makefile
(<rtl unit dir>) are copied, not rebuilt. Units that fail are retried after the others, until nothing more builds.
Log per unit in <out dir>/../log/<unit>.log; summary in <out dir>/../build.txt."""
import os, re, sys, subprocess, shutil, glob
R, LIST, RU, OUT = [os.path.abspath(x) for x in sys.argv[1:5]]
S = os.path.abspath(sys.argv[5]) if len(sys.argv) > 5 else R + '/src'   # build.sh passes a date-fixed copy of src/
RTL = S + '/rtl'; PC = R + '/bin/ppc386'; T = R + '/bin/tools/i386-darwin'
LOG = os.path.dirname(OUT) + '/log'; os.makedirs(LOG, exist_ok=True); os.makedirs(OUT + '/fv', exist_ok=True); os.makedirs(OUT + '/univint', exist_ok=True)
units = []
for l in open(LIST):
    sub, n, src, uses = l.rstrip('\n').split('|')
    units.append((sub, n, S + src[3:] if src.startswith('src/') else R + '/' + src, [u for u in uses.split(',') if u]))
RTLDIRS = [RTL + x for x in ('/inc', '/i386', '/x86', '/unix', '/bsd', '/bsd/i386', '/darwin/i386', '/darwin', '/objpas',
           '/objpas/sysutils', '/objpas/classes', '/objpas/fgl')]
index = {}
for dp, dn, fn in os.walk(S):
    if '/attic' in dp: continue
    for f in fn: index.setdefault(f.lower(), []).append(dp)
def incdirs(src):
    d = os.path.dirname(src)
    if src.startswith(RTL + '/') or '/darwin-build/patched' in src:
        return [d] + RTLDIRS
    p = os.path.dirname(d); dirs = [d, d + '/inc', p + '/inc', p]
    for o in ('darwin', 'macosx', 'bsd', 'unix', 'i386', 'x86'):
        dirs += [d + '/' + o, p + '/' + o, p + '/src/' + o]
    return [x for x in dirs if os.path.isdir(x)]
def pkgopts(src):
    m = re.match(re.escape(S) + r'/packages/([^/]+)/', src)
    if not m: return []
    mf = S + '/packages/' + m.group(1) + '/Makefile.fpc'; o = []
    if os.path.exists(mf):
        for l in open(mf, errors='replace'):
            mm = re.match(r'^\s*(options|options_darwin|options_i386_darwin)\s*=\s*(.*)$', l) or \
                 re.match(r'^\s*override FPCOPT\+=(.*)$', l)
            if mm: o += mm.groups()[-1].split()
    fm = S + '/packages/' + m.group(1) + '/fpmake.pp'
    if os.path.exists(fm):
        o += re.findall(r"P\.Options\.Add\('(-[^']+)'\)", open(fm, errors='replace').read())
    return [x for x in o if x.startswith('-') and '$' not in x]
DEFOPT = []                          # per unit: opts-i386.txt (pickopts.py) - the shipped units' options
OPTS = {}
_of = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'opts-i386.txt')
if os.path.exists(_of):
    for l in open(_of):
        if l.strip() and not l.startswith('#'): u, o = l.rstrip('\n').split('|'); OPTS[u] = o.split()
EXTRA = {'graph': ['-Sg']}           # docs/ROADMAP-UNITS.md, item 1
have = {}   # (sub, name) -> True
for p in glob.glob(RU + '/*.ppu'):
    n = os.path.basename(p)[:-4]
    if n.lower() in OPTS: continue      # an RTL unit the shipped set built with other options: drive.py builds it
    for ext in ('.ppu', '.o', '.rst'):
        if os.path.exists(RU + '/' + n + ext): shutil.copy(RU + '/' + n + ext, OUT + '/' + n + ext)
    have[('', n.lower())] = True
names = {n for s, n, _, _ in units if s == ''}
FVNAMES = {n for s, n, _, _ in units if s == 'fv'}
UVNAMES = {n for s, n, _, _ in units if s == 'univint'}   # univint Video (name of the RTL video unit) + the units that use it
def dep(src, x):     # where a used unit lives: FV's own dialogs/menus are in fv/
    if '/packages/fv/' in src and x in FVNAMES: return ('fv', x)
    if '/packages/univint/' in src and x in UVNAMES: return ('univint', x)
    return ('', x)
# units that use each other (a cycle through an implementation "uses"): built in one compiler run, from the first one
GROUP = {('fv', 'dialogs'): [('', 'validate'), ('', 'msgbox'), ('', 'app')], ('', 'glut'): [('', 'freeglut')],
         # fcl-res: Resource uses these in its implementation and they use Resource
         ('', 'resource'): [('', x) for x in ('resdatastream', 'resfactory', 'resourcetree', 'resmerger', 'groupresource',
                                              'groupiconresource', 'groupcursorresource', 'stringtableresource')]}
MEMBER = {m: h for h, ms in GROUP.items() for m in ms}
SRC = {(s, n): (src, uses) for s, n, src, uses in units}
def ready(u):
    sub, n, src, uses = u
    if (sub, n) in MEMBER: return MEMBER[(sub, n)] in have
    grp = [(sub, n)] + GROUP.get((sub, n), [])
    uses = [x for k in grp for x in SRC[k][1] if dep(src, x) not in grp]
    return all(dep(src, x) in have or (x not in names and x not in FVNAMES and x not in UVNAMES) or dep(src, x) == (sub, n) for x in uses)
SKIP = {}         # i386: every unit of the shipped set is built (tools/darwin64-build skips 7 for 64-bit)
todo = [u for u in units if (u[0], u[1]) not in have and u[1] not in SKIP]
res = {(s, n): 'SKIP ' + SKIP[n] for s, n, _, _ in units if n in SKIP}
def build(u):
    sub, n, src, uses = u
    o = OUT + ('/' + sub if sub else '')
    fu = (['-Fu' + OUT + '/fv'] if '/packages/fv/' in src else []) + \
         (['-Fu' + OUT + '/univint'] if '/packages/univint/' in src else []) + ['-Fu' + OUT]
    # RTL: the Makefile defines; package units: their options from opts-i386.txt (all of them), else the package's own
    key = sub + '/' + n if sub else n
    extra = ['-dNOMOUSE', '-dFPC_USE_LIBC', '-di386'] if src.startswith(RTL + '/') else [] if key in OPTS else pkgopts(src)
    extra += EXTRA.get(n, [])
    cmd = [PC, '-Tdarwin', '-Pi386', '-FD' + T, '-n'] + OPTS.get(key, DEFOPT) + ['-vw'] + extra + ['-FU' + o] + fu + \
          ['-Fi' + x for x in incdirs(src)] + ['menus.pas' if (sub, n) == ('', 'menus') else os.path.basename(src)]
    # compile a copy in an empty folder: the compiler then cannot find (and silently build into the wrong place) the
    # source of another unit; a unit whose dependencies are not built yet fails and is tried again later
    wd = os.path.dirname(OUT) + '/w/' + (sub + '_' if sub else '') + n
    shutil.rmtree(wd, ignore_errors=True); os.makedirs(wd)
    # univint's Menus.pas is compiled as menus.pas: its files keep the names the folder had (menus.ppu, libpmenus.a -
    # Free Vision's before); a name that only changes case stays lower-case in a git checkout on Windows, and the .ppu
    # names its archive exactly
    if (sub, n) == ('', 'menus'):
        shutil.copy2(src, wd + '/menus.pas')
    else:
        shutil.copy2(src, wd)
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
                    shutil.move(o + '/' + f, OUT + ('/' + s if s else '') + '/' + f)
        left = os.listdir(o)
        if left: out += '\nUNEXPECTED OUTPUT: ' + ' '.join(left); ok = False
    o = OUT + ('/' + sub if sub else '')
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
