#!/usr/bin/env python3
"""fpc264irc toolkit: compare a kit-built unit folder with the shipped one.  byte, 2026-10-24
(the general form of the compare script used for the rebuilds 1-5, see docs/UNIT-REBUILD.md)

usage: MATCH.PY <ppudump> <built dir> <shipped dir> [--map unit=subdir ...] [--crconly] [--quiet]

  <built dir> / <shipped dir>: a unit folder (bin/units/<target> layout); its sub-folders with .ppu files
  (fv/, univint/, lcl/ ...) are read too. A unit is matched by name, in the same sub-folder first, then
  anywhere in the built tree. --map menus=fv: the shipped unit 'menus' of the main folder is the one built in fv/
  (a unit that moved folder; darwin 2026-10-16).

For every shipped unit it prints one class:
  checksums : same | crc | crc intf | crc intf ind ... (Checksum / Interface Checksum / Indirect Checksum)
  code      : code-same    - disassembly identical (alignment padding left out)
              data-offsets - same instructions, only addresses / offsets differ
              concat       - differs and the shipped archive calls the old fpc_*_concat_multi (allowed)
              code-DIFF    - anything else: report before shipping
              no code      - no archive (libp<unit>.a or <unit>.a) next to one of the two .ppu
Exit code / RESULT: PASS (0) = nothing MISSING and no code-DIFF; FAIL (1) = look at the lists before shipping.
Interface changes do not fail the run but are listed: check them against toolkit/RULES.TXT (sysutils / dos
change on every target).
Needs llvm-objdump and llvm-ar.
"""
import sys, os, glob, subprocess, re, tempfile, collections, shutil

def usage():
    print(__doc__); sys.exit(2)

args = [a for a in sys.argv[1:]]
if len(args) < 3: usage()
PD, B, SH = args[0], args[1].rstrip('/'), args[2].rstrip('/')
MAP = {}; CRCONLY = QUIET = False
i = 3
while i < len(args):
    a = args[i]
    if a == '--map': u, d = args[i + 1].split('='); MAP[u.lower()] = d; i += 2; continue
    if a == '--crconly': CRCONLY = True
    elif a == '--quiet': QUIET = True
    else: usage()
    i += 1

def tree(root):
    """{(subdir, unit): path} for root and every sub-folder holding .ppu files"""
    r = {}
    for p in glob.glob(root + '/**/*.ppu', recursive=True):
        sub = os.path.relpath(os.path.dirname(p), root)
        r[('' if sub == '.' else sub, os.path.basename(p)[:-4].lower())] = p
    return r

def head(p):
    t = subprocess.run([PD, '-Vh', p], capture_output=True, text=True, errors='replace').stdout
    out = []
    for k in ('Checksum', 'Interface Checksum', 'Indirect Checksum'):
        m = re.search(r'^%s\s*: (\S+)' % k, t, re.M); out.append(m.group(1) if m else '?')
    return out

def arc(p):
    d, u = os.path.dirname(p), os.path.basename(p)[:-4]
    for n in ('libp' + u + '.a', u + '.a', 'libp' + u.lower() + '.a', u.lower() + '.a'):
        if os.path.exists(os.path.join(d, n)): return os.path.join(d, n)
    return None

PAD = re.compile(r'\s*(nop[wl]?\b|xchg\s+%ax,\s*%ax$|leal?\s+(0x0)?\((%[er][sd]i)(,%[er]iz)?(,1)?\),\s*%[er][sd]i$|'
                 r'lea\s+0x0\(%[er]si(,%[er]iz,1)?\),%[er]si$|mov[lq]?\s+%[er]si,\s*%[er]si$|mov[lq]?\s+%[er]di,\s*%[er]di$|'
                 r'data16|cs nopw)')

def dis(a):
    d = tempfile.mkdtemp()
    try:
        subprocess.run(['llvm-ar', 'x', os.path.abspath(a)], cwd=d, capture_output=True)
        fs = [os.path.join(d, f) for f in sorted(os.listdir(d))]
        if not fs: return []
        t = subprocess.run(['llvm-objdump', '-d', '--no-show-raw-insn', '--no-leading-addr'] + fs,
                           capture_output=True, text=True, errors='replace').stdout
        return [l for l in t.splitlines() if 'file format' not in l and not PAD.match(l) and l.strip()]
    finally:
        shutil.rmtree(d, ignore_errors=True)

bt, st = tree(B), tree(SH)
byname = collections.defaultdict(list)
for (sub, u), p in bt.items(): byname[u].append((sub, p))

crc = collections.Counter(); code = collections.Counter(); intf = []; cls = collections.defaultdict(list); missing = []
for (sub, u), sp in sorted(st.items()):
    name = (sub + '/' if sub else '') + u
    want = MAP.get(u, sub) if sub == '' else sub
    bp = bt.get((want, u)) or (byname[u][0][1] if byname.get(u) else None)
    if not bp:
        crc['MISSING'] += 1; missing.append(name); continue
    a, c = head(sp), head(bp)
    k = ' '.join(n for n, x, y in zip(('crc', 'intf', 'ind'), a, c) if x != y) or 'same'
    crc[k] += 1
    if 'intf' in k: intf.append(name)
    if CRCONLY: continue
    a1, a2 = arc(bp), arc(sp)
    if not a1 or not a2: code['no code'] += 1; cls['no code'].append(name); continue
    x, y = dis(a1), dis(a2)
    n1 = lambda L: [re.sub(r'\+0x[0-9a-f]+>', '>', l) for l in L]
    n2 = lambda L: [re.sub(r'0x[0-9a-f]+', 'N', re.sub(r'<[^>]*>', '', l)) for l in L]
    conc = b'concat_multi' in open(a2, 'rb').read()
    kk = 'code-same' if n1(x) == n1(y) else 'data-offsets' if n2(x) == n2(y) else 'concat' if conc else 'code-DIFF'
    code[kk] += 1; cls[kk].append(name)

new = sorted(((s + '/' if s else '') + u) for (s, u) in bt if (s, u) not in st and not any(x[1] == u for x in st))
print('shipped units:', len(st), ' built units:', len(bt))
print('checksums:', dict(crc))
if not CRCONLY: print('code:', dict(code))
print('MISSING (shipped, not built):', ' '.join(missing) or '-')
print('NEW (built, not shipped):', ' '.join(new) or '-')
print('interface changed:', ' '.join(intf) or '-')
if not QUIET:
    for k in ('data-offsets', 'concat', 'code-DIFF', 'no code'):
        if cls[k]: print(k + ':', ' '.join(cls[k]))
bad = missing or cls['code-DIFF']
print('RESULT:', 'FAIL' if bad else 'PASS', '(interface changes: %d - check against RULES.TXT)' % len(intf))
sys.exit(1 if bad else 0)
