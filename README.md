# FPC 2.6.4irc — r3.1

Custom Free Pascal Compiler 2.6.4 fork for IRC/BBS applications.
8-platform cross-compiler with Lazarus LCL support.

## Platforms

| Target | RTL PPUs | LCL PPUs | Widgetset | Status |
|--------|----------|----------|-----------|--------|
| x86_64-linux | 528 | 136 | customdrawn (18) | ✅ Verified |
| i386-linux | 172 | 152 | customdrawn (17) | ✅ Verified |
| i386-win32 | 75 | 213 | win32 (27) | ✅ Verified |
| i386-freebsd | 159 | 152 | customdrawn (17) | ✅ Verified |
| i386-darwin | 757 | 152 | carbon + cocoa (14) | ✅ Verified |
| i386-go32v2 | 78 | 80 | customdrawn + VESA | ✅ Verified |
| i386-os2 | 116 | 174 | customdrawn + PM | ✅ Verified |
| i8086-msdos | 42 | — | — | RTL only |

## Key Binaries

- `bin/ppcx64` — x86_64-linux native compiler
- `bin/ppc386` — i386 cross-compiler (all i386 targets, BUG-029 fixed)
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

## Bugs Fixed (36 total)

| Bug | Description | Status |
|-----|-------------|--------|
| BUG-001 | Win32 Runtime Error 216 (heap crash) | Fixed |
| BUG-002 | ActiveX PPU cascade | Fixed |
| BUG-003 | FreeBSD Mystic BBS | Fixed |
| BUG-004 | x86_64 variants/varutils | Fixed |
| BUG-005 | windres removed from compiler | Fixed |
| BUG-006 | Build artifacts cleanup | Fixed |
| BUG-007 | PPU Reader crash | Fixed |
| BUG-008 | cwstring codepage signatures | Fixed |
| BUG-009 | win32wsstdctrls += operator | Fixed |
| BUG-010 | paswstring codepage signatures | Fixed |
| BUG-011 | 65+ compound operator conversions | Fixed |
| BUG-012 | Darwin Dialogs -Fu search order | Fixed |
| BUG-013–028 | Various LCL/RTL/platform fixes | Fixed |
| BUG-029 | **AnsiString heap corruption in {$H+} mode** | **Fixed** |
| BUG-030 | LCL resource files missing from output | Fixed |
| BUG-031 | Compil32.exe ScintEdit.pas errors | Fixed |
| BUG-032 | Borland .res icon LangID incompatibility | Fixed |
| BUG-033 | cocoa Internal Error 200509189 | Does not reproduce |
| BUG-034 | Wine codepage crash | Reverted (was BUG-035) |
| BUG-035 | ISCC.exe crash — Lo() returns Word not Byte | Fixed |

### BUG-029 Details (AnsiString Fix)

The most significant fix in r3.1. AnsiString function returns with
concat (`Result := a + 'B'`) caused Runtime Error 216 after 2-3 calls.

**Root cause:** Two issues in the codepage-aware TAnsiRec backport:
1. `asmutils.pas` used `{$ifdef cpu64}` (HOST platform check) to emit a
   Dummy alignment field in constant string headers. When ppcx64 built
   ppc386, the host was x86_64 so constants got 16-byte headers on i386
   targets (should be 12). Fixed with runtime `target_info.cpu` check.
2. `rtl/i386/i386.inc` had hand-written asm `fpc_AnsiStr_Decr_Ref` using
   `sub $8` (old 8-byte TAnsiRec), but allocation uses AnsiFirstOff=12
   (new layout with CodePage+ElementSize). FreeMem got a pointer offset
   by 4 bytes from the actual allocation → heap corruption.
   Fixed: `sub $8` → `sub $12` in source + binary-patched all i386 system.o files.

**Verified:** 1000 iterations of nested AnsiString concat across all targets.

See `docs/bugsfixed.md` for complete details on all 36 bugs.

## Applications

### netmodem2irc
IRC-to-modem gateway for BBS systems. Three binaries:
- **NMServer.exe** — LCL GUI server (16MB)
- **NMConfig.exe** — LCL GUI config tool (16MB)
- **NetModemCPL.dll** — Control Panel applet (285KB)

### RIPscript Engine
- `src/mystic_ripapi/` — 86 files, 2.2MB, v2.0 engine (5044 lines, 166 methods, 67 commands)
- RIPTEL v3.1 protocol analysis, RFF vector font reverse engineering
- See `docs/RIPTEL_PROTOCOL_ANALYSIS.md`

## Built-in Codecs & Multimedia Units

Pure Pascal decoders, no external libraries required.

**Image:** `jpegdec.pas`, `gifdecraw.pas`, `pngdecraw.pas`
**Audio:** `pcmdec.pas`, `pcmmix.pas` (16-stream mixer), `mididec.pas`, `dosplay.pas` (Sound Blaster DMA), `wavplay.pas` (cross-platform)
**Compression:** `lzmadecpas.pas` (LZMA1/LZMA2)
**Math:** `fixedmath.pas` (16.16 fixed-point, no FPU)
**Tools:** `dfm2lfm.pas` (Delphi DFM → Lazarus LFM)

`{$H-}` raw versions (no Classes/TStream): jpegdecraw, gifdecraw, pngdecraw, pcmdecraw.

Also available as standalone GPLv3 package: `fpc-codecs-standalone-gplv3.zip`

## Directory Structure

```
bin/                    Compilers + cross-tools
  units/<target>/       RTL + package PPUs per target
  lazarus/units/<target>/  LCL PPUs per target
src/
  compiler/             FPC compiler source (asmutils.pas, ppu.pas patched)
  rtl/                  Runtime library (i386.inc patched for BUG-029)
  packages/             FCL + third-party packages
  lazarus/              Lazarus Component Library + LazUtils
  mystic_ripapi/        RIPscript v2.0 engine
docs/
  bugsfixed.md          Bug fix details (36 bugs)
  RIPTEL_PROTOCOL_ANALYSIS.md
  ISCC_WINE_AV_BUG_REPORT.md
  fpc-lazarus-docs/     44 HTML doc files
```

## Roadmap

### Complete (Phases 0-10)
8-target cross-compiler, Darwin 757 PPUs, OS/2 PM widgetset,
pasjpeg fixes, Lazarus IDE (72MB Linux + 151MB Win32), go32v2
VESA backend, LCL Delphi backports, cocoa resolved, Borland .res
icon fix, pure Pascal LZMA decoder, AnsiString heap corruption
fix (BUG-029), Inno Setup bug reports.

### Pending
- **Phase 11**: VM Testing — VMware/VirtualBox/QEMU environments,
  go32v2 VESA + SB audio in DOSBox, OS/2 PM in ArcaOS

### Deferred
- i8086-msdos LCL (640K limit)
- RIPscript viewer (PPU creation phase)
- Inno Setup 5.6.1 FPC port (PascalScript, DFM→LFM, SetupCompact)

## Preferences

- Minimal C dependencies — pure Pascal where possible
- FPC's internal assemblers (-Amacho, -Aelf) over external tools
- customdrawn widgetset for cross-platform GUI unification
