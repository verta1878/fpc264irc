# FPC 2.6.4irc — Patch History

## Compiler Patches

### Patch 1 — Type conversion crash fix
- **File:** `src/compiler/defutil.pas`
- **Issue:** Crash on certain implicit type conversions
- **Session:** 2026-07-11

### Patch 2 — Register allocation fix
- **File:** `src/compiler/nopt.pas`
- **Issue:** Incorrect register allocation in nested procedures
- **Session:** 2026-07-11

### Patch 3 — Overloaded operator resolution
- **File:** `src/compiler/symdef.pas`
- **Issue:** Overloaded operator symbol resolution failure
- **Session:** 2026-07-11

### Patch 4 — PPU cross-compilation writing
- **File:** `src/compiler/fppu.pas`
- **Issue:** PPU write failure during cross-compilation
- **Session:** 2026-07-11

### Patch 5 — libdl auto-link + GetProcAddress aliases
- **Files:** `src/rtl/unix/dl.pp`, `src/rtl/unix/dynlibs.pas`
- **Issue:** Linux programs using dlopen/dlsym required manual `-k-ldl` flags.
  Added `{$linklib dl}` `{$linklib c}` to dl.pp. Added `GetProcAddress()`
  and `FreeLibrary()` aliases to dynlibs.pas.
- **Known issue:** dynlibs.pas overloaded function aliases break `make cycle`.
  Prebuilt PPUs work fine.
- **Session:** 2026-09-07

### Patch 6 — MZ linker source recovery + .a fallback fix

**6a: Source recovery (2026-09-09)**

The internal MZ linker for i8086-msdos was backported from FPC 3.2.2 and
compiled into `ppcross8086`, but the 5 source files were never committed.
Recovered from FPC 3.2.2:

| File | Lines | Purpose |
|------|-------|---------|
| `src/compiler/systems/t_msdos.pas` | 540 | MSDOS target linker (`TInternalLinkerMsDos`, `TExternalLinkerMsDosWLink`) |
| `src/compiler/systems/i_msdos.pas` | 121 | System info (default linker = `ld_int_msdos`) |
| `src/compiler/ogomf.pas` | 3,226 | OMF object + MZ exe output (`TMZExeOutput`, `TMZExeHeader`, `TOmfObjInput`) |
| `src/compiler/omfbase.pas` | 2,916 | OMF format base types, FIXUPP parsing |
| `src/compiler/owomflib.pas` | 617 | OMF library reader (`TOmfLibObjectReader` — reads .a archives) |

Architecture:
```
i_msdos.pas
  link = ld_int_msdos           ← default: internal linker
  linkextern = ld_msdos         ← fallback: wlink

t_msdos.pas
  TInternalLinkerMsDos          ← uses TMZExeOutput from ogomf.pas
    CArObjectReader = TOmfLibObjectReader
    CExeOutput = TMZExeOutput
    CObjInput = TOmfObjInput
  TExternalLinkerMsDosWLink     ← calls wlink

ogomf.pas
  TMZExeOutput                  ← full MZ exe writer, all 6 memory models
  TOmfObjInput                  ← reads OMF .o files

owomflib.pas
  TOmfLibObjectReader           ← reads OMF .a library archives
```

Memory models supported (via DefaultLinkScript + prt0 selection):
```
tiny     prt0t   single segment    .com
small    prt0s   code + data       .exe
medium   prt0m   multiple code     .exe
compact  prt0c   multiple data     .exe
large    prt0l   multiple code+data .exe
huge     prt0h   huge pointers     .exe
```

**6b: .a fallback fix (2026-09-09)**

- **File:** `src/compiler/systems/t_msdos.pas`, method `DefaultLinkScript`
- **Problem:** RTL units compiled with smartlinking produce `.a` archives.
  The internal linker's `DefaultLinkScript` emitted `READOBJECT foo.o` for
  every unit. When `foo.o` didn't exist but `foo.a` did, linking failed:
  `Error: Can't open object file: system.o`
- **Fix:** Added fallback logic: if `.o` doesn't exist, check for `.a` and
  use `READSTATICLIBRARY` instead. The `TOmfLibObjectReader` already knows
  how to read `.a` — only the script generation needed the fallback.
- **Status:** Source patched. Requires ppcross8086 rebuild to take effect.
  Can't rebuild in current environment (bootstrap chain needs host FPC with
  `cpu64bitaddr` defines). Rebuild on your box.

