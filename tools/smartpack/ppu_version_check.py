#!/usr/bin/env python3
"""fpc264irc: check that every .ppu is in the format of the compiler that uses it.  byte, 2026-10-08
usage: ppu_version_check.py <repo>
ppc386 / ppcx64 are FPC 2.6.4 and read PPU135; ppcross8086 is FPC 3.2.2 and reads PPU207 (bin/units/i8086-msdos*).
A unit in the wrong format cannot be used at all ("wrong PPU version"). Exit code 1 if any is found."""
import os, sys, collections
R = sys.argv[1] if len(sys.argv) > 1 else '.'
bad = []; count = collections.Counter()
for root, dirs, files in os.walk(R):
    dirs[:] = [d for d in dirs if d not in ('.git', 'attic')]
    for f in files:
        if not f.lower().endswith('.ppu'):
            continue
        p = os.path.join(root, f); rel = os.path.relpath(p, R)
        with open(p, 'rb') as h:
            hd = h.read(6)
        ver = hd[3:6].decode('latin1') if hd[:3] == b'PPU' else '???'
        want = '207' if '/i8086-' in '/' + rel.replace(os.sep, '/') else '135'
        count[ver] += 1
        if ver != want:
            bad.append((rel, ver, want))
for rel, ver, want in sorted(bad):
    print(f'WRONG {rel}: PPU{ver}, its compiler needs PPU{want}')
print('units:', ', '.join(f'PPU{v} {n}' for v, n in sorted(count.items())), '- wrong format:', len(bad))
sys.exit(1 if bad else 0)
