#!/usr/bin/env python3
"""fpc264irc: repair i386 Mach-O objects written by the FPC 2.6.4 internal Mach-O writer (-Amacho) before the
ogmacho/macho fix, producing exactly what the fixed writer produces:
  1. symbol table entries 16 -> 12 bytes (the old 64-bit-host build wrote nlist with a pointer-sized first field);
     the string table moves up accordingly and the file is re-padded to 4 bytes;
  2. LC_SEGMENT filesize = size of the sections' file data (was the absolute end offset),
     vmsize = end of the highest section address range (was the sum of the section sizes).
Code, data, relocations and symbols are unchanged.  byte, 2026-10-07
usage: macho_fix.py in.o out.o        (exit 0 = written, 2 = not an i386 Mach-O object)"""
import struct, sys

LC_SEGMENT, LC_SYMTAB, LC_DYSYMTAB = 1, 2, 0xb

def fix(d):
    if len(d) < 28 or struct.unpack_from('<I', d)[0] != 0xfeedface:
        return None
    d = bytearray(d)
    ncmds = struct.unpack_from('<I', d, 16)[0]
    off = 28; seg = sym = dys = None
    for _ in range(ncmds):
        c, s = struct.unpack_from('<II', d, off)
        if c == LC_SEGMENT: seg = off
        elif c == LC_SYMTAB: sym = off
        elif c == LC_DYSYMTAB: dys = off
        off += s
    # 2. segment sizes
    if seg is not None:
        vmaddr, vmsize, fileoff, filesize = struct.unpack_from('<4I', d, seg + 24)
        nsects = struct.unpack_from('<I', d, seg + 48)[0]
        fo = 0; fs = 0; vs = vmsize if nsects == 0 else 0
        for k in range(nsects):
            so = seg + 56 + 68 * k
            addr, size, offset = struct.unpack_from('<3I', d, so + 32)
            flags = struct.unpack_from('<I', d, so + 64)[0]
            zerofill = (flags & 0xff) in (1, 0xc)          # S_ZEROFILL, S_GB_ZEROFILL
            if not zerofill and offset and size:
                if fo == 0: fo = offset
                fs = max(fs, offset + size - fo)
            vs = max(vs, addr + size - vmaddr)
        struct.pack_into('<4I', d, seg + 24, vmaddr, vs, fo if nsects else fileoff, fs)
    # 1. symbol table entry size
    if sym is not None:
        symoff, nsyms, stroff, strsize = struct.unpack_from('<4I', d, sym + 8)
        if nsyms and stroff - symoff == 16 * nsyms:
            new = bytearray()
            for i in range(nsyms):
                e = d[symoff + 16 * i: symoff + 16 * i + 16]
                new += e[0:4] + e[8:16]
            strtab = bytes(d[stroff:stroff + strsize])
            if dys is not None:
                vals = list(struct.unpack_from('<18I', d, dys + 8))
                # offsets that point behind the symbol table would move; FPC objects have none
                for i in (6, 8, 10, 12, 14, 16):
                    if vals[i] and vals[i] > symoff:
                        raise SystemExit('unexpected DYSYMTAB offset behind the symbol table')
            out = d[:symoff] + new
            nstroff = len(out)
            out += strtab
            while len(out) % 4: out += b'\0'
            struct.pack_into('<4I', out, sym + 8, symoff, nsyms, nstroff, strsize)
            d = out
    return bytes(d)

if __name__ == '__main__':
    r = fix(open(sys.argv[1], 'rb').read())
    if r is None:
        sys.exit(2)
    open(sys.argv[2], 'wb').write(r)
