# Units & linking roadmap (byte, 2026-10-02)

State after the smartpack commit (`65b9ec68`): units ship as `.ppu` + `.a`; link + run tested on i386/x86_64 Linux,
Win32/Win64 (Wine), go32v2 (DOSBox); i386 FreeBSD links; ptcgraph links from repo units alone.

| # | Item | Status |
|---|------|--------|
| 1 | i386-darwin units | **Done 2026-10-07** - compiler fixed (`macho.pas`, `ogmacho.pas`, `bin/ppc386` rebuilt); all 794 units as `.ppu` + `.a`. See below. **Linking: done 2026-10-07** - `bin/tools/i386-darwin` (cctools/ld64, Csu startup code, stub libSystem; `patches/darwin-cross`), console programs link; test programs in `test/darwin`, not yet run on a real Mac. **Frameworks: done 2026-10-08** - 24 stub frameworks + libobjc (`gen-framework-syms.py`), `MacOSAll` / `CocoaAll` / graph programs link; tests 8 – 10 in `test/darwin`. |
| 2 | i8086 medium/large/huge | **Done 2026-10-07** - RTL rebuilt from FPC 3.2.2 with `-CX` (`tools/i8086-graph-build/build-rtl.sh`), 23 units + graph as `.ppu` + `.a`; programs that overflowed DGROUP (medium/large) or did not run (huge) now link and run in DOSBox. See the kit README. |
| 3 | i386-os2 object code + linking | **Done 2026-10-02** - 219 units as `.ppu` + `.a`; `-FDbin/tools/i386-os2` links native OS/2 LX executables (see `bin/tools/i386-os2/README.md`). Not yet run on real OS/2. |
| 4 | Stale units | **Done 2026-10-07** - no fatal records left in any target folder; the leftovers (win32 FV + `fpwidestring`, win64 `pkgfpmake`, go32v2 and win32 Lazarus sets, darwin FV) are fixed too - see "Leftovers" below. |
| 5 | `CHECKSUMS.md5` / `CHECKSUMS.sha256` / `CHECKSUMS.txt` | **Done 2026-10-02** - regenerated for the current tree (they no longer list themselves). |
| 6 | OS/2 kit README | **Done 2026-10-07** - `tools/os2-native-build` is repo-relative and builds all 219 units (incl. the 10 fcl-res units; `resource` = fcl-res) as `.ppu` + `libp*.a`, reproducing the shipped code. Test programs: `test/os2/`. |
| 7 | USB | **Done 2026-10-02** - the `.o`/`.ppu` in `src/packages/usb/src` and `src/rtl/usb` were the i386-linux USB stack (r311); `usbhub`, `usbmsd`, `usbtrans`, `libusb`, `usbserial` now ship in `bin/units/i386-linux` as `.ppu` + `.a` (usbcore was already there), the 12 build files in `src` are removed. Test program with all six USB units links and runs. |
| 8 | Win32/Win64 GDI graph hi-colour | Deferred to the newer-FPC step (upstream never added it; ptcgraph has it). |
| 9 | Unit format = compiler format | **Done 2026-10-08** - `tools/smartpack/ppu_version_check.py`: 7 i386-win32 units were PPU207 (FPC 3.2.x), unreadable by ppc386: numlib `typ omv dsl mdt sle spl` rebuilt from `src/packages/numlib`, `singleinstance` from FPC 3.0.4 fcl-base (source added to `src/packages/fcl-base/src`); all `.ppu` + `.a`, tested under Wine (`test/test_numlib.pas`, `test/test_singleinstance.pas`). Now: 7,738 PPU135 + 249 PPU207 (i8086 only), 0 wrong. |
| 10 | x86_64-darwin (64-bit Mac) | **Done 2026-10-09** - `bin/units/x86_64-darwin` (789 units, `.ppu` + `.a`, kit `tools/darwin64-build`, byte-identical rebuild); universal crt1 + stubs in `bin/tools/i386-darwin`; 9 test programs in `test/darwin64` link; not yet run on a real Mac. No 64-bit `graph` (Carbon GUI is 32-bit only). |

## OS/2 (item 3) - findings 2026-10-02

Object code:
- The 2026-10-01 native rebuild (`tools/os2-native-build`) compiled with `-s`, so only `.s` existed; `bin/units/i386-os2`
  had `.ppu` only. 207 of its `.ppu` are byte-identical to the repo, the 10 fcl-res units match too, `graph` matches the
  graph-304 kit build, `newexe` rebuilds with identical checksums.
- All 219 units assemble with `bin/tools/i386-emx/as` (a.out) and pack into `libp<unit>.a`; `.ppu` rewritten by smartpack.
  Kept: `prt0.o`, `prt1.o`. **Not shipped yet** - waiting for a working link.

