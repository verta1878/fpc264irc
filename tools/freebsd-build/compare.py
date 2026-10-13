#!/usr/bin/env python3
"""fpc264irc: compare a packed kit build with a shipped unit folder - byte, 2026-10-10
usage: compare.py <built dir> <shipped dir> [ar]
Per unit: .ppu bytes, each object inside libp<unit>.a (member by member; archive dates/headers ignored), .rst bytes.
Prints one line per unit: SAME / DIFF <what> / ONLY-BUILT / ONLY-SHIPPED, then a summary."""
import os, sys, subprocess, tempfile, glob
B, S = sys.argv[1], sys.argv[2]; AR = sys.argv[3] if len(sys.argv) > 3 else 'ar'
def members(a):
    if not os.path.exists(a): return None
    d = tempfile.mkdtemp(); subprocess.run([AR, 'x', os.path.abspath(a)], cwd=d, check=True)
    r = {f: open(os.path.join(d, f), 'rb').read() for f in sorted(os.listdir(d))}
    subprocess.run(['rm', '-rf', d]); return r
def rd(p): return open(p, 'rb').read() if os.path.exists(p) else None
def lc(d): return {os.path.basename(p)[:-4].lower(): os.path.basename(p)[:-4] for p in glob.glob(d + '/*.ppu')}
bu, su = lc(B), lc(S); res = {}
for n in sorted(set(bu) | set(su)):
    if n not in su: res[n] = 'ONLY-BUILT'; continue
    if n not in bu: res[n] = 'ONLY-SHIPPED'; continue
    w = []
    if rd(f'{B}/{bu[n]}.ppu') != rd(f'{S}/{su[n]}.ppu'): w.append('ppu')
    mb, ms = members(f'{B}/libp{n}.a'), members(f'{S}/libp{n}.a')
    if mb != ms:
        if mb is None or ms is None or set(mb) != set(ms): w.append('a-members')
        else: w.append('code(%d of %d objs)' % (sum(mb[k] != ms[k] for k in mb), len(mb)))
    if rd(f'{B}/{n}.rst') != rd(f'{S}/{n}.rst'): w.append('rst')
    res[n] = 'SAME' if not w else 'DIFF ' + ' '.join(w)
for n, v in res.items(): print(f'{n}: {v}')
from collections import Counter
print('summary:', dict(Counter(v.split()[0] for v in res.values())))
