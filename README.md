# FPC 2.6.4irc — Maintained Free Pascal Fork

**Current release: r3.1-20260718**

A preservation fork of Free Pascal 2.6.4 for BBS and retro platform
development. 8-platform cross-compiler with Lazarus LCL on 5 platforms,
Mystic BBS 75/75, netmodem2irc 34/34, zero external dependencies.

## Quick Start

```bash
# Native Linux build:
bin/ppcx64 -Fubin/units/x86_64-linux program.pas

# Cross-compile for Win32:
bin/ppc386 -Twin32 -Fubin/units/i386-win32 -XPi386-win32- program.pas

# Cross-compile for 16-bit DOS:
bin/ppc386 -Tgo32v2 -Fubin/units/i386-go32v2 program.pas

# Cross-compile for FreeBSD:
bin/ppc386 -Tfreebsd -Fubin/units/i386-freebsd program.pas
```

## Supported Targets (8 platforms)

| Target | RTL+Pkg PPUs | LCL PPUs | Compiler | Status |
|--------|-------------|----------|----------|--------|
| x86_64-linux | 332 | 470 | `bin/ppcx64` | ✅ Native |
| i386-linux | 308 | 360 | `bin/ppc386` | ✅ Cross |
| i386-win32 | 126 | 413 | `bin/ppc386 -Twin32` | ✅ Cross (r3 system.o) |
| i386-go32v2 | 78 | — | `bin/ppc386 -Tgo32v2` | ✅ Cross (DJGPP DOS) |
| i386-freebsd | 189 | 359 | `bin/ppc386 -Tfreebsd` | ✅ Cross |
| i386-os2 (EMX) | 84 | — | `bin/ppc386 -Temx` | ✅ Cross |
| i8086-msdos | 42 | — | `ppcross8086` | ✅ Cross (16-bit, smartlinked) |
| i386-darwin | 251 | 171 | `bin/ppc386 -Tdarwin` | ✅ Cross (PPU only) |

**Total: 3,183 PPUs** (1,410 RTL+packages + 1,773 LCL)

## IDE Binaries

| Binary | Size | Description |
|--------|------|-------------|
| `bin/ide/fp` | 7.1MB | Text-mode IDE (Free Vision), static ELF x86_64 |
| `bin/ide/lazarus` | 72MB | GUI IDE (Lazarus, CustomDrawn widgetset) |
| `bin/ide/lazbuild` | 45MB | CLI build tool for Lazarus projects |

## Application Test Results

| Application | Platforms | Result |
|-------------|-----------|--------|
| Mystic BBS v1.10 | Linux, Win32, go32v2, OS/2, FreeBSD | **75/75** |
| netmodem2irc | Engine tests + DOS bridge | **34/34** |
| Cross-compile (all targets) | 8 platforms | **65/65** |
| Compiler gates | All | **166/166 GREEN** |

## Win32 on Windows 11

Win32 binaries use r3's `system.o` (591KB, Jul 10 2026). A later rebuild
from source introduced a heap manager bug that crashes on Windows 11
(Wine unaffected). See `BUG-win32-heap-crash.md` for full analysis.

Post-link PE patching for Windows 11 compatibility:
```bash
python3 tools/pe-win11-fix.py mystic.exe  # Sets NX_COMPAT + SubsystemVersion 6.0
```

## Lazarus LCL

Lazarus 1.2.6 LCL backported to 5 platforms using CustomDrawn widgetset
(Win32 uses native widgetset). Built from source with paswstring codepage
fixes and Win9xWsManager stub.

| Platform | LCL PPUs | Widgetset |
|----------|----------|-----------|
| x86_64-linux | 470 | CustomDrawn |
| i386-linux | 360 | CustomDrawn |
| i386-win32 | 413 | Win32 (from r3 build) |
| i386-freebsd | 359 | CustomDrawn |
| i386-darwin | 171 | CustomDrawn (partial — needs objc bridge) |

## i8086 16-bit DOS — 42 Units