Toolchain gaps found while linking a test program (`-Tos2`):
1. `bin/tools/i386-os2/as` and `ld` are do-nothing stubs (`exit 0`). Real tools: `bin/tools/i386-emx/as`, `emx-ld`, `emx-ar`.
2. The OS/2 import libraries (`system.a`, `doscalls.a`, `*.dll.a`, ...) have no archive index - `emx-ar s` fixes it.
3. `emx-emxbind` (64-bit build of emxbind 0.9d) misreads the a.out header: `struct exec` starts with `unsigned long`,
   8 bytes on x86_64. Rebuilt as a 32-bit program from the kLIBC emxbind source (GPL) with small patches:
   emx libc shims, `getopt` "+" (stop at first non-option), ignore trailing emx runtime options (`-ai -s8`),
   accept the emx 0.9d data-segment layout FPC's `prt0.as` uses (`__os2dll` = 11th dword) next to kLIBC's `0xba0bab`.
4. The cross `ld` writes a generic a.out: text at file offset 0x20, data on a 4K boundary. EMX wants text at 0x400 and data
   at the next 64K boundary. Done by hand: link with `-Ttext 0x10000`, relink with `-Tdata <round64K>`, pad header to 0x400.
   Result: a valid LX executable (cpu 386, os OS/2, 4 objects). Now the patched ld's default layout (see 5).
5. ~~Blocker~~ solved: the LX had no imports. emxbind builds OS/2 imports from the executable's relocation records (N_IMP1
   references), and this a.out `ld` drops relocations in a final link (`-q`/`--emit-relocs` not supported for a.out).
   The original EMX ld kept them. Next: rebuild binutils 2.30 a.out with EMX's relocatable-executable behaviour, or find
   an EMX-patched ld; then wrap steps 1-4 into `bin/tools/i386-os2` so plain `ppc386 -Tos2` links.
   First solved with a Python link front end (`emxld.py`); **replaced the same day by a patched ld**: binutils 2.30
   i386-aout with the EMX layout (also fixes 4) and N_IMP1/N_IMP2 handling that keeps relocations against import
   symbols in the executable (`patches/os2-cross/binutils/`). FPC now calls `ld` and `emxbind` directly; 360/360 and
   1055/1055 import fixups verified against their call sites.

## Stale units (item 4) - 2026-10-02

A unit records the interface checksum of every unit it uses. If a used unit was rebuilt later:
- used in the **interface** section: the compiler prints "Recompiling X, checksum changed for Y" and carries on;
- used in the **implementation** section: the compiler really tries to recompile X and stops with "Can't find unit X".

`tools/smartpack/ppu_consistency.py` lists both kinds per unit folder; `tools/smartpack/rebuild_stale.py` rebuilds the fatal
ones from `src/` against the current units (dependencies first, units that use each other built together), packs them
as `.ppu` + `.a` and repeats until no fatal record is left.

| Target | Fatal before | After | Rebuilt |
|---|---|---|---|
| x86_64-freebsd | 1 | 0 | dos |
| i386-linux | 3 | 0 | FV: editors, time, timeddlg + drivers, views, dialogs, msgbox, validate, app, menus, histlist, stddlg, sysmsg, fvcommon |
| x86_64-linux | 6 | 0 | dblib, gtk2ext, pxlib, seteuid_unit, utextmouse, utrayit |
| i386-go32v2 | 11 | 2 | paszlib chain, dom/xmlutils/xmlwrite, uriparser, utextmouse, fcl-image (bmpcomn, pixtools, fpimgcanv, fppixlcanv), pasjpeg (jerror ...) |
| i386-win32 | 11 | 5 | zip, unzip, paszlib chain, dbugintf, digesttestreport, jwaadstlb, ... |
| x86_64-win64 | 14 | 1 | process, pipes, simpleipc, dbugintf, fppkg units |

Checked: programs using the rebuilt units compile, link and run (Linux, Win32/Win64 in Wine), go32v2 links, x86_64-freebsd
compiles; the earlier smartpack test programs still pass; the Lazarus sets have fewer fatal records than before on every target.

## i386-darwin (item 1) - 2026-10-07

Two bugs in the compiler's internal Mach-O writer (`-Amacho`) made every darwin object "malformed" for ld64/llvm:
1. `macho.pas`: `nlist`, `lc_str` and `ranlib` had an in-core pointer variant (`n_name : Pchar` under
   `{$ifndef __LP64__}`, which FPC never defines). Built on a 64-bit host the record became 16 bytes, so the symbol
   table was written with 16-byte entries instead of 12. The pointer variants are left out now.
