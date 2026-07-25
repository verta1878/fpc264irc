# INSTALL — Building with fpc264irc r3.1

## Prerequisites

- Linux x86_64 host (Ubuntu 22+, Debian 12+)
- This repo

## Quick Start

```bash
# Compile any program for Linux:
bin/ppc386 -Tlinux -Fubin/units/i386-linux program.pas

# Win32:
bin/ppc386 -Twin32 -Fubin/units/i386-win32 program.pas

# DOS go32v2:
bin/ppc386 -Tgo32v2 -Fubin/units/i386-go32v2 -FDbin/tools/i386-go32v2 program.pas

# OS/2 EMX:
bin/ppc386 -Temx -Fubin/units/i386-os2 -FDbin/tools/i386-emx program.pas

# Darwin (PPUs only — link on macOS):
bin/ppc386 -Tdarwin -s -Fubin/units/i386-darwin program.pas
# For .o files: generate .s then assemble with llvm-mc-18:
#   llvm-mc-18 --arch=x86 --filetype=obj --triple=i386-apple-darwin -o unit.o unit.s

# i8086 MS-DOS real mode:
bin/ppcross8086 -Fubin/units/i8086-msdos program.pas
# Note: ppcross8086 is FPC 3.2.2. Must run from /tmp/fpc-3.2.2/ build
# directory for smart-linking to find .a archives.
```

## Free Vision TUI Programs

```bash
# Add FV source paths:
FV=src/packages/fv/src
bin/ppc386 -Tlinux -Mdelphi -Fubin/units/i386-linux -Fu$FV -Fi$FV program.pas
```

## RIPView

```bash
RV=examples/mystic_ripapi/ripviewer/source
bin/ppc386 -Tlinux -Mdelphi -Fu$RV -Fu$RV/v1 -Fi$RV \
  -Fubin/units/i386-linux $RV/ripview.pas

# With Free Vision TUI:
bin/ppc386 -Tlinux -Mdelphi -dFREEVISION \
  -Fu$RV -Fu$RV/v1 -Fi$RV \
  -Fubin/units/i386-linux -Fusrc/packages/fv/src -Fisrc/packages/fv/src \
  $RV/ripview.pas
```

## THD ScanPro

```bash
# Linux:
bin/ppc386 -Tlinux -Mdelphi -Fubin/units/i386-linux \
  -Fuexamples/thdpro examples/thdpro/thdpro.pas

# Win32:
bin/ppc386 -Twin32 -Mdelphi -Fubin/units/i386-win32 \
  -Fuexamples/thdpro examples/thdpro/thdpro.pas

# DOS go32v2:
bin/ppc386 -Tgo32v2 -Mdelphi -Fubin/units/i386-go32v2 \
  -FDbin/tools/i386-go32v2 \
  -Fuexamples/thdpro examples/thdpro/thdpro.pas
```

## Mystic BBS (15/15 programs)

```bash
./build-linux.sh    # Linux ELF32
./build-win32.sh    # Win32 PE32
./build-os2.sh      # OS/2 EMX
./build-darwin.sh   # Darwin Mach-O
```

## OS/2 EMX Link Pipeline

1. `ppc386 -Temx` compiles to .s
2. `i386-emx-as` assembles to .o (a.out)
3. `i386-emx-ld` links to .out (ZMAGIC a.out)
4. `emxbind` wraps .out in MZ stub → .exe
5. Runs on OS/2 with EMX runtime (emx.dll)

Import stubs: 303 entries (DOSCALLS 165 + EMXWRAP 107 + SO32DLL 31)

## Darwin Cross-Compilation

PPUs compile on Linux. The .o files require Mach-O assembler:
- `llvm-mc-18` on Linux (installed via `apt install llvm-18`)
- Native `as` on macOS

The `bin/tools/darwin-as` wrapper automates this.

Minimal SDK: `crt1.o` (584 bytes) + `libSystem.B.dylib` (1,820 bytes, 73 symbols)

## i8086 Cross-Compilation

`ppcross8086` is FPC 3.2.2 (not 2.6.4irc). The old 2.6.4irc i8086
codegen had a broken register allocator. FPC 3.2.2 generates correct
16-bit real-mode MZ executables.

```bash
# From the FPC 3.2.2 build directory:
cd /tmp/fpc-3.2.2
./compiler/ppcross8086 -Fubin/units/i8086-msdos program.pas
```

Memory models: tiny, small, medium, compact, large, huge.
Default is small (64K code + 64K data).

## Verify

```bash
# PPU counts:
for d in bin/units/*/; do echo "$(ls $d*.ppu 2>/dev/null | wc -l) $(basename $d)"; done

# Expected: 198 i386-linux, 611 i386-win32, 273 i386-go32v2,
#           170 i386-os2, 783 i386-darwin, 55 i8086-msdos
```
