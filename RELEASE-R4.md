# FPC 2.6.4irc r4 Release Notes

**Date:** 2026-07-17
**Tag:** `r4`

## Summary

7-platform cross-compiler with all PPUs rebuilt, i8086 16-bit DOS backend
working end-to-end, 3 new cross-platform units, and Mystic BBS compiling
45/45 across Linux, Win32, and OS/2. 166/166 compiler gates green,
65/65 cross-compile targets verified.

## Highlights

- **i8086 16-bit DOS:** ppcross8086 rebuilt with PPU reader fix (runtime
  CpuAluBitSize dispatch). Multi-unit `uses dos` compiles and runs on
  DOSBox. doorkit86 example: BBS door framework in 267 lines.

- **All 7 target PPUs rebuilt from source:** x86_64-linux (85),
  i386-linux (92), i386-win32 (78), i386-go32v2 (72), i386-freebsd (86),
  i386-os2 (81), i8086-msdos (4 + 2121 smartlinks).

- **3 cross-platform units** (7/7 targets each):
  - `utrayit` — console tray/minimize (Win32 Shell_NotifyIcon, xterm, stub)
  - `utextmouse` — text-mode mouse (xterm SGR, Win32 Console, INT 33h, stub)
  - `seteuid_unit` — UID/GID management (Linux/BSD syscall, stub)

- **RTL source fixes:** cwstring.pp, syswin.inc, sysutils.pp, sysos.inc
  (codepage callback signatures), bsd/bunxsysc.inc (fpseteuid/fpsetegid).

- **.gitignore fix:** `*.ppu` rule was blocking shipped PPU files. Added
  `!bin/units/**/*.ppu` exception.

- **Mystic BBS A52:** 15/15 Linux, 15/15 Win32, 15/15 OS/2 (compile).

- **7/7 bugs fixed** from the cross-compile bug report.

## Breaking Changes

- ppcross8086 is now FPC 3.0.4 (was 2.6.4). i8086 PPU format is
  version 165 (was 135). Old i8086 .ppu files are incompatible.
- `etc/fpc.cfg` paths updated. Users may need to adjust `-Fu` paths.

## Files

- `fpc264ircrepo.zip` — complete repo with all binaries, PPUs, tools
- `i8086_work.tar.gz` — i8086 workspace (compiler source, build scripts)