2. `ogmacho.pas` `AddSectionToSegment`: the segment `filesize` was set to the absolute end offset of the last section
   and `vmsize` to the plain sum of the section sizes (alignment gaps ignored) - llvm: "section ... greater than the
   segment's vmaddr plus vmsize". Now filesize = file data size, vmsize = end of the highest section.

`bin/ppc386` is rebuilt from the fixed source (output on linux/win32/go32v2/os2/freebsd identical to the old binary
except the compiler build date string in programs).

Units: 470 objects had the 16-byte symbol table, all 785 had the segment fields wrong. `tools/smartpack/macho_fix.py`
rewrites an object exactly as the fixed writer does (same code, data, relocations, symbols); proven byte-identical
against the fixed compiler's own output on 400 units that rebuild with identical code. The 9 units that had no object
code were built with the fixed compiler (logger, sdl, sdlgraph, sdlutils, x, xlib, graph with `-Sg`, pthreads with
`-Mobjfpc`; `.ppu` checksums identical) or assembled from the shipped `serial.s` (llvm-mc). All 794 units packed as
`.ppu` + `libp<unit>.a` (llvm-ar, BSD `__.SYMDEF` index); every object parses with llvm-nm and llvm-objdump; no `.ppu`
checksum or uses record changed.

Second fault found by resolving a test program's symbols against the archives: 656 darwin `.ppu` carried the
"init" flag although their code has no initialization routine (a fresh compile of the same source does not set it), so
every program's INITFINAL table referenced undefined `_INIT$_<unit>` symbols (baseunix, unixtype, sysctl, termio ...).
`tools/smartpack/ppu_initflag.py` clears the flag where the archive defines no `_INIT$_` (checksums are not affected).
Now a crt test and a sysutils/classes/dos test resolve every FPC symbol from the repo archives; only libSystem
(libc) symbols remain for the linker.

Found on the way (not fixed): darwin has no FV `dialogs` unit (FV `app`, `msgbox`, `stddlg`... record a `dialogs`
that is not there - same name clash with the LCL `Dialogs` as on win32).

## Leftovers of item 4 - 2026-10-07

Root cause of most of them: two libraries with a unit of the same name copied into one folder - the last copy wins.

- **i386-win32**: the Lazarus LCL `Dialogs`/`Menus`/`Controls`/`Graphics` had replaced FV `dialogs`/`menus`, so all of FV was
  broken. The 616 Lazarus units (1469 files: `.ppu`, `.a`, `.rst`, `.lfm`, `.res`) moved to `bin/units/i386-win32/lcl/`
  (same layout as x86_64-linux). FV rebuilt from `src/packages/fv` (all 24 units, `.ppu` + `.a`). Use
  `-Fubin/units/i386-win32` for FV/console programs, `-Fubin/units/i386-win32/lcl -Fubin/units/i386-win32` for LCL programs.
  Tested under Wine: an FV program (dialogs, msgbox, app, menus, stddlg, editors, tabs, timeddlg) and an LCL program
  (Interfaces, Forms, Dialogs, StdCtrls) link and run. `bin/tools/i386-win32/i386-win32-fpcres` was a do-nothing stub
  (LCL programs failed "Can't open object file *.or") - now a real fpcres (x86_64 Linux build of `src/utils/fpcres`).
- **i386-win32 `fpwidestring`**: source fixed (`src/rtl/objpas/unicode/fpwidestring.pp`: `unixcp` only on non-Windows,
  2.6.4 two-parameter `CompareUnicodeStringProc`); rebuilt, checksums unchanged.
- **i386-win32 `xmliconv_windows`**: rebuilt with `-S2h` (fcl-xml options), checksums unchanged.
- **x86_64-win64 `pkgfpmake`**: the 12 fppkg units rebuilt together from `src/packages/fppkg` (only `pkgoptions`' interface
  changed, nothing outside fppkg uses them).
- **i386-go32v2 `fileutil`/`graphics`**: not stray copies - they belong to an 83-unit customdrawn LCL set in that folder,
  which has `.ppu` only (no object code, so it cannot link anyway). Not deleted: the whole set moved to
  `bin/units/i386-go32v2/lcl/`. The base folder is now consistent (0 fatal); the two stale LCL units stay as they are.
- **i386-darwin**: the univint (Carbon) `Dialogs` had replaced FV `dialogs`, and `libpmenus.a` held univint `Menus` code
  under the FV `menus.ppu`. FV `dialogs` rebuilt into `bin/units/i386-darwin/fv/` (checksums identical to what the FV
  units record; use `-Fu .../fv` first for FV programs), `libpmenus.a` rebuilt with the FV code (`.ppu` checksums
  identical). Stale `dbugintf`, `fpimgcanv`, `xmldatapacketreader` rebuilt (no other unit uses them). An FV program
  resolves every FPC symbol from the archives. Note: the univint units record FV `menus` (they were built against it).
