# Linux unit build kit (i386-linux, x86_64-linux) — byte, 2026-10-13 (x86_64: 2026-10-27)

Rebuilds `bin/units/i386-linux` (275 units) and the Lazarus set `bin/lazarus/units/i386-linux` (228) from this repo's
`src/` with `bin/ppc386`, packed the way the repo ships units (`.ppu` + `libp<unit>.a`). Linux x86_64 host. Made from
`tools/freebsd-build` (same steps, same scripts with the target changed). x86_64-linux (2026-10-27): see the
section at the end.

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

## x86_64-linux (2026-10-27)

```
tools/linux-build/build.sh x86_64 [work dir]   # -> <work>/units (bin/units/x86_64-linux, with units/lcl)
                                               #    + <work>/lazarus (bin/lazarus/units/x86_64-linux)
```
About 2 minutes. Two runs give byte-identical results.

| Folder | Units | Built from |
|---|---|---|
| `bin/units/x86_64-linux` | 563 | RTL Makefile + `drive.py` (`units-x86_64.txt`, `opts-x86_64.txt`, `override-x86_64.txt`) |
| `bin/units/x86_64-linux/lcl` | 69 | `lazdrive.py` (`lazmain-x86_64.txt`): one flat folder with lazutils + LCL + the **nogui** widgetset, no debug info |
| `bin/lazarus/units/x86_64-linux` | 411 | `lazdrive.py` (`laz-x86_64.txt`): lazutils, lcl, lcl/customdrawn, codetools, lazcontrols, ideintf, synedit |

What is different from i386:
- **PIC.** Most shipped x86_64 units were built with `-Cg` (position independent code; the RTL and package Makefiles add
  it on x86_64). `-Cg` also changes a unit's checksums (2 more symbols), so `pickopts.py` now tries every option set
  with and without it, and keeps a set whose *code* is the same when no set gives the shipped checksums (`code`).
  Result: all 500 package units reproduce the shipped checksums, 392 also the same code.
- **RTL units without `-Cg`.** The shipped `cthreads`, `dl`, `dynlibs`, `fpintres`, `objpas`, `rtlconst`, `serial`
  were built without it. They and the RTL units that use them are listed in `opts-x86_64.txt` with their options;
  `drive.py` builds RTL units listed there itself instead of taking the Makefile's copy.
- `drive.py` uses `bin/tools/x86_64-linux` for x86_64; `build.sh` copies `src/lazarus` for x86_64 too
  (`lazaruspackageintf` in the main folder comes from it).
- `override-x86_64.txt`: `dynlibs` (as i386) and `apr`, `apriconv`, `aprutil` from `httpd22` (the version `httpd` uses).
- `lazunits.py`: `LAZDIR=bin/units/x86_64-linux/lcl LAZWS=nogui` makes the list of the flat LCL copy (folder name
  `mainlcl`); the CPU is taken from the target.
- `lazdrive.py` (x86_64 only, i386 unchanged): `ppcx64`, `-Cg` for lcl, lcl/customdrawn, lazcontrols, ideintf, synedit,
  codetools (as shipped; lazutils and the flat copy without); FCL units a Lazarus folder holds a copy of are built with
  the main-folder options, and lazutils units the `lcl` folder holds a copy of with the lazutils options - so every
  copy has the same checksums as the original and the folder order of a program does not matter.

### Result against the shipped units (2026-10-27)
**bin/units/x86_64-linux** (632 = 563 + `lcl/` 69): code identical for 479; 144 differ only by the old compiler's
`fpc_*_concat_multi` calls; `fpcylix` only in data offsets; 8 for other reasons - source changed since (`clipping`,
`fpcanvas`, `dl` (Patch 5), `lcl/imagelistcache`) or built from older include files (`baseunix`, `uforkpty`,
`groupcursorresource`, `groupiconresource`: same symbols, other code).
Interface checksums changed: `sysutils`, `dos` (the include guards, as on every target), `dynlibs` (Patch 5 names,
as i386) and `fpcylix` with it, `dl` (Patch 5); `objpas`, `rtlconst`, `cthreads`: the shipped ones were written by
another compiler build (`cthreads` records 2020 source dates) - same code, other checksums; `lcl/fileutil`,
`lcl/imagelistcache` (source). Every unit that uses them is rebuilt with them.
Removed: `system.ppu.new`, `system.o.new` (leftovers nothing used). Kept: `graph.pp` (the `{$fatal}` stub, see
test/x64graph). New: 59 `.rst` files of units that have strings; `zipper.rst` changed (its source text changed, as i386).
The old `lcl/` units recorded an `objpas` the folder did not have.

**bin/lazarus/units/x86_64-linux** (411): code identical 189, old helper 147, data offsets 61, other 14 - the copies
now built with the main-folder / lazutils options (lazutils `contnrs fpimage pipes process`, lcl `laz2_xmlcfg
laz2_xmlread laz2_xmlutils lazfilecache lazutf8classes lconvencoding masks`, lcl/customdrawn `paswstring`) and source
changed since (`idehelpintf`, `imagelistcache`). New: 24 `.lfm` / `.rst` files the compiler writes next to the units.

### Checked (x86_64-linux)
- `ppu_consistency.py`: main folder 0 notes (shipped: 510); main + `lcl/` the FV `tabs` vs LCL `Dialogs` clash
  every set has and 11 notes (shipped: the same + 587 notes); the Lazarus set with the main folder: the same clash and 20 notes
  (shipped: 7 fatal, 1201 notes).
- Every unit compiles in a program: 559 + 4 that cannot be named in `uses` (system, objpas, fpintres, rtlconst);
  all 69 of `lcl/`; all 411 Lazarus units.
- Linked and run on this host: an RTL/FCL program (classes, strutils, fpjson, dom, process, zipper, md5, base64, math,
  cthreads, `dynlibs` LoadLibrary/GetProcAddress/FreeLibrary on libc); a Free Vision program; an LCL customdrawn
  program (form, button, timer) under Xvfb; an LCL nogui program with `bin/units/x86_64-linux/lcl`; `fpcres` from
  `src/utils/fpcres` (it needed a separate RTL build before, tools/build-fpcres.sh).
- No unit calls `fpc_*_concat_multi` any more (only `system` still has the helpers).
