# OS/2 (native `-Tos2`) link tools (byte, 2026-10-02)

Use: `ppc386 -Tos2 -Fu<repo>/bin/units/i386-os2 -FD<repo>/bin/tools/i386-os2 prog.pas` -> `prog.exe` (OS/2 LX).
Linux x86_64 host. FPC runs `as`, then `ld $OPT -o $OUT @$RES`, then `emxbind -b ... -o $EXE $OUT -ai -s8` -
all three are real programs, no wrapper scripts, no Python.

| File | What |
|---|---|
| `as`, `i386-os2-as` | GNU as 2.30 (i386-aout), static build. These used to be do-nothing stubs. |
| `ld`, `i386-os2-ld` | GNU ld 2.30 (i386-aout) **with the fpc264irc EMX patch**, static build. These used to be do-nothing stubs. |
| `emxbind` | emxbind 0.9d (kLIBC source + fpc264irc patches), static 32-bit Linux build. Source: `patches/os2-cross/emxbind/`. |
| `os2stub.bin` | DOS stub emxbind puts in front of the LX image. |
| `wrc` | resource compiler front end (unchanged). |

## What the ld patch does

Source and rebuild: `patches/os2-cross/binutils/` (`binutils-2.30-emx.patch`, `build.sh`; tarball in `lib/build-tools/`).
Stock binutils 2.30 i386-aout writes a generic a.out and ignores the EMX import symbols (their type bytes carry the stab
bits). emxbind needs what the original EMX ld produced:

1. **EMX layout**: ZMAGIC, header padded to file offset 0x400, text at 0x10000, data at the next 64K boundary,
   text/data sizes rounded to 4K (`bfd/i386aout.c`, `ld/emulparams/i386aout.sh`).
2. **Import symbols**: an `N_IMP1|N_EXT` symbol in an import library member defines the symbol (value 0) and pulls the
   member from the archive; `N_IMP2|N_EXT` `name=DLL.ordinal` symbols are passed through (also with `-s`/`-x`).
3. **Import relocations**: in the final link every relocation against an import symbol is resolved as if the symbol
   were at 0 *and* kept in the executable's relocation table, pointing at the `N_IMP1|N_EXT` output symbol.
   emxbind turns these into LX import fixups. With `-r` they stay external relocations.

Checked (2026-10-02): a sysutils/classes/dos/crt program -> LX with 360 import fixups (DOSCALLS, EMXWRAP, MSG, NLS,
QUECALLS, SESMGR); the graph test (graph PM backend, crt, sysutils, classes, objects, FV, zipper, fpjson, process) ->
1055 import fixups incl. PMWIN/PMGPI. Program images are byte-identical to the earlier two-pass link and every fixup
matches its call site (address, DLL, ordinal); `ld -s` and FPC `-Xs` keep all imports.
**Not yet run on a real OS/2 / ArcaOS machine.**