```pascal
// The fix (in DefaultLinkScript, ObjectFiles loop):
if FileExists(s, false) then
  LinkScript.Concat('READOBJECT ' + maybequoted(s))
else begin
  s2:=ChangeFileExt(s, '.a');
  if FileExists(s2, false) then
    LinkScript.Concat('READSTATICLIBRARY ' + maybequoted(s2))
  else
    LinkScript.Concat('READOBJECT ' + maybequoted(s));
end;
```

**To rebuild ppcross8086:**
```bash
# On a machine with FPC 3.x installed (provides cpu64bitaddr defines):
cd fpc264irc/src/compiler
make cycle CPU_TARGET=i8086 OS_TARGET=msdos FPC=/path/to/fpc3/ppcx64
cp ppcross8086 ../../bin/
# Test:
bin/ppcross8086 -Tmsdos -Wmsmall -Fubin/units/i8086-msdos-small test.pas
file test.exe   # should say "MS-DOS executable"
```

## Platform Matrix

```
Target            Compiler      PPUs    Status
x86_64-linux      ppcx64         529    complete
i386-linux        ppc386         252    complete
i386-win32        ppc386       1,521    complete
x86_64-win64      ppcx64       1,012    complete
i386-go32v2       ppc386         308    complete
i8086-msdos       ppcross8086    132    compile ok, link needs rebuilt ppcross8086
  + graph         ppcross8086      4    medium/large/huge + default set (FPC 3.2.2 msdos backend, DOSBox-tested)
i386-darwin       ppc386          —     complete
i386-os2          ppc386         219    complete (native -Tos2, all target 0x04)
x86_64-freebsd    ppc386          19    partial (needs full RTL cross-build)
```

## Graph 3.0.4 backport (2026-10-02)

```
graph package   FPC 2.6.4 -> 3.0.4 (old tree in attic/graph-2.6.4), OS/2 PM backend kept
ptc             0.99.14 -> 0.99.15 (old tree in attic/ptc-0.99.14), 4 patches (keysyms, XInput2 off, go32 DPMI calls, DirectX re-open)
new units       ptcgraph/ptccrt/ptcmouse on win32, win64, i386-linux; wincrt/winmouse on win32;
                ggigraph on i386/x86_64 linux + freebsd; sdlgraph on i386 win32/linux/freebsd/darwin; ptc on go32v2
tests           25/25 compile; runtime OK in DOSBox (go32v2 graph + ptc), Wine (win32/win64), Xvfb (i386/x86_64-linux)
fixes 10-02     sdlgraph made usable (4bpp->8bpp, nil-surface checks, real colours + palette, FPU mask for sdl12-compat);
                ptc DirectX FreeAndNil-on-interface fixed (InitGraph after CloseGraph hung on win32/win64)
known           win32/win64 GDI graph has no hi-colour modes (same as 2.6.4); units ship as .ppu + .a
kit             tools/graph-304-build/ (build-all.sh, test-all.sh, README.md, test-results.txt)
```

## Units: .ppu + .a, no loose .o (2026-10-02)

```
what            every unit's .o wrapped into its smart-link .a; .ppu rewritten to link the .a (no recompile,
                checksums unchanged); loose .o/.s removed (25,101 files: unit objects, go32v2 smartlink
                pieces, test/example program objects, compiler-build leftovers)
kept as .o      startup objects the compiler links by name: prt0/cprt0/gprt0/dllprt0, os2 prt1,
                go32v2 exceptn/fpu, i8086 prt0*; sdk/emx crt0 & co; USB objects
tested          link + run: i386/x86_64-linux, win32/win64 (Wine), go32v2 (DOSBox); i386-freebsd link;
                lazutils, lcl, ppudump vs bin/compiler-ppus; ptcgraph linked from repo units only
not yet         i386-darwin (.o malformed: 16-byte Mach-O nlist from the 64-bit host), i8086 medium/large/
                huge (rebuild with -CX), i386-os2 (no unit object code in repo)
kit             tools/smartpack/ (ppu_smart.py, pack-units.sh, macho_ar.py, README.md)
```

## Repo root tidy (2026-10-02)

```
moved to docs/  CHANGELOG-IRC.md, FPC264IRC-MZ-LINKER.md, PATCH6-MZ-LINKER-HANDOFF.md
removed         APPLY.txt (Patch 6 note - applied, recorded under Patch 6 above)
updated refs    cleanup.bat, build-linux.sh, patches/os2-cross/README.md
```

