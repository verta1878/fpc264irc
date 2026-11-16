#!/usr/bin/env python3
"""fpc264irc: build a Darwin (BSD-format) .a with a "__.SYMDEF SORTED" table of contents from
i386 Mach-O objects.  byte, 2026-10-02.
GNU ar here has no Mach-O support, and llvm-ar rejects FPC 2.6.4's Mach-O objects
("filesize > vmsize" in LC_SEGMENT), so the symbol index is written directly.
usage: macho_ar.py out.a obj.o [obj.o ...]
"""
import struct, sys, os, time

def ext_symbols(data):
    magic, = struct.unpack_from('<I', data, 0)
    if magic != 0xfeedface:
        raise SystemExit('not an i386 Mach-O object: %08x' % magic)
    ncmds, = struct.unpack_from('<I', data, 16)
    off, syms = 28, []
    for _ in range(ncmds):
        cmd, size = struct.unpack_from('<II', data, off)
        if cmd == 2:  # LC_SYMTAB
            symoff, nsyms, stroff, strsize = struct.unpack_from('<IIII', data, off + 8)
            for i in range(nsyms):
                strx, ntype, nsect, ndesc, nvalue = struct.unpack_from('<IBBhI', data, symoff + 12 * i)
                if ntype & 0xe0:          # stab
                    continue
                if not ntype & 0x01:      # not external
                    continue
                t = ntype & 0x0e
                if t == 0 and nvalue == 0:  # undefined
                    continue
                end = data.find(b'\0', stroff + strx, stroff + strsize)
                if end < 0:
                    end = min(stroff + strsize, len(data))
                syms.append(data[stroff + strx:end])
        off += size
    return syms

def member(name, body, mtime):
    nb = name.encode() + b'\0' * 0
    pad = (-len(nb)) % 8 or 0
    nb += b'\0' * ((8 - (len(nb) % 8)) % 8)      # cctools pads the long name to 8 bytes
    hdr = ('#1/%-13d' % len(nb)).encode()[:16].ljust(16) + b'%-12d' % mtime + b'%-6d' % 0 + b'%-6d' % 0 + \
          b'%-8s' % b'100644' + b'%-10d' % (len(nb) + len(body)) + b'`\n'
    m = hdr + nb + body
    if len(m) % 2:
        m += b'\n'
    return m

def build(out, objs):
    mtime = int(time.time())
    bodies = [(os.path.basename(o), open(o, 'rb').read()) for o in objs]
    syms = [(s, i) for i, (_, d) in enumerate(bodies) for s in ext_symbols(d)]
    syms.sort(key=lambda x: x[0])
    strtab = b''; stroffs = []
    for s, _ in syms:
        stroffs.append(len(strtab)); strtab += s + b'\0'
    while len(strtab) % 4:
        strtab += b'\0'
    def toc(offsets):
        r = struct.pack('<I', 8 * len(syms))
        for (s, i), so in zip(syms, stroffs):
            r += struct.pack('<II', so, offsets[i])
        return r + struct.pack('<I', len(strtab)) + strtab
    # first pass to size the TOC member, second with real offsets (TOC size doesn't depend on offsets)
    tocm = member('__.SYMDEF SORTED', toc([0] * len(bodies)), mtime)
    pos, offsets, mems = 8 + len(tocm), [], []
    for name, d in bodies:
        offsets.append(pos); m = member(name, d, mtime); mems.append(m); pos += len(m)
    with open(out, 'wb') as f:
        f.write(b'!<arch>\n' + member('__.SYMDEF SORTED', toc(offsets), mtime) + b''.join(mems))
    return len(syms)

if __name__ == '__main__':
    n = build(sys.argv[1], sys.argv[2:])
    print(n)
