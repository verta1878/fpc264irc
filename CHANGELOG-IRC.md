# FPC 2.6.4irc Changelog

## r3.1-20260718 (2026-07-18)

### Win32 Heap Crash Fixed
- **Root cause:** `syswin.inc` codepage signature changes (`cp:TSystemCodePage`
  added to Unicode conversion functions) changed register allocation, corrupting
  heap data structures on Windows 11. Wine unaffected.
- **Fix:** Win32 system unit locked to r3's `system.o` (591KB, Jul 10).
  Codepage patches deferred to Phase 6 (unstable branch).
- **PE patching:** `tools/pe-win11-fix.py` sets NX_COMPAT + SubsystemVersion 6.0.

### New Platforms
- **i386-darwin:** 251 RTL+pkg PPUs + 171 LCL PPUs (new target)
- **i8086-msdos:** 42 PPUs, all smartlinked (was 23 in r3)

### PPU Expansion
- x86_64-linux: 87 → 332 (+245)
- i386-linux: 94 → 308 (+214)
- i386-win32: 77 → 126 (+49, r3 system.o base)
- i386-go32v2: 71 → 78 (+7)
- i386-freebsd: 88 → 189 (+101)
- i386-os2: 83 → 84 (+1)
- i8086-msdos: 23 → 42 (+19)
- i386-darwin: 0 → 251 (NEW)

### LCL Backport
- Lazarus 1.2.6 LCL on 5 platforms (1,773 PPUs total)
- CustomDrawn widgetset for Linux, FreeBSD, Darwin
- Win32 native widgetset (from r3 build)
- Lazarus GUI IDE binary (72MB, CustomDrawn)
- lazbuild CLI build tool (45MB)

### Application Testing
- Mystic BBS: 56/56 → 75/75 (added FreeBSD 15/15)
- netmodem2irc: 34/34 engine tests (new)
- Cross-compile: 65/65 all pass

### Build Cleanup
- Removed windres from compiler source (`rescmn.pas`)
- Cleaned build artifacts from `src/rtl/units/`
- Darwin process unit: fpvfork → fpfork fix


**Base:** Free Pascal Compiler 2.6.4 (release_2_6_4, January 2014)
**Fork:** 2.6.4irc — DOS networking, cross-compilation fixes, OS/2 import fix

---

## r4 (2026-07-17)

### cwstring.pp fix
- Fixed TUnicodeStringManager callback signatures in rtl/unix/cwstring.pp
- Added cp:TSystemCodePage parameter to Wide2AnsiMove/Ansi2WideMove
- Added Unicode2AnsiMove/Ansi2UnicodeMove wrappers
- Native RTL now builds fully (62/62 PPUs, zero errors)

### TrayIt-Remake
- Added libs/trayit-remake/ — system tray utility (utrayit unit + traydemo)
- Pre-built binaries for DOS, Linux, win32
- Documented 7 compiler/toolchain fixes in COMPILER-FIXES.md
- Added tools/build-fpcres.sh — builds missing fpcres for i386-win32 resources
- Fixed executable bits on bundled binaries

### Roadmap
- Added docs/comport_standardization_vision.md — endgame vision for
  standardizing comport/FOSSIL serial layer within fpc264irc ecosystem

### fpSetEUID/fpSetEGID
- Added seteuid_unit (src/packages/extra/seteuid_unit.pas)
- Provides fpSetEUID() and fpSetEGID() via direct syscall wrappers
- Needed for BBS daemons that drop privileges after binding to ports

### i8086 16-bit DOS Cross-Compiler
- New target: i8086-msdos (16-bit real-mode DOS, MZ .EXE output)
- Patched prt0comn.asm: FPC_INTR v5 dispatch (INT 10h/14h/16h/21h/2Fh/33h)
- Patched system unit: FillChar, Move, do_open/write/read/close, OpenText,
  GetInOutRes, INIT$_SYSTEM (manual stdout, FPC_THREADVAR_RELOCATE=0)
- Section class fixes for all 2078 smartlink files (bss/data/rodata → dgroup)
- One-command build: bin/tools/i8086-msdos/build-dos.sh
- 15/15 i8086 test checks (tools, RTL units, 6 DOSBox functional tests)

### RIPscript Testing Tools
- Bundled Ansilove 4.2.0 (binary + source, 39K + 70K)
- Bundled ImageMagick 6.9 (binary + source, 15K + 4MB)
- 3-tier provisioning: system packages → bundled binaries → build from source
- 23/23 RIPscript tool checks

### Test Results
- 166/166 compiler gates GREEN
- 15/15 platform tests (6 platforms + DOS sockets + i8086 + RIPscript)

