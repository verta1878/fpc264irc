# OS/2 (i386-emx) Cross-Compilation — Linking Solved

This document records the resolution of the OS/2 linking blocker, the
project's hardest technical problem.

## The problem

FPC's OS/2 target emits DLL imports as a.out import symbols (N_IMP1/N_IMP2).
Linking any OS/2 program with GNU ld 2.30 produced ~320 errors of the form
`undefined reference to $dll$doscalls$_index_NNN`.

## Root cause

N_IMP1 (0x68) and N_IMP2 (0x6a) fall within the N_STAB mask range (0xe0),
so stock binutils classified them as debugging symbols and skipped them at
several points. The decisive one: in `aout_link_check_ar_symbols`, the
archive-member *inclusion* test only fired for N_TEXT/N_DATA/N_BSS/N_ABS/
N_INDR external symbols. N_IMP1 wasn't listed, so even when an import symbol
matched an undefined reference, the archive member defining it was never
pulled in — the definition was never registered, and the reference stayed
undefined.

## The fix — binutils patch (7 changes)

`bfd/aoutx.h` (6):
1. Define N_IMP1/N_IMP2 and IS_EMX_IMPORT() macro
2. translate_from_native_sym_flags: classify N_IMP as BSF_GLOBAL absolute
3. aout_link_add_symbols: don't skip N_IMP at the N_STAB filter
4. aout_link_add_symbols switch: handle N_IMP (was abort())
5. aout_link_check_ar_symbols: don't skip N_IMP at the visibility filter
6. aout_link_check_ar_symbols: add N_IMP1 to the member-inclusion trigger
   — THE KEY FIX

`bfd/linker.c` (1):
7. Strip leading underscore in the archive index lookup so stripped
   references resolve against underscore-prefixed archive symbols

Patch: `patches/os2-cross/binutils-2.30-emx-nimp.patch` (applies clean to
fresh binutils-2.30, verified).

## The fix — compiler change (1 change)

`src/compiler/systems/t_emx.pas`: the ld command gains `-Ttext 0x10000`.
This places the text segment at EMX's TEXT_BASE, so the a.out entry point
equals TEXT_BASE — which emxbind requires when binding the executable.

## Result

`hello_os2.pas` now compiles, assembles, and links to a 224 KB a.out
executable with **zero undefined references** and entry point 0x10000.
All six DLL import ordinals (220, 226, 255, 270, 312, 382) resolve.

## emxbind

emxbind (EMX 0.9d, GPL) converts the a.out to a final OS/2 LX executable.
It has been ported to Linux and builds/runs (see `patches/os2-cross/emxbind/`
and its BUILD-LINUX.md). It reads and validates FPC's a.out correctly.
The final bind step prepends `emxl.exe`, the EMX runtime loader — a
redistributable OS/2 binary that ships with the EMX runtime. See
`patches/os2-cross/EMXL-LOADER.md`.

## Dead ends (documented footing)

1. N_IMP2 -> BSF_LOCAL — archive index still included both
2. N_IMP1 -> text section — broke resolution entirely
3. Archive filter change at wrong layer — ar didn't relink
4. Compiler-side underscore strip — fixed one side, broke the match
5. linker.c archive lookup strip — necessary but insufficient alone
6. N_IMP1 member-inclusion trigger — completes the fix (0 undefined)
