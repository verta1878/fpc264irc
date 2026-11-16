#!/usr/bin/env python3
"""fpc264irc: trim the stub symbol lists to what Apple's libraries really export, per architecture - byte, 2026-10-10
usage: apple-trim.py <otool> <Apple MacOSX10.x.sdk> [<another sdk> ...]
Reads the candidate names (stubs/*.syms, stubs/frameworks/*.syms: every name FPC's Mac headers declare) and writes
stubs/i386/<lib>.syms and stubs/x86_64/<lib>.syms, which gen-stubs.sh uses for that part of each stub:
  - a name is kept only if one of the given Apple SDKs exports it for that architecture (union over the SDKs);
  - it goes to the stub of every library that owns it on the Mac - the one a program linked against Apple's SDK records
    (a library's own names plus those of the non-public libraries it re-exports, e.g. /usr/lib/system/* -> libSystem,
    CarbonCore -> CoreServices; a few, like the i386 NSMutableArray class, are in two), so programs bind exactly as with
    Apple's SDK;
  - Objective-C classes: i386 .objc_class_name_X, x86_64 _OBJC_CLASS_$_X / _OBJC_METACLASS_$_X, as Apple exports them;
  - Apple's $ld$add$os<ver>$<name> / $ld$hide$os<ver>$<name> entries for kept names are kept as well (ld64 uses them
    to bind a name to a different library depending on the program's minimum macOS version).
Only names are taken from the SDK - no code; the SDK itself stays outside the repository (Apple's licence).
Names FPC declares that no given SDK has, or that live in a library we do not stub, are listed in stubs/<arch>/DROPPED.txt."""
import os, re, sys, subprocess, functools, collections
OT, SDKS = sys.argv[1], sys.argv[2:]
K = os.path.dirname(os.path.abspath(__file__)); X = K + '/stubs'
LIBS = [('libSystem.B', '/usr/lib/libSystem.B.dylib', ['libSystem.B.syms', 'libSystem.extra.syms']),
        ('libiconv.2', '/usr/lib/libiconv.2.dylib', ['libiconv.2.syms']),
        ('libncurses.5.4', '/usr/lib/libncurses.5.4.dylib', ['libncurses.5.4.syms']),
        ('libobjc.A', '/usr/lib/libobjc.A.dylib', ['libobjc.A.syms'])]
for l in open(X + '/frameworks.txt'):
    n, inst, _ = l.strip().split('|'); LIBS.append((n, inst, ['frameworks/%s.syms' % n]))
OURS = {inst: n for n, inst, _ in LIBS}
PUBLIC = re.compile(r'^(/usr/lib/[^/]+|/System/Library/Frameworks/[^/]+\.framework/Versions/[^/]+/[^/]+)$')

def run(*a):
    return subprocess.run(a, capture_output=True, text=True).stdout

@functools.lru_cache(None)
def image(sdk, inst, arch):          # (own exported names, re-exported install names) of one Apple library
    p = sdk + inst
    if not os.path.exists(p):
        return frozenset(), ()
    names = frozenset(s for s in run('llvm-nm', '--arch=' + arch, '-g', '--defined-only', '--just-symbol-name', p).split()
                      if not s.endswith(':'))
    t = run(OT, '-arch', arch, '-l', p)
    re_ = tuple(re.search(r'name (\S+)', b).group(1) for b in t.split('Load command')[1:] if 'cmd LC_REEXPORT_DYLIB' in b)
    return names, re_

def owned(sdk, inst, arch, seen=()):  # names a program records against <inst>: its own + non-public re-exports
    names, re_ = image(sdk, inst, arch)
    out = set(names)
    for r in re_:
        if not PUBLIC.match(r) and r not in seen:
            out |= owned(sdk, r, arch, seen + (inst,))
    return out

cand = set()
for n, inst, files in LIBS:
    for f in files:
        cand |= {s.strip() for s in open(X + '/' + f) if s.strip()}
for arch in ('i386', 'x86_64'):
    want = set(cand)
    if arch == 'x86_64':
        cls = {s[17:] for s in cand if s.startswith('.objc_class_name_')}
        want = {s for s in want if not s.startswith('.objc_class_name_')} | \
               {f'_OBJC_CLASS_$_{c}' for c in cls} | {f'_OBJC_METACLASS_$_{c}' for c in cls}
    owner = {}
    for sdk in SDKS:                  # the first SDK that has a name decides its owner(s)
        found = collections.defaultdict(set)
        for n, inst, _ in LIBS:
            o = owned(sdk, inst, arch)
            for s in o & want:
                found[s].add(n)
            # $ld$add$os10.4$X / $ld$hide$os10.4$X ...: Apple's per-OS-version moves (e.g. the i386 NSMutableArray class
            # is in Foundation for a 10.4 program, in CoreFoundation for 10.5+); ld64 reads them, so they are kept too
            for s in o:
                m = re.match(r'^\$ld\$\w+\$os[\d.]+\$(.+)$', s)
                if m and m.group(1) in want:
                    found[s].add(n)
        for s, ns in found.items():
            owner.setdefault(s, ns)
    D = f'{X}/{arch}'; os.makedirs(D, exist_ok=True)
    per = collections.defaultdict(list)
    for s, ns in owner.items():
        for n in ns:
            per[n].append(s)
    for n, inst, _ in LIBS:
        open(f'{D}/{n}.syms', 'w').write(''.join(s + '\n' for s in sorted(per[n])))
    dropped = sorted(want - {s for s in owner if not s.startswith('$ld$')})
    open(f'{D}/DROPPED.txt', 'w').write(
        f'# {arch}: names FPC\'s headers declare that the Apple SDKs used ({", ".join(os.path.basename(s) for s in SDKS)})\n'
        f'# do not export from any stubbed library - left out of the {arch} stubs, so a program calling one fails at link\n'
        f'# time instead of on the Mac\n' + ''.join(s + '\n' for s in dropped))
    print(f'{arch}: {len(want)} candidate names, kept {sum(1 for s in owner if not s.startswith("$ld$"))} '
          f'(+ {sum(1 for s in owner if s.startswith("$ld$"))} $ld$ version entries) in {sum(1 for v in per.values() if v)} libraries, '
          f'dropped {len(dropped)}')