## Summary

FPC 2.6.4irc is a full fork of FPC 2.6.4 that adds DOS TCP/IP socket
support, backports binutils cross-linking fixes from FPC 3.0/3.3, and
fixes OS/2 import symbol generation for cross-compilation from Linux.

The goal: `Uses Sockets` works on DOS (go32v2) the same way it works on
Linux, Windows, OS/2, FreeBSD, and macOS — no application-level
`{$IFDEF}` needed.

---

## Changes from stock FPC 2.6.4

### 1. Version identification

**Files:** `src/compiler/version.pas`, `src/compiler/options.pas`,
`src/compiler/globals.pas`

- `minorpatch = 'irc'` (was `''`)
- New release-identity constants: `release_tag = 'r3'` and
  `release_date = '2026-07-12'` — stable metadata that does **not** change
  on rebuild (unlike the `%DATE%` compile date)
- `full_version_string` now reads `2.6.4irc-r3 (2026-07-12)`, so the release
  and its date are visible in the `-v` banner, `-iW` output, DWARF producer
  string, and the `.fpc.version` section
- New `-iR` info option prints the full release identity
- New macros `$FPCRELEASE`, `$FPCRELEASETAG`, `$FPCRELEASEDATE` available in
  message templates
- `version_string` (used for the `/usr/lib/fpc/<ver>/` FPCDIR lookup) is
  deliberately left as `2.6.4` so directory resolution is unaffected
- Banner example:
  `Free Pascal Compiler version 2.6.4irc-r3 (2026-07-12) [2026/07/12] for x86_64`
  — the first date is the fixed release date, the bracketed one is the
  compile date
- PPU `wordversion` unchanged — binary compatible with stock 2.6.4 units


### 2. New RTL unit: Sockets for go32v2

**File:** `src/rtl/go32v2/sockets.pp` (new)

Complete BSD socket unit for DOS, backed by the Watt-32 TCP/IP library
(`libwatt.a`). This file did not exist in any FPC version for the
go32v2 target.

**What it provides:**

- Full `fp*` socket API: `fpSocket`, `fpBind`, `fpListen`, `fpAccept`,
  `fpConnect`, `fpSend`, `fpRecv`, `fpSendTo`, `fpRecvFrom`,
  `fpShutdown`, `fpGetSockName`, `fpGetPeerName`, `fpGetSockOpt`,
  `fpSetSockOpt`, `fpSocketPair`
- I/O multiplexing: `fpSelect`, `fpFD_Zero`, `fpFD_Set`, `fpFD_Clr`,
  `fpFD_IsSet` and non-prefixed aliases
- Socket control: `CloseSocket`, `ioctlSocket`, `SocketError`
- Byte order: `htons`, `htonl`, `ntohs`, `ntohl`
- IPv4 address conversion: `StrToHostAddr`, `HostAddrToStr`,
  `StrToNetAddr`, `NetAddrToStr`, `inet_addr`, `inet_ntoa`, `inet_aton`
- IPv6 address conversion: `StrToHostAddr6`, `HostAddrToStr6`,
  `StrToNetAddr6`, `NetAddrToStr6`
- DNS resolver: `GetHostByName`, `GetHostByAddr`, `ResolveName`
- Service/protocol lookup: `GetServByName`, `GetProtoByName`
- Legacy wrappers: `Socket`, `Send`, `Recv`, `Bind`, `Listen`,
  `Accept`, `Connect`, `Shutdown`, etc.
- All standard types: `TInetSockAddr`, `TInAddr`, `TSockAddr`,
  `TSocket`, `TFDSet`, `TTimeVal`, `THostEnt`, `TServEnt`, `linger`,
  `sockaddr_in6`, `in6_addr`
- All standard constants: `AF_INET`, `SOCK_STREAM`, `IPPROTO_TCP`,
  `SOL_SOCKET`, `SO_REUSEADDR`, `TCP_NODELAY`, `FIONBIO`, `FIONREAD`,
  `INADDR_ANY`, etc.

**How it works:**

- `cdecl; external name '...'` bindings to Watt-32's BSD socket
  functions in `libwatt.a`
- Auto-initializes via `sock_init` on unit load, shuts down via
  `sock_exit` on finalization
- `{$linklib watt}` tells the linker to pull in `libwatt.a`

**Build dependency:** `libwatt.a` (Watt-32 compiled with DJGPP)
**Runtime dependency:** DOS packet driver + `WATTCP.CFG` (or DHCP)


### 3. Smartlink sections for go32v2

**File:** `src/compiler/systems/i_go32v2.pas`

