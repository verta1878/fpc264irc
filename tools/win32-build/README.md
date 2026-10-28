# i386-win32 unit build kit — byte, 2026-10-27

Rebuilds `bin/units/i386-win32` (922 units, + 151 import libraries `libimp<unit>.a`) from this repo's `src/` with
`bin/ppc386`, packed the way the repo ships units (`.ppu` + `libp<unit>.a`). Linux x86_64 host. Made from
`tools/linux-build`. The LCL copy `bin/units/i386-win32/lcl` (616 units) and the Lazarus set
`bin/lazarus/units/i386-win32` (304) are the next step (docs/UNIT-REBUILD.md item 7).

```
tools/win32-build/build.sh [work dir]      # -> <work>/units (bin/units/i386-win32)
```
Default work dir `$TMPDIR/fpc264irc-win32`. Needs make, python3. About 3 minutes. Two runs give byte-identical results
(source dates fixed to 2025-01-01; the member dates of the import libraries set to 2025-01-01, `ardate.py`).

| Step | What |
|---|---|
| 1 | copy `src/rtl`, `packages`, `lazarus`, `compiler`, `fpgui-src`, `utils` (the folder holds units of all of them), fix the dates |
| 2 | `drive.py`: every unit of `units-i386.txt`, dependencies first - the RTL units too, with the RTL Makefile's options (`-di386` and the RTL include folders; `system` `-Us -Sg`) |
| 3 | `tools/smartpack/pack-units.sh`; `ardate.py` on the import libraries |

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

## Checked
- `ppu_consistency.py`: 0 notes (shipped: 103 interface-only).
- Every unit compiles in a program: 912 of the 914 tried; the other 2 are the 8.3 aliases `convutil` / `dateutil`,
  which cannot be named in `uses` (same with the shipped set). Not tried: system, objpas, the 3 sysinit units,
  fpintres, rtlconst, buildrtl.
- Run under Wine: classes, strutils, fpjson, dom, zipper, md5, base64, math, `Str` of a real, `dynlibs`
  LoadLibrary / GetProcAddress / FreeLibrary on kernel32, openssl (links; Wine has no SSL DLL); 4 threads with a critical
  section, heap, exceptions; a DLL built with these units, loaded and called (BUG-038). Not tested on Windows 11.
