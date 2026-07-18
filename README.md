# FPC 2.6.4irc — Maintained Free Pascal Fork

A preservation fork of Free Pascal 2.6.4 with codepage-aware AnsiStrings,
7-platform cross-compiler, 23-unit i8086 DOS backend with Watt-32 TCP/IP,
and a standardized BBS/retro build environment.

## Quick Start

```bash
# Native Linux build:
bin/ppcx64 -Fubin/units/x86_64-linux program.pas

# Cross-compile for 16-bit DOS:
bin/tools/i8086-msdos/build-dos.sh examples/doorkit86/doorkit86.pas

# Cross-compile for Win32:
bin/ppc386 -Twin32 -Fubin/units/i386-win32 -XPi386-win32- program.pas

# Run all tests:
bash test/test-all-platforms.sh      # 15/15
bash tools/cross-compile-all.sh     # 65/65
```

## Supported Targets (7 platforms)

| Target | PPUs | Compiler | Status |
|--------|------|----------|--------|
| x86_64-linux | 87 | `bin/ppcx64` | ✅ Native |
| i386-linux | 94 | `bin/ppc386` | ✅ Cross |
| i386-win32 | 80 | `bin/ppc386 -Twin32` | ✅ Cross |
| i386-go32v2 | 74 | `bin/ppc386 -Tgo32v2` | ✅ Cross (DJGPP DOS) |
| i386-freebsd | 88 | `bin/ppc386 -Tfreebsd` | ✅ Cross |
| i386-os2 (EMX) | 83 | `bin/ppc386 -Temx` | ✅ Cross (compile+link) |
| i8086-msdos | 23 | `ppcross8086` | ✅ Cross (16-bit DOS) |

## i8086 16-bit DOS — 23 Units

All units compiled with smartlinks for minimal binary size (640KB limit).

| Unit | Smartlinks | Category |
|------|-----------|----------|
| system | 1941 | Core RTL |
| dos | 84 | DOS API |
| crt | 71 | Console I/O |
| strings | 25 | PChar string functions |
| objpas | 36 | Object Pascal mode |
| sysutils | 971 | File I/O, date/time, string conversion |
| sockets | 16 | Watt-32 BSD TCP/IP sockets |
| math | 249 | Math functions (FPU stubs on DOS) |
| types | 185 | Delphi-compatible type definitions |
| strutils | 210 | Extended string utilities |
| md5 | 54 | MD5 hash |
| sha1 | 18 | SHA-1 hash |
| crc | 23 | CRC32 checksum |
| keyboard | 59 | Keyboard input |
| objects | 242 | TStream, TCollection, TStringList |
| ports | 14 | Direct I/O port access |
| getopts | 35 | Command-line option parsing |
| printer | 10 | LPT printer output |
| utextmouse | 17 | INT 33h text-mode mouse |
| seteuid_unit | 10 | UID/GID management (stub on DOS) |
| doorkit86 | 42 | BBS door framework |
| sysconst | 4 | System constants |
| rtlconst | 3 | RTL constants |

**Total: 4,369 smartlink objects across 23 units.**

### Watt-32 TCP/IP

`sockets.pp` provides BSD socket API for 16-bit DOS via the Watt-32 library.
`wattcpwl.lib` (16-bit large model, built with OpenWatcom) is bundled at
`lib/watt32/`. Includes FPC wrappers: `WattInit`, `WattTCPConnect`,
`WattSend`, `WattRecv`, `WattClose`.

### PPU Fix

`compiler/ppu.pas` — moved `CpuAluBitSize`/`CpuAddrBitSize` arrays
outside `{$ifdef generic_cpu}`, replaced compile-time dispatch with
runtime `CpuAluBitSize[header.cpu]` in `getaint`/`getasizeint`/
`getaword`/`putaint`. Fixes EListError crash when x86_64 host reads
i8086 PPU files.

## Phases

### Phase 1: Codepage-Aware AnsiStrings
Backported from FPC 3.0: `TSystemCodePage`, `DefaultSystemCodePage`,
codepage-tagged AnsiStrings. Source fixes: `cwstring.pp`, `syswin.inc`,
`sysutils.pp`, `sysos.inc` — callback signatures for
`Wide2AnsiMove`/`Ansi2WideMove` + Unicode wrappers.

### Phase 2: i8086 16-bit DOS Backend
Cross-compiler (`ppcross8086`) rebuilt from FPC 3.0.4 source with PPU
reader fix. Full RTL: 23 units, 4,369 smartlinks. Watt-32 TCP/IP built
from source with OpenWatcom.

### Phase 3: Cross-Platform Unit Library
Three extra units in `src/packages/extra/`, pre-built for all 7 targets:

| Unit | Purpose | Platforms |
|------|---------|-----------| 
| `utrayit` | Console tray/minimize | Win32 (Shell_NotifyIcon), Unix (xterm CSI), DOS/OS2 (stub) |
| `utextmouse` | Text-mode mouse | Unix (xterm SGR), Win32 (Console API), DOS (INT 33h), OS2 (stub) |
| `seteuid_unit` | UID/GID (set/get EUID/EGID/REUID/REGID + errno) | Linux, FreeBSD/BSD (syscall), Win32/DOS/OS2 (stub) |

### Phase 4: Build Tools
- `tools/cross-compile-all.sh` — 65-target verification
- `tools/build-fpcres.sh` — builds `fpcres` for Win32 resources
- `bin/tools/i386-emx/emxl.exe` — EMX 0.9d runtime loader
- Bundled cross-binutils for go32v2, win32, freebsd, OS/2

### Phase 5: BBS/Retro Examples

