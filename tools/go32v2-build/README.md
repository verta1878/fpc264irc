# i386-go32v2 (32-bit DOS) unit build kit — byte, 2026-10-13

Rebuilds `bin/units/i386-go32v2` (235 units, 233 built + 2 kept), the Lazarus set `bin/lazarus/units/i386-go32v2`
(135 + 3) and the `.ppu`-only LCL copy `bin/units/i386-go32v2/lcl` from this repo's sources with `bin/ppc386`, packed
the way the repo ships go32v2 units (`.ppu` + `<unit>.a`). Linux x86_64 host. Made from `tools/linux-build`.

```
tools/go32v2-build/build.sh i386 [work dir]   # -> <work>/units (bin/units/i386-go32v2) + <work>/lazarus (bin/lazarus/units/i386-go32v2)
```
About 1.5 minutes. Two runs give byte-identical results (source dates fixed; Lazarus compiled in `/tmp/fpc264irc-lazbuild`;
the compiler's `-CX` archives rewritten without member dates, `ar D`).

| Step | What |
|---|---|
| 1 | copy `src/rtl`, `src/packages`, `src/lazarus`, `libs/`, fix the dates; `patched/fileutil.pas` over `src/lazarus/lazutils/fileutil.pas` |
| 2 | RTL Makefile (`rtl/go32v2`, output `rtl/units/go32v2`) with `bin/tools/i386-go32v2` — 52 units + `prt0.o exceptn.o fpu.o` (identical to the shipped ones) |
| 3 | `drive.py`: the other units; options from `opts-i386.txt` |
| 4 | `-CX` archives normalised, then `tools/smartpack/pack-units.sh` |
| 5 | `lazdrive.py`: the Lazarus units (`laz-i386.txt` + `laz-extra-i386.txt`, per-unit options `laz-opts-i386.txt`) |

## Files
- `opts-i386.txt` — per unit: the options the shipped unit was built with (`pickopts.py`, same checksums), and `-CX`
  for the 78 units that shipped smart-linked (one object per routine — DOS programs link only what they use; the other
  units shipped as one object and stay so). RTL units listed there are built by `drive.py`, not taken from the Makefile.
- `override-i386.txt` — sources outside the usual places: `unixcp` = `src/rtl/objpas/unicode/unixcp_go32v2.pp` (copied as
  `unixcp.pp`), `fossil` / `serial_irq` = `libs/`.
- `patched/fileutil.pas` — `src/lazarus/lazutils/fileutil.pas` with `GO32V2` / `MSDOS` taking the OS/2 (`Dos`) branch,
  as `lazfileutils.pas` and `lazutf8.pas` of the same folder already do (same line count). Without it fileutil does
  not compile for go32v2 (it wants `Unix`); the shipped unit was built from such a version (its `.ppu` lists
  `os2fileutil.inc`).
- `laz-extra-i386.txt` — `messages wslclclasses wsreferences`: the Lazarus LCL units use them, but only the `.ppu`-only copy
  `bin/units/i386-go32v2/lcl` had them.
- `laz-opts-i386.txt` — lazutils' own copies of `uriparser` and `fpimage` are built like the ones in
  `bin/units/i386-go32v2` (same checksums), so lazutils' `uriparser` no longer hides the RTL one (`xmlread`, used by the
  customdrawn widgetset, would not load).
- Lazarus go32v2 is built from `src/lazarus/lazutils` (it has the GO32V2 line-ending fixes), LCL without debug info, as
  shipped.

## Not rebuilt
`fossil`, `serial_irq` (wrench's `libs/fossil`, `libs/serial`): built against `libs/serial/serial.pas` (`COM_IRQ`, ...),
not against the `serial` unit of this folder (`src/packages/serial`), so they do not compile with it. The shipped files
stay as they are.

## Result against the shipped units (2026-10-13)
**i386-go32v2**: code identical for 132 units, 44 differ only by the old compiler's `concat_multi` calls, 1 by source
(`syncobjs`); 56 units had shipped as `.ppu` only (jpeg, image readers/writers, 5 LCL helpers ...) and now have their code.
Interface checksums: the same for all but 3 — `fpwidestring`, `resolve`, `syncobjs` were built from other source than
`src/` has (the shipped `.ppu` files record other file dates / an older `syncobjs.pp`). `ppu_consistency`: 2 notes
(fossil, serial_irq - see above), shipped 57.

**Lazarus i386-go32v2** (135 + `messages wslclclasses wsreferences`): rebuilt against the new units. Before: every unit
recorded a `sysutils` the RTL folder did not have, and 9 units could not load at all (`ppu_consistency`: 9 fatal,
189 notes; now 1 - FV `tabs` vs LCL `Dialogs`, the name clash every Lazarus set has - and 15 notes).
`bin/units/i386-go32v2/lcl` (83 `.ppu`, no code) now holds the same units from this build, with their code.

## Checked
- Every unit compiles in a program (229 + 4 that cannot be named in `uses`: system, rtlconst, convutil, dateutil;
  all 138 Lazarus units).
- Run in DOSBox (svga_s3, CWSDPMI): RTL programs (classes, strutils, md5, fpjson, dom/xmlread, zipper, dateutils, math)
  and a Free Vision dialog program. An LCL customdrawn (VESA) program links; it did not finish in DOSBox within
  90 s (not looked into).
- Found, not changed: on go32v2 (old and new units alike) `s := 'literal'; s := s + ' ' + MD5Print(...)` writes zeros
  into the result every 8 bytes (EncodeStringBase64 shows it too); the same program is correct on i386-linux.