## OS/2 native linking (2026-10-02)

```
units           bin/units/i386-os2: 219 units .ppu + .a (assembled from the 2026-10-01 native rebuild, same .ppu);
                import libraries (system.a, doscalls.a, *.dll.a ...) got an archive index
tools           bin/tools/i386-os2: as/ld were do-nothing stubs - now real tools, emxbind 32-bit static (+ os2stub.bin)
                (the first version linked through a Python front end, emxld.py - replaced the same day, see below)
source          patches/os2-cross/emxbind/ - emxbind 0.9d (kLIBC) + fpc264irc patch, build.sh
result          ppc386 -Tos2 -FD bin/tools/i386-os2 -> OS/2 LX exe; import fixups verified; not yet run on OS/2
```

## OS/2 linker: patched binutils, no Python (2026-10-02)

```
ld              GNU binutils 2.30 i386-aout patched for EMX: a.out layout emxbind expects (text 0x10000 / file 0x400,
                data on the next 64K), N_IMP1/N_IMP2 import symbols, relocations against imports kept in the
                executable -> FPC calls ld and emxbind directly
tools           bin/tools/i386-os2: as, i386-os2-as, ld, i386-os2-ld are the static binaries (were shell/Python wrappers);
                bin/tools/i386-emx: emx-ld, i386-emx-ld, ar, emx-ar, i386-emx-ar replaced by the same build
removed         bin/tools/i386-os2/emxld.py
source          patches/os2-cross/binutils/ (binutils-2.30-emx.patch, build.sh, README), lib/build-tools/binutils-2.30.tar.xz
result          same program images and the same LX import fixups as before (360 / 1055 in the two tests); not yet run on OS/2
```

## Mac stubs trimmed to Apple's names (2026-10-10)

```
tool            patches/darwin-cross/apple-trim.py: per architecture, keep only the names Apple's libraries export
                (MacOSX10.6 + 10.7 SDK, outside the repo), in the library that owns them on the Mac, + Apple's
                $ld$add/$ld$hide version entries -> stubs/i386/*.syms, stubs/x86_64/*.syms, DROPPED.txt
result          i386 17,905 names kept, 479 dropped (mostly OpenGL extensions); x86_64 12,497 kept, 6,445 dropped (mostly
                QuickTime and Carbon UI, which 64-bit macOS does not have) - none of them used by any unit; a call that
                does not exist on the Mac now fails at link time instead of on the Mac
CoreVideo       new stub framework (CV* calls, 203 names, before in QuartzCore); QuartzCore re-exports it, as on the Mac
check           all 19 test programs bind exactly as when linked against Apple's SDK (also -WM10.5 / -WM10.6);
                test/darwin unchanged, test/darwin64/cocoa relinked (64-bit NSMutableArray class is CoreFoundation's)
```

## Exact source rebuild: OS/2; Mac stubs checked against Apple's SDK (2026-10-10)

```
plan            docs/UNIT-REBUILD.md: every shipped unit = a kit build from this repo's src/ with today's compiler, one
                folder at a time, before porting newer upstream FPC source
i386-os2        37 units replaced by the tools/os2-native-build build (asciitab classes dateutil dateutils dom dos editors
                eventlog fmtbcd fphttpclient fpjson fpreadbmp fpreadpng fpwritebmp gadgets gzio httpdefs inplong iso7185
                keyboard lineinfo lnfodwrf menus openssl process regexpr sockets stddlg strutils system sysutils tabs
                typinfo ucomplex unicodedata uriparser views) - the only difference was the old compiler's concat_multi
                calls; no interface changed; all 219 now = kit build; test/os2 programs rebuilt
Apple SDK check MacOSX10.6 / 10.7 SDK (outside the repo): all 19 test/darwin + test/darwin64 programs also link against
                Apple's libraries with the same bindings; install names match except Foundation + AppKit
fix             Foundation / AppKit stubs: install name Versions/C (was Versions/A - a Mac would not load the Cocoa
                programs); gen-framework-syms.py, gen-stubs.sh (framework path = install path), stubs/frameworks.txt;
                test/darwin/cocoa + test/darwin64/cocoa relinked
deleted         bin/tools/i386-darwin/MacOSX10.6.sdk/System/Library/Frameworks/Foundation.framework/Versions/A/Foundation,
                .../AppKit.framework/Versions/A/AppKit (now Versions/C/...)
```

