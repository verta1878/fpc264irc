# i8086-msdos RTL + graph unit — byte, 2026-10-01 (graph), 2026-10-07 (RTL)

Source: FPC 3.2.2 upstream `packages/graph/src/msdos` (+ 3.2.2 `src/inc`), unchanged.
ppcross8086 is FPC 3.2.2 (PPU207), so the matching upstream real-mode backend is used.
The 3.2.2 `inc` files are kept here, NOT copied over `src/packages/graph/src/inc` (that is 2.6.4 and used by the other targets).

Built (-O2 -CX, smartlinked like the rest of the i8086 units):
| unit dir | model | graph |
|---|---|---|
| bin/units/i8086-msdos | huge (default set) | yes |
| bin/units/i8086-msdos-medium | medium | yes |
| bin/units/i8086-msdos-large | large | yes |
| bin/units/i8086-msdos-huge | huge | yes |
| tiny / small / compact | one 64KB code segment | no — graph + RTL overflows 64KB at link |

Runtime test (gtest.pas, linked with the internal MZ linker, run in DOSBox 0.74 svga_s3) — same result on all 4:
```
CGA-C0   OK 320x200 colors=4   putpix=1 line=2  bar=3
EGA-Hi   OK 640x350 colors=16  putpix=5 line=14 bar=3
VGA-Hi   OK 640x480 colors=16  putpix=5 line=14 bar=3
8bit-320 OK 320x200 colors=256 putpix=5 line=14 bar=3   (mode 13h)
8bit-640 OK 640x480 colors=256 putpix=5 line=14 bar=3   (VESA)
16bit-640 OK 640x480           putpix=5 line=14 bar=3   (VESA hicolor)
```
(CGA 4-colour: 5→1, 14→2 is correct palette masking. 16-bit "colors" overflows smallint in the test print only.)

Usage:
```
ppcross8086 -Tmsdos -WmLarge -XX -Fubin/units/i8086-msdos-large prog.pas
```

## RTL for each memory model — `build-rtl.sh` (2026-10-07)

```
tools/i8086-graph-build/build-rtl.sh <tiny|small|medium|compact|large|huge> [work dir]   # default work dir: $TMPDIR/fpc264irc-i8086
# -> <work>/out/i8086-msdos-<model>: the same file set as bin/units/i8086-msdos-<model>
```

ppcross8086 is FPC 3.2.2, so the RTL comes from FPC 3.2.2: `rtl/`, `packages/rtl-console` (crt, keyboard, mouse, video)
and `packages/rtl-extra` (objects, printer), downloaded from the FPC GitLab `release_3_2_2` tag and checked by SHA-256
(pinned in the script). Flags: the RTL Makefile's own + `-Wm<model> -CX`; startup code (`prt0?.o`) assembled with nasm.
medium/large/huge also get graph (`-O2 -CX`, as above). Needs curl, nasm, make.

Check: tiny, small and compact rebuilt this way are the same as the shipped sets (same files, same sizes; the `.ppu`
files differ only in stored file dates), so this is how those three were made.

### medium / large / huge rebuilt with -CX (2026-10-07)
The shipped medium/large/huge RTL sets were built without `-CX` (one `.o` per unit, `-Anasmobj`). Every unit was linked
whole, so programs did not fit:

| test program | old set | new set (-CX) |
|---|---|---|
| sysutils+math+crt+dos+objects+strings+getopts+types+keyboard+video+mouse+printer, medium | link fails: DGROUP over 64K by 12992 bytes | 84,336 bytes, runs |
| same, large | link fails: DGROUP over 64K by 20501 bytes | 110,300 bytes, runs |
| same, huge | links (256,290 bytes) but **prints nothing** in DOSBox | 119,714 bytes, runs |
| gtest (graph) medium / large / huge | 110,706 / 138,562 / 170,034 bytes, run | 84,724 / 99,314 / 127,074 bytes, run |

Runs: DOSBox 0.74, svga_s3; the graph results are the table above, all six modes OK in all three models.
`.ppu` + `.a` now, like tiny/small/compact; only `prt0m.o`/`prt0l.o`/`prt0h.o` stay as objects.

Limit (FPC 3.2.2, all models): one unit's code that a program uses must fit in that unit's 64K code segment. A program
using `classes` (e.g. `TStringList`) stops with `Code segment "CLASSES_TEXT" too large` in medium/large/huge, the same as
with the default `bin/units/i8086-msdos` set. Programs that stay with sysutils, objects, crt, dos, graph are fine.