| Example | Status |
|---------|--------|
| `examples/doorkit86/` — DOS BBS door framework (267 lines) | ✅ Compiles + runs DOSBox |
| `examples/mpl-tests/` — MPL compiler test suite (4 scripts) | ✅ 4/4 pass |
| `examples/renegade140/` — Renegade BBS 1.40 (98 files) | 📋 Porting project |
| `examples/ciadraw/` — CIA Draw ANSI editor (10 files) | 📋 Porting project |
| `libs/trayit-remake/` — TrayIt! Remake (XP-safe) | ✅ 3 platforms |

### Phase 6: Source Code Fixes
- **RecMessageBase.PostType** — missing field in  (used in
   line 776). Added as Byte, carved from Res[29]→Res[28].
  Without this fix,  and  fail to compile.

### Phase 7: Verification
- Mystic BBS A63: **15/15 Linux**, **15/15 Win32**, **15/15 OS/2**
- Cross-compile-all: **65/65** (units + examples + Mystic × 3)
- Platform tests: **15/15**
- Compiler gates: **166/166**

## i8086 Backport Patches

Patches in `patches/` for compiling FPC 3.0.4 RTL units on i8086:

| Patch Set | Files | What It Fixes |
|-----------|-------|---------------|
| `i8086-sysutils/` | sysstr, syshelp, syswide, sysuni, sysencoding, diskh, filutilh, sysutilh, sysutils | TTextLineBreakStyle enum range, TCompareOptions set overflow, Unicode PathStr, UnicodeString overloads |
| `i8086-math/` | math.pp, mathu.inc | Internal error 200301231 in FPU mode functions (stubs) |
| `i8086-strutils/` | strutils.pp | TReplaceFlags set overflow (Move-based construction) |

## .gitignore Fix

The `.gitignore` has `*.ppu` which blocks shipped PPU files from git.
Added `!bin/units/**/*.ppu` exception. See `docs/gitignore_ppu_fix.md`
and `docs/FOR-FPCIRC-AUTHOR-GITIGNORE.md` for the author's fix commands.

## Recent Updates

### Update 5 (latest)
- **23 i8086 PPUs** — all WANT + NICE TO HAVE + CRITICAL units compiled.
  sysutils (971 smartlinks), sockets (Watt-32), math, types, strutils, md5.
- **Watt-32 built from source** — OpenWatcom 2.0 installed, `wattcpwl.lib`
  (361KB, 16-bit large model) compiled and bundled.
- **All smartlinks processed** — every PPU has `.sl/*.o` files.
- **MPL test suite** — 4 test scripts for mplc verification.

### Update 4
- **seteuid_unit complete** — 242 lines, 8 functions, 7/7 targets.
  Linux/FreeBSD/BSD real syscall, Win32/DOS/OS2 stub.
- **utextmouse for i8086** — INT 33h mouse, 17 smartlinks.
- **.gitignore fix** — root cause of missing PPUs on GitHub.

### Update 3
- **FreeBSD PPU chain rebuilt** — baseunix/unix/termio + fpseteuid/fpsetegid.
- **cross-compile-all.sh** — 65-target verification script.
- **Stale package PPUs rebuilt** — netdb, zipper, md5 for linux/win32.

### Update 2
- **TrayIt-Remake** — XP-safe (Vista+ APIs resolved dynamically).
- **cwstring.pp fixed** — callback signatures + Unicode wrappers.
- **Win32 RTL fixed** — syswin.inc, sysutils.pp, sysos.inc.

### Update 1
- **PPU reader fix** — ppcross8086 rebuilt from FPC 3.0.4.
- **i8086 RTL** — system, dos, strings, crt + smartlinks.
- **doorkit86** — BBS door framework, DOSBox verified.

## Bug Report — All 7 Fixed

| # | Bug | Status |
|---|-----|--------|
| 1 | fpSetEUID/fpSetEGID not in PPU | ✅ seteuid_unit.pas |
| 2 | fpIsATTY not in PPU | ✅ PPU rebuilt + workaround |
| 3 | BanMaxConns wrong file | ✅ Fixed in mystic source |
| 4 | FreeBSD PPU mismatch | ✅ Chain rebuilt |
| 5 | OS/2 system.ppu missing | ✅ 83 PPUs rebuilt |
| 6 | ppcross8086 PPU crash | ✅ FPC 3.0.4 rebuild |
| 7 | cwstring.pp callbacks | ✅ 4 signatures fixed |

## Documentation

- `docs/building_fpc264irc.md` — build from source, bootstrapping, i8086
- `docs/i8086_ppu_fix.md` — PPU reader fix explanation
- `docs/watt32_integration.md` — Watt-32 sockets build guide
- `docs/gitignore_ppu_fix.md` — .gitignore PPU fix
- `docs/FOR-FPCIRC-AUTHOR-GITIGNORE.md` — author fix commands
- `docs/reported_bugs.md` — 7-bug tracker (all resolved)
- `docs/comport_standardization_vision.md` — BBS/retro build vision

## License

FPC 2.6.4irc: GPLv2+ (Free Pascal license).
Extra units, examples, tools: GPLv3+.
Watt-32: BSD license (Gisle Vanem).
EMX runtime: GPLv2 (Eberhard Mattes).

## GitHub Description

> FPC 2.6.4irc — maintained Free Pascal fork: 7-platform cross-compiler,
> 23-unit i8086 DOS backend with Watt-32 TCP/IP, codepage-aware AnsiStrings,
> Mystic BBS 45/45 (15×3), 65/65 cross-compile. Foundation for a
> standardized BBS/retro build environment.