## Graph 3.2.2 (2026-10-09)

```
graph + ptc     src/packages/graph, src/packages/ptc: FPC 3.0.4 -> 3.2.2, 3-way merge, no conflicts; our OS/2 PM backend,
                sdlgraph fixes and ptc patches kept; replaced 3.0.4 files in attic/graph-3.0.4; one 2.6.4 fix: the 3.2
                directive noreturn in inc/graph.inc only for FPC >= 3.2
new             ptcgraph 24-bit true colour (D24bit, 16,777,216 colours, LongWord colours) on win32/win64/i386+x86_64 Linux;
                go32v2 + i8086 VESA fixes, SetWriteModeEx; ptc SetMousePos
kit             tools/graph-322-build (build-all.sh now also assembles darwin/os2 and packs .ppu + .a; test-all.sh tests
                the packed units); tools/graph-304-build kept, marked superseded
units           33 replaced in 9 folders (graph, ggigraph, ptcgraph, ptccrt, ptcmouse, ptcwrapper, sdlgraph, wincrt,
                winmouse - list in the kit README); no other unit affected (ppu_consistency unchanged)
tests           compile 25/25; DOSBox / Wine / Xvfb runtime as before + 24-bit true colour OK on all 4 ptcgraph targets;
                test/os2/graphdemo.exe and test/darwin/graphdemo rebuilt
```

## x86_64-darwin: 64-bit Mac (2026-10-09)

```
why             32-bit Mac programs run on macOS 10.4 - 10.14 only; 64-bit ones on every Intel Mac up to macOS 26 Tahoe
                and on Apple Silicon through Rosetta 2
units           bin/units/x86_64-darwin: 787 + 2 (fv/) units, .ppu + libp*.a, built with bin/ppcx64 (no compiler change
                needed) - the i386-darwin set minus graph, sdlutils, sdlgraph, mmx, displays, drawsprocket, macos (reasons in
                tools/darwin64-build/README.md); FV dialogs + menus in fv/, univint Dialogs + Menus in the main folder
kit             tools/darwin64-build: build.sh (RTL Makefile + drive.py + pack), units.txt/units.py (same sources as the
                i386 set), patched/dynlibs.pas; source dates fixed -> a rebuild is byte-identical (checked twice)
link tools      bin/tools/i386-darwin serves both: crt1.o / crt1.10.5.o / crt1.10.6.o and every stub library + framework
                are now universal (i386 + x86_64, joined with lipo); the i386 parts are byte-identical to before, all 10
                test/darwin programs rebuild byte-identical. x86_64 ObjC classes: _OBJC_CLASS_$_X / _OBJC_METACLASS_$_X
source fix      src/packages/univint/src/MacOSAll.pas: links Carbon on x86_64 too (it linked only CoreFoundation, so
                Gestalt & co. did not link); test/darwin/carbon.pas: SysBeep only in the 32-bit build (no 64-bit SysBeep)
test/darwin64   9 programs (tests 1 - 9 of test/darwin, built 64-bit) + build.sh + README - link with no undefined symbols,
                each call bound to its own library/framework; to be run on a Mac (Intel 10.5+, or Apple Silicon)
not 64-bit      graph (Carbon HIView/QuickDraw are 32-bit only), SDL utils
```

## i386-darwin: framework stubs (2026-10-08)

```
frameworks      bin/tools/i386-darwin/MacOSX10.6.sdk/System/Library/Frameworks: 24 stub frameworks (Carbon, CoreServices,
                ApplicationServices, CoreFoundation, Foundation, AppKit, CoreData, Cocoa, QuickTime, OpenGL, OpenAL, OpenCL,
                QuartzCore, WebKit, vecLib, Security, ...) - names only, real install names, umbrellas re-export like macOS
libraries       + libobjc.A.dylib (Objective-C runtime); libSystem.B.dylib 329 -> 458 names (fenv, fp, xattr, 10.4 crt1)
generator       patches/darwin-cross/gen-framework-syms.py: symbol lists from FPC's own univint, cocoaint, objcrtl,
                openal, opencl sources -> stubs/frameworks/*.syms, stubs/libobjc.A.syms, stubs/libSystem.extra.syms,
                stubs/frameworks.txt; gen-stubs.sh builds them (build.sh step 4)
binding         ld64 links re-exported frameworks directly: each call is recorded against its own framework
                (e.g. _CFRelease -> CoreFoundation although MacOSAll only links Carbon), as dyld expects
test/darwin     8 carbon (MacOSAll), 9 cocoa (CocoaAll), 10 graphdemo (graph Mac backend) - link with no undefined
                symbols; tests 1 - 7 rebuild byte-identical; to be run on a Mac with macOS 10.6 - 10.14
not yet         SDL/FreeType/X11
```

