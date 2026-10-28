# i386-win32 unit build kit — byte, 2026-10-27

Rebuilds `bin/units/i386-win32` (922 units, + 151 import libraries `libimp<unit>.a`), its LCL copy
`bin/units/i386-win32/lcl` (616: a whole Lazarus IDE build in one folder) and the Lazarus set
`bin/lazarus/units/i386-win32` (304) from this repo's `src/` with `bin/ppc386`, packed the way the repo ships units
(`.ppu` + `libp<unit>.a`). Linux x86_64 host. Made from `tools/linux-build`.

```
tools/win32-build/build.sh [work dir]      # -> <work>/units (bin/units/i386-win32, with units/lcl) + <work>/lazarus
```
Default work dir `$TMPDIR/fpc264irc-win32`. Needs make, python3. About 9 minutes. Two runs give byte-identical results
(source dates fixed to 2025-01-01; the member dates of the import libraries set to 2025-01-01, `ardate.py`) - on the
same day: `fpcmmain` puts the build date in its code (`{$i %DATE}` in src/utils/fpcm), and the compiler is a static
binary, so faketime cannot change it.

| Step | What |
|---|---|
| 1 | copy `src/rtl`, `packages`, `lazarus`, `compiler`, `fpgui-src`, `utils` (the folder holds units of all of them), fix the dates |
| 2 | `drive.py`: every unit of `units-i386.txt`, dependencies first - the RTL units too, with the RTL Makefile's options (`-di386` and the RTL include folders; `system` `-Us -Sg`) |
| 3 | `tools/smartpack/pack-units.sh`; `ardate.py` on the import libraries |
| 5 | `lazdrive.py` (`lazmain-i386.txt`): the LCL / IDE copy `lcl/` - lazutils, LCL + win32 widgetset, codetools, synedit, ideintf, lazcontrols, debugger, packager, ide - no options, no debug info (as shipped) |
| 6 | `lazdrive.py` (`laz-i386.txt`): the Lazarus set - lazutils `-MObjFPC -Scghi -O1`, lcl and lcl/win32 `-gl`, lazcontrols / ideintf / synedit win32 `-MObjFPC -Scghi -O1 -g -gl -dLCL -dLCLwin32` (synedit also `-CR -dgc`) |

## Files
- `units-i386.txt` — `unit|source|uses`, made by `units.py <repo> <ppudump> i386` (win32 source folders preferred).
  `override-i386.txt`: `suiteconfig` (the fcl-fpcunit demo, not the fcl-stl test), `windows` (`rtl/win32`, not wince).
- `opts-i386.txt` — `pickopts.py <repo> <ppudump> i386 win32 units-i386.txt <date-fixed src>`: each package unit
  compiled against the shipped folder with candidate option sets; a unit the shipped one was built with `-Ur`
  ("release" in its unit flags) gets `-Ur` in every candidate. Objects over 4 MB (`jwawindows`) are compared by
  checksums only (objdump on them takes minutes and GBs). Added by hand: `-Sg` (lexbase, yaccbase, fpextres:
  `goto`), `-di386` (`globtype`, a compiler unit), `-O2` (`fpwidestring`, `pipes`: same code as shipped), `system`.
- `drive.py` (win32): `-Twin32`, `bin/tools/i386-win32`, the win32 RTL include folders, moves the compiler's import
  libraries with their unit; `locked-<cpu>.txt` (not used now) would take units from the shipped folder unchanged.

- `lazunits.py` (from tools/linux-build, + `LAZPREF=laz`): the lists of step 5 (`LAZDIR=bin/units/i386-win32/lcl
  LAZWS=win32`) and step 6 (`LAZWS=win32 LAZPREF=laz`). The shipped Lazarus set recorded units the folders did not
  have (1358 checksum misses), so a used unit is matched by name; `LAZPREF=laz` makes a name both the main folder and a
  Lazarus folder have (Dialogs, Menus: Free Vision vs LCL) the Lazarus one.
- `lazdrive.py` (win32): `-Twin32`, the win32 widgetset folders, import libraries move with their unit, FCL units a
  Lazarus folder holds a copy of (synedit/win32 `registry`) built with the main-folder options (same checksums).
- 2026-10-28: in the 2026-10-27 delivery the units built from `src/packages`, `compiler`, `fpgui-src`, `utils` and
  `lazarus` recorded the real file dates (byte's sandbox reached those folders through links, which `cp -r` copied as
  links, so the date fix missed them). `build.sh` now copies with `cp -rL`; the main folder is rebuilt with fixed
  dates - 851 files change, checksums and code stay the same, and a clean checkout gives these bytes.

