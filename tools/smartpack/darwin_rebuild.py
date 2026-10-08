#!/usr/bin/env python3
"""fpc264irc: rebuild the object code of every i386-darwin unit with the fixed compiler (Mach-O writer, -Amacho),
keeping the shipped .ppu interface.  A rebuilt unit is accepted only if its .ppu Checksum, Interface Checksum and
Indirect Checksum all equal the shipped .ppu (so every unit that uses it stays consistent); otherwise other option
sets are tried, and if none matches the unit is reported and left alone.  byte, 2026-10-07
usage: darwin_rebuild.py <repo> <ppc386> <unit dir (read)> <out dir> [unit ...]"""
import os, re, subprocess, sys, shutil, glob
from concurrent.futures import ThreadPoolExecutor

R, PC, U, OUT = sys.argv[1:5]
only = set(x.lower() for x in sys.argv[5:])
PD = '/tmp/pd/ppudump'
SRC = R + '/src'
OSDIRS = ['darwin', 'bsd', 'unix', 'cocoa', 'carbon', 'objc']
OTHER = ['win32', 'win64', 'win', 'windows', 'linux', 'freebsd', 'go32v2', 'os2', 'amiga', 'morphos', 'wince', 'netware',
         'emx', 'msdos', 'beos', 'haiku', 'solaris', 'netbsd', 'openbsd', 'symbian', 'embedded', 'nativent', 'gba', 'nds',
         'palmos', 'wii', 'aix', 'qnx', 'android', 'netwlibc', 'watcom', 'go32', 'dos', 'haiku', 'atari', 'macos',
         'gtk1', 'gtk2', 'gtk', 'qt', 'qt4', 'win', 'wince', 'linux-arm', 'msxml', 'iphonesim']
CPUS_BAD = ['powerpc', 'powerpc64', 'arm', 'sparc', 'm68k', 'x86_64', 'mips', 'mipsel', 'avr', 'jvm', 'i8086', 'ppc', 'aarch64']
CPUS_GOOD = ['i386', 'x86']
OPTSETS = [['-O2'], ['-O1'], ['-O-'], ['-O3'], ['-O2', '-Ur'], ['-O1', '-Ur']]

index = {}
for dp, dn, fn in os.walk(SRC):
    if '/.git' in dp or '/attic' in dp:
        continue
    for f in fn:
        index.setdefault(f.lower(), []).append(os.path.join(dp, f))

def dump(p):
    return subprocess.run([PD, '-Vhi', p], capture_output=True, text=True, errors='replace').stdout

def crcs(text):
    g = lambda k: (re.search(r'^' + k + r'\s*:\s*(\S+)', text, re.M) or [None, None])[1]
    return g('Checksum'), g('Interface Checksum'), g('Indirect Checksum')

def score(path, incs, srcdir=None):
    d = os.path.dirname(path); s = 0
    if srcdir and d == srcdir: s += 20
    for inc in incs:
        for c in index.get(inc.lower(), []):
            if os.path.dirname(c) == d: s += 2; break
    parts = path.lower().split('/')
    s += sum(5 for o in OSDIRS if o in parts)
    s -= sum(10 for o in OTHER if o in parts)
    s += sum(4 for o in CPUS_GOOD if o in parts)
    s -= sum(10 for o in CPUS_BAD if o in parts)
    return s

RTL = SRC + '/rtl'
RTLDIRS = [RTL + '/darwin', RTL + '/inc', RTL + '/i386', RTL + '/unix', RTL + '/bsd', RTL + '/bsd/i386', RTL + '/darwin/i386',
           RTL + '/objpas', RTL + '/objpas/sysutils', RTL + '/objpas/classes', RTL + '/objpas/fgl']

def rtl_rank(path):
    d = os.path.dirname(path)
    return RTLDIRS.index(d) if d in RTLDIRS else 99

def incdirs(src, incs):
    d = os.path.dirname(src)
    if src.startswith(RTL + '/'):
        dirs = [d] + RTLDIRS            # the order rtl/darwin/Makefile.fpc uses (make runs in rtl/darwin)
    else:
        dirs = [d, d + '/inc', os.path.dirname(d) + '/inc', os.path.dirname(d)]
        for o in OSDIRS:
            dirs += [d + '/' + o, os.path.dirname(d) + '/' + o]
        for inc in incs:
            cands = index.get(inc.lower(), [])
            best = sorted(cands, key=lambda c: -score(c, [], d))
            for c in best[:1]:
                if score(c, [], d) > -5:
                    dirs.append(os.path.dirname(c))
    seen = []
    for x in dirs:
        if not src.startswith(RTL + '/') and os.path.exists(x + '/system.pp'):
            continue
        if os.path.isdir(x) and x not in seen: seen.append(x)
    return ['-Fi' + x for x in seen]