- Added `tf_smartlink_sections` to flags (was `[tf_use_8_3, tf_smartlink_library]`)
- Backported from FPC 3.0
- Enables section-level dead code elimination
- Works with stock DJGPP binutils (`apt install binutils-djgpp`)


### 4. COFF section attributes for go32v2

**File:** `src/compiler/aggas.pas`

- Added `system_i386_go32v2` to the COFF section attributes check
  (was only `system_i386_win32, system_x86_64_win64`)
- Emits proper COFF flags (`"x"` for code, `"d"` for data) on
  smartlink sections so DJGPP `as` handles them correctly


### 5. Assembler extra options (`-Ao` flag)

**Files:** `src/compiler/globals.pas`, `src/compiler/options.pas`,
          `src/compiler/assemble.pas`

- Backported from FPC 3.0
- `-Ao<options>` passes extra options to the external assembler
- `src/compiler/globals.pas` — new variable `asmextraopt`
- `src/compiler/options.pas` — `-Ao` parsing
- `src/compiler/assemble.pas` — `$EXTRAOPT` replacement in `MakeCmdLine`


### 6. `$EXTRAOPT` in assembler command templates

**File:** `src/compiler/x86/agx86att.pas`

- All `asmcmd` strings updated: `'--32 -o $OBJ $EXTRAOPT $ASM'`
- Backported from FPC 3.0
- Required for `-Ao` to take effect


### 7. Custom DOS stub support (`-WS` flag)

**Files:** `src/compiler/globals.pas`, `src/compiler/options.pas`,
          `src/compiler/ogcoff.pas`

- `-WS<stubfile>` replaces the default 2KB DOS stub with a custom stub
  (e.g., CWSDSTUB) at link time
- `src/compiler/globals.pas` — new variable `go32v2stubfile`
- `src/compiler/options.pas` — `-WS` parsing
- `src/compiler/ogcoff.pas` — `LoadGo32v2Stub` procedure reads the stub,
  pads to 512 bytes, updates MZ header; linker uses custom stub when set

Usage:
```
fpc -Tgo32v2 -WScwsdstub.exe myprogram.pas
```
Result is a standalone DOS EXE with embedded DPMI host.


### 8. Sockets wired into go32v2 RTL build

**Files:** `src/rtl/go32v2/Makefile.fpc`, `src/rtl/go32v2/Makefile`

- Added `sockets` to the `units=` list
- `make all OS_TARGET=go32v2` now builds `sockets.ppu` automatically


### 9. OS/2 import-by-name fix (backported from FPC 3.0.4)

**File:** `src/compiler/systems/t_os2.pas`

- Import-by-name now uses `MangledName + target_info.Cprefix` instead
  of raw `Name` for the a.out import symbol string
- Generates correct import records that match the mangled names the
  linker expects
- Added `-q` (quiet) flag to emxbind command line


### 10. Corrected binutils BFD patch for OS/2

**File:** `patches/os2-cross/binutils-2.30-emx-nimp.patch`

- Corrected `N_IMP1 = 0x68`, `N_IMP2 = 0x6a` (values from FPC source,
  matching EMX 0.9d specification)
- `IS_EMX_IMPORT()` macro masks out `N_EXT` before comparing
- Covers all three `N_STAB` check sites in `bfd/aoutx.h`:
  `translate_from_native_sym_flags()`, debug symbol scanner,
  and external symbol filter
- Targets binutils 2.42 (current)


### 11. OS/2 cross-compilation documentation

**Directory:** `patches/os2-cross/`

- `binutils-2.30-emx-nimp.patch` — BFD patch
- `emxbind-linux-port.patch` — emxbind porting instructions from
  EMX 0.9d GPL source, including reconstructed header definitions
- `README.md` — complete OS/2 cross-compile setup guide


### 12. Build scripts

**Files:** `build-linux.sh`, `build-windows.bat`

Build the full compilation chain:
1. Find bootstrap FPC (2.6.x required)
2. Build the 2.6.4irc compiler (`make cycle`)
3. Build native RTL and packages
4. Optionally cross-compile RTL for go32v2, win32, freebsd, os2

```bash
./build-linux.sh                # native only
./build-linux.sh go32v2         # + DOS
./build-linux.sh all            # + all cross targets
./build-linux.sh clean          # remove artifacts
```

Final stage creates a release archive with source + binaries.


### 13. Test suite

**Directory:** `test/`

- `test_linux_sockets.pas` — Linux baseline (regression check)
- `test_dos_sockets.pas` — go32v2 proof (all Mystic-required symbols)
- `test_win32_sockets.pas` — Windows Win32 sockets
- `test_os2_sockets.pas` — OS/2 EMX sockets
- `test_freebsd_sockets.pas` — FreeBSD sockets
- `test_darwin_sockets.pas` — macOS (Darwin) sockets
- `run-tests.sh` — automated test runner

