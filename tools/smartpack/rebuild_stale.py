#!/usr/bin/env python3
"""fpc264irc: rebuild units whose implementation-section dependency checksums are stale (the compiler would try
to recompile them and fail without source), against the current units, then pack them as .ppu + .a.
Loops until ppu_consistency reports no fatal records.  byte, 2026-10-02
usage: rebuild_stale.py <repo> <target> <unit dir (copy, modified in place)> [<work dir>]"""
import os, re, subprocess, sys, glob, shutil

R, T, U = sys.argv[1], sys.argv[2], sys.argv[3]
W = sys.argv[4] if len(sys.argv) > 4 else '/tmp/rebuild-' + T
K = os.path.dirname(os.path.abspath(__file__))
PD = '/tmp/pd/ppudump'
cpu, os_ = T.split('-', 1)
PC = R + '/bin/' + ('ppc386' if cpu == 'i386' else 'ppcx64')
SRC = R + '/src'
osdirs = {'win32': ['win32', 'win', 'windows'], 'win64': ['win64', 'win', 'windows', 'win32'],
          'linux': ['linux', 'unix'], 'freebsd': ['freebsd', 'bsd', 'unix'], 'go32v2': ['go32v2', 'msdos', 'dos']}[os_]
asm = []
if T in ('i386-linux', 'i386-freebsd', 'i386-go32v2'):
    asm = ['-FD' + R + '/bin/tools/' + T, '-XP' + T + '-']
prefix = '' if os_ == 'go32v2' else 'libp'
ar = R + '/bin/tools/i386-go32v2/ar' if os_ == 'go32v2' else 'ar'
opt = ['-O1'] if os_ == 'go32v2' else ['-O2']

# index every source file once
index = {}
for dp, dn, fn in os.walk(SRC):
    if '/.git' in dp or '/attic' in dp:
        continue
    for f in fn:
        index.setdefault(f.lower(), []).append(os.path.join(dp, f))

def dump(p):
    return subprocess.run([PD, p], capture_output=True, text=True, errors='replace').stdout

def pick_source(ppu):
    out = dump(ppu)
    files = re.findall(r'^Source file \d+ : (\S+)', out, re.M)
    main, incs = files[0], files[1:]
    cands = index.get(main.lower(), [])
    def score(path):
        d = os.path.dirname(path); s = 0
        for inc in incs:
            for c in index.get(inc.lower(), []):
                cd = os.path.dirname(c)
                if cd == d or cd.startswith(os.path.dirname(d)): s += 2; break
        parts = path.lower().split('/')
        s += sum(5 for o in osdirs if o in parts)
        s -= sum(3 for o in ['win32', 'win64', 'linux', 'freebsd', 'go32v2', 'os2', 'darwin', 'amiga', 'morphos', 'wince',
                              'netware', 'macos', 'emx', 'msdos', 'beos', 'haiku', 'solaris', 'netbsd', 'openbsd', 'symbian',
                              'embedded', 'nativent', 'gba', 'nds', 'palmos', 'wii', 'aix', 'qnx', 'android']
                     if o in parts and o not in osdirs)
        return s
    if not cands:
        return None, incs
    return max(cands, key=score), incs

def incdirs(src, incs):
    d = os.path.dirname(src); dirs = [d, d + '/inc', os.path.dirname(d) + '/inc', os.path.dirname(d)]
    for o in osdirs:
        dirs += [d + '/' + o, os.path.dirname(d) + '/' + o]
    for inc in incs:
        for c in index.get(inc.lower(), []):
            parts = c.lower().split('/')
            if any(x in parts for x in ['os2', 'darwin', 'amiga', 'morphos', 'wince', 'netware', 'emx', 'beos']) and not any(o in parts for o in osdirs):
                continue
            dirs.append(os.path.dirname(c))
    rtl = SRC + '/rtl'
    if src.startswith(rtl + '/'):   # only RTL units need the RTL include tree (it holds system.pp, which must not be seen otherwise)
        dirs += [rtl + '/inc', rtl + '/objpas', rtl + '/objpas/sysutils', rtl + '/objpas/classes', rtl + '/' + ('i386' if cpu == 'i386' else 'x86_64'), rtl + '/unix']
        dirs += [rtl + '/' + o for o in osdirs]
    seen = []
    for x in dirs:
        if not src.startswith(rtl + '/') and os.path.exists(x + '/system.pp'):
            continue
        if os.path.isdir(x) and x not in seen: seen.append(x)
    return ['-Fi' + x for x in seen]

def fatal_units():
    out = subprocess.run([sys.executable, K + '/ppu_consistency.py', PD, U], capture_output=True, text=True).stdout
    return sorted({m for m in re.findall(r'^FATAL (\S+):', out, re.M)}), out.strip().splitlines()[-1]

def find_ppu(name):
    for p in glob.glob(U + '/*.ppu'):
        if os.path.basename(p)[:-4].lower() == name: return p

done = {}
class Cycle(Exception):
    def __init__(self, members): self.members = members

