#!/usr/bin/env python3
"""fpc264irc Linux: which source builds each shipped unit - byte, 2026-10-13
usage: units.py <repo> <ppudump> <cpu: i386|x86_64> > units-<cpu>.txt
For every unit in bin/units/<cpu>-linux take the source file names and the units it uses from its .ppu, and find the
source in src/. One unit per line:  <unit>|<main source>|<uses, comma separated>"""
import os, re, sys, subprocess, glob
R, PD, CPU = os.path.abspath(sys.argv[1]), sys.argv[2], sys.argv[3]
S = R + '/src'; U = R + f'/bin/units/{CPU}-linux'
OTHERCPU = 'x86_64' if CPU == 'i386' else 'i386'
OS_GOOD = ['linux', 'unix', 'x11']
OS_BAD = ['win32', 'win64', 'win', 'windows', 'darwin', 'go32v2', 'os2', 'amiga', 'morphos', 'wince', 'netware',
          'emx', 'freebsd', 'bsd', 'msdos', 'beos', 'haiku', 'solaris', 'netbsd', 'openbsd', 'symbian', 'embedded', 'nativent', 'gba', 'nds',
          'palmos', 'wii', 'aix', 'qnx', 'android', 'netwlibc', 'watcom', 'go32', 'dos', 'atari', 'macos', 'macosx', 'gtk1',
          'gtk2', 'gtk', 'qt', 'qt4', 'iphonesim', 'tests', 'test', 'examples', 'example', 'demo', 'demos', 'attic',
          'lazarus', 'utils', 'cocoa', 'carbon', 'univint', 'dragonfly']
CPU_BAD = ['powerpc', 'powerpc64', 'arm', 'sparc', 'm68k', OTHERCPU, 'mips', 'mipsel', 'avr', 'jvm', 'i8086', 'ppc', 'aarch64']
OVERRIDE = {}     # unit -> repo-relative source, for names the scores pick wrong
OV = os.path.join(os.path.dirname(os.path.abspath(__file__)), f'override-{CPU}.txt')
if os.path.exists(OV):
    for l in open(OV):
        l = l.split('#')[0].strip()
        if l: n, p = l.split('|'); OVERRIDE[n] = p
index = {}
for dp, dn, fn in os.walk(S):
    if '/attic' in dp or '/.git' in dp: continue
    for f in fn: index.setdefault(f.lower(), []).append(os.path.join(dp, f))
def score(p, incs):
    parts = p.lower().split('/'); d = os.path.dirname(p); s = 0
    s += sum(5 for o in OS_GOOD if o in parts) - sum(10 for o in OS_BAD if o in parts) - sum(10 for c in CPU_BAD if c in parts)
    s += sum(4 for c in (CPU, 'x86') if c in parts)
    for inc in incs:
        for c in index.get(inc.lower(), []):
            if os.path.dirname(c) == d or os.path.dirname(os.path.dirname(c)) == d: s += 2; break
    return s
for ppu in sorted(glob.glob(U + '/*.ppu')):
    name = os.path.basename(ppu)[:-4].lower()
    t = subprocess.run([PD, '-VA', ppu], capture_output=True, text=True, errors='replace').stdout
    files = re.findall(r'^Source file \d+ : (\S+)', t, re.M)
    uses = [u.lower() for u in re.findall(r'^Uses unit: (\S+)', t, re.M)]
    if name in OVERRIDE:
        src = R + '/' + OVERRIDE[name]
    else:
        c = sorted(index.get(files[0].lower(), []) if files else [], key=lambda p: -score(p, files[1:]))
        src = c[0] if c else '?'
        if len(c) > 1 and score(c[0], files[1:]) == score(c[1], files[1:]):
            print('TIE', name, [x.replace(S + '/', '') for x in c[:3]], file=sys.stderr)
        if not c: print('NOSRC', name, files[:1], file=sys.stderr)
    print(f"{name}|{src.replace(R + '/', '')}|{','.join(u for u in uses if u != name)}")
