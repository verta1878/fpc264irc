# i386-darwin (32-bit Mac) unit build kit — byte, 2026-10-16

Rebuilds `bin/units/i386-darwin` (809 units: 798 + `fv/` 3 + `univint/` 8) and the Lazarus set
`bin/lazarus/units/i386-darwin` (271: `lazutils`, `lcl`, `lcl/carbon`, `lcl/cocoa`) from this repo's `src/` with
`bin/ppc386`, packed the way the repo ships units (`.ppu` + `libp<unit>.a`). Linux x86_64 host. Made from
`tools/darwin64-build` (units) and `tools/go32v2-build` (Lazarus).

```
tools/darwin-build/build.sh [work dir]   # -> <work>/units (bin/units/i386-darwin) + <work>/lazarus (bin/lazarus/units/i386-darwin)
```
About 6 minutes. Needs make, python3, llvm-ar. Two runs give byte-identical results (source dates fixed to 2025-01-01;
Lazarus compiled in `/tmp/fpc264irc-lazbuild`, `LAZBUILDDIR=` to change).

| Step | What |
|---|---|
| 1 | copy `src/rtl`, `src/packages`, `src/lazarus`, fix the dates; `patched/dynlibs.pas` (as `tools/darwin64-build`) |
| 2 | RTL Makefile (`rtl/darwin`, `CPU_TARGET=i386`) with `bin/tools/i386-darwin` — 60 units |
| 3 | `drive.py`: the other units of `units.txt`, options per unit from `opts-i386.txt` |
| 4 | `tools/smartpack/pack-units.sh` (main folder, `fv/`, `univint/`) |
| 5 | `lazdrive.py`: the Lazarus units (`laz-i386.txt`, per-unit options `laz-opts-i386.txt`) |

## Folder layout (changed 2026-10-16)
Some units share a name, and one folder can hold only one of each:
- **`fv/`** — Free Vision's `dialogs`, `menus` and `resource` (before: only `dialogs`; FV `menus` and `resource` were in
  the main folder). The main folder has univint's (Carbon) `Dialogs` and `Menus` and fcl-res's `Resource`. Free Vision programs: `-Fu.../i386-darwin/fv` first, as
  before. Same layout as `bin/units/x86_64-darwin`. univint's `Menus` keeps the file names the folder had
  (`menus.ppu`, `libpmenus.a`; `drive.py` compiles it as `menus.pas`): a name that only changes case would stay
  lower-case in a git checkout on Windows, and a `.ppu` names its archive exactly.
- **`univint/`** (new) — univint's `Video` (same name as the RTL `video` unit) and the 7 univint units that use it:
  `Displays`, `DrawSprocket`, `QuickTimeComponents`, `QuickTimeStreaming`, `QTStreamingComponents`, `QTSMovie`,
  `MacOS` (the per-header umbrella; use `MacOSAll`). Nothing else uses them. A program that needs one:
  `-Fu.../i386-darwin/univint` before the main folder (not together with the RTL `video` / Free Vision).

Why: in the shipped set univint's `Video` was missing, so `Displays` & co. recorded the RTL `video`'s checksum and
could not be rebuilt from source (`VDPowerStateRec` not found), and the univint units that use `Menus` recorded Free
Vision's `menus` (21 of them). fcl-res's `Resource` (and the units that use it) was missing - only its `.rst` file was
there, next to Free Vision's `resource` (see Result).

## Files
- `units.txt` — `folder|unit|source|uses`, made by `units.py <repo> <ppudump>` (reads the shipped folder; it also reads
  the new layout).
- `opts-i386.txt` — the options each shipped unit was built with: `pickopts.py <repo> <ppudump> units.txt <date-fixed
  src>` compiles every package unit against the shipped folder with candidate option sets and keeps the one with the
  shipped checksums and code (alignment padding left out). 151 package units `-O2 -Ur`, univint `-Mmacpas`, a few
  `-Sd` / `-Mobjfpc` / `-S2h`; the rest none. RTL units: 31 listed (mostly `-O2`) are built by `drive.py` with the
  Makefile defines; the others come from the Makefile.
