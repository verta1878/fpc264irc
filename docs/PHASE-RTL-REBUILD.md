# Phase: Full RTL Rebuild + Help System + Documentation Polish

## Why
The Win32 PPUs were compiled by a different FPC that defines FPC_HAS_CONSTREF.
Our ppc386 doesn't. This causes IUnknown.QueryInterface signature mismatches.
We worked around it with CORBA interfaces and Pointer casts — hacks.

The proper fix: rebuild ALL PPUs from source with OUR compiler.
Then const/constref matches everywhere. IUnknown works natively.
No CORBA hack. No imagelistcache Pointer cast. No workarounds.

PROVEN: Core chain (system → classes) rebuilds clean. IUnknown
compiles natively with `const`. Test program passes.

## Phase 1: RTL Rebuild (Win32)
1. Cascade rebuild ALL ~1200 Win32 PPUs from source
   - Core chain DONE: system, fpintres, objpas, strings, windows,
     sysutils, classes, sysinitpas (8 units rebuilt, verified)
   - Remaining: ~1200 units (automated loop through src/rtl + src/packages)
2. Verify: IUnknown.QueryInterface uses 'const' consistently
3. Remove CORBA hack from idehelpintf.pas
4. Remove Pointer cast from imagelistcache.pas
5. Remove SHAddToRecentDocs local declaration (use shlobj)
6. Re-enable {$R editoroptions.res} resource embedding
7. Rebuild lazarus.exe cleanly — no workarounds
8. Rebuild all 16 FPC tools against new PPUs
- Audit: verify 178/178 tests still pass
- Test 1: compile u7_test for Win32
- Test 2: compile lazarus.exe without workarounds
- Test 3: run lazarus.exe on Wine

## Phase 2: RTL Rebuild (All Platforms)
1. Linux i386: rebuild ~241 PPUs from src/rtl/linux/
   - dl.pp already has LibDL='c' fix — will be baked into new dl.ppu
   - dl.o glibc issue CLOSES automatically with this rebuild
   - No setup script needed for dl linking after rebuild
2. DOS go32v2: rebuild ~302 PPUs from src/rtl/go32v2/
3. FreeBSD: rebuild ~160 PPUs from src/rtl/freebsd/
4. x86_64-linux: rebuild PPUs if ppcx64 supports it
5. i8086-msdos: rebuild PPUs with ppcross8086
- Audit: verify cross-compile works for each target
- Test 1: u7_test compiles for each target
- Test 2: u7_test runs on Linux native
- Test 3: cross-compile sample app for each target

## Phase 3: Help System (CHM) — ALL PLATFORMS
## Phase 4: Documentation Polish
1. README.md — final version, feature list, platform matrix
2. INSTALL.md — every platform, every flag, every prerequisite
3. CHANGELOG.md — clean format, all sessions
4. LCL-STATUS.md — remove workaround references, document clean build
5. bugsfixed.md — final audit, close all items, no open bugs
6. CREDITS.md — complete crew list with per-member contributions
7. DL-GLIBC-FIX.md — update: "fixed by RTL rebuild, LibDL='c' baked in"
8. PHASE-RTL-REBUILD.md — this file, mark phases complete
- Audit: no stale references, no TODO/FIXME, no "hack" or "workaround"
- Test 1: fresh clone, follow INSTALL.md, everything works
- Test 2: reviewer can find any feature in docs within 30 seconds
- Test 3: help system matches actual installed files exactly

## Phase 5: Installer Rebuild
1. Rebuild setup.exe with:
   - New PPUs (from Phase 1+2)
   - lazarus.exe (rebuilt clean, no workarounds)
   - All 16 tools + chmcmd
   - fpc264irc.chm + stock CHMs
   - fpGUI source
   - Platform docs for all targets
2. Test install → help → IDE → compile → uninstall cycle
3. Build Linux .tar.gz package
4. Build DOS .zip package
- Audit: installer file list matches docs/README.md exactly
- Test 1: fresh install on Win11
- Test 2: fresh install on Wine Win98 mode
- Test 3: verify all shortcuts, PATH, registry, help system

