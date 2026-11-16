#!/usr/bin/env python3
"""fpc264irc: turn a "static only" FPC 2.6.4 unit (.ppu + .o) into a smart-linked one (.ppu + .a)
without recompiling.  byte, 2026-10-02.

The .ppu lists the unit's own object file in its "link unit object files" entry (ibnr 5,
mask link_static).  We move that item to the "link unit static libs" entry (ibnr 6) as
<prefix><unit>.a with mask link_smart, and flip the header flags static_linked -> smart_linked.
The linker then (link.pas) switches to smart linking for that unit by itself, with or without -XX.
The .ppu checksums (crc / interface / indirect) are left untouched: they are only computed when a
unit is written, the link entries don't affect them, so units that depend on this one stay valid.

usage: ppu_smart.py <file.ppu> <libprefix> [--check]   -> prints old.o new.a  (or SKIP reason)
"""
import struct, sys

UF_SMART, UF_STATIC = 0x40, 0x80
LINK_STATIC, LINK_SMART = 0x2, 0x4
HDR = 40

def entries(buf):
    pos = HDR
    while pos + 6 <= len(buf):
        size, eid, nr = struct.unpack_from('<iBB', buf, pos)
        yield pos, size, eid, nr
        if nr == 255:          # ibend
            return
        pos += 6 + size

def items(buf, pos, size):
    out, p, end = [], pos + 6, pos + 6 + size
    while p < end:
        n = buf[p]; s = buf[p+1:p+1+n].decode('latin-1'); m, = struct.unpack_from('<i', buf, p+1+n)
        out.append((s, m)); p += 1 + n + 4
    return out

def pack_items(lst):
    b = b''
    for s, m in lst:
        e = s.encode('latin-1'); b += bytes([len(e)]) + e + struct.pack('<i', m)
    return b

def convert(path, prefix, check=False):
    buf = bytearray(open(path, 'rb').read())
    if buf[:3] != b'PPU':
        return 'SKIP not a ppu'
    flags, = struct.unpack_from('<i', buf, 12)
    e5 = e6 = None
    for pos, size, eid, nr in entries(buf):
        if eid == 1 and nr == 5 and e5 is None: e5 = (pos, size)
        elif eid == 1 and nr == 6 and e5 is not None and e6 is None: e6 = (pos, size); break
    if e5 is None or e6 is None:
        return 'SKIP no link entries'
    objs, libs = items(buf, *e5), items(buf, *e6)
    if flags & UF_SMART and not flags & UF_STATIC:
        return 'SKIP already smart only'
    if flags & UF_SMART:          # both: already has its .a, just drop the static object
        newlibs, msg = libs, 'SMART-ONLY'
    else:
        if len(objs) != 1 or not objs[0][0].lower().endswith('.o') or objs[0][1] != LINK_STATIC:
            return 'SKIP unexpected objs %r' % objs
        unit = objs[0][0][:-2]
        newlibs, msg = libs + [(prefix + unit + '.a', LINK_SMART)], None
    if check:
        return 'OK %s -> %s' % ([o for o, _ in objs], [l for l, _ in newlibs])
    b5, b6 = pack_items([]), pack_items(newlibs)
    p5, s5 = e5; p6, s6 = e6
    new = (buf[:p5] + struct.pack('<iBB', len(b5), 1, 5) + b5 +
           buf[p5+6+s5:p6] + struct.pack('<iBB', len(b6), 1, 6) + b6 + buf[p6+6+s6:])
    flags = (flags & ~UF_STATIC) | UF_SMART
    struct.pack_into('<i', new, 12, flags)
    struct.pack_into('<i', new, 16, len(new) - HDR)
    open(path, 'wb').write(new)
    return '%s %s' % (objs[0][0], newlibs[-1][0]) if msg is None else '%s %s' % (objs[0][0], newlibs[-1][0])

if __name__ == '__main__':
    print(convert(sys.argv[1], sys.argv[2], '--check' in sys.argv))