- `laz-i386.txt` — made by `lazunits.py <repo> <ppudump> i386-darwin` (carbon / cocoa sources preferred).
- `laz-opts-i386.txt` — the 41 FCL units the Lazarus folders also hold (`gettext`, `fpimage`, `xmlread` ...) are built
  with the options of the main-folder copy, so both copies have the same checksums.
- `lazdrive.py` — lazutils `-MObjFPC -Scghi -O1`; lcl `-gl`; lcl/carbon `-MObjFPC -Scghi -O1 -g -gl -dcarbon`;
  lcl/cocoa `-MObjFPC -Scghi -O1 -dcocoa` (debug info as shipped). lcl and carbon use `-Amacho`: the assembler in
  `bin/tools/i386-darwin` has no `.stabs`.

## Result against the shipped units (2026-10-16)
**i386-darwin** (795 shipped → 809): code identical for 660 (alignment padding aside); 85 differ only by the old
compiler's `concat_multi` calls; 50 differ and no option set gives the shipped code (built earlier with other
compiler settings or older source: e.g. `baseunix`, `sdl`, `clipping`, `fpcanvas`, `dynlibs`, 20 univint units, FV `menus`/`dialogs`).
Interface checksums: the same for all but 4 — `sysutils`, `dos` (the 2 include-guard lines in `src/rtl/inc/filerec.inc`
/ `textrec.inc`, as on every target), `serial` (`src/rtl/unix/serial.pp` changed since: 67 definitions, shipped 31),
`univint/MacOS` (its univint units now really built). 187 more have a changed indirect checksum (they record the
new `sysutils` / `dos`).
New: univint `Video` and `Menus`, and 12 units the other targets' folders have: fcl-res (`resource`, `resdatastream`,
`resfactory`, `resourcetree`, `resmerger`, `groupresource`, `groupiconresource`, `groupcursorresource`,
`stringtableresource`, `icocurtypes`), `fpobserver`, `jconsts`. The folder had 5 `.rst` files of these with no unit
(`fpobserver`, `jconsts`, `resfactory`, `resource`, `stringtableresource` - left there when the darwin linker was
added, 2026-10-07; `resource.rst` sat next to Free Vision's `resource`, which has no strings): the rebuilt units write
the same 5 `.rst` (same strings). Also new: `.rst` for `dbcoll`, `pipesipc`, `sqldblib`, `sqlscript` (units of the folder
that have strings).

**Lazarus i386-darwin** (271): rebuilt against the new units, packed as `.ppu` + `.a` (the 271 loose `.o` files go).
Before: an LCL program did not compile (`Can't find unit LazUTF8 used by Masks`: the set recorded units the folders did
not have); the cocoa units had been built against another LCL.

## Checked
- Two runs byte-identical (units 1,683 files, Lazarus 554).
- `ppu_consistency.py`: main + `fv/`: no stale unit except the name clashes this layout keeps apart (FV vs univint
  `Dialogs`/`Menus`/`resource`, Free Vision `tabs`, the same as every set); Lazarus + units: only the FV/LCL `tabs`/`Dialogs`/`Menus`
  clash (shipped: 7 – 8 fatal).
- Every unit compiles in a program (806 + 3 that cannot be named in `uses`: `system`, `fpintres`, `rtlconst`).
- Linked with `bin/tools/i386-darwin`: the 10 programs of `test/darwin`; an LCL program with the carbon widgetset
  (form, button, label; 21 MB) and with the **cocoa** widgetset (14 MB; needed `_objc_enumerationMutation` in the stub
  `libobjc` - added 2026-10-16, `patches/darwin-cross`). Not run (no Mac here).
- No unit in these folders calls `fpc_*_concat_multi` any more (only `system` still has the helpers).
