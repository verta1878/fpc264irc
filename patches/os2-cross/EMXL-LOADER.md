# The emxl.exe Loader

## What it is

`emxl.exe` is the EMX runtime loader — a small OS/2 executable that
`emxbind -b` prepends to an a.out image to produce a runnable OS/2 LX
executable. When the bound program runs on OS/2, the loader sets up the
EMX runtime environment and transfers control to the a.out entry point.

## Why it's not bundled here

`emxl.exe` is a prebuilt **OS/2** binary that ships with the EMX 0.9d
runtime distribution. It cannot be built on Linux (it requires the OS/2
toolchain and OS/2-specific loader assembly). It is freely redistributable
under the GPL.

## How to obtain it

1. From an EMX 0.9d installation: `\emx\bin\emxl.exe`
2. From the EMX 0.9d distribution archives (emxrt.zip — the EMX runtime
   package), freely available from OS/2 archives such as Hobbes
   (hobbes.nmsu.edu) and the Netlabs mirrors.

## How to use it with this toolchain

Place `emxl.exe` on the PATH used by the compiler, or in
`bin/tools/i386-emx/`. The FPC OS/2 target invokes:

```
emxbind -b ... -o <output> <input>.out ...
```

which locates `emxl.exe` automatically. With the loader present, the
toolchain produces complete, runnable OS/2 executables.

## Current state without it

Everything up to the final bind works and is verified:
- Compilation, assembly, and linking all succeed
- All OS/2 DLL import symbols resolve (the hard problem — solved via the
  binutils N_IMP patch)
- The a.out output is complete and correct (224 KB, zero undefined refs)
- emxbind builds and runs on Linux and reads the a.out correctly

The loader binding is the final packaging step, gated only on the
redistributable `emxl.exe` runtime blob.
