# emxbind for the fpc264irc OS/2 tool chain (byte, 2026-10-02)

Source: emxbind 0.9d by Eberhard Mattes (GPL, see COPYING), as kept in the kLIBC tree
(github.com/bitwiseworks/libc, src/emx/src/emxbind + src/emx/src/libmoddef), with `fpc264irc-emxbind.patch`:
- `getopt` "+" so options stop at the input file (glibc reorders arguments);
- skip trailing emx runtime options (`-ai -s8`) that FPC's OS/2 linker passes, as emxbind 0.9d accepted;
- accept the emx 0.9d data-segment layout FPC's `rtl/os2/prt0.as` uses (`__os2dll` = 11th dword of the data table)
  next to kLIBC's `0xba0bab` magic;
- `round_page`/`round_segment` macros, `errno`, `fopen` instead of emx `_fsopen`; `emxcompat.c` supplies emx libc helpers
  (`_getname`, `_getext`, `_defext`, `_remext`, `_strncpy`, `stricmp`, `_execname`).

`build.sh` builds it as a static **32-bit** program: the a.out structs use `unsigned long`, 8 bytes on 64-bit Linux - the old
64-bit `bin/tools/i386-emx/emx-emxbind` misreads every header ("invalid a.out file (header)"). Output goes to
`bin/tools/i386-os2/emxbind` together with `os2stub.bin`.
