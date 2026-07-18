# Renegade 1.40 → FPC i8086 Porting Notes

Renegade 1.40 (March 2026) is the latest version of the classic DOS BBS,
written in Turbo Pascal. This directory contains the unmodified source from
https://github.com/Renegade-Exodus/Renegade for porting assessment.

## Porting Challenges

| Issue | Count | Difficulty |
|-------|-------|------------|
| Turbo Pascal inline assembly | ~74 files | High — needs rewrite for NASM |
| `{$O+}` overlay directives | Many | Medium — FPC doesn't use overlays |
| `Mem[]` / `Port[]` direct access | Several | Medium — use absolute or inline asm |
| SPAWNO unit (DOS exec) | 1 file | Low — replace with FPC's Exec() |
| TP-specific CRT/Dos usage | Throughout | Low — mostly compatible |
| String type differences | Throughout | Low — TP strings = FPC shortstrings |

## Status

**Not yet ported.** The 98 source files need systematic conversion from
Turbo Pascal to FPC-compatible Pascal. The `doorkit86` example in the
sibling directory demonstrates the target: what a fully working i8086
FPC program looks like.

## Approach (when ready)

1. Start with the utility programs (SYSOP tools) — smaller, fewer deps
2. Replace inline assembly with Pascal equivalents or FPC asm blocks
3. Remove overlay directives (`{$O+}`)
4. Replace SPAWNO with FPC's `Exec()` from the `dos` unit
5. Test each unit individually on DOSBox
