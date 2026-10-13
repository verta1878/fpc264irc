# FreeBSD unit build kit — byte, 2026-10-12

Rebuilds `bin/units/i386-freebsd` (167 units), `bin/units/x86_64-freebsd` (46) and the Lazarus set
`bin/lazarus/units/i386-freebsd` (312 + 12, see below) from this repo's `src/` with `bin/ppc386` / `bin/ppcx64`,
packed the way the repo ships units (`.ppu` + `libp<unit>.a`). Linux x86_64 host.

```
tools/freebsd-build/build.sh i386   [work dir]   # -> <work>/units (bin/units/i386-freebsd) + <work>/lazarus (bin/lazarus/units/i386-freebsd)
tools/freebsd-build/build.sh x86_64 [work dir]   # -> <work>/units (bin/units/x86_64-freebsd)
```
Default work dir `$TMPDIR/fpc264irc-freebsd-<cpu>`. Needs make, python3. About 20 s (x86_64) / 2 min (i386 with Lazarus).
Two runs give byte-identical results: all source dates are set to 2025-01-01 in a copy of `src/` (a `.ppu` records the
date of every file it was built from), and the Lazarus units are compiled in a fixed folder
(`/tmp/fpc264irc-lazbuild`, `LAZBUILDDIR=` to change) because their debug info records the folder.

| Step | What |
|---|---|
| 1 | copy `src/rtl`, `src/packages` (+ `src/lazarus` for i386), fix the dates; `dynlibs`: i386 the 2.6.4 layout (`tools/darwin64-build/patched/dynlibs.pas`, as shipped), x86_64 `src/rtl/unix/dynlibs.pas` (as shipped) |
| 2 | RTL Makefile (`rtl/freebsd`) with `bin/tools/i386-freebsd` as / ld / ar — 63 / 62 units + `prt0.o cprt0.o gprt0.o dllprt0.o` |
| 3 | `drive.py`: the rest of `units-<cpu>.txt`, each from a copy in an empty folder, dependencies first |
| 4 | `tools/smartpack/pack-units.sh` |
| 5 | i386: `lazdrive.py` — the Lazarus units, against the units of step 4 |

No `-O2`: most shipped FreeBSD units were built without it (8 i386 units had been built with `-O2`, the rest not).

## Files
- `units-<cpu>.txt` — `unit|source|uses`, made by `units.py <repo> <ppudump> <cpu>` from the shipped `.ppu` files
  (`override-i386.txt`: names the scores pick wrong).
- `laz-i386.txt` — `folder|unit|source|g|used folder:unit,...`, made by `lazunits.py <repo> <ppudump> i386-freebsd`:
  every Lazarus unit with the folder of each unit it uses, matched by the checksum the `.ppu` recorded (several FCL
  units exist in two folders). Implementation `uses` included (plain `ppudump`; `-Vhim` leaves them out).
- `laz-extra-i386.txt` — 12 FCL units the shipped Lazarus set used but no shipped folder had (below).
- `lazdrive.py` — options per Lazarus package (from its Makefile / `.compiled` file): lazutils `-MObjFPC -Scghi -O1`;
  lcl, lcl/customdrawn `-gl`; lazcontrols, ideintf `-MObjFPC -Scghi -O1 -g -gl -dLCL -dLCLcustomdrawn`; synedit the same
  plus `-CR -dgc`. Units that use each other through an implementation `uses` are built together in one run (cycle
  groups of 2, 5 and 10 units). Forms (`.lfm`) the compiler copies next to a unit are kept with it.
- `compare.py <built dir> <shipped dir>` — per unit: `.ppu` bytes, each object in `libp<unit>.a`, `.rst`.

## Result against the shipped units (2026-10-12)
**i386-freebsd** (167): code identical for 136; 21 differ only because the old compiler called `fpc_*_concat_multi`
(docs/UNIT-REBUILD.md); 2 only in data offsets; 8 because they had been built with `-O2` (fgl math objpas strings
sysconst types) or from older source (baseunix, dynlibs). Interface checksums: the same for 165 units; `dos` and
`sysutils` changed — `src/rtl/inc/filerec.inc` and `textrec.inc` got 2 include-guard lines after these two were built
(without those lines both rebuild with the shipped checksums). Every unit that uses them is rebuilt with them.

**x86_64-freebsd** (46): all differ from the shipped units (built at different times with a different compiler; the
shipped `.ppu` files record source dates from 2020 to 2026-10); 44 interface checksums change. Nothing else in the repo
uses this folder. New: `prt0.o cprt0.o gprt0.o dllprt0.o` — the folder had no startup code, so no x86_64 FreeBSD program
could link. `bin/tools/i386-freebsd/ld` has only i386 emulations, so x86_64 FreeBSD programs still cannot be linked here.

**bin/lazarus/units/i386-freebsd** (312): rebuilt against the new i386-freebsd units. Before: 234 units recorded the old
`sysutils`; lazcontrols, ideintf and synedit (84 units) shipped as `.ppu` only (no code - nothing could link with them);
`synedithighlighter` needed `registry` and `projectresourcesintf` needed fcl-res `resource`, which no folder had, so
synedit and ideintf did not compile at all. Now: every unit has its code (`.a`), and the 12 missing FCL units are built
into the folder of the unit that uses them — synedit/customdrawn: `registry xmlreg`; ideintf/customdrawn: `resource
resdatastream resfactory resourcetree resmerger groupresource groupiconresource groupcursorresource stringtableresource
icocurtypes`. Code against the old build (lazutils, lcl, lcl/customdrawn): identical for 114, old helper 63, data offsets
48, source changed since (fcl-image `clipping`, `fpcanvas`, lcl `imagelistcache`) 3.

## Checked
- `ppu_consistency.py`: the new folders together report the same 3 notes as before (ideintf's own `crc` unit hides the
  RTL one for `zip`/`unzip`, as in the shipped set) and nothing new.
- Every unit compiles in a program: i386 164 + 3 that cannot be named in `uses` (system, fpintres, rtlconst); x86_64
  44 + 2; all 324 Lazarus units; an LCL customdrawn program using forms, grids, SynEdit and IDEIntf compiles (with the
  shipped set it stopped at `Registry`).
- i386 links (hello, an RTL/zlib/sockets program, test/test_freebsd_sockets.pas). Programs that need FreeBSD's libc or
  X11 cannot be linked here (no FreeBSD libraries) - same as before. Not run (no FreeBSD machine).
- No unit in the three folders calls `fpc_*_concat_multi` any more.