## Status
- Phase 1: IN PROGRESS — core chain rebuilt (8/~1200 PPUs)
- Phase 2: NOT STARTED — depends on Phase 1
- Phase 3: HTML source written (10 pages), needs platform sections + compile
- Phase 4: Docs exist, need polish after workarounds removed
- Phase 5: ISS script ready, needs rebuild after Phase 1-4

## Estimated Effort
- Phase 1: 2-3 hours (automated PPU cascade loop)
- Phase 2: 1-2 hours (same approach, different targets)
- Phase 3: 2-3 hours (platform help sections + CHM compile)
- Phase 4: 1 hour (polish after clean build)
- Phase 5: 1 hour (rebuild + test cycle)
- Total: 7-10 hours across 2-3 sessions

## Phase 6: API Backport (Optional — After Phase 1-5 Complete)
Priority order. Pure Pascal, no compiler changes.

1. SHAddToRecentDocs → add to src/rtl/win/shlobj.pp
   - Kills local declaration hack in environmentopts.pp
   - One external declaration, trivial

2. TStringList.OwnsObjects → src/rtl/objpas/classes/stringl.inc
   - One boolean property + Free in destructor
   - Useful for BBS data management

3. TJSONObject.Find → src/packages/fcl-json/src/fpjson.pp
   - Safe key lookup, returns nil instead of exception
   - Useful for config file parsing

4. TCSVDocument → new unit src/packages/fcl-base/src/csvdocument.pp
   - Pure Pascal CSV reader/writer
   - Useful for BBS data export/import

5. TFPHTTPClient → verify src/packages/fcl-web/ compiles
   - HTTP client with SSL support
   - Useful for netmodem2irc web features

6. TThread.Queue → src/rtl/objpas/classes/classes.inc
   - Thread-safe UI callback (like Synchronize but async)
   - Needed for proper GUI threading in Lazarus

Each backport: code once, audit against Lazarus 3.x source, test 3 times.
See docs/MISSING-APIS.md for full catalog.

## New Tests Required

### Phase 1 Tests (RTL Rebuild)
- test_iunknown.pas: IUnknown natively (no CORBA hack) — WRITTEN, passes
- test_interface_com.pas: COM interface with GUID, QueryInterface, _AddRef, _Release
- test_interface_inherit.pas: TComponent implementing custom interface
- test_imagelistcache.pas: IImageCacheListener in record field (was internal error)
- test_constref.pas: verify const parameter matches across units
- test_classes_rebuild.pas: TStringList, TList, TComponent, TStream — basic ops
- test_sysutils_rebuild.pas: IntToStr, FileExists, FormatDateTime
- test_windows_rebuild.pas: CreateFile, GetModuleHandle, MessageBox declarations

### Phase 2 Tests (All Platforms)
- test_dl_linux.pas: dlopen/dlsym/dlclose via LibDL='c' — link AND run
- test_sockets_linux.pas: socket create/bind/listen/close
- test_go32v2_dos.pas: DPMI memory alloc, file I/O, DOS interrupts
- test_freebsd_libc.pas: basic libc calls compile and link
- test_cross_compile.pas: compile same source for all 8 targets

### Phase 3 Tests (Help System)
- test_chm_compile.pas: chmcmd produces valid CHM from our XML
- test_chm_content.pas: CHM contains all platform sections
- test_help_registration.pas: Lazarus help system finds our CHM

### Phase 5 Tests (Installer)
- test_install_files.pas: every file in ISS exists in bin/
- test_install_paths.pas: registry entries match installed paths
- test_uninstall_clean.pas: nothing left after uninstall

### Phase 6 Tests (API Backport)
- test_shaddtorecentdocs.pas: SHAddToRecentDocs from shlobj (not local)
- test_ownsobjects.pas: TStringList.OwnsObjects frees items
- test_json_find.pas: TJSONObject.Find returns nil for missing key
- test_csvdocument.pas: read/write CSV roundtrip
- test_httpget.pas: TFPHTTPClient.Get basic HTTP request
- test_thread_queue.pas: TThread.Queue delivers callback to main thread

