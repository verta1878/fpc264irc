# macOS 10.6 SDK — Setup Guide for FPC 2.6.4irc

## What Is This?

The macOS 10.6 (Snow Leopard) SDK contains Apple's framework headers and
library stubs. FPC needs these to compile Darwin/macOS units that reference
Carbon, Cocoa, CoreFoundation, and other Apple frameworks.

## What's Inside

- **93 frameworks** — Carbon, Cocoa, CoreFoundation, AppKit, OpenGL, etc.
- **System libraries** — libSystem.dylib, libSystemStubs.a
- **C headers** — usr/include/ (POSIX + Apple extensions)
- **Developer tools** — Developer/Headers/, Developer/usr/

## Extracting

Place the SDK archive in your fpc264irc repo root and extract:

```bash
cd /path/to/fpc264irc
mkdir -p sdk
cd sdk
tar xJf /path/to/MacOSX10_6_sdk_tar.xz
```

This creates `sdk/MacOSX10.6.sdk/` with the full SDK tree.

## Directory Structure After Extraction

```
fpc264irc/
  sdk/
    MacOSX10.6.sdk/
      System/
        Library/
          Frameworks/        ← Carbon.framework, Cocoa.framework, etc.
      usr/
        lib/                 ← libSystem.dylib
        include/             ← C headers
      Library/
      Developer/
```

## Configuring FPC to Use the SDK

### Framework Path (-Ff)

Tells FPC where to find macOS frameworks (Carbon, Cocoa, etc.):

```bash
-Ff/path/to/fpc264irc/sdk/MacOSX10.6.sdk/System/Library/Frameworks
```

### Library Path (-Fl)

Tells FPC where to find system libraries for linking:

```bash
-Fl/path/to/fpc264irc/sdk/MacOSX10.6.sdk/usr/lib
```

### Internal Assembler (-Amacho)

FPC has a built-in Mach-O assembler. No external Apple `as` needed:

```bash
-Amacho
```

### Full Example — Compiling a Darwin Unit

```bash
FPC=bin/ppc386
SDK=sdk/MacOSX10.6.sdk

$FPC -n -Tdarwin -Amacho \
  -Fubin/units/i386-darwin \
  -Ff$SDK/System/Library/Frameworks \
  -Fl$SDK/usr/lib \
  -FU/tmp -FE/tmp \
  myprogram.pas
```

### Full Example — Building Darwin RTL from Source

```bash
cd src/rtl
make all OS_TARGET=darwin CPU_TARGET=i386 \
  FPC=../../bin/ppc386 \
  OPT="-Amacho"
```

The RTL Makefile handles framework paths automatically. Only `-Amacho` is
needed as an extra option.

### Full Example — Building Darwin LCL

```bash
# 1. LazUtils
cd src/lazarus/lazutils
../../bin/ppc386 -Tdarwin -Amacho -Mobjfpc -Scghi -O1 -dLCL \
  -Fubin/units/i386-darwin \
  -Ff../../sdk/MacOSX10.6.sdk/System/Library/Frameworks \
  -FU../../bin/lazarus/units/i386-darwin/lazutils \
  lazutils.pas

# 2. LCL base + widgetset
cd src/lazarus/lcl
make lclbase LCL_PLATFORM=customdrawn FPC=../../bin/ppc386 \
  CPU_TARGET=i386 OS_TARGET=darwin \
  OPT="-Amacho -Fubin/units/i386-darwin ..."

make intf LCL_PLATFORM=customdrawn FPC=../../bin/ppc386 \
  CPU_TARGET=i386 OS_TARGET=darwin \
  OPT="-Amacho -Fubin/units/i386-darwin ..."
```

## Important Notes

- **SDK is not included in repo zips** — it's 257MB extracted. Keep it
  separate and re-extract when needed.
- **No external assembler needed** — `-Amacho` handles Mach-O object files.
- **Linking executables** — Building a final `.app` or binary that runs on
  macOS still requires a Mach-O linker. Options:
  - Link on an actual Mac (copy .o files over, run `ld` there)
  - Build cctools-port on Linux (provides `i686-apple-darwin-ld`)
  - Use `-Cn` flag to skip linking (PPU-only compilation)
- **PPU compilation doesn't need linking** — for building unit libraries,
  `-Amacho -Cn` is sufficient.
- **SDK version** — 10.6 Snow Leopard. Compatible with FPC 2.6.4's Darwin
  target. Newer SDKs may have API changes that don't match.

## Quick Reference

| Flag | Purpose |
|------|---------|
| `-Tdarwin` | Target Darwin/macOS |
| `-Amacho` | Use FPC's internal Mach-O assembler |
| `-Ff<path>` | Framework search path |
| `-Fl<path>` | Library search path |
| `-Cn` | Skip linking (compile only) |
| `-Xi` | Use internal linker (experimental) |
