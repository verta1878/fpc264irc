# i386-linux unit build kit — byte, 2026-10-13

Rebuilds `bin/units/i386-linux` (275 units) and the Lazarus set `bin/lazarus/units/i386-linux` (228) from this repo's
`src/` with `bin/ppc386`, packed the way the repo ships units (`.ppu` + `libp<unit>.a`). Linux x86_64 host. Made from
`tools/freebsd-build` (same steps, same scripts with the target changed); x86_64-linux is a later step
(docs/UNIT-REBUILD.md item 6) and has no unit list here yet.

```
tools/linux-build/build.sh i386 [work dir]   # -> <work>/units (bin/units/i386-linux) + <work>/lazarus (bin/lazarus/units/i386-linux)
```
Default work dir `$TMPDIR/fpc264irc-linux-i386`. Needs make, python3. About 1.5 minutes. Two runs give byte-identical
results (source dates fixed to 2025-01-01; Lazarus units compiled in `/tmp/fpc264irc-lazbuild`, `LAZBUILDDIR=`).

| Step | What |
|---|---|
| 1 | copy `src/rtl`, `src/packages`, `src/lazarus`, fix the dates; `dynlibs` = `src/rtl/unix/dynlibs.pas` |
| 2 | RTL Makefile (`rtl/linux`) with `bin/tools/i386-linux` — 69 units |
| 3 | `drive.py`: the other units of `units-i386.txt`; package units with the options in `opts-i386.txt`; Free Vision `app dialogs msgbox validate` use each other and are built together |
| 4 | `tools/smartpack/pack-units.sh` |
| 5 | `lazdrive.py`: the Lazarus units (`laz-i386.txt`), against the units of step 4 |

## Files (besides those of tools/freebsd-build)
- `opts-i386.txt` — package units the shipped set was built with options: `pickopts.py <repo> <ppudump> i386 linux
  units-i386.txt <date-fixed src>` compiles each package unit against the shipped folder with several option sets
  and keeps the one that gives the shipped checksums and, where it can, the same code (Free Vision with `-O2`,
  fcl-process `-S2h`, paszlib + regexpr `-Sd`, ...). All other package units: no options. (The FreeBSD kit used the
  package Makefile options; on Linux `-S2h` from fcl-base changes the interface of units that were built without it.)
- `override-i386.txt` — `dynlibs` from `src/rtl/unix/dynlibs.pas`: the shipped unit came from `dynlibs_linux.pas`
  (no `GetProcAddress` / `FreeLibrary`), but `gl` and `openssl` in `src/` call those names (Patch 5), so they did not
  compile against it.

## Result against the shipped units (2026-10-13)
**i386-linux** (275): code identical for 209; 51 differ only by the old compiler's `fpc_*_concat_multi` calls; 5 only
in data offsets; 10 for other reasons — built with `-O2` before (fgl, math), source changed since (baseunix, contnrs,
fcl-image clipping + fpcanvas, usbmsd), dynlibs and the units that now call its Patch 5 names (glext, glx).
Interface checksums: the same for 270; changed: `sysutils` (2 include-guard lines in `src/rtl/inc/filerec.inc` /
`textrec.inc`, as on FreeBSD), `dynlibs` (+ `GetProcAddress`, `FreeLibrary`), `contnrs` (source), `fpcylix` and
`openssl` (they use dynlibs; both already recorded a dynlibs the folder did not have). Every unit that uses them is
rebuilt with them.

**bin/lazarus/units/i386-linux** (228): rebuilt against the new units (they record `sysutils`). Code against the old
build: identical 115, old helper 63, data offsets 47, source changed since (fcl-image clipping, fpcanvas, lcl
imagelistcache) 3. Before, `lconvencoding` recorded a `dos` the folder did not have.

## Checked
- `ppu_consistency.py`: i386-linux alone 0 notes (shipped: 6 interface-only); with the Lazarus set the same name clash
  as before (FV `tabs` vs LCL `Dialogs`) and fewer interface-only notes (14, shipped 20).
- Every unit compiles in a program: 270 + 5 that cannot be named in `uses` (system, si_prc, fpintres, rtlconst,
  convutil); all 228 Lazarus units.
- Linked and run (i386, this host): hello; an RTL program with classes, strutils, fpjson, dom, process, zipper, md5,
  base64 and `dynlibs` (`LoadLibrary` / `GetProcAddress` / `FreeLibrary` on libc - the shipped set did not compile it);
  a Free Vision dialog program; an LCL customdrawn program (form, button, timer) under Xvfb.
- No unit in the two folders calls `fpc_*_concat_multi` any more.