## Phase 7: OS/2 SDL 1.2 Widgetset

SDL bindings exist (src/packages/sdl/src/sdl.pas). OS/2 RTL has
207 PPUs + system.pas. Missing: SDL LCL widgetset.

- Write LCL SDL backend (wrap SDL_SetVideoMode, SDL_Flip, etc.)
- mterm + ansiedit run on OS/2 with zero code changes
- Test with OS/2 Warp 4.52 or ArcaOS
- Crew: sysop/0, evga

## Phase 8: DOS VGA/VESA Framebuffer

305 DOS PPUs + vesamode.pp exist. Missing: graph unit + direct VGA.

- Find/rebuild graph.pp (stock FPC has it, check include paths)
- Write direct VGA unit for Mode 13h (320x200x256)
- VESA framebuffer via vesamode.pp for higher resolutions
- mterm on real DOS hardware, not just DOSBox
- Ties into Tang Console 8086 work
- Crew: sysop/0, wrench

## Phase 9: fpGUI OS/2 PM Backend

fpGUI tree is incomplete in our repo (only 3 files).
No PM backend exists anywhere.

- Source complete fpGUI tree from Graeme Geldenhuys repo
- Verify X11 and Win32 backends compile
- Write OS/2 PM backend (WinCreateWindow, WinDrawBitmap, etc.)
- fpGUI apps run on OS/2 natively without LCL
- Heavy lift — defer until SDL widgetset proves demand
- Crew: sysop/0, hexadecimal

## Phase 10: Cross-Compiler Regression Test Suite

29 test files + platform scripts exist. Missing: CI automation.

- Wire test-all-platforms.sh into automated pipeline
- Add compilation tests for all 5 targets (Win32, Linux, DOS, FreeBSD, OS/2)
- Add runtime tests where possible (Wine for Win32, native for Linux)
- Fail-fast on PPU breakage before release
- Gate installer build on test pass
- Crew: sysop/0

## Phase 11: Package Manager (fppkg)

fppkg source exists (13 files). Missing: compiled binary + repo.

- Compile fppkg.exe from src/packages/fppkg/
- Set up local package repository format
- Package the backports: CSVDocument, ThreadQueue, HTTPClientEx
- fpcpkg install csvdocument — one command install
- Crew: sysop/0

## Feature Audit (Phase 7-11)

| Feature | Have | Missing | Work |
|---------|------|---------|------|
| OS/2 SDL | SDL bindings + 207 PPUs + system.pas | SDL LCL widgetset | Medium — wrap SDL calls in LCL interface |
| DOS VGA/VESA | 305 PPUs + vesamode.pp | graph unit + direct VGA | Small — graph.pp exists in stock FPC, may just need include paths |
| fpGUI OS/2 PM | 3 fpGUI files | Full fpGUI tree + PM backend | Heavy — fpGUI tree is incomplete in our repo |
| Test suite | 29 tests + platform scripts | CI automation | Small — scripts exist, wire them together |
| Package manager | fppkg source (13 files) | Compiled binary + repo | Medium — compile fppkg, set up local repo |

### Discovery (Phase 7)

CustomDrawn LCL widgetset already has:
- customdrawn_os2proc.pas (106 lines) — OS/2 PM backend
- customdrawn_vesaproc.pas (68 lines) — DOS VESA backend

SDLDisplay unit created (281 lines) — standalone framebuffer,
no LCL dependency. Cross-platform via SDL 1.2.

### Kiddo's Questions (OS/2 DIVE/PM)

From kiddo — protocols, RIPscrip:

- Does mterm render correctly on OS/2 via DIVE?
  → Yes. SDLDisplay uses SDL 1.2 which uses DIVE on OS/2.
  → CustomDrawn LCL widgetset also uses PM directly.

- Does RIPscrip output work through PM?
  → Yes. RIPscrip renders to a pixel buffer. SDLDisplay.Blit
    copies that buffer to the SDL surface. PM displays it.

