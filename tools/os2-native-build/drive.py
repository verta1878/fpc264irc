#!/usr/bin/env python3
# fpc264irc i386-os2 native (-Tos2) unit build driver - byte, 2026-10-01, made repo-relative 2026-10-07
# usage: drive.py <repo> <out dir>
# Builds every unit in unitlist.txt (except system, which build.sh bootstraps) from <repo>/src with <repo>/bin/ppc386,
# repeating passes until nothing new builds (units are tried in name order, so dependencies need several passes).
import subprocess, os, sys
R = os.path.abspath(sys.argv[1]); OUT = os.path.abspath(sys.argv[2]); S = R + '/src'
K = os.path.dirname(os.path.abspath(__file__))
LOG = os.path.join(os.path.dirname(OUT), 'log'); os.makedirs(LOG, exist_ok=True)
names = open(K + '/unitlist.txt').read().split()
by = {}
for root, dirs, files in os.walk(S):
    dirs.sort()
    for f in sorted(files):
        b, e = os.path.splitext(f)
        if e.lower() in ('.pp', '.pas'):
            by.setdefault(b.lower(), []).append(os.path.relpath(os.path.join(root, f), S))
# Source choices for names that exist more than once in src/ (match the shipped .ppu)
override = {'unixcp': K + '/patched/unixcp.pas', 'fpwidestring': K + '/patched/fpwidestring.pp',
 'crc': 'packages/hash/src/crc.pas', 'resource': 'packages/fcl-res/src/resource.pp', 'dialogs': 'packages/fv/src/dialogs.pas',
 'menus': 'packages/fv/src/menus.pas', 'msgbox': 'packages/fv/src/msgbox.pas', 'tabs': 'packages/fv/src/tabs.pas',
 'regexpr': 'packages/regexpr/src/regexpr.pas', 'rexxsaa': 'os2bindings/rexxsaa.pas', 'cpu': 'rtl/i386/cpu.pp',
 'graph': 'packages/graph/src/os2/graph.pp', 'dynlibs': 'rtl/inc/dynlibs.pas', 'matrix': 'rtl/inc/matrix.pp',
 'newexe': 'rtl/os2/newexe.pas'}
bad = ('/win', '/linux', '/unix', '/go32', '/amiga', '/morphos', '/darwin', '/bsd', '/msdos', '/wince', '/netware', '/beos',
       '/haiku', '/tests/', '/test/', '/examples/', '/emx/', 'lazarus/')
plan = {}
for n in names:
    if n == 'system':
        continue
    if n in override:
        p = override[n]
    else:
        c = by.get(n)
        if not c:
            print('NO SOURCE:', n); continue
        p = ([x for x in c if '/os2/' in x] or [x for x in c if not any(b in '/' + x for b in bad)] or c)[0]
    plan[n] = p if p.startswith('/') else S + '/' + p
INC = ['-Fi' + S + d for d in ('/rtl/inc', '/rtl/i386', '/rtl/objpas', '/rtl/objpas/sysutils', '/rtl/objpas/classes',
                               '/rtl/os2', '/rtl/objpas/unicode', '/packages/fv/src')]
BASE = ['-Tos2', '-Pi386', '-s', '-O2', '-Ur', '-n', '-FU' + OUT, '-FE' + OUT, '-Fu' + OUT] + INC
todo = {n: f for n, f in plan.items() if not os.path.exists(f'{OUT}/{n}.ppu')}; p = 0
while todo:
    p += 1; done = []
    for n, f in sorted(todo.items()):
        d = os.path.dirname(f)
        opts = BASE
        if n == 'graph':  # same as tools/graph-304-build: no -O2, graph's own inc dir
            opts = [o for o in BASE if o != '-O2'] + ['-Fi' + S + '/packages/graph/src/inc']
        r = subprocess.run([R + '/bin/ppc386'] + opts + ['-Fi' + d, '-Fi' + d + '/os2', '-Fi' + d + '/inc', '-Fi' + d + '/../inc',
                            os.path.basename(f)], cwd=d, capture_output=True, text=True)
        open(f'{LOG}/{n}.log', 'w').write(r.stdout + r.stderr)
        if r.returncode == 0 and os.path.exists(f'{OUT}/{n}.ppu'):
            done.append(n)
    for n in done:
        del todo[n]
    print('pass', p, 'built', len(done), 'left', len(todo), flush=True)
    if not done:
        break
print('FAILED:', sorted(todo) if todo else 'none')
sys.exit(1 if todo else 0)