## Unit format = compiler format (2026-10-08)

```
check           tools/smartpack/ppu_version_check.py: ppc386/ppcx64 (FPC 2.6.4) read PPU135, ppcross8086 (3.2.2) PPU207
found           7 units in bin/units/i386-win32 were PPU207 (built by FPC 3.2.x, unusable - "wrong PPU version"),
                their libp*.a archives from the same 3.x build
numlib          typ, omv, dsl, mdt, sle, spl rebuilt from src/packages/numlib (-Twin32 -O2 -Ur) -> .ppu + libp*.a
singleinstance  source from FPC 3.0.4 fcl-base (same as 3.2.2), added as src/packages/fcl-base/src/singleinstance.pp,
                compiles unchanged with 2.6.4 -> .ppu + libpsingleinstance.a
replaced        the 7 PPU207 .ppu files and their 7 libp*.a (overwritten by the rebuilt ones)
tests           test/test_numlib.pas, test/test_singleinstance.pas - link and run under Wine
result          7,738 PPU135 + 249 PPU207 (all i8086), 0 in the wrong format; i386-win32 ppu_consistency 0 fatal
```

## i386-darwin: linking on Linux (2026-10-07)

```
tools           bin/tools/i386-darwin: as, ld, ar, ranlib, nm, otool, strip, lipo, install_name_tool - Apple cctools
                1030.6.3 + ld64-956.6 (cctools-port), static Linux x86_64 builds
startup         bin/tools/i386-darwin/MacOSX10.6.sdk/usr/lib/crt1.o, crt1.10.5.o, crt1.10.6.o - built from Apple Csu-88
stubs           same folder: libSystem.B.dylib (329 symbol names, copies as libc/libm/libdl/libpthread), libiconv.2.dylib,
                libncurses.5.4.dylib - names only, real install names, nothing from Apple's SDK
kit             patches/darwin-cross/build.sh + gen-stubs.sh + stubs/*.syms - pinned sources, static, reproducible
use             ppc386 -Tdarwin -FDbin/tools/i386-darwin -XRbin/tools/i386-darwin/MacOSX10.6.sdk -Fubin/units/i386-darwin
test/darwin     7 test programs (.pas + Mach-O i386 programs) + build.sh + README: hello, crttest, filetest, sysinfo,
                unicode (cwstring/libiconv), threads (cthreads), fvdemo - link with no undefined symbols; to be run on a
                Mac with macOS 10.6 - 10.14
not yet         framework programs (Carbon/CoreFoundation/Cocoa, graph's Mac backend), SDL/FreeType/X11
```

## i8086 medium/large/huge -CX, OS/2 kit + samples (2026-10-07)

```
i8086-msdos     medium/large/huge RTL rebuilt from FPC 3.2.2 with -Wm<model> -CX: 23 units each as .ppu + .a
                (were one .o per unit, built without -CX); graph rebuilt against them; prt0m/prt0l/prt0h.o unchanged
                result: sysutils/objects/crt/... programs now link in medium + large (DGROUP overflowed before) and run in
                huge (old huge set linked but printed nothing); graph test all 6 modes OK in DOSBox, all 3 models
removed         63 .o: bin/units/i8086-msdos-{medium,large,huge}/<unit>.o, 21 each (now inside <unit>.a)
tools           tools/i8086-graph-build/build-rtl.sh: any model from FPC 3.2.2 source (GitLab tag, SHA-256 pinned);
                tiny/small/compact rebuilt with it equal the shipped sets
os2 kit         tools/os2-native-build: repo-relative build.sh + drive.py, 219 units (adds the 10 fcl-res units; resource =
                fcl-res), assembles + packs into libp*.a; reproduces bin/units/i386-os2 code exactly with the pre-Darwin
                ppc386 - today's ppc386 differs in 38 units only by not calling fpc_shortstr_concat_multi (nopt.pas
                fpc264irc change, already in the source; the earlier binary predates it)
test/os2        7 OS/2 test programs (.pas + .exe) + build.sh + README: hello, crttest, filetest, graphdemo (PM), sysinfo (doscalls),
                threads, fvdemo (Free Vision) - all link to LX; to be run on real OS/2 / ArcaOS
docs            ROADMAP-UNITS items 2, 4, 6; smartpack README; sdk/README -Tos2 line; fix-permissions.sh covers
                ppcross8086, bin/tools/make, darwin-as and the i386-os2/i386-emx/i8086-msdos tool folders
```

