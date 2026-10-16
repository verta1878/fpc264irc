#!/usr/bin/env python3
"""fpc264irc i386-darwin: find the compiler options each shipped unit was built with - byte, 2026-10-16
(from tools/linux-build/pickopts.py)
usage: pickopts.py <repo> <ppudump> <units.txt> <date-fixed source root> [unit ...] > opts-i386.txt
For each unit outside src/rtl (or only the units named), compile it against the shipped bin/units/i386-darwin with
each candidate option set and keep the first whose .ppu has the shipped checksums (full + interface) and whose code
is the same as the shipped archive (alignment padding and the addresses it moves left out). Output: unit|options|match  (match = 'crc+code', 'crc' (checksums only),
'intf' (interface only), 'none' (the first set that compiles), 'FAIL')."""
import os, re, sys, subprocess, shutil, tempfile
from concurrent.futures import ThreadPoolExecutor
R, PD, LIST, S = sys.argv[1:5]; R = os.path.abspath(R); ONLY = set(x.lower() for x in sys.argv[5:])
PC = R + '/bin/ppc386'; T = R + '/bin/tools/i386-darwin'; U = R + '/bin/units/i386-darwin'
def crcs(p):
    t = subprocess.run([PD, '-Vh', p], capture_output=True, text=True, errors='replace').stdout
    return tuple(re.search(r'^%s\s*: (\w+)' % k, t, re.M).group(1) for k in ('Checksum', 'Interface Checksum'))
def dis(objs):
    t = subprocess.run(['llvm-objdump', '-d', '--no-show-raw-insn', '--no-leading-addr'] + objs,
                       capture_output=True, text=True).stdout
    # alignment padding is left out (the shipped objects pad with one-byte nops, today's assembler with long nops),
    # and so are the addresses that padding moves
    return [re.sub(r'0x[0-9a-f]+', 'N', re.sub(r'\+0x[0-9a-f]+>', '>', l)) for l in t.splitlines()
            if 'file format' not in l and not re.match(r'\s*nop[wl]?\b', l)]
def shipped(n):
    for d in (U, U + '/fv'):
        for f in os.listdir(d):
            if f.lower() == n + '.ppu': return d + '/' + f, d + '/libp' + f[:-4] + '.a'
    return None, None
def code_of(a):
    if not a or not os.path.exists(a): return None
    d = tempfile.mkdtemp(); subprocess.run(['llvm-ar', 'x', a], cwd=d)
    r = dis([d + '/' + f for f in sorted(os.listdir(d))]); shutil.rmtree(d); return r
def pkg(src):          # the package options, as drive.py takes them
    m = re.match(re.escape(S) + r'/packages/([^/]+)/', src); o = []
    if not m: return o
    mf = S + '/packages/' + m.group(1) + '/Makefile.fpc'
    if os.path.exists(mf):
        for l in open(mf, errors='replace'):
            mm = re.match(r'^\s*(options|options_darwin|options_i386_darwin)\s*=\s*(.*)$', l) or \
                 re.match(r'^\s*override FPCOPT\+=(.*)$', l)
            if mm: o += mm.groups()[-1].split()
    fm = S + '/packages/' + m.group(1) + '/fpmake.pp'
    if os.path.exists(fm):
        o += re.findall(r"P\.Options\.Add\('(-[^']+)'\)", open(fm, errors='replace').read())
    return [x for x in o if x.startswith('-') and '$' not in x]
OPT = [[], ['-O2', '-Ur'], ['-O2'], ['-O1'], ['-Ur']]
def cands(src):
    out = []
    for b in ([], pkg(src), ['-Sg'], ['-Mobjfpc'], ['-S2'], ['-Sd'], ['-Mdelphi'], ['-S2h'], ['-Sh'], ['-Mobjfpc', '-Sh']):
        for o in OPT:
            c = b + o
            if c not in out: out.append(c)
    return out
RTLD = [S + '/rtl' + x for x in ('/inc', '/i386', '/x86', '/unix', '/bsd', '/bsd/i386', '/darwin/i386', '/darwin')]
def incs(path):
    d = os.path.dirname(path); p = os.path.dirname(d); r = [d, d + '/inc', p + '/inc', p]
    if '/darwin-build/patched' in path: r += RTLD
    for o in ('darwin', 'macosx', 'bsd', 'unix', 'i386', 'x86'): r += [d + '/' + o, p + '/' + o, p + '/src/' + o]
    return [x for x in r if os.path.isdir(x)]
def one(l):
    sub, n, src, uses = l.rstrip('\n').split('|')
    path = S + src[3:] if src.startswith('src/') else R + '/' + src
    sp, sa = shipped(n)
    if not sp: return f'{n}||FAIL'
    want = crcs(sp); code = code_of(sa); best = None
    for c in cands(path):
        w = tempfile.mkdtemp(); os.makedirs(w + '/o'); shutil.copy2(path, w)
        fu = (['-Fu' + U + '/fv'] if '/packages/fv/' in path else []) + ['-Fu' + U]
        r = subprocess.run([PC, '-Tdarwin', '-Pi386', '-FD' + T, '-n'] + c + ['-FU' + w + '/o'] + fu +
                           ['-Fi' + x for x in incs(path)] + [os.path.basename(path)],
                           cwd=w, capture_output=True, text=True, errors='replace')
        p = [w + '/o/' + f for f in os.listdir(w + '/o') if f.lower() == n + '.ppu']
        if r.returncode == 0 and p:
            got = crcs(p[0]); o = p[0][:-4] + '.o'
            same = code is not None and os.path.exists(o) and dis([o]) == code
            if got == want and same: best = (c, 'crc+code')
            elif got == want and (best is None or best[1] in ('none', 'intf')): best = (c, 'crc')
            elif got[1] == want[1] and (best is None or best[1] == 'none'): best = (c, 'intf')
            elif best is None: best = (c, 'none')
        shutil.rmtree(w)
        if best and best[1] == 'crc+code': break
    return f"{n}|{' '.join(best[0]) if best else ''}|{best[1] if best else 'FAIL'}"
todo = [l for l in open(LIST) if not l.split('|')[2].startswith('src/rtl/') and
        (not ONLY or l.split('|')[1] in ONLY)]
with ThreadPoolExecutor(2) as ex:
    for line in ex.map(one, todo): print(line, flush=True)
