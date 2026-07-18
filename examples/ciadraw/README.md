# CIA Draw — ANSI Art Editor (1996)

Classic DOS ANSI/font editor from 1996, written in Turbo Pascal.
10 source files, uses direct VGA register access, BIOS interrupts,
and Turbo Pascal inline assembly.

## Source Files

| File | Lines | Purpose | TP-specific |
|------|-------|---------|-------------|
| CIADRAW.PAS | 1800+ | Main program | Mem[], asm |
| EXTENSE.PAS | 400+ | Extended Pascal routines | Mem[], MemW[], asm, Inline |
| MOUSE.PAS | 200+ | Mouse driver (INT 33h) | asm |
| FILELST.PAS | 250+ | File listing lightbars | Mem[], asm |
| LOAD.PAS | 300+ | ANSI file loader | Mem[], asm |
| PALLETTE.PAS | 100+ | VGA palette manipulation | asm, Port[] |
| FONTEDIT.PAS | 300+ | Font editor | asm |
| FONTUNIT.PAS | 70 | Font data unit | PortW[], Inline |
| EXEC.PAS | 50 | Memory-efficient exec | asm |
| RUNTIME.PAS | 80 | Critical error handler | Interrupt |

## Porting Status

**Not yet ported.** Requires systematic conversion of:
- `Inline(...)` → FPC `asm ... end` blocks
- `PortW[$3C4]` → FPC `Port[$3C4]` (FPC supports Port[] on DOS)
- `Mem[$B800:offset]` → absolute variable or pointer
- TP-style `asm` blocks → NASM-compatible syntax
- `Interrupt` keyword → FPC interrupt procedure syntax

## Original

Source from ciasrc.zip, dated 1996. ANSI art editor for DOS.

## Credits

Original authors: **Burning Chrome** and **Sudden Death** (1996).
Adapted for fpc264irc preservation. License: GPLv3+ (see examples/LICENSE).