## Unit folders: name clashes, stale leftovers (2026-10-07)

```
i386-win32      616 Lazarus units (1469 files) moved to bin/units/i386-win32/lcl/ - they had replaced FV dialogs/menus;
                FV rebuilt (24 units); fpwidestring rebuilt (source: unixcp only on non-Windows, 2-param compare)
                bin/tools/i386-win32/i386-win32-fpcres: real fpcres instead of a do-nothing stub
                tested (Wine): FV program and LCL program link and run
x86_64-win64    fppkg units rebuilt (pkgfpmake was stale)
i386-go32v2     83-unit LCL set (ppu only, no object code) moved to bin/units/i386-go32v2/lcl/ (fileutil, graphics kept)
i386-darwin     FV dialogs rebuilt into bin/units/i386-darwin/fv/ (univint Dialogs has the same name); libpmenus.a now
                holds the FV menus code its .ppu describes; dbugintf, fpimgcanv, xmldatapacketreader rebuilt
removed         bin/units/i386-darwin/dialogs.rst (FV, now in fv/)
result          ppu_consistency: 0 fatal records in every target folder
```

## i386-darwin: Mach-O writer fix (2026-10-07)

```
compiler        macho.pas: nlist/lc_str/ranlib without host-pointer variants (nlist was 16 bytes on a 64-bit host);
                ogmacho.pas: LC_SEGMENT filesize = file data size, vmsize = end of the highest section
                bin/ppc386 rebuilt from the fixed source
units           bin/units/i386-darwin: 794 units as .ppu + libp<unit>.a; 785 objects repaired with macho_fix.py
                (byte-identical to the fixed compiler's output where the code matches), 9 missing objects built
removed         bin/units/i386-darwin: 785 .o + serial.s (now inside the .a archives)
ppu flags       656 i386-darwin .ppu: stale "init" flag cleared (no _INIT$_ routine in their code -> undefined
                symbols in every program); every FPC symbol of two test programs now resolves from the archives
win32           xmliconv_windows rebuilt against the current XMLRead (-S2h), .ppu + .a
tools           tools/smartpack/macho_fix.py, darwin_rebuild.py, ppu_initflag.py
checksums       regenerated; the 15 patches/os2-cross/emxbind files now hashed as stored by git (LF)
```

## Stale units, USB, checksums (2026-10-02)

```
stale units     rebuilt every unit whose implementation-section dependency checksum was stale (compiler would
                fail "Can't find unit"), dependencies first: units rebuilt x86_64-freebsd 1, i386-linux 14 (FV),
                x86_64-linux 6, go32v2 35, win32 27, win64 14 - packed as .ppu + .a; leftovers in docs/ROADMAP-UNITS.md
usb             i386-linux usbhub/usbmsd/usbtrans/libusb/usbserial moved from src/ into bin/units (.ppu + .a);
                12 build files removed from src/packages/usb/src and src/rtl/usb
checksums       CHECKSUMS.md5 / .sha256 / .txt regenerated
tools           tools/smartpack/ppu_consistency.py, rebuild_stale.py
```

## Key Binaries

```
bin/ppcx64         3.0 MB   x86_64 native compiler (3-stage bootstrap)
bin/ppc386         2.6 MB   i386 native compiler
bin/ppcross8086    4.4 MB   i8086 cross-compiler (MZ linker built in)
```

## Crew

| Handle      | Role |
|-------------|------|
| verta1878   | Project lead |
| sysop/0     | Compiler patches, USB stack, FPC builds |
| bob         | OpenWatcom2 x64 |
| evga        | Display, SIO |
| kiddo       | Protocols, serial IRQ |
| wrench      | Transport, FOSSIL, serial com routines + add-on boards |
| hexadecimal | PCBoard, Cyclades |
| DotMatrix   | Documentation sourcing |
| byte        | Program discovery |
