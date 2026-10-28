#!/usr/bin/env python3
"""fpc264irc: find the compiler options each shipped package unit was built with - byte, 2026-10-13 (win32 copy 2026-10-27)
usage: pickopts.py <repo> <ppudump> <cpu> <os> <units.txt> <date-fixed source root> > opts-<cpu>.txt
For every unit outside src/rtl, compile it against the shipped folder with each candidate option set and keep the
first whose .ppu has the shipped unit's checksums (interface + full). Output: unit|options|match  (match = 'crc',
'crc+code' (also the same code), 'intf' (interface only), 'code' (checksums differ but the code is the same: the
shipped unit came from another compiler build - x86_64-linux, 2026-10-27), or 'none' - then the first set that compiles)."""
import os, re, sys, subprocess, shutil, tempfile
R, PD, CPU, OS, LIST, S = sys.argv[1:7]; R = os.path.abspath(R)
PC = R + ('/bin/ppc386' if CPU == 'i386' else '/bin/ppcx64'); T = R + f'/bin/tools/{CPU}-{OS}'
if not os.path.isdir(T): T = R + '/bin/tools/i386-' + OS
U = R + f'/bin/units/{CPU}-{OS}'
CASE = {f.lower(): f for f in os.listdir(U)}            # a few shipped files are mixed case (ServiceManager.ppu)
def up(f): return U + '/' + CASE.get(f.lower(), f)
def crcs(p):
    t = subprocess.run([PD, '-Vh', p], capture_output=True, text=True, errors='replace').stdout
    return tuple(re.search(r'^%s\s*: (\w+)' % k, t, re.M).group(1) for k in ('Checksum', 'Interface Checksum'))
def dis(objs):
    t = subprocess.run(['objdump', '-d', '--no-show-raw-insn'] + objs, capture_output=True, text=True).stdout
    return [re.sub(r'0x[0-9a-f]+', 'N', re.sub(r'<[^>]*>', '', re.sub(r'^\s*[0-9a-f]+:', '', l)))
            for l in t.splitlines() if 'file format' not in l]
BIG = 4000000      # objects bigger than this (jwawindows ...): checksums only - objdump on them takes minutes and GBs
def shipped_code(n):
    a = up('libp' + n + '.a')
    if not os.path.exists(a) or os.path.getsize(a) > BIG: return None
    d = tempfile.mkdtemp(); subprocess.run(['ar', 'x', a], cwd=d)
    r = dis([d + '/' + f for f in sorted(os.listdir(d))]); shutil.rmtree(d); return r
def pkg(src):
    m = re.match(re.escape(S) + r'/packages/([^/]+)/', src); o = []
    if not m: return o
    mf = S + '/packages/' + m.group(1) + '/Makefile.fpc'
    if os.path.exists(mf):
        for l in open(mf, errors='replace'):
            mm = re.match(r'^\s*(options|options_%s|options_%s_%s)\s*=\s*(.*)$' % (OS, CPU, OS), l)
            if mm: o += mm.group(2).split()
    return [x for x in o if x.startswith('-') and '$' not in x]
BASE = lambda src: [[], pkg(src), ['-S2'], ['-S2h'], ['-Sh'], ['-Sd'], ['-Mobjfpc', '-Sh']]
PIC = [[], ['-Cg']] if CPU == 'x86_64' else [[]]          # -Cg (PIC): x86_64 only
CANDS = lambda src: [b + o + g for g in PIC for b in BASE(src) for o in ([], ['-O2'], ['-O1'])]
def release(p):      # shipped unit built with -Ur ("release" in its unit flags): every candidate gets -Ur (win32, 2026-10-27)
    return 'release' in subprocess.run([PD, '-Vh', p], capture_output=True, text=True, errors='replace').stdout
for l in open(LIST):
    n, src, uses = l.rstrip('\n').split('|')
    if src.startswith('src/rtl/'): continue
    path = S + src[3:] if src.startswith('src/') else R + '/' + src
    want = crcs(up(n + '.ppu')); d = os.path.dirname(path); code = shipped_code(n)
    inc = [d, d + '/inc', d + '/unix', d + '/' + OS, d + '/win', d + '/windows', os.path.dirname(d) + '/inc', os.path.dirname(d)]
    best = None; seen = []
    ur = ['-Ur'] if release(up(n + '.ppu')) else []
    for c in [x + ur for x in CANDS(path)]:
        if c in seen: continue
        seen.append(c)
        w = tempfile.mkdtemp(); os.makedirs(w + '/o'); shutil.copy2(path, w)
        r = subprocess.run([PC, '-T' + OS, '-P' + CPU, '-FD' + T, '-n'] + c + ['-FU' + w + '/o', '-Fu' + U] +
                           ['-Fi' + x for x in inc if os.path.isdir(x)] + [os.path.basename(path)],
                           cwd=w, capture_output=True, text=True, errors='replace')
        oc = {f.lower(): f for f in os.listdir(w + '/o')}
        p = w + '/o/' + oc.get(n + '.ppu', n + '.ppu'); ob = w + '/o/' + oc.get(n + '.o', n + '.o')
        if r.returncode == 0 and os.path.exists(p):
            got = crcs(p)
            same = code is not None and os.path.exists(ob) and os.path.getsize(ob) < BIG and dis([ob]) == code
            if got == want and same: best = (c, 'crc+code')
            elif got == want and (best is None or best[1] in ('none', 'intf', 'code')): best = (c, 'crc')
            elif got[1] == want[1] and (best is None or best[1] in ('none', 'code')): best = (c, 'intf')
            elif same and (best is None or best[1] == 'none'): best = (c, 'code')   # other compiler: checksums differ, code the same (2026-10-27)
            elif best is None: best = (c, 'none')
        shutil.rmtree(w)
        if best and best[1] == 'crc+code': break
    print(f"{n}|{' '.join(best[0]) if best else ''}|{best[1] if best else 'FAIL'}", flush=True)
