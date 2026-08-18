# Installation Guide

## Windows (Win32)

Run `fpc264irc_r31_setup.exe`. Installs to `C:\FPC264irc\`.

Contents after install:
- `bin\ppc386.exe` — compiler + 14 tools
- `bin\units\i386-win32\` — 1,368 PPUs
- `bin\lazarus\lazarus.exe` — Lazarus IDE (18 MB)
- `bin\lazarus\fpc264irc.chm` — help file
- `src\` — complete source tree

The installer adds `C:\FPC264irc\bin` to your PATH.

## Linux (i386)

```
tar xzf fpc264irc-r31-linux.tar.gz
cd fpc264irc
./setup-linux-i386.sh
```

The setup script:
1. Detects your glibc version
2. Applies the dl.o fix for glibc 2.34+ automatically
3. Installs to `/usr/local/fpc264irc/`
4. Creates symlinks in `/usr/local/bin/`

249 Linux PPUs included.

## DOS (go32v2)

Extract to a DOS partition. Requires CWSDPMI or equivalent DPMI host.
305 PPUs included. 16 MB RAM minimum.

```
SET PATH=C:\FPC264IRC\BIN;%PATH%
ppc386 -Tgo32v2 myapp.pas
```

## FreeBSD (i386)

Extract the archive. 160 PPUs included.
Requires FreeBSD 9.x+ with 32-bit compat libs.

## Compiler Flags

| Flag | Purpose |
|------|---------|
| `-Twin32` | Target Windows 32-bit |
| `-Tlinux` | Target Linux i386 |
| `-Tgo32v2` | Target DOS (DJGPP) |
| `-Tfreebsd` | Target FreeBSD i386 |
| `-Sg` | Enable GOTO/LABEL |
| `-n` | Don't read fpc.cfg |
| `-FU<dir>` | PPU output directory |
| `-Fu<dir>` | Unit search path |
| `-Fi<dir>` | Include search path |
| `-o<file>` | Output executable name |

## Verifying Installation

```
ppc386 -iV          # Should print: 2.6.4
ppc386 -iW          # Should print: 2.6.4irc-r3
```
