# FPC 2.6.4irc — r3.1

Custom Free Pascal Compiler 2.6.4 fork for IRC/BBS applications.
8-platform cross-compiler with Lazarus LCL support.

## Platforms

| Target | RTL PPUs | LCL PPUs | Widgetset | Status |
|--------|----------|----------|-----------|--------|
| x86_64-linux | 528 | 136 | customdrawn (18) | ✅ Verified |
| i386-linux | 166 | 152 | customdrawn (17) | ✅ Verified |
| i386-win32 | 75 | 213 | win32 (27) | ✅ Verified |
| i386-freebsd | 159 | 152 | customdrawn (17) | ✅ Verified |
| i386-darwin | 590 | 157 | nogui | ✅ Verified |
| i386-go32v2 | 78 | — | — | RTL only |
| i386-os2 | 84 | — | — | RTL only |
| i8086-msdos | 42 | — | — | RTL only |

## Key Binaries

- `bin/ppcx64` — x86_64-linux native compiler
- `bin/ppc386` — i386 cross-compiler (all i386 targets)
- `bin/ppcross8086` — i8086-msdos cross-compiler

## Build System

### Compile Order (per platform)
1. RTL: `make all` in `src/rtl/`
2. Packages: `make -C packages all` in `src/`
3. LazUtils: compile `lazutils.pas`
4. LCL base: `make lclbase` in `src/lazarus/lcl/`
5. Widgetset: `make intf` in `src/lazarus/lcl/`

### Critical Rules
- **Win32 system.pp is LOCKED** — Makefile guard prevents recompilation (BUG-001)
- **Always compile from repo dir** with `-n` flag
- **-Fu order matters**: LCL before RTL (BUG-012)
- **No `+=` `-=` `*=` `/=` operators** — FPC 2.6.4 doesn't support them
- **FreeBSD needs** `CROSSBINDIR=$REPO/bin/tools/i386-freebsd`
- **Darwin needs** `-Amacho` (internal Mach-O assembler, no external tools)

### macOS SDK
Darwin LCL needs the macOS 10.6 SDK (not included, 257MB).
See `docs/macsdk-howto.md` for setup instructions.

## Applications

### netmodem2irc
IRC-to-modem gateway for BBS systems. Three binaries:
- **NMServer.exe** — LCL GUI server (16MB)
- **NMConfig.exe** — LCL GUI config tool (16MB)
- **NetModemCPL.dll** — Control Panel applet (285KB)

## Bugs Fixed (r3.1)

| Bug | Description |
|-----|-------------|
| BUG-001 | Win32 Runtime Error 216 (heap crash) |
| BUG-002 | ActiveX PPU cascade |
| BUG-003 | FreeBSD Mystic BBS |
| BUG-004 | x86_64 variants/varutils |
| BUG-005 | windres removed from compiler |
| BUG-006 | Build artifacts cleanup |
| BUG-007 | PPU Reader crash |
| BUG-008 | cwstring codepage signatures |
| BUG-009 | win32wsstdctrls += operator |
| BUG-010 | paswstring codepage signatures |
| BUG-011 | 65+ compound operator conversions |
| BUG-012 | Darwin Dialogs -Fu search order |

See `docs/bugsfixed.md` for details.

## Directory Structure

```
bin/                    Compilers + cross-tools
  units/<target>/       RTL + package PPUs per target
  lazarus/units/<target>/  LCL PPUs per target
    lazutils/           LazUtils PPUs
    lcl/                LCL base + widgetset PPUs
src/
  compiler/             FPC compiler source
  rtl/                  Runtime library (per-platform)
  packages/             FCL + third-party packages
  lazarus/
    lcl/                Lazarus Component Library
    lazutils/           Lazarus utilities
docs/
  DECISIONS.md          Architecture decisions log
  bugsfixed.md          Bug fix details
  macsdk-howto.md       macOS SDK setup guide
  ripscript/            RIPscript v1.53/v1.54/v3.0 specs
```

## Roadmap

### Complete
- **Phase 0**: ✅ Build Infrastructure (8 targets, cross-compilers)
- **Phase 1**: ✅ Win32 LCL + netmodem2irc binaries (NMServer, NMConfig, NetModemCPL)
- **Phase 2**: ✅ Cross-Platform LCL Verification (6 platforms)
- **Phase 3**: ✅ Darwin PPU Completion (757 PPUs + Carbon widgetset)
- **Phase 4**: ✅ Darwin Toolchain (-Amacho, no external tools)
- **Phase 6a**: ✅ Resource Compiler (windres .rc → .res, icons in binaries)
- **Phase 6b/b+**: ✅ OS/2 LazUtils + LCL + customdrawn PM backend
- **Phase 6c**: ✅ pasjpeg fixes (jidct2d, pasjpeg.pas BMP types, ShowMessage)
- **Phase 7**: ✅ Lazarus IDE (x86_64-linux 72MB + i386-win32 151MB)
- **Phase 8**: ✅ go32v2 LCL + customdrawn VESA backend (up to 1024x768x32K)
- **Phase 10**: ✅ cocoa widgetset compiled (14 PPUs, Internal Error 200509189 resolved)
- **Phase 9**: ✅ LCL Delphi Backports (Ctl3D, ParentCtl3D, OEMConvert, CreateWindowHandle, verinfo)

### Pending

- **Phase 11**: r3.1 unstable — Win32 ABI revert to 3-param + 4-param rebuild + AnsiString -Mdelphi stack overflow (BUG-029) + test on WinXP + Win11

### Deferred
- i8086-msdos LCL — no solution for 640K real-mode limit
- RIPscript viewer — deferred to PPU creation phase
- Inline var declarations — Delphi 10.3 feature, not in any FPC version, needs discussion
- Antialiased line drawing — needs VGA 256+ colors, defer to DOS VESA backend work
- Inno Setup 5.6.1 FPC port — see docs/INNO_HOLLOW_FEATURES.md
  - PascalScript engine (22 stub files, ~5,500 lines missing, needs RemObjects PS)
  - LZMA decompression (13 C externals, needs MinGW recompile or dynamic loading)
  - DFM→LFM form conversion (13 forms)
  - Windows resources (12 .res, needs windres)
  - SetupCompat.pas (3 functions)

## Preferences

- Minimal C dependencies — pure Pascal where possible
- FPC's internal assemblers (-Amacho, -Aelf) over external tools
- customdrawn widgetset for cross-platform GUI unification
