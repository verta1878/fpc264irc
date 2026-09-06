# Installation Guide

## Windows (NSIS Installer)

Run `fpc264irc-r311-setup.exe`. Installs to `C:\FPC264IRC\`.

Contents after install:
- `bin\ppcx64.exe` — 64-bit compiler
- `bin\ppc386.exe` — 32-bit compiler + 14 tools
- `bin\units\x86_64-win64\` — 1,012 Win64 PPUs
- `bin\units\i386-win32\` — 1,521 Win32 PPUs
- `bin\lazarus\lazarus.exe` — Lazarus IDE (18 MB)
- `src\` — complete source tree

The installer adds `C:\FPC264IRC\bin` to your PATH.

To build the installer yourself: `makensis installer\fpc264irc-setup.nsi`

## Linux (Debian/Ubuntu)

```
cd fpc264irc
bash installer/build-deb.sh
sudo dpkg -i /tmp/fpc264irc_*.deb
```

Installs to `/usr/lib/fpc264irc/`. Creates symlinks:
- `/usr/bin/ppcx64-irc` → native x64 compiler
- `/usr/bin/ppc386-irc` → 32-bit compiler

## Linux (Manual)

```
tar xzf fpc264irc-r311-linux.tar.gz
cd fpc264irc
export PATH=$PWD/bin:$PATH
```

### glibc 2.34+ Fix

If you get linker errors about `dlopen` on modern Linux, the fix is already
applied in our RTL. See `docs/DL-GLIBC-FIX.md` for details.

## Compiling

### 16-bit DOS (Real Mode)

```
ppcross8086 -Tmsdos myapp.pas
```

Produces a 16-bit MZ .EXE that runs on original IBM PC hardware (8086+).
No DPMI, no extender — pure real mode. 113 units included.

### All targets

```
# Windows 64-bit:
ppcx64 -Twin64 myapp.pas

# Windows 32-bit:
ppc386 -Twin32 myapp.pas

# Linux:
ppcx64 -Tlinux myapp.pas

# DOS:
ppc386 -Tgo32v2 myapp.pas
```

## x64 Compiler Bootstrap

The Win64 PPUs require the native x64 compiler, which is built via a
3-stage bootstrap. See `docs/X64-BOOTSTRAP.md` for the full procedure.
