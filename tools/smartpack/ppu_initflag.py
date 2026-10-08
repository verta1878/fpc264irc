#!/usr/bin/env python3
"""fpc264irc: clear a stale "init" (uf_init) flag in a .ppu whose object code has no initialization routine.
A program lists _INIT$_<UNIT> in its INITFINAL table for every unit with the flag set; if the unit's code does
not define that symbol the link fails with an undefined symbol.  The shipped i386-darwin .ppu files had the flag on
656 units whose code (and a fresh compile of the same source) has no initialization - the fixed compiler writes
the same .ppu without it.  Same for "final" (uf_finalize) / _FINALIZE$_<UNIT>.  Checksums are not touched (the flags
are not part of them).  byte, 2026-10-07
usage: ppu_initflag.py <unit dir> [--apply]        (llvm-nm on PATH; archives libp<unit>.a / <unit>.a)"""
import glob, os, re, struct, subprocess, sys

d = sys.argv[1]; apply = '--apply' in sys.argv
files = {f.lower(): f for f in os.listdir(d)}
changed = 0
for p in sorted(glob.glob(os.path.join(d, '*.ppu'))):
    u = os.path.basename(p)[:-4]
    lib = files.get(('libp' + u + '.a').lower()) or files.get((u + '.a').lower())
    if not lib:
        continue
    data = bytearray(open(p, 'rb').read())
    if data[:3] != b'PPU':
        continue
    flags = struct.unpack_from('<I', data, 12)[0]
    if not flags & 3:
        continue
    syms = subprocess.run(['llvm-nm', '-g', '--defined-only', os.path.join(d, lib)], capture_output=True, text=True).stdout
    U = u.upper()
    new = flags
    if flags & 1 and not re.search(r'\s_?INIT\$_' + re.escape(U) + r'$', syms, re.M):
        new &= ~1
    if flags & 2 and not re.search(r'\s_?FINALIZE\$_' + re.escape(U) + r'$', syms, re.M):
        new &= ~2
    if new != flags:
        changed += 1
        print('%s: flags %06x -> %06x' % (u, flags, new))
        if apply:
            struct.pack_into('<I', data, 12, new)
            open(p, 'wb').write(data)
print(('cleared' if apply else 'would clear'), changed)
