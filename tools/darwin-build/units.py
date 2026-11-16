#!/usr/bin/env python3
"""fpc264irc i386-darwin: which source builds each unit - byte, 2026-10-16 (from tools/darwin64-build/units.py)
usage: units.py <repo> <ppudump> > units.txt
For every unit in bin/units/i386-darwin (+ fv/) take the source file names and the units it uses from its .ppu, and
find the source in src/. Output, one unit per line:  <out subdir>|<unit>|<main source>|<uses, comma separated>
The rebuilt i386 set holds the same units, from the same sources, as the shipped one."""
import os, re, sys, subprocess, glob
R, PD = os.path.abspath(sys.argv[1]), sys.argv[2]
S = R + '/src'; U = R + '/bin/units/i386-darwin'
OS_GOOD = ['darwin', 'bsd', 'unix', 'cocoa', 'carbon', 'objc', 'univint', 'cocoaint']
OS_BAD = ['win32', 'win64', 'win', 'windows', 'linux', 'freebsd', 'go32v2', 'os2', 'amiga', 'morphos', 'wince', 'netware',
          'emx', 'msdos', 'beos', 'haiku', 'solaris', 'netbsd', 'openbsd', 'symbian', 'embedded', 'nativent', 'gba', 'nds',
          'palmos', 'wii', 'aix', 'qnx', 'android', 'netwlibc', 'watcom', 'go32', 'dos', 'atari', 'macos', 'gtk1', 'gtk2',
          'gtk', 'qt', 'qt4', 'iphonesim', 'tests', 'test', 'examples', 'example', 'demo', 'demos', 'attic', 'lazarus', 'utils']
CPU_BAD = ['powerpc', 'powerpc64', 'arm', 'sparc', 'm68k', 'x86_64', 'mips', 'mipsel', 'avr', 'jvm', 'i8086', 'ppc', 'aarch64']
# names that exist more than once where the scores tie or pick wrong (checked against the i386 .ppu include lists)
OVERRIDE = {('fv', 'dialogs'): 'src/packages/fv/src/dialogs.pas',
            ('', 'dynlibs'): 'tools/darwin-build/patched/dynlibs.pas',
            ('', 'graph'): 'src/packages/graph/src/macosx/graph.pp'}
index = {}
for dp, dn, fn in os.walk(S):
    if '/attic' in dp or '/.git' in dp: continue
    for f in fn:
        index.setdefault(f.lower(), []).append(os.path.join(dp, f))
def score(p, incs):
    parts = p.lower().split('/'); d = os.path.dirname(p); s = 0
    s += sum(5 for o in OS_GOOD if o in parts) - sum(10 for o in OS_BAD if o in parts) - sum(10 for c in CPU_BAD if c in parts)
    s += sum(4 for c in ('i386', 'x86') if c in parts)
    for inc in incs:
        for c in index.get(inc.lower(), []):
            if os.path.dirname(c) == d or os.path.dirname(os.path.dirname(c)) == d: s += 2; break
    return s
def src_uses(path):   # for the one unit with no i386 .ppu: the names in its uses clauses
    t = re.sub(r'\{[^}]*\}|\(\*.*?\*\)|//[^\n]*', ' ', open(path, encoding='latin1').read(), flags=re.S)
    return sorted({u.strip().lower() for m in re.findall(r'\buses\b([^;]+);', t, re.I) for u in m.split(',') if u.strip()})
# Free Vision's menus and dialogs share their names with univint's Menus and Dialogs. The i386 set keeps FV dialogs in
# fv/ and FV menus in the main folder (so univint units that use Menus cannot be rebuilt there); the x86_64 set puts
# both FV units in fv/ and both univint units in the main folder, so every univint unit builds. The rebuilt i386 set
# takes that layout too (2026-10-16): the shipped i386 univint units recorded FV menus' checksum for Menus.
# univint's Video has the name of the RTL video unit, so it cannot sit in the main folder; univint Video and the 7
# univint units that use it (directly or through each other) go to univint/ (2026-10-16). Nothing else uses them.
UV = {'displays', 'drawsprocket', 'macos', 'qtsmovie', 'qtstreamingcomponents', 'quicktimecomponents',
      'quicktimestreaming'}
NEW = os.path.isdir(U + '/univint')   # the folder is already in this layout (rebuilt 2026-10-16): read it as it is
if not NEW:
    uv = S + '/packages/univint/src/Video.pas'
    print(f"univint|video|{uv.replace(R + '/', '')}|{','.join(src_uses(uv))}")
    um = S + '/packages/univint/src/Menus.pas'
    print(f"|menus|{um.replace(R + '/', '')}|{','.join(src_uses(um))}")
OVERRIDE[('fv', 'menus')] = 'src/packages/fv/src/menus.pas'
# Free Vision's resource shares its name with fcl-res's Resource: FV's goes to fv/ too, fcl-res's to the main folder
# (2026-10-16), with the units the shipped folder lacked although .rst files of theirs were there (fpobserver, jconsts,
# resfactory, stringtableresource, resource): fcl-res's 10 units (Resource uses the others) + fpobserver + jconsts, as
# in the other targets' folders
OVERRIDE[('fv', 'resource')] = 'src/packages/fv/src/resource.pas'
ADDED = [('', n, 'src/packages/fcl-res/src/%s.pp' % n) for n in
         ('resource', 'resdatastream', 'resfactory', 'resourcetree', 'resmerger', 'groupresource', 'groupiconresource',
          'groupcursorresource', 'stringtableresource', 'icocurtypes')] + \
        [('', 'fpobserver', 'src/packages/fcl-base/src/fpobserver.pp'), ('', 'jconsts', 'src/packages/pasjpeg/src/jconsts.pas')]
if not NEW:
    for sub, name, src in ADDED:
        print(f"{sub}|{name}|{src}|{','.join(src_uses(R + '/' + src))}")
OVERRIDE[('univint', 'video')] = 'src/packages/univint/src/Video.pas'
OVERRIDE[('', 'menus')] = 'src/packages/univint/src/Menus.pas'
if NEW: OVERRIDE[('', 'resource')] = 'src/packages/fcl-res/src/resource.pp'
for folder in (('', 'fv', 'univint') if NEW else ('', 'fv')):
    for ppu in sorted(glob.glob(os.path.join(U, folder, '*.ppu'))):
        name = os.path.basename(ppu)[:-4].lower()
        sub = folder if NEW else 'fv' if (folder, name) in (('', 'menus'), ('', 'resource')) else 'univint' if name in UV else folder
        t = subprocess.run([PD, '-Vhim', ppu], capture_output=True, text=True, errors='replace').stdout
        files = re.findall(r'^Source file \d+ : (\S+)', t, re.M)
        uses = [u.lower() for u in re.findall(r'^Uses unit: (\S+)', t, re.M)]
        if (sub, name) in OVERRIDE:
            src = R + '/' + OVERRIDE[(sub, name)]
        else:
            if not files:
                print('NOSRCINFO', name, file=sys.stderr)
            c = index.get(files[0].lower(), []) if files else []
            c = sorted(c, key=lambda p: -score(p, files[1:]))
            src = c[0] if c else '?'
            if len(c) > 1 and score(c[0], files[1:]) == score(c[1], files[1:]):
                print('TIE', name, [x.replace(S + '/', '') for x in c[:3]], file=sys.stderr)
        print(f"{sub}|{name}|{src.replace(R + '/', '')}|{','.join(u for u in uses if u != name)}")