## system (BUG-001, BUG-029)
The shipped `system` was a locked binary (Runtime Error 216 on Windows 11 with a 2026-08 build; FreeMem fix patched
into the object). Built from today's source it has the same checksums (89122472) and the same code except two
routines, `Str_Real` and `DoAssign(TypedFile)`, which differ only by the old compiler's string-join helper - both
fixes are in the source now. verta 2026-10-27: build it from source like every other unit.

## dynlibs
The win32 `dynlibs` (`src/rtl/win/dynlibs.pas`, sysop/0's minimal unit) had no `GetProcAddress` / `FreeLibrary`, so
`openssl` (and anything else that uses those names, as Patch 5 added them on unix) did not compile. Both added
2026-10-27 (they call `GetProcedureAddress` / `UnloadLibrary`); `dynlibs` has a new interface and its users are
rebuilt with it.

## paswstring (lazutils)
`src/lazarus/components/lazutils/paswstring.pas` (and the copy in `src/lazarus/lazutils`) used the codepage-less
widestring manager signatures under `{$IFDEF MSWINDOWS}` - written for an older win32 `system`. The win32 `system`
(the source build and the locked object alike) has the codepage-aware `TUnicodeStringManager` (BUG-010), so the unit
did not compile for win32. 2026-10-28: the MSWINDOWS branches removed, every target uses the `cp:TSystemCodePage`
signatures.

## Result against the shipped units (2026-10-27)
922 units: checksums the same for 904; code identical for 751, 168 differ only by the old compiler's
`fpc_*_concat_multi` / shortstring-join calls (`system` among them), `dbcoll` and `jwawindows` only in data offsets,
3 for other reasons: `dynlibs` (the two new functions), `character` (source changed since), `scan` (built from other
source before). Interface changed: `dynlibs` (+2 functions) and `openssl` with it; units the shipped folder had built
against units it did not hold (they recorded other checksums): `jwawindows`, `jwaactiveds`, `jwaadshlp`, `jwadsadmin`,
`jwadsclient`, `jwantquery`, `dbcoll`, `fpcmmain`, `globtype`, `scan`.
New: 9 import libraries the compiler now writes for units that import DLL functions (`libimpjwa*`, `libimpxmliconv_windows`),
`dbcoll.rst`, `dbugintf.rst`. Kept unchanged (not made by the kit): `activex_fix.pas`, `lazarus.or`, `libimpmultimon.a`,
`ptop.rst`, `rstconv.rst`, the `lcl/` folder.

### lcl/ and the Lazarus set (2026-10-28)
**bin/units/i386-win32/lcl** (616): checksums the same for all 616 (the folder was built against the shipped main
folder); code identical for 347, 269 differ only by the old string-join helper. Kept (not made by the kit):
`dialogs.rst`, `editoroptions.res`, `lazarus.res`.
**bin/lazarus/units/i386-win32** (304): the shipped set recorded a `system`, `objpas`, `classes` ... the folders did not
have; rebuilt against the new units. Code: identical 69, old helper 51, data offsets 69, other 10 (paswstring, source
changed since: laz2_xmlread, laz2_xpath, imagelistcache, win32 widgetset units); 105 units of lazcontrols, ideintf and
synedit (win32) had a `.ppu` but no code and now have their `libp<unit>.a`. New: 7 `.lfm`, 7 `.rst`.

## Checked
- `ppu_consistency.py`: main 0 notes (shipped: 103 interface-only); main + `lcl/` only the FV `tabs` vs LCL `Dialogs`
  clash every set has + 11 notes (as shipped); Lazarus set + main: the same clash + 14 notes (shipped: 34 fatal in 28
  units, 1409 notes).
- Every `lcl/` unit (616) and every Lazarus unit (304) compiles in a program.
- Every unit compiles in a program: 912 of the 914 tried; the other 2 are the 8.3 aliases `convutil` / `dateutil`,
  which cannot be named in `uses` (same with the shipped set). Not tried: system, objpas, the 3 sysinit units,
  fpintres, rtlconst, buildrtl.
- Run under Wine: classes, strutils, fpjson, dom, zipper, md5, base64, math, `Str` of a real, `dynlibs`
  LoadLibrary / GetProcAddress / FreeLibrary on kernel32, openssl (links; Wine has no SSL DLL); 4 threads with a critical
  section, heap, exceptions; a DLL built with these units, loaded and called (BUG-038). An LCL win32 program
  (form, button, timer) links with both LCL sets (`-XPi386-win32-` for fpcres) but stops under Wine with "Failed to
  create win32 control, error 1411: Class does not exist" - the same with the shipped units, a plain RegisterClass /
  CreateWindow program works: an LCL-under-Wine problem, not this rebuild. Not tested on Windows 11.