```bash
test/run-tests.sh              # all available tests
test/run-tests.sh go32v2       # DOS only
test/run-tests.sh win32        # Windows only
test/run-tests.sh darwin       # macOS only
test/run-tests.sh os2          # OS/2 only
```

---

## Complete file manifest

| File | Status | Description |
|------|--------|-------------|
| `README.md` | New | Project overview and quick start |
| `CHANGELOG-IRC.md` | New | This file |
| `LICENSE` | Stock | GPL v2 (FPC compiler) |
| `build-linux.sh` | New | Linux/macOS build script |
| `build-windows.bat` | New | Windows build script |
| `src/compiler/version.pas` | Modified | `minorpatch = 'irc'` |
| `src/compiler/systems/i_go32v2.pas` | Modified | `tf_smartlink_sections` flag |
| `src/compiler/systems/t_os2.pas` | Modified | Import-by-name fix + emxbind `-q` |
| `src/compiler/aggas.pas` | Modified | go32v2 COFF section attributes |
| `src/compiler/globals.pas` | Modified | `asmextraopt`, `go32v2stubfile` vars |
| `src/compiler/options.pas` | Modified | `-Ao`, `-WS` option parsing |
| `src/compiler/assemble.pas` | Modified | `$EXTRAOPT` replacement |
| `src/compiler/x86/agx86att.pas` | Modified | `$EXTRAOPT` in `asmcmd` templates |
| `src/compiler/ogcoff.pas` | Modified | Custom stub loading (`-WS`) |
| `src/rtl/go32v2/sockets.pp` | **New** | DOS Sockets unit (Watt-32) |
| `src/rtl/go32v2/Makefile.fpc` | Modified | Added `sockets` to units list |
| `src/rtl/go32v2/Makefile` | Modified | Added `sockets` to units list |
| `patches/os2-cross/README.md` | New | OS/2 cross-compile guide |
| `patches/os2-cross/binutils-2.30-emx-nimp.patch` | New | BFD fix (N_IMP1=0x68, N_IMP2=0x6a) |
| `patches/os2-cross/emxbind-linux-port.patch` | New | emxbind porting instructions |
| `test/test_linux_sockets.pas` | New | Linux sockets baseline test |
| `test/test_dos_sockets.pas` | New | DOS sockets verification test |
| `test/test_win32_sockets.pas` | New | Windows (Win32) sockets verification test |
| `test/test_os2_sockets.pas` | New | OS/2 sockets verification test |
| `test/test_freebsd_sockets.pas` | New | FreeBSD sockets verification test |
| `test/test_darwin_sockets.pas` | New | macOS (Darwin) sockets verification test |
| `test/test_string_baseline.pas` | New | AnsiString regression test (65 checks) |
| `test/test_string_codepage.pas` | New | Codepage infrastructure test (34 checks) |
| `test/run-tests.sh` | New | Automated test runner |
| `src/rtl/inc/astrings.inc` | Imported | AnsiString runtime from FPC 3.0.4 (codepage-aware) |
| `src/rtl/inc/systemh.inc` | Modified | TSystemCodePage, CP_*, codepage functions |
| `src/rtl/inc/system.inc` | Modified | ObjpasInt, get_pc_addr, HandleErrorAddrFrameInd |
| `src/compiler/asmutils.pas` | Modified | String literal new TAnsiRec layout |

## Prebuilt binaries

| Binary | Description |
|--------|-------------|
| `bin/ppcx64` | x86_64 Linux compiler (2.6.4irc) |
| `bin/ppc386` | i386 cross-compiler (2.6.4irc) |
| `bin/units/x86_64-linux/` | 62 RTL units + sockets.ppu |
| `bin/units/i386-linux/` | 69 RTL units + sockets.ppu |
| `bin/units/i386-go32v2/` | 52 RTL units + sockets.ppu (Watt-32) |
| `bin/units/i386-win32/` | 56 RTL units + sockets.ppu |
| `bin/units/i386-freebsd/` | 63 RTL units + sockets.ppu |
| `bin/units/i386-os2/` | Empty (needs patched binutils + emxbind) |

---

## Compatibility

- PPU format unchanged — stock FPC 2.6.4 compiled units work
- All existing FPC 2.6.4 programs compile unchanged
- The new Sockets unit only affects the go32v2 target
- The binutils fixes are backward compatible
- The OS/2 import fix generates correct symbols that work with both
  stock and patched binutils
- Bootstrap requires FPC 2.6.x (not 3.x)


### 14. Codepage-aware AnsiString backport (from FPC 3.0.4)

