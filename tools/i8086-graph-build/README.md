# i8086-msdos graph unit — byte, 2026-10-01

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
