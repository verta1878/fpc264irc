# Units & linking roadmap (byte, 2026-10-02)

State after the smartpack commit (`65b9ec68`): units ship as `.ppu` + `.a`; link + run tested on i386/x86_64 Linux,
Win32/Win64 (Wine), go32v2 (DOSBox); i386 FreeBSD links; ptcgraph links from repo units alone.

| # | Item | Status |
|---|------|--------|
| 1 | i386-darwin units | Open. The `.o` files are malformed: the cross compiler writes 16-byte Mach-O `nlist` entries (pointer-sized `n_strx` from the 64-bit host) instead of 12. Needs a compiler fix (`ogmacho`) + rebuild, then smartpack. |
| 2 | i8086 medium/large/huge | Open. PPU207 (3.2.2) units built without `-CX`; their archives are OMF libraries. Rebuild with `-CX` in `tools/i8086-graph-build`. |
| 3 | i386-os2 object code + linking | **Done 2026-10-02** - 219 units as `.ppu` + `.a`; `-FD bin/tools/i386-os2` links native OS/2 LX executables (see `bin/tools/i386-os2/README.md`). Not yet run on real OS/2. |
| 4 | Stale units | **Done 2026-10-02** for the fatal cases (see below). Left: i386-win32 FV `editors`/`tabs`/`timeddlg` (LCL `Dialogs` in the same folder hides FV `Dialogs`), win32 `fpwidestring`, `xmliconv_windows`; win64 `pkgfpmake`; go32v2 LCL copies `fileutil`/`graphics`; Lazarus sets' own stale records. |
| 5 | `CHECKSUMS.md5` / `CHECKSUMS.sha256` / `CHECKSUMS.txt` | **Done 2026-10-02** - regenerated for the current tree (they no longer list themselves). |
| 6 | OS/2 kit README | Open (resource now comes from fcl-res). |
| 7 | USB | **Done 2026-10-02** - the `.o`/`.ppu` in `src/packages/usb/src` and `src/rtl/usb` were the i386-linux USB stack (r311); `usbhub`, `usbmsd`, `usbtrans`, `libusb`, `usbserial` now ship in `bin/units/i386-linux` as `.ppu` + `.a` (usbcore was already there), the 12 build files in `src` are removed. Test program with all six USB units links and runs. |
| 8 | Win32/Win64 GDI graph hi-colour | Deferred to the newer-FPC step (upstream never added it; ptcgraph has it). |

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