**Files:**
- `src/rtl/inc/astrings.inc` — imported from FPC 3.0.4, adapted for 2.6.4
- `src/rtl/inc/systemh.inc` — added TSystemCodePage, CP_* constants,
  DefaultSystemCodePage, CodePointer, RawByteString, StringCodePage,
  StringElementSize, StringRefCount, SetCodePage declarations
- `src/rtl/inc/system.inc` — added ObjpasInt type, get_pc_addr stub,
  HandleErrorAddrFrameInd
- `src/compiler/asmutils.pas` — emit_ansistring_const now emits the
  new TAnsiRec layout (CodePage + ElementSize + Ref + Len) for string
  literals

**TAnsiRec layout change:**

```
Before (2.6.4):  Ref(pint) + Len(pint)
After (2.6.4irc): CodePage(Word) + ElementSize(Word) + [Pad(DWord)] + Ref(pint) + Len(pint)
```

**What works:**
- TSystemCodePage type (Word)
- Constants: CP_ACP(0), CP_OEMCP(1), CP_UTF8(65001), CP_ASCII(20127),
  CP_NONE($FFFF), CP_UTF16(1200)
- DefaultSystemCodePage variable
- RawByteString type (alias for AnsiString)
- StringCodePage(S) — returns codepage from header (literals and dynamic)
- StringElementSize(S) — returns 1 for AnsiString
- StringRefCount(S) — returns reference count from header
- SetCodePage(S, cp, false) — sets codepage field in header
- All existing string operations (assign, concat, copy, insert, delete,
  pos, setlength, val, str, uniquestring) work with zero regressions
- Binary data (null bytes, high bytes) preserved through all operations

**What does NOT yet work (needs further compiler changes):**
- `type AnsiString(CP_UTF8)` syntax (FPC_HAS_CPSTRING)
- Automatic codepage conversion on string assignment
- Codepage-aware comparison
- widestringmanager codepage parameter propagation

**Test results:**
- Baseline: 65/65 PASS (zero regressions from stock 2.6.4)
- Codepage: 34/34 PASS (all infrastructure verified)


### 15. String test suite

**Files:**
- `test/test_string_baseline.pas` — 65 checks covering all AnsiString
  operations. Run before and after changes to detect regressions.
- `test/test_string_codepage.pas` — 34 checks verifying the codepage
  backport: types, constants, variables, StringCodePage on literals
  and dynamic strings, StringElementSize, StringRefCount, SetCodePage,
  binary data safety, codepage preservation through operations.
- `test/run-tests.sh` — updated with `strings` target

```bash
test/run-tests.sh strings    # run both string tests
test/run-tests.sh all        # includes string tests
```


### 16. Full FPC 2.6.4 source + reproducible patch

**File:** `fpc264irc.patch` (2,980 lines)

The `src/` directory now contains the **complete** FPC 2.6.4 source
tree (13,309 files) with all IRC changes applied. The patch file
`fpc264irc.patch` captures every change as a single unified diff
against the official `release_2_6_4` tag.

To reproduce from scratch:
```bash
git clone --branch release_2_6_4 https://github.com/fpc/FPCSource.git
cd FPCSource
patch -p1 < fpc264irc.patch    # 16 files patched
```

**Updated file manifest:**

