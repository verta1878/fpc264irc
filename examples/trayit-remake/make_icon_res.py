#!/usr/bin/env python3
"""Regenerate trayit_r.ico and trayit_r.res (canonical Win32 .res).
Note: the empty header entry MUST be all zeros after HeaderSize, or
fpcres rejects the file (see COMPILER-FIXES.md #6). Requires Pillow."""
import struct
from PIL import Image, ImageDraw

def make(sz):
    img = Image.new('RGBA', (sz, sz), (0,0,0,0))
    d = ImageDraw.Draw(img); s = sz/32.0
    d.rounded_rectangle([1*s,1*s,31*s-1,31*s-1], radius=6*s,
        fill=(28,98,185,255), outline=(12,52,110,255), width=max(1,int(s)))
    d.rectangle([7*s,23*s,25*s,26*s], fill=(255,255,255,255))
    d.rectangle([14*s,6*s,18*s,14*s], fill=(255,255,255,255))
    d.polygon([(10*s,14*s),(22*s,14*s),(16*s,21*s)], fill=(255,255,255,255))
    return img

def bmp_entry(img):
    w, h = img.size; px = img.load()
    hdr = struct.pack('<IiiHHIIiiII', 40, w, h*2, 1, 32, 0, 0, 0, 0, 0, 0)
    xor = bytearray()
    for y in range(h-1, -1, -1):
        for x in range(w):
            r,g,b,a = px[x,y]; xor += bytes((b,g,r,a))
    rb = ((w + 31)//32)*4; andm = bytearray()
    for y in range(h-1, -1, -1):
        row = bytearray(rb)
        for x in range(w):
            if px[x,y][3] < 128: row[x//8] |= 0x80 >> (x % 8)
        andm += row
    return hdr + bytes(xor) + bytes(andm)

sizes = [16, 32, 48]
blobs = [bmp_entry(make(s)) for s in sizes]

ico = struct.pack('<HHH', 0, 1, len(sizes)); off = 6 + 16*len(sizes); ent = b''
for s, b in zip(sizes, blobs):
    ent += struct.pack('<BBBBHHII', s%256, s%256, 0, 0, 1, 32, len(b), off); off += len(b)
open('trayit_r.ico','wb').write(ico + ent + b''.join(blobs))

def res_entry(rtype, rid, data, memflags, lang):
    hb  = struct.pack('<HHHH', 0xFFFF, rtype, 0xFFFF, rid)
    hb += struct.pack('<IHHII', 0, memflags, lang, 0, 0)
    return struct.pack('<II', len(data), 8+len(hb)) + hb + data + b'\0'*((-len(data)) % 4)

res = res_entry(0, 0, b'', 0, 0)                     # canonical all-zero empty header
for i, b in enumerate(blobs, 1):
    res += res_entry(3, i, b, 0x1030, 1033)          # RT_ICON
grp = struct.pack('<HHH', 0, 1, len(sizes))
for i, (s, b) in enumerate(zip(sizes, blobs), 1):
    grp += struct.pack('<BBBBHHIH', s%256, s%256, 0, 0, 1, 32, len(b), i)
res += res_entry(14, 1, grp, 0x1030, 1033)           # RT_GROUP_ICON
open('trayit_r.res','wb').write(res)
print('wrote trayit_r.ico and trayit_r.res')
