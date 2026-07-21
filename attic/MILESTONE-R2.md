# FPC 2.6.4irc — Trunk Merge Roadmap

> **Release note:** This document is the overall trunk-merge roadmap. It was
> originally drafted as the "r2" plan; the work it tracks (codepage strings,
> go32v2/OS/2 backports, OS/2 linking, Mystic build) shipped in the release
> now tagged **2.6.4irc-r3 (2026-07-12)**. The phase structure below is
> release-number-agnostic; the current release identity lives in
> `src/compiler/version.pas` (`release_tag`).


## Phase 1: Codepage compiler support

- [ ] `type AnsiString(CP_UTF8)` syntax — compiler parser + type system
- [ ] Automatic codepage conversion on assignment — compiler codegen
- [ ] `UnicodeString` full support — RTL + compiler
- [ ] `widestringmanager` codepage parameter update — ustringh/ustrings/wstrings

**Foundation already done in r1:**
- TAnsiRec has CodePage + ElementSize fields
- StringCodePage(), StringElementSize(), SetCodePage() work
- RawByteString type, CP_* constants, DefaultSystemCodePage
- Compiler emits new TAnsiRec for string literals
- 65 baseline + 34 codepage tests pass


## Phase 2: Legacy/preservation target backends

- [ ] i8086 (16-bit real-mode DOS) — new code generator from trunk
- [ ] OS/2 native (non-EMX) improvements from trunk
- [ ] go32v2 improvements from trunk

**Foundation already done in r1:**
- go32v2 sockets.pp (Watt-32)
- COFF writer fix (storage class 3)
- OS/2 import-by-name fix
- OS/2 binutils BFD patch + emxbind source
- CWSDPMI/CWSDSTUB bundled


## Phase 3: Modern target backends

- [ ] AArch64 (ARM64) code generator — Mac, Linux, iOS
- [ ] Mach-O 64 linker support
- [ ] Darwin ABI for Apple Silicon

**Note:** This is the largest single effort — essentially a new CPU
backend. May be better served by selective trunk merge rather than
line-by-line backport.


## Phase 4: Prove it works

- [ ] Rebuild all RTLs:
  - [ ] x86_64-linux
  - [ ] i386-linux
  - [ ] i386-go32v2 (32-bit DOS)
  - [ ] i8086-msdos (16-bit DOS)
  - [ ] i386-win32
  - [ ] i386-freebsd
  - [ ] i386-emx (OS/2)
  - [ ] aarch64-darwin (macOS ARM64)

- [ ] Run full test suite (99+ tests):
  - [ ] test_string_baseline.pas — 65 checks, zero regressions
  - [ ] test_string_codepage.pas — 34 checks, all infrastructure
  - [ ] test_linux_sockets.pas
  - [ ] test_win32_sockets.pas
  - [ ] test_freebsd_sockets.pas
  - [ ] test_darwin_sockets.pas
  - [ ] test_dos_sockets.pas
  - [ ] test_os2_sockets.pas
  - [ ] NEW: test_i8086_sockets.pas (if applicable)
  - [ ] NEW: test_aarch64_darwin.pas
  - [ ] NEW: test_codepage_conversion.pas (automatic conversion)
  - [ ] NEW: test_unicodestring.pas

- [ ] Compile Mystic BBS clean on all platforms:
  - [ ] `Uses Sockets` — no {$IFDEF} per platform
  - [ ] String operations — no codepage corruption
  - [ ] Binary protocol safety (raw bytes through codepage-aware strings)

- [ ] Build and run Mystic on actual hardware/emulators:
  - [ ] DOS go32v2: Watt-32 + packet driver + FreeDOS/DOSBox
  - [ ] DOS i8086: WatTCP (if applicable) + real-mode DOS
  - [ ] OS/2: ArcaOS or eComStation
  - [ ] Mac: Apple Silicon (AArch64) — native macOS
  - [ ] Linux: x86_64 native
  - [ ] Windows: Win32 native
  - [ ] FreeBSD: native


## Phase 5: Release

- [ ] Update `fpc264irc.patch` with all trunk merge changes
- [ ] Rebuild prebuilt binaries for all platforms
- [ ] Update README.md, CHANGELOG-IRC.md
- [ ] Add new tests to test suite + run-tests.sh
- [ ] Tag `2.6.4irc-r3`
- [ ] Push to GitHub repo
- [ ] Create GitHub release with archive


## Current status (r1 — completed)

### What works today:
- Compiler identifies as 2.6.4irc
- COFF writer fix — no -Aas needed for go32v2
- DOS sockets (Uses Sockets + libwatt.a) — proven, 148KB EXE
- Codepage infrastructure (RTL-side) — 34/34 tests pass
- String baseline — 65/65 tests pass, zero regressions
- OS/2 import-by-name fix
- -Ao, -WS compiler flags
- {$linklib watt} auto-links libwatt.a
- Watt-32 source bundled (lib/watt32/)
- CWSDPMI/CWSDSTUB bundled (lib/cwsdpmi/)
- emxbind source bundled (patches/os2-cross/emxbind/)
- 6 platform socket tests + 2 string tests + test runner
- Full FPC 2.6.4 source + reproducible patch (14 files, 2975 lines)
- Self-hosted build (no external RTL dependencies)

### Files modified from stock 2.6.4:
1. compiler/version.pas — minorpatch = 'irc'
2. compiler/options.pas — -Ao option
3. compiler/globals.pas — asmextraopt, go32v2stubfile
4. compiler/assemble.pas — $EXTRAOPT
5. compiler/ogcoff.pas — COFF fix + custom stub
6. compiler/x86/agx86att.pas — $EXTRAOPT in asmcmd
7. compiler/systems/t_os2.pas — import-by-name + emxbind -q
8. compiler/asmutils.pas — string literal new TAnsiRec layout
9. rtl/inc/systemh.inc — TSystemCodePage, CP_*, codepage functions
10. rtl/inc/system.inc — ObjpasInt, get_pc_addr, HandleErrorAddrFrameInd
11. rtl/inc/astrings.inc — imported from FPC 3.0.4
12. rtl/go32v2/sockets.pp — NEW (Watt-32 DOS sockets)
13. rtl/go32v2/Makefile.fpc — sockets in units list
14. rtl/go32v2/Makefile — sockets in units list