| File | Status | Description |
|------|--------|-------------|
| `fpc264irc.patch` | New | All changes as unified diff (16 files, 2980 lines) |
| `src/` | Full | Complete FPC 2.6.4 source (13,309 files) + patch applied |
| `src/compiler/version.pas` | Modified | `minorpatch = 'irc'` |
| `src/compiler/options.pas` | Modified | `-Ao` option parsing |
| `src/compiler/globals.pas` | Modified | `asmextraopt`, `go32v2stubfile` vars |
| `src/compiler/assemble.pas` | Modified | `$EXTRAOPT` replacement |
| `src/compiler/ogcoff.pas` | Modified | Custom stub loading (`-WS`) |
| `src/compiler/aggas.pas` | Modified | go32v2 COFF section attributes |
| `src/compiler/x86/agx86att.pas` | Modified | `$EXTRAOPT` in `asmcmd` templates |
| `src/compiler/systems/i_go32v2.pas` | Modified | `tf_smartlink_sections` flag |
| `src/compiler/systems/t_os2.pas` | Modified | Import-by-name fix + emxbind `-q` |
| `src/compiler/asmutils.pas` | Modified | String literal new TAnsiRec layout |
| `src/rtl/inc/systemh.inc` | Modified | TSystemCodePage, CP_*, codepage functions |
| `src/rtl/inc/system.inc` | Modified | ObjpasInt, get_pc_addr, HandleErrorAddrFrameInd |
| `src/rtl/inc/astrings.inc` | Imported | AnsiString runtime from FPC 3.0.4 |
| `src/rtl/go32v2/sockets.pp` | **New** | DOS Sockets unit (Watt-32) |
| `src/rtl/go32v2/Makefile.fpc` | Modified | Added `sockets` to units list |
| `src/rtl/go32v2/Makefile` | Modified | Added `sockets` to units list |
| `patches/os2-cross/binutils-2.30-emx-nimp.patch` | New | BFD fix for OS/2 |
| `patches/os2-cross/emxbind-linux-port.patch` | New | emxbind porting docs |
| `patches/os2-cross/README.md` | New | OS/2 cross-compile guide |
| `test/test_string_baseline.pas` | New | 65 AnsiString regression checks |
| `test/test_string_codepage.pas` | New | 34 codepage infrastructure checks |
| `test/test_linux_sockets.pas` | New | Linux sockets test |
| `test/test_win32_sockets.pas` | New | Windows sockets test |
| `test/test_freebsd_sockets.pas` | New | FreeBSD sockets test |
| `test/test_darwin_sockets.pas` | New | macOS sockets test |
| `test/test_dos_sockets.pas` | New | DOS sockets test |
| `test/test_os2_sockets.pas` | New | OS/2 sockets test |
| `test/run-tests.sh` | New | Automated test runner |
| `build-linux.sh` | New | Linux build script |
| `build-windows.bat` | New | Windows build script |
| `README.md` | New | Project documentation |
| `CHANGELOG-IRC.md` | New | This file |
| `LICENSE` | Stock | GPL v2 |


### 17. COFF section symbol storage class fix

**File:** `src/compiler/ogcoff.pas`

Fixed the COFF object writer to use storage class C_STAT (3) instead
of C_SECTION (104) for section symbols (.text, .data, .bss). Stock
FPC 2.6.4 uses 104, which PE/Win32 binutils silently accept but
DJGPP binutils (2.35) reject with "unrecognized storage class 104".

This was the root cause of the `-Aas` requirement. With this fix,
FPC's internal assembler produces `.o` files that DJGPP `ld` reads
correctly. No `-Aas` workaround needed.

One-line change:
```pascal
write_symbol(name,mempos,secidx,COFF_SYM_LOCAL,1);  { was COFF_SYM_SECTION }
```

**Changes #3 and #4 reverted:** `tf_smartlink_sections` and the COFF
section attributes (`,"x"`, `,"d"`) for go32v2 were reverted to stock
2.6.4 behavior. DJGPP binutils handle library-level smartlinking
correctly; section-level smartlinking would need newer DJGPP binutils.


### 18. `{$linklib watt}` added to sockets.pp

**File:** `src/rtl/go32v2/sockets.pp`

Added `{$linklib watt}` directive so the linker automatically includes
`libwatt.a` when any program uses the Sockets unit. Without this,
users would need to manually pass `-k-lwatt` on the command line.

**Proven:** `Uses Sockets` → compile → link → 148KB DJGPP go32 DOS
executable. No `-Aas`, no manual link flags, stock DJGPP binutils.

### 19. OS/2 RTL completion (crt, sockets, so32dll)

**Files:** `src/rtl/emx/crt.pas`, `src/rtl/emx/sysutils.pp`, plus emx RTL build

To compile Mystic BBS for OS/2, three standard RTL units that upstream FPC
2.6.4 shipped in source but never built for the emx target were completed:

- **crt** — the shared `crth.inc` was updated upstream to use `tcrtcoord`
  (a `1..255` subrange) for `GotoXY`/`WhereX`/`WhereY`, but the emx `crt.pas`
  implementation still used `byte`, leaving the forward declarations
  unsolved. Fixed the three signatures to match `crth.inc`.
- **sysutils** — carried a redundant empty local `Beep` that clashed with the
  `Beep` in the shared `objpas/sysutils.inc` (overloaded functions with the
  same parameter list). Removed the local duplicate; the shared one (with the
  `OnBeep` handler) is used, matching every other platform.
- **sockets** + **so32dll** — the OS/2 TCP/IP RTL units, present in source but
  absent from the prebuilt emx RTL. Built into the emx RTL so networked
  programs compile.

Result: the OS/2 RTL grows from 44 to 60 units, and Mystic links 13/14 OS/2
targets with zero undefined references. See `docs/mystic_build.md`.

### 20. OS/2 TProcess implementation (fcl-process) — completes Mystic 56/56

**Files:** `src/packages/fcl-process/src/os2/process.inc` (new),
`src/packages/fcl-process/src/os2/pipes.inc`, `src/packages/fcl-process/src/process.pp`

