# Building emxbind for Linux

emxbind is part of EMX 0.9d by Eberhard Mattes (GPL v2). It converts
a.out intermediate files from GNU `ld` into OS/2 LX executables.

## Status: BUILDS AND RUNS on Linux

The Linux port compiles cleanly and runs. It reads FPC's a.out output
and processes it correctly. The final `-b` (bind) step prepends the
EMX loader stub (`emxl.exe`) to produce a runnable OS/2 executable.

## Source files

```
emxbind.c   — main program, command-line parsing
exec.c      — LX executable generation
export.c    — DLL export table
fixup.c     — relocation fixups
list.c      — listing/map file
cmd.c       — command file parsing
map.c       — map generation
resource.c  — resource handling
utils.c     — utility functions
```

## Linux port support files (added for this build)

```
defs.h          — basic EMX types (byte/word/dword) + glibc collision guards
sys/exe.h       — a.out, DOS MZ, and OS/2 LX binary-format structures
sys/moddef.h    — module definition (.def) parser interface
emx_compat.c    — EMX libc functions (stricmp, _remext, _path, _md_* stubs)
```

## Build

```bash
gcc -o emxbind -I. -Isys \
    emxbind.c exec.c export.c fixup.c list.c \
    cmd.c map.c resource.c utils.c emx_compat.c \
    -DUNIX_PORT
```

## The emxl.exe loader

The `-b` (bind) mode prepends `emxl.exe` — the EMX runtime loader — to
the a.out image. This loader is a prebuilt OS/2 executable that ships
with the EMX 0.9d runtime (freely distributable, GPL). It is normally
found at `\emx\bin\emxl.exe` on an OS/2 system with EMX installed.

To produce runnable OS/2 executables, place `emxl.exe` from the EMX
runtime on the PATH, or the compiler will report it during linking.
The a.out output itself (with all import symbols resolved) is complete
and correct; binding the loader is the final packaging step.

## Notes on the Linux port

The `.def` module-definition parser (`_md_*` functions in `emx_compat.c`)
returns end-of-input, since plain executable conversion doesn't process
`.def` files. Full `.def` support (for building DLLs with custom export
tables) would require porting EMX's moddef parser. The binary-format
structures in `sys/exe.h` follow the public a.out, MZ, and OS/2 LX
specifications.

## License

GPL v2. See `COPYING` in this directory.
