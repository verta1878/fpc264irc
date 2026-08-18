# FPC 2.6.4irc r3.1

Free Pascal Compiler — IRC/BBS Toolchain Edition

## What Is This

A complete Pascal development environment rebuilt from FPC 2.6.4 source,
targeting retro computing: BBS systems, DOS, Win9x, and cross-platform
console applications. Includes Lazarus IDE with LCL widgetset.

## Platforms

| Target | Compiler | PPUs | Usage |
|--------|----------|------|-------|
| Win32 (default) | ppc386 | 1,368 | `ppc386 -Twin32 myapp.pas` |
| Win9x ANSI | ppc386 | 1,368 | `ppc386 -Twin32 myapp.pas` (default=ANSI) |
| Win NT+ Unicode | ppc386 | 1,368 | `ppc386 -Twin32 -dUNICODE myapp.pas` |
| Linux i386 | ppc386 | 249 | `ppc386 -Tlinux myapp.pas` |
| DOS (go32v2) | ppc386 | 305 | `ppc386 -Tgo32v2 myapp.pas` |
| FreeBSD i386 | ppc386 | 160 | `ppc386 -Tfreebsd myapp.pas` |

## What's Included

- **ppc386** — 32-bit Pascal compiler (FPC 2.6.4 core)
- **ppcx64** — 64-bit Pascal compiler
- **ppcross8086** — 16-bit cross-compiler (DOS real mode)
- **lazarus.exe** — Lazarus IDE (18 MB, LCL Win32 widgetset)
- **14 FPC tools** — fpcmake, fpcres, h2pas, ppudump, etc.
- **fpGUI toolkit** — lightweight alternative to LCL
- **fpc264irc.chm** — integrated help system (10 pages)
- **Complete source** — RTL, packages, LCL, IDE

## Key Features

- **IUnknown native** — const keyword works, no CORBA hack needed
- **Win9x compatible** — win32compat.pas ANSI backport (U-1)
- **glibc 2.34+ fix** — dl.o reimplemented for modern Linux
- **531 packages rebuilt** — fcl-base, fcl-xml, fcl-json, fcl-db,
  fcl-image, fcl-web, winunits-jedi, winunits-base, chm, paszlib,
  hash, regexpr, and more
- **Full RTL rebuild** — all PPUs compiled with our ppc386

## Quick Start

```
ppc386 -Twin32 myapp.pas     # Windows
ppc386 -Tlinux myapp.pas     # Linux
ppc386 -Tgo32v2 myapp.pas    # DOS
```

## Tests

6 compilation tests verify the rebuilt PPU chain:

1. IUnknown native const (no CORBA hack)
2. fpjson + jsonparser
3. DOM + XMLRead
4. classes + typinfo RTTI
5. registry (Win32)
6. fphttpclient (network)

## The Crew

| Handle | Role |
|--------|------|
| verta1878 | Project lead |
| sysop/0 | Compiler engineer |
| evga | Display, Mystic, SIO rebuild |
| kiddo | Protocols, RIPscrip |
| wrench | Transport, FOSSIL, DVI/HDMI |
| hexadecimal | PCBoard, Cyclades |

the crew 4free — x86 little endian