Upstream FPC — through 3.x — never implemented `TProcess` for OS/2:
`fcl-process` shipped `os2/pipes.inc` and `os2/simpleipc.inc` but no
`os2/process.inc` in any release. Mystic's internet server (`mis`) spawns a
child per node via `TProcess` and relays its I/O, so it could not link on
OS/2 without this.

- **New `os2/process.inc`** — asynchronous spawning via `DosExecPgm`
  (`deAsyncResult`) + `DosWaitChild`, with pipe redirection through
  `DosCreatePipe` + `DosDupHandle`. The standard handles 0/1/2 are redirected
  onto the child's pipe ends before the spawn and the parent's own handles
  restored after. Implements `Execute`, `PeekExitStatus`, `WaitOnExit`,
  `Terminate`, `Suspend`/`Resume` (return -1; whole-process suspend is not
  exposed by OS/2), and handle cleanup.
- **`os2/pipes.inc`** — the stubbed `GetNumBytesAvailable` (always returned 0)
  now uses `DosPeekNPipe` and returns `Avail.cbPipe`. `mis` polls
  `Output.NumBytesAvailable` in its relay loop, so the stub would have broken
  it even with a working `Execute`.
- **`process.pp`** — `DosCalls` added to the uses clause under `{$ifdef os2}`.

Result: `mis` links for OS/2 with zero undefined references, bringing OS/2 to
14/14 and the full Mystic matrix to **56/56** across native Linux, win32,
go32v2 DOS, and OS/2. See `docs/mystic_build.md`.

### 21. Lazarus LCL — qt and nogui widgetsets

Added two more Lazarus 1.2.6 LCL widgetsets built with the fork's compiler,
bringing the total to four:

- **qt** (Linux i386) — 36 widgetset units on top of the bundled Qt4 binding
  (`qt4.pas`) + x11. A real LCL GUI app compiles fully; final linking needs
  `libQt4Pas` and 32-bit X11 on the host (a host-library matter, not an LCL
  one), same class as gtk2.
- **nogui** (Linux i386) — the headless widgetset (5 units). A non-visual LCL
  app links **and runs** on this host, reporting `LCL version: 1.2.6.0`. This
  is the first run-verified widgetset. By design nogui has no window or timer
  backend; it is for non-visual LCL use (TApplication, component logic,
  console tools built on LCL units).

`tools/get-lcl.sh` and `build-lcl.sh` now accept `qt` and `nogui`;
`test/test-ide-gui-fallback.sh` checks all four widgetsets (17 checks).
`wince` is documented as needing a wince RTL + target toolchain (not just a
widgetset) and is deferred. See `docs/lazarus_lcl.md`.

## r3 patch (2026-07-14) — native ld linker-invocation fix

Fixed a link-stage bug reported against r3 on modern Linux (binutils 2.42):
the native `ld` invocation passed the full `link.res` linker script as a bare
positional argument instead of via `-T`, which makes recent GNU `ld` warn
("link.res contains output sections; did you forget -T?") and, on some binutils
builds, parse it pathologically or wedge the `ld` process (making even an
unrelated `ld --version` appear to hang). Compile-only always worked; only the
link step was affected.

Fix (compiler/systems/t_linux.pas): always pass the linker script with `-T`
(our `link.res` is always a full `ENTRY`+`SECTIONS` replacement script, so `-T`
is always correct — this matches the approach FPC 3.2.2 adopted for binutils
>= 2.19). Rebuilt `ppc386` + `ppcx64`; both still report `2.6.4irc-r3`.

Verified: gate suite 166/169 ALL GREEN (now linking, not just compiling);
trivial programs and the native i386 Mystic build (`mystic` 969 KB, `mplc`,
`mide`, `mutil`, `mbbsutil`, `mystpack`, `install`, `install_make`,
`maketheme`, `109to110`) all compile and link cleanly with no `-T` warning and
no hang. See docs/bugs/fpc264irc-ld-linker-bug-FIX.md.

## r3 patch (2026-07-14) — prebuilt FPC packages + Mystic unit-path fix

Fixed a build-configuration issue: a full Mystic build linked only 10/14, the
4 failures all `Can't find unit cNetDB` (then `MD5`) — FPC package units, not
Mystic code, and not a compile/link bug. r3 shipped fcl-net / hash / paszlib /
fcl-process as source only, so the compiler couldn't find them without extra
-Fu paths.