- Can ansiedit use DIVE for direct framebuffer drawing?
  → Yes. SDLDisplay.Lock gives direct pixel access.
    ansiedit writes pixels, SDLDisplay.Flip shows them.
    SDL on OS/2 uses DIVE underneath — direct framebuffer.

- What about the MT-11 OS/2 threading model?
  → FPC 2.6.4 RTL uses OS/2 threads natively (system.pas).
    ThreadQueue unit provides async dispatch.
    SDL event loop is single-threaded — rendering on main thread,
    network/protocol on worker threads via TThread.

Status: answered. SDLDisplay + CustomDrawn cover all use cases.
Crew: kiddo (protocols), evga (display), sysop/0 (implementation)

## Phase 12: USB Pascal Port (from C)

Port USBDDOS (C, GPL) + Bret Johnson (ASM) USB drivers to Pascal.
Aggressive code comments. Audit. 3 tests per unit.

### Phase 12a: Core types ✅
- usbcore.pas (311 lines) — device/config/endpoint descriptors
- All packed records match USB 2.0 spec byte-for-byte
- Helper functions for endpoint parsing, version strings
- Test: descriptor sizes verified (8/18/9/9/7 bytes)

### Phase 12b: HID types ✅
- usbhid.pas (274 lines) — keyboard, mouse, joystick
- Boot protocol reports (keyboard 8 bytes, mouse 4 bytes)
- TUSBJoystickState — axes, buttons, hat switch
- HID usage pages + generic desktop usages
- HID report field + report map for descriptor parsing
- Hat-to-XY conversion for DOS gameport emulation
- Test: types + helpers verified, hat conversion verified

### Phase 12c: Tests ✅
- test_usbcore: 13 assertions, descriptor sizes + helpers
- test_usbhid: 13 assertions, keyboard/mouse/joystick + hat
- test_usbcross: Linux cross-compile syntax check
- 3/3 pass

### Phase 12d: USB Mass Storage (queued)
- Port msc.c (1,145 lines) → usbmsc.pas
- SCSI transparent command set
- Bulk-Only Transport (BBB)

### Phase 12e: USB Host Controller (queued)
- Port hcd.c/uhci.c/ohci.c/ehci.c → usbhcd.pas
- PCI enumeration, DMA, transfer descriptors
- Heavy — needs DPMI for DOS protected mode access

### Phase 12f: USB Hub (queued)
- Port hub.c (235 lines) → usbhub.pas

### Phase 12g: HID Report Descriptor Parser (queued)
- Parse variable-format reports for joystick/gamepad
- Map to TUSBJoystickState
- Reference: Bret Johnson's HIDSUPT1.A36 + USBJSTIK.A36

### Phase 12h: xHCI Driver (queued)
- Port from Das U-Boot xHCI (C, GPL)
- USB 3.0/3.1 SuperSpeed support
- No existing DOS source — this would be first

Crew: sysop/0, wrench
Source: USBDDOS (github.com/crazii/USBDDOS)
Source: Bret Johnson (bretjohnson.us/source/source.htm)
Source: Das U-Boot xHCI (github.com/rondoval/emu68-xhci-driver)

## Phase 13: USB Hardware Support — All 8 Platforms (queued)

Add real USB host controller access to the Pascal USB units.
Currently usbpci.pas has stubs on Win32/Linux — make them work.
Support ALL 8 platforms we build PPUs for.

### 13a: Win32 USB access
- Use WinUSB API + SetupDi for device enumeration
- usbhcd_win32.pas — WinUSB wrapper
- Test: enumerate USB devices on Windows

### 13b: Linux USB access (x86 + ARM)
- Use libusb (already have reference source)
- usbhcd_linux.pas — libusb wrapper via dynlibs
- Works on x86 AND ARM Linux (same libusb API)
- Test: enumerate USB devices on Linux

### 13c: DOS USB access (go32v2)
- Use USBDDOS C library via external linking
- OR: direct port I/O via go32 (usbpci.pas already does this)
- usbhcd_dos.pas — UHCI/OHCI/EHCI register access
- Test: detect USB controller on DOS