All units compiled with smartlinks for minimal binary size (640KB limit).
Watt-32 TCP/IP for BSD sockets on DOS. See `docs/watt32_integration.md`.

## Roadmap — r3.1 Stable

All builds are `r3.1-YYYYMMDD` until verified and stable.

### Phase 0: Build Infrastructure
- Make clean — purge build artifacts from source tree
- Self-contained build script with three-tier fallback:
  1. Use bundled pre-built tools (`bin/tools/`)
  2. Fall back to system-installed tools
  3. Fall back to building from source
- Gate: `./build.sh` produces a working compiler from clean checkout

### Phase 1: Win32 LCL
- Fix ActiveX → variants checksum cascade
- Build LCL win32 PPUs with `make lcl LCL_PLATFORM=win32`
- Compile NMServer (GUI app) for Win32
- Gate: NMServer.exe runs on Win11

### Phase 2: LCL Verification
- Verify LCL on all 5 platforms
- Fix FreeBSD synedit
- Gate: test app compiles and links on all 5

### Phase 3: Lazarus IDE Cross-Platform
- lazbuild for Win32
- SynEdit + IDE component packages
- Gate: `lazbuild` builds a .lpr project on Win32

### Phase 4.1: Darwin Toolchain
- Add assembler + linker for i386-darwin
- Generate .o object files (currently PPUs only)
- Gate: Darwin PPUs have matching .o files

### Phase 5: Darwin PPU Completion (251 → ~300)
- JPEG: fpreadjpeg, fpwritejpeg
- Platform-specific: serial, exeinfo, heaptrc, lnfodwrf, ipc
- Buildable: dateutils, blowfish, idea, libtar, streamex, htmlwriter
- Gate: all buildable Darwin PPUs done

### Phase 6: Win32 Heap Fix + Codepage (UNSTABLE BRANCH)
- Fix `syswin.inc` `cp:TSystemCodePage` without breaking heap
- Fix `system.o` so it can be rebuilt from source
- Depends on Phase 0 build infrastructure
- Gate: Mystic 75/75 + NMServer on Win11 with new system.o

## Known Issues

| Issue | Impact | Workaround |
|-------|--------|------------|
| Win32 system.o heap bug | Can't rebuild system.o from source | Use r3 system.o (shipped) |
| ActiveX→variants cascade | Win32 LCL can't cross-compile | Use pre-built LCL PPUs |
| FreeBSD synedit | 2 compile errors | Defer to Phase 2 |
| Darwin no .o files | PPU only, link on macOS | Phase 4.1 |
| OS/2 emxbind | Format mismatch for .exe | Run emxbind on OS/2 |

## Source Patches

Key modifications from stock FPC 2.6.4:

| File | Change |
|------|--------|
| `compiler/ppu.pas` | Runtime CpuAluBitSize dispatch (i8086 PPU fix) |
| `rtl/unix/cwstring.pp` | Wide2AnsiMove/Ansi2WideMove callback signatures |
| `rtl/bsd/bunxsysc.inc` | fpseteuid/fpsetegid (syscall 126/127) |
| `rtl/win/syswin.inc` | Codepage callbacks (deferred to unstable) |
| `compiler/rescmn.pas` | windres removed, fpcres only |

## Documentation

| Doc | Description |
|-----|-------------|
| `BUG-win32-heap-crash.md` | Win32 heap crash analysis + root cause |
| `docs/ppu_reference.md` | PPU reference for all platforms |
| `docs/building_fpc264irc.md` | Build from source guide |
| `docs/watt32_integration.md` | Watt-32 DOS sockets |
| `docs/i8086_ppu_fix.md` | PPU reader fix |
| `docs/lazarus_lcl.md` | LCL backport notes |
| `docs/os2_linking_solved.md` | OS/2 cross-linking |
| `docs/tier_fallback_system.md` | Three-tier build system |

## License

FPC 2.6.4irc: GPLv2+ (Free Pascal license).
Extra units, examples, tools: GPLv3+.
Watt-32: BSD license (Gisle Vanem).
EMX runtime: GPLv2 (Eberhard Mattes).
