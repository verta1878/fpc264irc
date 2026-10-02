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
