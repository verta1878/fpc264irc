# Installation Guide

## Windows (Inno Setup installer)

The installer is built from `installer/fpc264irc.iss` with InnoIRC561 (netmodem2irc ab9787f or later - stock
Inno Setup 5.6.1 refuses the Windows 98 `MinVersion`): `ISCC.exe installer\fpc264irc.iss` -> `out\fpc264irc_r31_setup.exe`.
It runs on Windows 98 and Windows 2000 - 11, installs to `C:\FPC264irc\` and lets you pick components (compiler,
Win32 RTL + LCL, Linux / DOS go32v2 / FreeBSD i386 cross units, tools, docs, Lazarus IDE; the Lazarus unit sets for
cross targets are a separate component, off by default).
`installer/fpc264irc_fast.iss` (zip compression) and `fpc264irc_minimal.iss` (lzma2) are smaller one-page variants.

Contents after install (`fpc264irc.iss`):
- `bin\ppc386.exe` - 32-bit compiler (i386-win32; Windows 95/98 - 11) and `bin\ppcx64.exe` - 64-bit compiler
  (x86_64-win64; needs 64-bit Windows); both built by `tools/wincomp-build/build.sh`, 2026-11-20
- `units\<target>\` - the unit folders of `bin/units` (e.g. i386-win32: 1,538 `.ppu` incl. `lcl\`)
- `bin\lazarus\` - Lazarus IDE and its unit sets (optional component)

There is no Windows `ppcross8086.exe` yet: the i8086 compiler `bin/ppcross8086` (FPC 3.2.2) is a Linux program, so
16-bit DOS programs are built on Linux (or WSL). The installers do not pack it.

### NSIS installer (alternative)

`makensis installer/fpc264irc-setup.nsi` (NSIS 3) -> `out\fpc264irc-r311-setup.exe`: compilers, Win32 + Win64
units, sources, docs; installs to `C:\FPC264IRC\` and adds `C:\FPC264IRC\bin` to the PATH on Windows NT/2000 and
later (knob `ADD_PATH` in the script). On Windows 95/98/ME add `SET PATH=C:\FPC264IRC\bin;%PATH%` to
`AUTOEXEC.BAT` yourself (the installer shows the line). Rewritten 2026-11-21 (the r311 script never built from the
repo; kept as `attic/fpc264irc-setup-r311.nsi`).

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
git clone https://github.com/verta1878/fpc264irc
cd fpc264irc
export PATH=$PWD/bin:$PATH
```

From a zip of the repo instead of a clone: unzip, then run `bash fix-permissions.sh` once (zip drops the execute bit
of `bin/ppc386`, `bin/ppcx64`, `bin/ppcross8086` and the `bin/tools` programs). There is no separate Linux tarball.

### glibc 2.34+ Fix

If you get linker errors about `dlopen` on modern Linux, the fix is already
applied in our RTL. See `docs/DL-GLIBC-FIX.md` for details.

## Compiling

### 16-bit DOS (Real Mode)

Each memory model has its own unit directory. Always use `-XX` (smart linking):

```
ppcross8086 -Tmsdos -Wmsmall -XX -Fubin/units/i8086-msdos-small myapp.pas
```

Replace `-Wmsmall` and the directory with your chosen model: tiny, small, medium, compact, large or huge.
`bin/units/i8086-msdos/` (no suffix) is a huge-model set: use it with `-Wmhuge`.

Produces a 16-bit MZ .EXE that runs on original IBM PC hardware (8086+). No DPMI, no extender - pure real mode.
Each folder has the RTL (system, sysutils, classes, crt, dos, objects, math, ...); medium, large, huge and the
default folder also have graph and Free Vision. A program using `classes` links in medium, large and the default
folder (tiny/small/compact have one 64K code segment for the whole program - too small; the `-huge` folder's
`system` is 94 bytes too big with it - use the default folder). Known open bug: BUG-053 in `docs/bugsfixed.md`
(large/huge: copying a record with two AnsiStrings). ppcross8086 runs on Linux only (no Windows build yet).

### LCL programs: Lazarus folders first

Put the Lazarus unit folders before the main unit folder on the unit path, e.g. for go32v2:

```
ppc386 -Tgo32v2 -Fubin/lazarus/units/i386-go32v2/lcl -Fubin/lazarus/units/i386-go32v2/lazutils \
       -Fubin/units/i386-go32v2 myapp.lpr
```

The Lazarus sets hold their own copies of some FCL units (e.g. `syncobjs`, `inifiles`, `contnrs`) and the LCL
`Dialogs`/`Menus`; the main folder has the FCL versions and Free Vision's `Dialogs`/`Menus`. With the main folder
first the compiler takes those instead - "Recompiling <LCL unit>, checksum changed" then "Can't find unit", or an
EListError (265) crash. (Main-folder FCL units are built with the same interface checksums as the Lazarus copies
since 2026-11-21; the Free Vision / LCL name clash stays.) toolkit/GLOBALS.TXT G-023.

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
