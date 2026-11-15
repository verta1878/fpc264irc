# x86_64-win64 unit build kit — byte, 2026-11-14

Rebuilds `bin/units/x86_64-win64` (1,039 units) from this repo's `src/` with `bin/ppcx64`, packed the way the repo
ships units (`.ppu` + `libp<unit>.a`). Linux x86_64 host. Made from `tools/win32-build` (no Lazarus set, no `lcl/`
on win64).

```
tools/win64-build/build.sh [work dir]      # -> <work>/units (bin/units/x86_64-win64)
```
Default work dir `$TMPDIR/fpc264irc-win64`. Needs python3 and the host's `ar`. About 5 minutes. Two runs give
byte-identical results (source dates fixed to 2025-01-01).

| Step | What |
|---|---|
| 1 | copy `src/rtl`, `src/packages`, fix the dates |
| 2 | `drive.py`: every unit of `units-x86_64.txt`, dependencies first - the RTL units too, with the RTL Makefile's options (`-dx86_64`, the RTL include folders; `system` `-Us -Sg`); package units with `opts-x86_64.txt` |
| 3 | `tools/smartpack/pack-units.sh`; the import libraries and `.lfm` copies the compiler writes are removed (below) |

win64 uses the compiler's own assembler and linker, so there is no `bin/tools/x86_64-win64`.

## Files
- `units-x86_64.txt` — `unit|source|uses`, made by `units.py <repo> <ppudump> x86_64` (win64 / win source folders
  preferred). `override-x86_64.txt`: `windows` and `graph` from the win32 folders (as win32), `test` = the pasjpeg
  example (not the IDE's test.pas), `syncobjs` = `fcl-base/src/go32v2/syncobjs.pp` (see below).
- `opts-x86_64.txt` — `system` `-Us -Sg`; 16 package units `-O2 -Ur` (fcl-process `pipes` `process` `simpleipc`,
  `dbugintf`, `fpxmlrep`, fppkg `fpmkunit` `fprepos` `pkg*`): found with `pickopts.py <repo> <ppudump> x86_64 win64
  <list> <date-fixed src>` - same checksums and same code. All other units: no options.
- `locked-x86_64.txt` — `wcedit` (IDE editor unit) is taken from the shipped folder unchanged: it was built against
  IDE units the folder does not hold (`weditor`, `wviews` ...), and neither `src/ide` nor `src/packages/ide` matches
  them any more (`mbScrollWheelUp`, `PTopicLinkCollection`). As shipped, it cannot be used from this folder.
- `drive.py` (from win32): `-Twin64`, `-dx86_64`, the win64 RTL include folders; a unit that fails is retried after
  the others (the win32 copy dropped it after the first pass - harmless there, but `syncobjs` was tried before
  `sysutils` here); `{$R *.lfm}` files are copied next to their unit.
- `pickopts.py` (from win32): no `-Cg` candidates on win64; the win include folders are searched before `unix`
  (fcl-process has `src/unix/pipes.inc` and `src/win/pipes.inc`).

## Not shipped
- `libimp<unit>.a`: today's compiler writes 260 import libraries (25 MB). The shipped folder never had them: win64
  links with the internal linker, which takes the DLL imports from the `.ppu`. Checked: a program linked against the
  folder with and without them runs the same under Wine.
- `webmodule.lfm`, `wmecho.lfm`, `wmsession.lfm` (fcl-web examples) - copies of their source's form file.
- Kept unchanged (not made by the kit): `restest.rst`, `testcgiapp.rst`.

## syncobjs
The shipped win64 `syncobjs` was built from `src/packages/fcl-base/src/go32v2/syncobjs.pp` (the go32v2 version, which
uses no `sysutils`): its checksums are those of that file, not of `src/syncobjs.pp`. The kit builds it from the same
file so the folder stays as shipped (`fpapache`, `fpapache24`, `ptcwrapper` use it). Building it from
`src/syncobjs.pp` instead changes its interface and theirs - a separate decision (verta).

## Result against the shipped units (2026-11-14)
1,039 units: checksums the same for 1,037; `dynlibs` interface changed (+ `GetProcAddress`, `FreeLibrary`, as win32
2026-10-27), `openssl` indirect checksum with it. Code identical for 1,033; 6 differ:
- `dynlibs` (the two new functions); `gl`, `glu`, `openssl`, `wnaspi32` call `dynlibs.GetProcAddress` now (before:
  the `windows` one) - as win32.
- `sysutils`: built before the "r311 Final" commit (2026-09-06 12:22) took out the workarounds in
  `src/rtl/win/sysutils.pp` (`PChar(Pointer(@F.FindData) + 44)` and others); today's source is the clean one -
  11 routines differ, same checksums.
Every `.ppu` records the fixed source date (2025-01-01) instead of the real ones.

## Checked
- Two runs byte-identical.
- `ppu_consistency.py`: 0 notes (shipped: 3 interface-only).
- Every unit compiles in a program (1,036 + `system`, `fpintres` that cannot be named in `uses`; `wcedit` cannot be
  used, as shipped).
- Linked and run under Wine: a program with windows, sysutils, classes, strutils, fpjson, dom, zipper, md5, base64,
  math, process, syncobjs, contnrs, inifiles, registry and `dynlibs` LoadLibrary / GetProcAddress / FreeLibrary on
  kernel32; a Free Vision + graph + ptcgraph program links.
- Not run on real Windows (no Windows here).
