#!/usr/bin/env python3
"""fpc264irc: the Lazarus unit set of bin/lazarus/units/<target> - which source builds each unit, which folder each
used unit comes from (matched by the checksum recorded in the .ppu) - byte, 2026-10-13
usage: lazunits.py <repo> <ppudump> <target> > laz-<target>.txt
One line per unit:  <folder>|<unit>|<main source>|<flags>|<used folder:unit,...>
<folder> is relative to bin/lazarus/units/<target>; a used unit's folder is "rtl" for bin/units/<target>.
<flags>: "g" when the shipped unit has debug info."""
import os, re, sys, subprocess, glob
R, PD, TG = os.path.abspath(sys.argv[1]), sys.argv[2], sys.argv[3]
L = f'{R}/bin/lazarus/units/{TG}'; RT = f'{R}/bin/units/{TG}'
def dump(p, opt='-Vhim'):
    return subprocess.run([PD, opt, p], capture_output=True, text=True, errors='replace').stdout
ppus = {}     # (folder, name) -> path
for p in glob.glob(L + '/**/*.ppu', recursive=True):
    ppus[(os.path.relpath(os.path.dirname(p), L), os.path.basename(p)[:-4].lower())] = p
for p in glob.glob(RT + '/*.ppu'):
    ppus[('rtl', os.path.basename(p)[:-4].lower())] = p
crc = {}
for k, p in ppus.items():
    m = re.search(r'^Checksum\s*: (\w+)', dump(p, '-Vh'), re.M); crc[k] = m.group(1) if m else None
index = {}
for base in (R + '/src/lazarus', R + '/src/packages', R + '/src/rtl', R + '/src/fpgui-src'):
    for dp, dn, fn in os.walk(base):
        if '/attic' in dp or '/.git' in dp: continue
        for f in fn: index.setdefault(f.lower(), []).append(os.path.join(dp, f))
BAD = ['win32', 'win64', 'wince', 'gtk', 'gtk2', 'gtk3', 'qt', 'qt5', 'carbon', 'cocoa', 'fpgui', 'android', 'nogui',
       'mui', 'darwin', 'os2', 'linux', 'unix', 'x11', 'amiga', 'morphos', 'examples', 'example', 'test', 'tests',
       'demo', 'demos', 'attic', 'x86_64', 'arm', 'powerpc', 'sparc', 'macos', 'macosx', 'netbsd', 'openbsd', 'solaris',
       'haiku', 'beos', 'netware', 'emx', 'freebsd', 'bsd', 'wii', 'embedded', 'windows', 'win', 'iphonesim']
GOOD = ['customdrawn', 'go32v2', 'dos', 'i386']
def score(p, incs, folder):
    parts = p.lower().split('/'); s = sum(5 for g in GOOD if g in parts) - sum(10 for b in BAD if b in parts)
    top = folder.split('/')[0]
    if top in parts: s += 3
    d = os.path.dirname(p)
    for inc in incs:
        if any(os.path.dirname(c).startswith(d) for c in index.get(inc.lower(), [])): s += 2
    return s
for (folder, name), p in sorted(ppus.items()):
    if folder == 'rtl': continue
    t = dump(p, '-VA')
    files = re.findall(r'^Source file \d+ : (\S+)', t, re.M)
    flags = 'g' if 'has_debug_info' in t else ''
    deps = []
    for u, c in re.findall(r'^Uses unit: (\S+) \(Crc: (\w+)', t, re.M):
        u = u.lower(); hit = [k for k in ppus if k[1] == u and crc[k] == c]
        if not hit: hit = [k for k in ppus if k[1] == u]; print('CRCMISS', folder, name, u, file=sys.stderr)
        # same checksum in two folders (an FCL unit copied into a Lazarus folder): own folder, then the lower layers
        pref = [folder, 'rtl', 'lazutils', 'lcl', 'lcl/customdrawn']
        hit.sort(key=lambda k: pref.index(k[0]) if k[0] in pref else len(pref))
        deps.append(f'{hit[0][0]}:{u}' if hit else f'?:{u}')
    c = sorted(index.get(files[0].lower(), []) if files else [], key=lambda x: -score(x, files[1:], folder))
    if len(c) > 1 and score(c[0], files[1:], folder) == score(c[1], files[1:], folder):
        print('TIE', folder, name, [x.replace(R + '/', '') for x in c[:3]], file=sys.stderr)
    if not c: print('NOSRC', folder, name, files[:1], file=sys.stderr)
    src = c[0].replace(R + '/', '') if c else '?'
    print(f"{folder}|{name}|{src}|{flags}|{','.join(deps)}")