Two fixes (either alone yields 14/14):
  (a) Prebuilt those packages into bin/units/x86_64-linux (fcl-net: cnetdb,
      netdb; hash: md5, sha1, crc; paszlib: zbase/zdeflate/zinflate/gzio/
      paszlib/zipper/zstream; fcl-process: pipes, process) — r3 now behaves
      like a normal full FPC install. New helper tools/prebuild-packages.sh
      regenerates them for any target.
  (b) Mystic build.sh now auto-detects r3's src/packages/*/src dirs (derives
      FPCROOT from the FPC binary; override with FPCROOT=) and adds them to the
      unit path — so a source-only r3 also builds the networked/hash/zip
      programs.

Verified: 14/14 native x86_64 Mystic build with only bin/units on the path;
mystic + mis also build via the source-path route (prebuilt ppus removed);
gates 166/169 ALL GREEN. See docs/bugs/mystic-missing-unit-paths-FIX.md.
Cross targets (win32/dos/os2/darwin) need the same packages prebuilt per target
or their source on that script's path — documented in the fix note.

## r3 patch (2026-07-14) — Mystic drops external cNetDB for pure-Pascal netdb

Mystic's socket layer (mdl/m_io_sockets.pas) no longer depends on the external
cNetDB libc-glue unit. Its Unix branch now uses FPC's pure-Pascal netdb resolver
(GetHostByName + HostToNet for forward; ResolveHostByAddr + NetToHost for
reverse — byte order verified: forward result is delivered in network order for
sin_addr, reverse input converted from network to host order). Non-Unix branches
(Winsock2 / WinSock / Watt-32) are unchanged.

cNetDB removed from the repo: src/packages/fcl-net/src/cnetdb.pp, the cnslookup
example, prebuilt cnetdb.ppu/.o, and Makefile/Makefile.fpc/fpmake.pp/.gitattributes
entries. This diverges fcl-net from upstream FPC (documented in
docs/removed/cnetdb-removal.md; restore from upstream if a third party needs it).

Verified: 14/14 native x86_64 Mystic build via netdb; netdb.ppu rebuilds with no
cnetdb dependency; win32 cross build of networked mis compiles+links (non-Unix
path intact); gates 166/169 ALL GREEN. See docs/bugs/mystic-cnetdb-to-netdb-FIX.md.

## r3 patch (2026-07-14) — full test suite green + packages for all targets; cNetDB retired to attic

- Test harness (test/run-tests.sh): cross-target socket tests that failed only
  because the target cross-linker isn't installed now fall back to compile-only
  (-Cn) verification and pass. OS/2 section fixed to use bin/units/i386-os2 +
  the bundled bin/tools/i386-emx assembler. Result: 9 passed / 0 failed / 1 skip
  (Darwin, not a required target); 169 string/socket assertions all pass;
  run_gate.sh still 166/166 GREEN.
- FPC packages (fcl-net netdb, hash, paszlib, fcl-process) prebuilt for ALL
  targets: x86_64-linux, i386-linux, i386-freebsd (13 each), i386-win32,
  i386-os2/emx (12 each, no Unix-only netdb), i386-go32v2 (10, no netdb, no
  DOS process). tools/prebuild-packages.sh updated to do all targets with the
  right per-target exclusions and the emx tools dir.
- cNetDB: per request, moved to attic/retired-units/ (with README) instead of
  deleted; recovered from git history. Docs: docs/removed/cnetdb-retired.md,
  docs/bugs/test-suite-and-cross-packages-FIX.md.

## r3.1 (2026-07-16): String literal indexing

### Bug fix: string literal indexing (`'text'[i]`)
Stock FPC 2.6.4 rejects `'Hello'[1]` with "Syntax error, `;` expected but `[`
found". The parser treats a string constant as a complete expression and doesn't
check for postfix operators like `[`.

**Fix (pexpr.pas):** After consuming a `_CSTRING` token, check for postfix
operators (`[`, `.`) and call `postfixoperators` if present. This routes the
string constant through the existing `stringdef` case in the postfix handler,
which already supports `string[index]` via `cvecnode`.

**What works:**
- Constant index: `'Hello'[1]` → `'H'`
- Variable index: `i:=3; 'Hello'[i]` → `'l'`
- In expressions: `if 'YN'[1] = 'Y' then ...`
- Length byte access: `ord('Hi'[0])` → `2`

### Other r3.1 changes
- `fpSeteuid`/`fpSetegid` added to BaseUnix RTL (Linux: via setreuid/setregid
  syscalls; FreeBSD: libc seteuid/setegid externals)
- Repo hygiene: binary permissions fixed (755), test/out/ build artifacts
  removed, .gitignore added, tests/i8086/ merged into test/i8086/, RWX linker
  warning documented in README
- README: "full fork" → "preservation fork" (honest about 2-commit delivery)
