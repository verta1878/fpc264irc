# FPC 2.6.4irc r3.1

A maintained fork of Free Pascal Compiler 2.6.4, focused on cross-compilation
and retro platform support. 7 targets from a single Linux host.

## Platforms

| # | Target | Compiler | CPU | Status |
|---|--------|----------|-----|--------|
| 1 | Linux i386 | ppc386 -Tlinux | 386+ | 15/15 Mystic ✅ |
| 2 | Win32 i386 | ppc386 -Twin32 | 386+ | 15/15 Mystic ✅ |
| 3 | OS/2 EMX | ppc386 -Temx | 386+ | 15/15 Mystic ✅ |
| 4 | Darwin i386 | ppc386 -Tdarwin | 386+ | 15/15 Mystic ✅ |
| 5 | DOS go32v2 | ppc386 -Tgo32v2 | 386+ | THD ScanPro ✅ |
| 6 | x86_64 Linux | ppcx64 | x86_64 | Host compiler ✅ |
| 7 | i8086 MS-DOS | ppcross8086 | 8086+ | Hello world ✅ |

## What Changed from Upstream FPC 2.6.4

- **BUG-029:** AnsiString header size fix (i386 ASM `sub $12,%eax`)
- **BUG-040:** OS/2 EMX linker flag fix (`-N` removed for ZMAGIC)
- **prt0.o:** Reassembled with emx-as (773 bytes, `_dos_init`/`_dos_syscall` defined)
- **ppcross8086:** FPC 3.2.2 i8086 cross-compiler (built from source)
- **Codepage backport:** `DefaultSystemCodePage` on all MoveProc functions
- **82 codec units:** Image, audio, archive, print, RIP format support
- **m_mouse.pas:** Cross-platform text-mode mouse (xterm/Win32/DOS/OS/2)
- **303 EMX import stubs:** DOSCALLS (165) + EMXWRAP (107) + SO32DLL (31)
- **CWSDPMI embedded:** DOS binaries self-contained (no external DPMI host)

## Repository Structure

```
bin/
  ppc386              i386 compiler (6 targets)
  ppcx64              x86_64 compiler (host)
  ppcross8086         i8086 cross-compiler (FPC 3.2.2)
  units/              PPUs for all 7 targets
  tools/              Cross-tools (emx, go32v2, win32)

src/
  compiler/           FPC compiler source + i8086 codegen (48 files)
  rtl/                Runtime library (all targets + i8086 + msdos)
  packages/           Package units
  tools/              emxbind.pas

examples/
  thdpro/             THD ScanPro suite (5 tools, GPLv3)
    marc-lib/         Archive library (11 units)
    scanners/         F-PROT, McAfee, TBSCAN
    reference/        Original PainSoft archive
  mystic_ripapi/      RIPscrip API + RIPView viewer
  blockart/           Block art renderer
  doorkit86/          DOS door kit
  pablodraw/          PabloDraw source (C#, reference for Pascal port)
  + blocker, ciadraw, renegade140, trayit-remake, xansiviewer

sdk/
  emx/                EMX 0.9d (GPLv2)
  os2tk45/            IBM OS/2 Toolkit 4.5.2
  prt/                Print API drivers (6 units)
  MacOSX10.6.sdk/     Minimal Darwin SDK

tests/                Runtime tests + i8086 test cases (12)
docs/                 README, CHANGELOG, CREDITS, INSTALL, bugsfixed
  att/                Archived phase reports (55 files)
```

## OS/2 EMX Cross-Compilation

FPC generates `call _$dll$doscalls$_index_NNN` but does not emit import
directives. For cross-compilation, `.dll.a` import archives provide the
symbols. `prt0.o` must be assembled with `emx-as`. Link requires
`--allow-multiple-definition`.

## i8086 MS-DOS Cross-Compilation

Uses FPC 3.2.2 `ppcross8086` (built from source). Generates real-mode
16-bit MZ executables for 8086/8088/286+ DOS. Smart-link archives (.a)
in OMF format. NASM required for prt0 startup objects.

## Standalone Packages

| Package | Contents |
|---------|----------|
| thdpro-v100-gplv3.zip | THD ScanPro suite (15 binaries, 3 platforms) |
| ripview-v100-gplv3.zip | RIPView viewer (3 binaries) |
| fpc-codecs-standalone-gplv3-20260721.zip | Codec library (82 units) |
| m_mouse.pas | Cross-platform text-mode mouse |

## Bugs

40 bugs tracked, 38 fixed, 2 deferred:
- **BUG-038: SysTryResizeMem — CLOSED (not a bug)
- **BUG-039:** Heap lock ordering — deferred

See `docs/bugsfixed.md`.

## License

GPLv3. FPC 2.6.4 is GPLv2 "or any later version" — this fork exercises
the upgrade clause. EMX SDK remains GPLv2 (compatible).

## The Crew

| Handle | Role |
|--------|------|
| verta1878 | Project lead, architect |
| sysop/0 | Compiler engineer, fpc264irc maintainer |
| evga | Display, Mystic monitor, marc-lib, RIPView, repo cleanup |
| kiddo | marc-lib archive library |
| wrench | Build machine, PPU chain verification |