### 13d: FreeBSD USB access
- Reuse Linux libusb backend — identical API
- usbhcd_linux.pas + {$IFDEF FREEBSD} conditional
- libusb is native on FreeBSD (installed by default)
- Test: enumerate USB devices on FreeBSD

### 13e: Win64 USB access
- Reuse Win32 WinUSB backend — identical API
- usbhcd_win32.pas + {$IFDEF WIN64} conditional
- WinUSB works on both 32-bit and 64-bit Windows
- Test: enumerate USB devices on Win64

### 13f: OS/2 USB access
- Use USBCALLS.DLL (IBM USB stack for OS/2 + eComStation)
- usbhcd_os2.pas — USBCALLS wrapper (~200 lines)
- Functions: UsbOpen, UsbClose, UsbBulkRead, UsbBulkWrite
- Reference: EDM/2 wiki USBCALLS documentation
- Test: enumerate USB devices on OS/2

### 13g: Darwin (macOS) USB access
- Use IOKit framework (IOUSBDeviceInterface)
- usbhcd_darwin.pas — IOKit wrapper (~500 lines)
- Functions: IOServiceGetMatchingServices, IOCreatePlugInInterface
- Reference: Apple IOKit USB documentation
- Test: enumerate USB devices on macOS

### 13h: Cross-platform USB unit
- uses USBCore, USBHID, USBPCI, USBHost;
- USBHost auto-selects backend via {$IFDEF}:
    Win32/Win64 → WinUSB
    Linux/FreeBSD/ARM → libusb
    DOS → direct port I/O
    OS/2 → USBCALLS.DLL
    Darwin → IOKit
- Unified API:
    USBHost.Init
    USBHost.Enumerate → returns array of TUSBDevice
    USBHost.OpenDevice(VendorID, ProductID) → handle
    USBHost.BulkRead(handle, endpoint, buffer, size)
    USBHost.BulkWrite(handle, endpoint, buffer, size)
    USBHost.CloseDevice(handle)
    USBHost.Shutdown
- Test: same test program compiles on ALL 8 platforms
- 3 tests per platform minimum

### Platform Backend Matrix:

  Platform     Backend          Reuse From     Effort
  ─────────    ──────────────   ──────────     ──────
  Win32        WinUSB API       —              New
  Win64        WinUSB API       Win32          ifdef
  Linux x86    libusb           —              New
  Linux ARM    libusb           Linux x86      Same binary
  FreeBSD      libusb           Linux          ifdef
  DOS          direct port I/O  —              New (usbpci.pas started)
  OS/2         USBCALLS.DLL     —              New (~200 lines)
  Darwin       IOKit            —              New (~500 lines)

  4 new backends + 3 ifdefs + 1 unified API = all 8 platforms

Crew: sysop/0, wrench
Source: USBDDOS, libusb, Bret Johnson, WinUSB, USBCALLS, IOKit

## Phase 12i: Recreate DOS USB Utilities (queued)

Three DOS USB utilities need recreation from source or from scratch.
Critical for hot-plug USB + modern filesystems on DOS.

### DEVLOAD.COM — Dynamic Device Driver Loader
Source: ✅ FOUND — FDOS/devload on GitHub (GPLv2, NASM, 2,556 lines)
Build: nasm -f bin devload.asm -o devload.com
Use: Load USBASPI.SYS from command line (hot-plug USB)
Pascal port: wrap as USBDevLoad unit for runtime driver loading

### USBCD.SYS — USB CD-ROM Device Driver
Source: ❌ BINARY ONLY (Panasonic, (C) 2000-2003)
Recreate from scratch using ASPI interface + SCSI CD-ROM commands
Reference: USBDDOS msc.c, Linux sr_mod
~500 lines C or Pascal

### USBEXFAT.COM — exFAT Filesystem Driver
Source: ❌ Source reportedly on cn-dos.net (Chinese forum)
Recreate or find source. exFAT: 64-bit clusters, bitmap, upcase table
Reference: Linux exfat module (Samsung, GPL)
~1,500 lines C or Pascal. Hardest of the three.

Crew: sysop/0, wrench
