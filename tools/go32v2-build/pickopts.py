#!/usr/bin/env python3
"""fpc264irc: find the compiler options each shipped package unit was built with - byte, 2026-10-13
usage: pickopts.py <repo> <ppudump> <cpu> <os> <units.txt> <date-fixed source root> > opts-<cpu>.txt
For every unit outside src/rtl, compile it against the shipped folder with each candidate option set and keep the
first whose .ppu has the shipped unit's checksums (interface + full). Output: unit|options|match  (match = 'crc',
'crc+code' (also the same code), 'intf' (interface only), or 'none' - then the first set that compiles)."""
import os, re, sys, subprocess, shutil, tempfile
R, PD, CPU, OS, LIST, S = sys.argv[1:7]; R = os.path.abspath(R)
PC = R + ('/bin/ppc386' if CPU == 'i386' else '/bin/ppcx64'); T = R + f'/bin/tools/{CPU}-{OS}'
if not os.path.isdir(T): T = R + '/bin/tools/i386-' + OS
U = R + f'/bin/units/{CPU}-{OS}'
def crcs(p):
    t = subprocess.run([PD, '-Vh', p], capture_output=True, text=True, errors='replace').stdout
    return tuple(re.search(r'^%s\s*: (\w+)' % k, t, re.M).group(1) for k in ('Checksum', 'Interface Checksum'))
def dis(objs):
    t = subprocess.run(['objdump', '-d', '--no-show-raw-insn'] + objs, capture_output=True, text=True).stdout
    return [re.sub(r'0x[0-9a-f]+', 'N', re.sub(r'<[^>]*>', '', re.sub(r'^\s*[0-9a-f]+:', '', l)))
            for l in t.splitlines() if 'file format' not in l]
def shipped_code(n):
    a = U + '/libp' + n + '.a'
    if not os.path.exists(a): a = U + '/' + n + '.a'      # go32v2: <unit>.a
    if not os.path.exists(a): return None
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
BASE = lambda src: [[], pkg(src), ['-S2'], ['-S2h'], ['-Sh'], ['-Sd'], ['-Mobjfpc', '-Sh'], ['-Rintel']]
CANDS = lambda src: [b + o for b in BASE(src) for o in ([], ['-O2'], ['-O1'])]
for l in open(LIST):
    n, src, uses = l.rstrip('\n').split('|')
    if src.startswith('src/rtl/') or n in ('fossil', 'serial_irq'): continue
    path = os.path.dirname(S) + '/' + src
    if not os.path.exists(path): path = R + '/' + src
    want = crcs(U + '/' + n + '.ppu'); d = os.path.dirname(path); code = shipped_code(n)
    inc = [d, d + '/inc', d + '/unix', d + '/' + OS, d + '/dummy', d + '/include', os.path.dirname(d) + '/inc', os.path.dirname(d), os.path.dirname(d) + '/include']
    best = None; seen = []
    for c in CANDS(path):
        if c in seen: continue
        seen.append(c)
        w = tempfile.mkdtemp(); os.makedirs(w + '/o'); st, ext = os.path.splitext(os.path.basename(path))
        fn = os.path.basename(path) if st.lower() == n else n + ext; shutil.copy2(path, w + '/' + fn)
        r = subprocess.run([PC, '-T' + OS, '-P' + CPU, '-FD' + T, '-n'] + c + ['-FU' + w + '/o', '-Fu' + U, '-Fu' + U + '/lcl'] +
                           ['-Fi' + x for x in inc if os.path.isdir(x)] + [fn],
                           cwd=w, capture_output=True, text=True, errors='replace')
        p = w + '/o/' + n + '.ppu'
        if r.returncode == 0 and os.path.exists(p):
            got = crcs(p)
            same = code is not None and os.path.exists(w + '/o/' + n + '.o') and dis([w + '/o/' + n + '.o']) == code
            if got == want and same: best = (c, 'crc+code')
            elif got == want and (best is None or best[1] in ('none', 'intf')): best = (c, 'crc')
            elif got[1] == want[1] and (best is None or best[1] == 'none'): best = (c, 'intf')
            elif best is None: best = (c, 'none')
        shutil.rmtree(w)
        if best and best[1] == 'crc+code': break
    print(f"{n}|{' '.join(best[0]) if best else ''}|{best[1] if best else 'FAIL'}", flush=True)