def build_group(head, members, depth):
    """units that use each other in their implementation: copy all their sources next to the head unit
    so one compiler run builds them together, then install every one of them."""
    wd = f'{W}/{head}-group'; shutil.rmtree(wd, ignore_errors=True); os.makedirs(wd + '/out')
    flags = []
    for n in members:
        src, incs = pick_source(find_ppu(n)); shutil.copy(src, wd); flags += incdirs(src, incs)
    hsrc, _ = pick_source(find_ppu(head))
    fl = []
    for f in flags:
        if f not in fl: fl.append(f)
    cmd = [PC, '-T' + os_, '-n', '-Ur', '-vw'] + opt + asm + ['-FU' + wd + '/out', '-Fu' + U] + fl + [os.path.basename(hsrc)]
    r = subprocess.run(cmd, cwd=wd, capture_output=True, text=True, errors='replace')
    open(wd + '/build.log', 'w').write(' '.join(cmd) + '\n' + r.stdout + r.stderr)
    if r.returncode != 0:
        m = re.search(r"Can't find unit (\w+) used by", r.stdout)
        if m and m.group(1).lower() not in members and find_ppu(m.group(1).lower()) and len(members) < 20:
            print('  ' * depth + f'  group also needs {m.group(1).lower()}')
            return build_group(head, members + [m.group(1).lower()], depth)
        err = [l for l in r.stdout.splitlines() if 'Fatal' in l or 'Error' in l][:2]
        print('  ' * depth + f'  FAIL group {members}: {err}'); return False
    for n in members:
        if not install(n, wd + '/out', depth): return False
    return True

def install(name, outdir, depth):
    ppu = find_ppu(name)
    built = [b for b in os.listdir(outdir) if b.endswith('.ppu') and b[:-4].lower() == name]
    if not built:
        print('  ' * depth + f'  FAIL {name}: not built'); return False
    nb = built[0]; o = os.path.join(outdir, nb[:-4] + '.o')
    shutil.copy(os.path.join(outdir, nb), ppu)
    chk = subprocess.run([sys.executable, K + '/ppu_smart.py', ppu, prefix, '--check'], capture_output=True, text=True).stdout.strip()
    mm = re.search(r"'([^']+\.a)'\]$", chk)
    if not mm:
        print('  ' * depth + f'  FAIL {name}: ppu_smart {chk}'); return False
    lib = os.path.join(U, mm.group(1))
    if os.path.exists(lib): os.remove(lib)
    subprocess.run([ar, 'rcs', lib, o], check=True)
    ok = subprocess.run([sys.executable, K + '/ppu_smart.py', ppu, prefix], capture_output=True, text=True).stdout.strip()
    print('  ' * depth + f'  OK {name} [{ok}]'); done[name] = done.get(name, 0) + 1
    return True

def build(name, depth=0, stack=()):
    """build one unit; on "Can't find unit X used by ..." rebuild X first (bottom-up), then retry"""
    if name in stack:
        raise Cycle(stack[stack.index(name):] + (name,))
    if depth > 25:
        return False
    for attempt in range(8):
        ppu = find_ppu(name)
        if not ppu:
            print('  ' * depth + f'  NOPPU {name}'); return False
        src, incs = pick_source(ppu)
        if not src:
            print('  ' * depth + f'  NOSRC {name}'); return False
        wd = f'{W}/{name}'; shutil.rmtree(wd, ignore_errors=True); os.makedirs(wd + '/out')
        shutil.copy(src, wd)
        cmd = [PC, '-T' + os_, '-n', '-Ur', '-vw'] + opt + asm + ['-FU' + wd + '/out', '-Fu' + U] + incdirs(src, incs) + [os.path.basename(src)]
        r = subprocess.run(cmd, cwd=wd, capture_output=True, text=True, errors='replace')
        open(wd + '/build.log', 'w').write(' '.join(cmd) + '\n' + r.stdout + r.stderr)
        built = [f for f in os.listdir(wd + '/out') if f.endswith('.ppu')]
        if r.returncode == 0 and built:
            break
        m = re.search(r"Can't find unit (\w+) used by", r.stdout)
        if m and m.group(1).lower() != name:
            dep = m.group(1).lower()
            print('  ' * depth + f'  {name}: needs {dep} rebuilt first')
            try:
                okdep = build(dep, depth + 1, stack + (name,))
            except Cycle as c:
                members = sorted(set(c.members))
                if c.members[0] != name:
                    raise
                print('  ' * depth + f'  cycle {members}: building together')
                if build_group(name, members, depth): return True
                return False
            if not okdep:
                print('  ' * depth + f'  FAIL {name}: dependency {dep} could not be rebuilt'); return False
            continue
        err = [l for l in r.stdout.splitlines() if 'Fatal' in l or 'Error' in l][:2]
        print('  ' * depth + f'  FAIL {name} ({src.replace(SRC + "/", "")}): {err}'); return False
    else:
        return False
    return install(name, wd + '/out', depth)

for rnd in range(1, 8):
    fat, summary = fatal_units()
    print(f'round {rnd}: {summary}')
    if not fat: break
    progress = False
    for name in fat:
        if done.get(name, 0) >= 3: continue
        progress |= build(name)
    if not progress: break
print('final:', fatal_units()[1])