def pkg_options(src):
    m = re.match(re.escape(SRC) + r'/packages/([^/]+)/', src)
    if not m:
        return []
    mf = SRC + '/packages/' + m.group(1) + '/Makefile.fpc'
    if not os.path.exists(mf):
        return []
    opts = []
    for l in open(mf, errors='replace'):
        l = l.strip()
        mm = re.match(r'^(options|options_i386_darwin|options_darwin)\s*=\s*(.*)$', l) or re.match(r'^override FPCOPT\+=(.*)$', l)
        if mm:
            opts += mm.groups()[-1].split()
    return [o for o in opts if o.startswith('-') and '$' not in o]

def one(ppu):
    name = os.path.basename(ppu)[:-4]
    t = dump(ppu); want = crcs(t)
    files = re.findall(r'^Source file \d+ : (\S+)', t, re.M)
    if not files:
        return name, 'NOSRCINFO', None
    main, incs = files[0], files[1:]
    cands = index.get(main.lower(), [])
    rtlc = sorted([c for c in cands if rtl_rank(c) < 99], key=rtl_rank)
    cands = rtlc + sorted([c for c in cands if c not in rtlc], key=lambda c: -score(c, incs))
    if not cands:
        return name, 'NOSRC ' + main, None
    last = ''
    for src in cands[:3]:
        for opt in OPTSETS:
            wd = f'{OUT}/w/{name}'; shutil.rmtree(wd, ignore_errors=True); os.makedirs(wd + '/o')
            shutil.copy(src, wd)
            extra = ['-dFPC_USE_LIBC', '-dNOMOUSE'] if src.startswith(RTL + '/') else pkg_options(src)
            cmd = [PC, '-Tdarwin', '-Amacho', '-n', '-vw'] + extra + opt + ['-FU' + wd + '/o', '-Fu' + U] + incdirs(src, incs) + [os.path.basename(src)]
            try:
                r = subprocess.run(cmd, cwd=wd, capture_output=True, text=True, errors='replace', timeout=120)
            except subprocess.TimeoutExpired:
                last += ' | TIMEOUT %s' % src.replace(SRC + '/', ''); break
            built = [f for f in os.listdir(wd + '/o') if f.lower() == name.lower() + '.ppu']
            if r.returncode != 0 or not built:
                err = [l for l in r.stdout.splitlines() if 'Fatal' in l or 'Error' in l][:1]
                last += ' | FAIL %s %s' % (src.replace(SRC + '/', ''), err); break   # options won't fix a compile error
            got = crcs(dump(wd + '/o/' + built[0]))
            if got == want:
                o = [f for f in os.listdir(wd + '/o') if f.lower() == name.lower() + '.o']
                if not o:
                    return name, 'NOOBJ', None
                return name, 'OK %s %s' % (' '.join(opt), src.replace(SRC + '/', '')), wd + '/o/' + o[0]
            if opt == OPTSETS[-1] or got[1] != want[1]:
                last += ' | CRC %s %s want %s got %s' % (src.replace(SRC + '/', ''), ' '.join(opt), want, got)
                if got[1] != want[1]: break
    return name, last, None

ppus = sorted(glob.glob(U + '/*.ppu'))
if only:
    ppus = [p for p in ppus if os.path.basename(p)[:-4].lower() in only]
os.makedirs(OUT + '/obj', exist_ok=True)
if os.path.exists(OUT + '/rebuild.log'):            # resume: skip units already decided
    done = set(l.split(':')[0].lower() for l in open(OUT + '/rebuild.log'))
    ppus = [p for p in ppus if os.path.basename(p)[:-4].lower() not in done]
log = open(OUT + '/rebuild.log', 'a')
ok = 0
with ThreadPoolExecutor(2) as ex:
    for name, status, obj in ex.map(one, ppus):
        if obj:
            shutil.copy(obj, OUT + '/obj/' + os.path.basename(obj)); ok += 1
            shutil.rmtree(f'{OUT}/w/{name}', ignore_errors=True)
        log.write(f'{name}: {status}\n'); log.flush()
print('rebuilt', ok, 'of', len(ppus))
