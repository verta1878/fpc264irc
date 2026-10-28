#!/usr/bin/env python3
"""fpc264irc: set the date of every member of an ar archive to 2025-01-01 (the import libraries libimp<unit>.a the
win32 compiler writes carry the build time), so a rebuild is byte-identical. Nothing else in the file changes.
usage: ardate.py <archive.a> ...      byte, 2026-10-27"""
import sys
FIX = b'%-12d' % 1735689600          # 2025-01-01 00:00:00 UTC
for fn in sys.argv[1:]:
    d = bytearray(open(fn, 'rb').read())
    if d[:8] != b'!<arch>\n': continue
    i = 8
    while i + 60 <= len(d):
        h = d[i:i + 60]
        if h[58:60] != b'`\n': break
        d[i + 16:i + 28] = FIX
        size = int(h[48:58].decode().strip())
        i += 60 + size + (size & 1)
    open(fn, 'wb').write(d)
