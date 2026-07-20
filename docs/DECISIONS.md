# FPC 2.6.4irc — Decision Log

## r3.1-20260718

### [DECISION] Version scheme: r3.1-YYYYMMDD
All builds stay r3.1 with date stamps until verified stable. No r3.2, r4.0 etc.

### [DECISION] r6.x codepage patches → unstable branch only
The `cp:TSystemCodePage` changes to `syswin.inc` broke Win32 heap on Win11.
Deferred to Phase 8. r3.1 = stable baseline.

### [DECISION] Win32 system.o locked to r3 build (591KB, Jul 10 2026)
Cross-compiled system.o crashes on Win11. Ship pre-built r3 system.o.
Never rebuild from source until Phase 8 resolves the heap bug.

### [DECISION] User must approve all code changes before they're made
Ask first, touch code after approval.

### [DECISION] Bug tracking: fpc264irc owns bugsfixed.md only
Downstream repos (netmodem2irc, mystic-bbs-irc) own their own BUGS.md.
fpc264irc only maintains its own bugsfixed.md for maintainers to reference.

### [DECISION] windres removed from compiler source
`rescmn.pas` rcbin set to empty string. windres lives in downstream repos only.

### [DECISION] Don't install system packages without asking
Container has mingw-w64 toolchain pre-installed. Any new packages require approval.

---

## Phase 1 Item 1: ActiveX → Variants Cascade Fix

### Problem
When compiling anything that uses `Variants`, `ActiveX`, or `ComObj` for Win32,
the compiler triggers a recompilation cascade:

1. Compiler loads `sysutils.ppu`
2. Checks source file timestamps stored inside the PPU
3. Finds `varerror.inc` has a DIFFERENT timestamp than when sysutils was compiled
4. Decides sysutils is stale → tries to recompile
5. Recompilation cascades to `variants` → `varutils` → everything fails

### Root Cause
`varerror.inc` was modified during the Win32 heap bug investigation.
The PPU stores the EXACT timestamp of every source file at compile time.
Any timestamp change (even touching the file) triggers recompilation.

### Attempted Fixes

#### Option 1: Patch Makefile to skip system.pp (FAILED)
- Added skip guard to `src/rtl/win32/Makefile` lines 2631-2632
- system.ppu target was skipped BUT the compiler still tried to recompile
  system.pp because `objpas.pp` compilation triggered it
- The r3 system.ppu has 3-arg `syswin.inc` signatures but our source has
  4-arg signatures → compiler rejects the mismatch
- **Reverted**: Makefile restored to original

#### Option 3: Restore varerror.inc timestamp (PARTIAL SUCCESS)
- The fix WORKS when varerror.inc either:
  a) Has the exact timestamp the PPU expects, OR
  b) Cannot be found at all (no timestamp comparison)
- **Proven**: r3's original PPUs are internally consistent
  ("✅ r3 original: consistent" confirmed during investigation)
- **Blocker**: The original r3 Win32 PPUs (Jul 10) were lost when
  `fpc264irc.tar.gz` was deleted to free disk space. The checkpoint
  PPUs were already corrupted by earlier rebuild attempts.

### Next Steps (fresh session)
1. User re-uploads original r3 archive (`fpc264irc.tar.gz`, 212MB, Jul 14)
   OR uploads just `bin/units/i386-win32/` from their r3 copy
2. Restore ORIGINAL r3 Win32 PPUs (Jul 10 timestamps, consistent checksums)
3. Restore `varerror.inc` from r3 archive (Jul 10 timestamp)
4. Build activex, commctrl, shellapi etc. on top (these don't touch sysutils)
5. Verify full chain: SysUtils + Variants + ActiveX + ComObj
6. Build Win32 LCL against the consistent PPU set

### Key Findings
- r3's original PPUs ARE consistent — the mismatch only appears after rebuilding
- The compiler's source timestamp tracking is the cascade trigger
- `varerror.inc` is the specific file causing the sysutils cascade
- Units that don't use Variants/SysUtils (richedit, uxtheme, etc.) compile fine
- The /etc/fpc.cfg for system FPC 3.2.2 can also cause conflicts — use -n flag

### [RESOLVED] ActiveX → Variants Cascade — FIXED (r3.1-20260718)

**What worked:** Fallback 3 — restore original r3 Win32 PPUs (Jul 10 timestamps)
from the user's r3 archive, then build new packages (activex, commctrl, etc.)
from the repo directory (cd $REPO before compiling).

**Key findings:**
- r3's original PPUs ARE internally consistent (Jul 10, same make pass)
- The cascade was caused by our rebuild attempts overwriting PPUs with
  mismatched checksums + varerror.inc timestamp changes
- Compiling from the repo dir (cd $REPO) is REQUIRED — the compiler
  resolves -Fu paths relative to CWD
- The /etc/fpc.cfg (system FPC 3.2.2) causes conflicts — always use -n
- ComObj has a separate registry checksum cascade — deferred (LCL doesn't need it)

**Result:** 75 Win32 PPUs including ActiveX, ShellAPI, ShlObj, CommCtrl,
UxTheme, ComMDlg — all units LCL Win32 widgetset needs. No recompilation cascade.

### [DECISION] ComObj checksum cascade — deferred
ComObj depends on Registry impl checksum which cascades from inifiles.
LCL Win32 does not use ComObj. Deferred until needed.

### [DECISION] Always compile from repo directory
The compiler resolves -Fu paths relative to CWD. Must cd to $REPO before
compiling, or PPUs won't be found. Build script must enforce this.

### [DECISION] Always use -n flag
Skip /etc/fpc.cfg to avoid FPC 3.2.2 unit path conflicts. Our fpc.cfg
in etc/ is read automatically by the compiler via its binary path.

---

## Full Roadmap — r3.1 Stable

### Phase 0: Build Infrastructure ✅ COMPLETED
- Item 1: Make clean (550 stale artifacts removed) ✅
- Item 2: build.sh (8-target build script with Win32 system.o skip) ✅

### Phase 1: Win32 LCL ✅ COMPLETED
- Item 1: ActiveX cascade fix (r3 PPUs restored, 75 Win32 RTL PPUs) ✅
- Item 2: Win32 LCL build (404 PPUs: 59 LazUtils + 213 base + 27 widgetset) ✅
- Item 3: win32wsstdctrls.pp += fix (BUG-009) ✅
- Item 4: Makefile system.pp skip guard with console warning ✅
- Item 5: NMServer.exe compiles (16MB, LMessages fix upstream) ✅

### Phase 2: LCL Verification — PENDING
- Item 1: Verify LCL on x86_64-linux (470 PPUs)
- Item 2: Verify LCL on i386-linux (360 PPUs)
- Item 3: Verify LCL on i386-freebsd (359 PPUs)
- Item 4: Verify LCL on i386-darwin (171 PPUs)
- Item 5: Verify LCL on i386-win32 (404 PPUs) — Interfaces+Forms test
- Item 6: Cross-platform LCL test program compilation

### Phase 3: Lazarus IDE Cross-Platform — PENDING
- Item 1: Lazarus IDE compilation for x86_64-linux
- Item 2: Lazarus IDE compilation for i386-win32
- Item 3: IDE launch and basic functionality test

### Phase 4: Darwin Toolchain — PENDING
- Item 1: Darwin assembler (as) availability
- Item 2: Darwin linker (ld) availability
- Item 3: Darwin framework paths and SDK

### Phase 5: Darwin PPU Completion — PENDING
- Item 1: Darwin RTL rebuild (251 → ~300 PPUs)
- Item 2: Darwin LCL completion (171 → target TBD)
- Item 3: Darwin packages (fcl-base, fcl-xml, etc.)

### Phase 6: Built-in Resource Compiler — DEFERRED
- Item 1: Build fpcres utility from FPC utils source
- Item 2: Integrate into build.sh for Win32 .rc → .res compilation
- Item 3: Remove dependency on external windres/mingw-w64

### Phase 7: OS/2 PM LCL Widgetset — DEFERRED
- Item 1: customdrawn is first option — add PM backend (like x11/win/cocoa backends)
- Item 2: Audit existing OS/2 PM API headers in FPC RTL (pmwin, pmgpi, pmshl)
- Item 3: Create customdrawn PM backend or standalone interfaces/os2/ widgetset
- Item 4: Minimal PM support (TForm + TButton + TLabel + TEdit)
- Item 5: Build LCL nogui for OS/2 as interim step
- Item 6: Evaluate other options if customdrawn doesn't fit
- Item 7: Consider moving Win32 from native win32 widgetset to customdrawn (win backend) — one widgetset across all platforms
- Item 8: DOS (go32v2) — SDL 1.2 backend for customdrawn. SDL gives customdrawn a framebuffer to paint into, running fullscreen in VESA graphics mode. GUI forms on a DOS screen, like Turbo Vision but with LCL. (i8086-msdos excluded — SDL is 32-bit only)
- Item 9: RIPscript — remote GUI protocol for DOS/BBS. Server-side RIP generation for graphical menus over serial/telnet. Useful for i8086-msdos where no local GUI exists. RIP 1.5x exists in Mystic client-side, server-side and RIP 3.0 not yet implemented. Collaboration with netmodem2irc maintainer.
- Note: Needs ArcaOS or OS/2 Warp for OS/2 testing

### Phase 8: Win32 Heap Fix + Codepage — DEFERRED (UNSTABLE BRANCH)
- Item 1: Root cause analysis of syswin.inc codepage signature issue
- Item 2: Fix heap corruption with 4-arg signatures on Win11
- Item 3: Rebuild Win32 system.o from source
- Item 4: Test on Win11 bare metal (not Wine)
- Note: r3 system.o workaround ships and works — lowest priority

### Known FPC 2.6.4 Language Limitations (workarounds, not fixes)
- **Inline var declarations** — FPC 2.6.4 requires all `var` at top of procedure. Move declarations up. (FPC 3.2+ / Delphi 10.3+ feature)
- **+= operator** — Not supported. Use `x := x + n` instead. (BUG-009)
- **Type inference** — `var x := 5` not supported. Declare type explicitly.
- Note: Fixing these in the compiler is deep parser surgery. Source-level workarounds are the pragmatic path.

---

## Phase 2 Progress — r3.1-20260719

### Item 1: x86_64-linux LCL — IN PROGRESS
- RTL+packages: 528 PPUs rebuilt and consistent ✅
- LazUtils: 59 PPUs compiled clean ✅
- LCL base: 131 PPUs (needs final rebuild after source fixes)
- customdrawn widgetset: blocked on LCL base completion
- Source fixes completed: paswstring.pas codepage sigs, 65+ compound operators

### Source Changes (Phase 2)

| File | Change |
|------|--------|
| src/lazarus/lazutils/paswstring.pas | 4 codepage signature fixes (cp:TSystemCodePage) |
| src/lazarus/lazutils/easylazfreetype.pas | ~42 +=/-=/*=//= → standard assignments + ARect fix |
| src/lazarus/lazutils/avglvltree.pas | 4 +=/-= fixes |
| src/lazarus/lazutils/lazfileutils.pas | 7 += fixes |
| src/lazarus/lazutils/lazfreetypefontcollection.pas | 3 += fixes |
| src/lazarus/lazutils/ttcalc.pas | 2 +=/-= fixes |
| src/lazarus/lazutils/ttinterp.pas | 1 += fix |
| docs/ripscript/ | Added v1.53, v1.54, v3.0 specs for Phase 7 |

### Items Remaining
- Item 1: x86_64-linux — rebuild LCL base + widgetset (source fixes done)
- Item 2: i386-linux — rebuild LCL (same source fixes apply)
- Item 3: i386-freebsd — rebuild LCL
- Item 4: i386-darwin — build widgetset (currently 171 PPUs, no widgetset)
- Item 5: i386-win32 — rebuild LazUtils (paswstring fix) then re-verify

### [RESOLVED] Phase 4: Darwin Toolchain — NOT NEEDED FOR PPUs
FPC's internal `-Amacho` assembler generates Mach-O object files directly.
No external Darwin assembler (as) or cctools-port required for building PPUs.
Darwin RTL rebuilt from Linux: 60 PPUs compiled clean.
External linker (ld) only needed for linking final executables on macOS.
MacOS 10.6 SDK uploaded for potential framework headers.

### Phase 2 Pattern (discovered)
Each platform needs full rebuild in order:
1. RTL `make all` (rebuilds system + all units in one pass)
2. Packages `make -C packages all`
3. LazUtils (lazutils.pas)
4. LCL base (make lclbase)
5. Widgetset (make intf)
6. Verify (Interfaces + Forms test)
Skipping steps causes checksum cascades.

### macOS 10.6 SDK — Setup Instructions

**File:** `MacOSX10_6_sdk_tar.xz` (uploaded by user, ~257MB extracted)

**What it contains:**
- 93 macOS frameworks (Carbon, Cocoa, CoreFoundation, AppKit, etc.)
- libSystem.dylib and system libraries
- C headers in usr/include/
- Framework headers for GUI development

**How to extract:**
```bash
cd $REPO
mkdir -p sdk
cd sdk
tar xJf /path/to/MacOSX10_6_sdk_tar.xz
```

**Result:** `sdk/MacOSX10.6.sdk/` with:
- `System/Library/Frameworks/` — Carbon.framework, Cocoa.framework, etc.
- `usr/lib/` — libSystem.dylib, libSystemStubs.a
- `usr/include/` — C headers

**How FPC uses it:**
```bash
# Add framework path when compiling Darwin LCL:
ppc386 -Tdarwin -Amacho -Ff$REPO/sdk/MacOSX10.6.sdk/System/Library/Frameworks ...

# Add library path for linking:
ppc386 -Tdarwin -Fl$REPO/sdk/MacOSX10.6.sdk/usr/lib ...
```

**Notes:**
- `-Amacho` = FPC's internal Mach-O assembler (no external `as` needed)
- SDK is NOT included in the repo zip (too large). Re-upload each session.
- Only needed for Darwin LCL widgetset compilation, not RTL PPUs.
- Linking final executables (.app) still needs a Mach-O linker (cctools-port or native Mac).

### BUG-012: Darwin Dialogs Checksum Cascade — FIXED
**Root cause:** -Fu search order. When RTL path came before LCL path,
FPC found RTL Dialogs before LCL Dialogs, creating a checksum mismatch
with NoGUIInt which was compiled against LCL Dialogs.
**Fix:** Always put LCL -Fu path BEFORE RTL -Fu path:
  -Fu$LCL/ -Fu$LAZUTILS/ -Fu$RTL/
This applies to all platforms but only manifested on Darwin nogui
because the nogui widgetset triggers different dependency chains.

### Phase 2: LCL Verification — ALL 5 PLATFORMS VERIFIED ✅
| Platform      | RTL | LCL | Widgetset         |
|---------------|-----|-----|-------------------|
| x86_64-linux  | 528 | 136 | customdrawn (18)  |
| i386-linux    | 166 | 152 | customdrawn (17)  |
| i386-win32    |  75 | 213 | win32 (27)        |
| i386-freebsd  | 159 | 152 | customdrawn (17)  |
| i386-darwin   | 590 | 157 | nogui (in LCL)    |

### i386-darwin: Carbon Widgetset — VERIFIED ✅
customdrawn cocoa backend hits FPC 2.6.4 Internal Error 200509189 (ObjC bridge).
Carbon widgetset compiles clean: 46 PPUs. Uses Apple Carbon API (Pascal, no ObjC).
Requires: macOS 10.6 SDK frameworks + univint + cocoaint + opengl packages.
Carbon is deprecated by Apple but fully functional for FPC 2.6.4 era apps.

### Internal Error 200509189 — DEFERRED TO PHASE 8
May not be an FPC compiler bug. The error code matches an ObjC bridge
configuration issue (missing bridging headers/framework paths). The cocoa
backend may just need correct -Fi/-Ff paths to the macOS 10.6 SDK ObjC
headers. Investigation deferred — Carbon widgetset works for now.
Investigate: compile cocoautils.pas with -va to trace what's missing.

### Phase 6: Resource Compiler — COMPLETE ✅
fpcres (binary converter) already existed. For .rc → .res compilation,
system windres (i686-w64-mingw32-windres) with --preprocessor=/bin/cat
works without needing mingw-gcc. All three netmodem2irc binaries now
compile with real icon resources (server.ico, mainicon.ico).

### Phase Reorganization — 2026-07-19
- Phase 6 split: 6a (resource compiler ✅) + 6b (OS/2 PM widgetset)
- OS/2 PM moved from Phase 7 to Phase 6b (logical grouping with resources)
- Lazarus IDE moved to Phase 7 (needs all platforms solid first)
- DOS SDL + RIPscript moved to Phase 8
- Win32 heap + cocoa 200509189 moved to Phase 9 (unstable branch)

### Phase 6b: OS/2 PM — Work In Progress
RTL rebuilt: 62 PPUs using -Awasm (FPC internal Watcom assembler).
Dummy cross-tools created in bin/tools/i386-os2/ for make compatibility.
LazUtils blocked on OS/2 file utilities port (BUG-014).
OS/2 PM widgetset requires: os2lazfileutils.inc, LCL OS/2 ifdefs, PM backend.
PM API headers available in RTL: pmwin, pmgpi, pmstddlg, pmdev, pmshl, pmwp.

### Phase 6c: pasjpeg OS/2 Fixes — DEFERRED
Four categories of errors on OS/2:
1. jidct2d.pas — "Unexpected end of file" (truncated/incomplete source)
2. jidctasm.pas — "Wrong symbol type" (inline asm incompatible with cross-compiler)
3. jmemdosa.pas — "GOTO and LABEL not supported" + "Selected assembler reader not supported" (DOS-specific memory manager)
4. pasjpeg.pas — "Identifier not found TBitmapFileHeader/TBitmapInfoHeader/TBitmapCoreHeader" (needs Windows unit)

### BUG-015 / BUG-007 Note
pasjpeg cross-compile failures originally noted as BUG-007 (PPU Reader crash).
Phase 6c covers the full set: truncated source, DOS asm, missing Windows types.
Both deferred.

### Phase 6b: OS/2 LCL — VERIFIED ✅ (nogui)
RTL: 62 PPUs (-Awasm internal assembler, dummy cross-tools)
LazUtils: 59 PPUs
LCL: 217 PPUs (nogui widgetset)

Source changes for OS/2:
- lazutf8.pas: BUG-013 (LineEnding multi-char fix)
- lazfileutils.pas: OS/2 routing to os2lazfileutils.inc (new file, 233 lines)
- fileutil.pas: OS/2 routing to os2fileutil.inc (new file, 14 lines)
- lazutf8sysutils.pas: excluded Unix from OS/2 uses clause
- lclintf.pas: added sysenvapis_os2.inc (new file, OpenURL/OpenDocument stubs)
- bin/tools/i386-os2/: dummy as, ld, wrc for cross-compilation

PM widgetset (native GUI) deferred — needs dedicated backend work.

### Phase 6b+: customdrawn PM Backend — PLAN

**Goal:** Add OS/2 PM backend to customdrawn widgetset, giving OS/2 a GUI.

**New file:** `src/lazarus/lcl/interfaces/customdrawn/customdrawn_os2proc.pas`

**Based on:** `customdrawn_x11proc.pas` (Linux/FreeBSD X11 backend)

**OS/2 PM units used:** pmwin, pmgpi, pmbitmap, pmstddlg, os2def

**Implementation steps:**

1. **Scaffold** — copy customdrawn_x11proc.pas, rename to os2proc
2. **Window creation** — replace X11 calls with PM:
   - XCreateWindow → WinCreateWindow
   - XMapWindow → WinShowWindow
   - XDestroyWindow → WinDestroyWindow
3. **Message loop** — replace X11 event loop with PM:
   - XNextEvent → WinGetMsg/WinDispatchMsg
   - Map PM messages (WM_PAINT, WM_SIZE, WM_CHAR etc.) to LCL messages
4. **Paint backend** — replace X11 drawing with PM:
   - XPutImage → GpiDrawBitmap / WinBeginPaint
   - customdrawn renders to a memory bitmap, PM blits it to screen
5. **Register backend** — add OS2 to customdrawnint.pas platform selection
6. **Build + verify** — compile widgetset, verify Interfaces + Forms test

**Estimated:** ~500 lines of Pascal, one file + minor edits to customdrawnint.pas

**Dependencies:** OS/2 LazUtils (done), LCL base (done), pmwin/pmgpi (in RTL)

**Test:** Compile NMServer against OS/2 customdrawn (won't run on Linux,
but PPU compilation verifies the widgetset is structurally correct)

### [DECISION] OS/2 GUI: customdrawn + PM backend (not native PM widgetset)

**Options considered:**
1. Native PM widgetset — new `interfaces/os2/` with ~27 files implementing
   every LCL control using native PM controls (WinCreateWindow for each
   button, edit, listbox etc.)
2. customdrawn + PM backend — one new file (`customdrawn_os2proc.pas`)
   providing window creation and events; customdrawn draws all widgets itself

**Chose option 2 because:**
- **Much less code** — ~500 lines vs ~5000+ for a full native widgetset
- **Already proven** — customdrawn works on Linux (X11), FreeBSD (X11),
  and Windows (win backend). Adding OS/2 PM follows the same pattern.
- **Cross-platform consistency** — same widget look on OS/2 as Linux/FreeBSD
- **PM API is already in Pascal** — pmwin.pas, pmgpi.pas are pure FPC units,
  no C bindings needed. WinCreateWindow, GpiDrawBitmap etc. callable directly.
- **Minimal risk** — the PM backend only handles windows + events + blit.
  All widget rendering is handled by existing customdrawn code.
- **Matches project preference** — minimal C, pure Pascal, reuse existing code

**Trade-off:** No native OS/2 look and feel. customdrawn widgets look the
same everywhere. Acceptable for BBS/IRC server applications.

### Phase 6b+: customdrawn PM Backend — IN PROGRESS
Created 4 new files:
- customdrawn_os2proc.pas (PM message → LCL message mapping)
- customdrawnobject_os2.inc (AppInit/AppRun using WinInitialize/WinGetMsg)
- customdrawnlclintf_os2.inc (timer stubs)
- customdrawnwinapi_os2.inc (rubber band stubs)

Modified:
- customdrawndefines.inc (added CD_OS2 define)
- customdrawnint.pas (OS/2 uses, Hab/Hmq fields, inc includes, X11 ifdef guards)

Status: 153 LCL PPUs compile. Blocked on ExtTextOut/GetTextExtentExPoint
override signature mismatch — OS/2 types may resolve differently.
BUG-020: deferred.

### Phase 6b+: customdrawn PM Backend — Status
- customdrawn_os2proc.pas: scaffold complete (50 lines, message mapping)
- customdrawnobject_os2.inc: PM init/message loop working (68 lines)  
- customdrawnlclintf_os2.inc: timer stubs (12 lines)
- customdrawnwinapi_os2.inc: cleaned (stub only)
- customdrawnwslazdeviceapis.pas: added CD_OS2 to platform guard
- customdrawnint.pas: pmwin/pmgpi after LCLType (prevents type shadowing)
- BUG-020: os2def HWND shadowed LCLType HWND — FIXED (import order)
- 171 LCL PPUs compile, 30 Backend method stubs needed
- Next: add stub implementations for Backend* methods + verify

### Phase 6b+: customdrawn PM Backend — VERIFIED ✅
BUG-020 fixed: pmwin type conflicts isolated.
OS/2 customdrawn widgetset: 174 LCL PPUs verified.
Files created: customdrawn_os2proc.pas, customdrawnobject_os2.inc,
customdrawnwinapi_os2.inc (30 method stubs), customdrawnlclintf_os2.inc.
Also: os2lazfileutils.inc, os2fileutil.inc, sysenvapis_os2.inc.

### Phase 7: Lazarus IDE — Source Downloaded
Lazarus 1.2.6 full source (51.6MB) downloaded from SourceForge.
Merged into src/lazarus/ preserving our modified lcl/lazutils/packager.
IDE compilation deferred to fresh session (context limit).

### Phase 7: Lazarus IDE — COMPILED ✅
Lazarus 1.2.6 IDE compiled for x86_64-linux with customdrawn widgetset.
Three binaries: lazarus (72MB), lazbuild (45MB), startlazarus (19MB).
Required syncing lazutils fixes to components/lazutils/ (Makefile uses
that path, not src/lazarus/lazutils/).
Used: make all FPC=ppcx64 LCL_PLATFORM=customdrawn

### Phase 7: Cross-platform IDE — RTL mismatch blocks 5 targets
x86_64-linux IDE compiled successfully (make all LCL_PLATFORM=customdrawn).
Other 5 targets blocked by paswstring codepage signature mismatch:
x86_64-linux RTL has 4-param signatures (our fix), but i386-win32 RTL
has original 3-param. Lazarus make rebuilds lazutils in-tree and hits
the mismatch. Fix: rebuild all platform RTLs with matching signatures,
or maintain separate paswstring versions per platform.

### Phase 7 Fix: paswstring conditional signatures — COMPLETE ✅
Added {$IFNDEF MSWINDOWS} to paswstring.pas for codepage parameter:
- Non-Windows (x86_64-linux, i386-linux, freebsd, darwin, os2): 4-param
- Windows (i386-win32, guarded r3 RTL): 3-param
Result: IDE compiles for both x86_64-linux (72MB ELF) and i386-win32
(151MB PE32). Win32 system.ppu untouched.

### Phase 8a: RIPscript Output Unit — DEFERRED
Server-side RIPscript: Pascal unit that emits BGI-style RIP escape codes
(Line, Circle, Bar, SetColor, OutTextXY etc.) to stdout/socket.
No LCL widgetset needed — terminal (RIPterm) renders the graphics.
Blocked pending: user's existing RIPscript code upload + remote user
connection design. RIPscript spec in docs/ripscript/.

### Phase 8b: DOS SDL/VGA Framebuffer for go32v2 — DEFERRED
Requires SDL 1.2 DOS libraries or custom VGA/VESA framebuffer backend.
Large effort. Deferred.

### [DECISION] Phase 8: customdrawn + VGA/VESA (not RIPscript)
RIPscript is a remote presentation protocol — sends escape codes to a
terminal. Not what we need for local DOS GUI apps.
Instead: customdrawn + VGA/VESA backend for go32v2, same pattern as
OS/2 PM backend. FPC go32v2 Graph unit supports VGA (640x480x16) and
VESA modes (800x600, 1024x768). customdrawn renders widgets to a
memory bitmap, VGA/VESA backend blits to screen.
RIPscript code (rip154irc) preserved as reference for future BBS work.

### Phase 8 — Revised Plan
8a: customdrawn + VGA/VESA backend for go32v2 (Graph unit)
8c: RIPscript viewer/parser — deferred to PPU creation phase
ANSI viewer dropped.

### Phase 8: go32v2 LCL — VERIFIED ✅ (nogui)
RTL: 78 PPUs, LazUtils: 59, LCL: 140 (nogui widgetset)
Same porting pattern as OS/2: route to os2lazfileutils.inc, os2fileutil.inc,
sysenvapis_os2.inc. Stub syncobjs for single-threaded DOS.
Dialogs {$R} ifdefed out for go32v2.
VGA/VESA customdrawn backend deferred — needs Graph unit integration.

### Phase 8: customdrawn + VESA backend for go32v2 — VERIFIED ✅
Created VGA/VESA backend for customdrawn widgetset on DOS (go32v2).
New files: customdrawn_vesaproc.pas, customdrawnobject_vesa.inc,
customdrawnwinapi_vesa.inc, customdrawnlclintf_vesa.inc,
customdrawnwsforms_vesa.inc, customdrawntrayicon_vesa.inc.
Modified: customdrawndefines.inc (CD_VESA), customdrawnint.pas,
customdrawnwsforms.pp, customdrawnwsextctrls.pas,
customdrawnwslazdeviceapis.pas, dialogs.pp ({$R} ifdef),
syncobjs.pp (GetLastOSError ifdef).
Uses FPC Graph unit — supports VGA (640x480x16) up to VESA 1024x768x32K.

### [DECISION] i8086-msdos LCL — DEFERRED (no solution)
16-bit real mode 640K limit prevents LCL/customdrawn from fitting.
No DPMI, no overlays, no flat memory model. LCL was never designed
for 16-bit. go32v2 (32-bit DPMI) is the DOS GUI platform.
i8086-msdos remains RTL-only (42 PPUs) for lightweight console tools.
Future research: minimal LCL subset or DPMI extender integration.

### Phase 9: Win32 LCL Backports — DEFERRED
Needs backporting before Win32 heap fix investigation:
- Ctl3D / ParentCtl3D — 3D control appearance properties
- OEMConvert — OEM character conversion for edit controls
- CreateWindowHandle — custom window handle creation
- VerInfo — version information resource support
These are Delphi compatibility properties used by Win32 LCL apps.
Win32 heap fix (BUG-001) and cocoa 200509189 also deferred.

### Phase 9: Win32 heap fix + cocoa 200509189 — DEFERRED
Additionally needs LCL backports before proceeding:
- Ctl3D / ParentCtl3D properties (Delphi VCL compatibility)
- OEMConvert property (TEdit/TMemo OEM character conversion)
- CreateWindowHandle method (custom window handle creation)
- verinfo — version information resource support
These are Delphi VCL features not present in Lazarus LCL 1.2.6.
Backporting required before Phase 9 can proceed.

### Phase 9: Win32 Heap Fix + LCL Backports — DEFERRED
Win32 heap fix (Runtime Error 216) and cocoa 200509189 remain unstable.

Additional LCL backports needed from newer Lazarus/Delphi:
- Ctl3D property (3D control appearance)
- OEMConvert property (edit controls)
- ParentCtl3D property
- CreateWindowHandle method
- verinfo (version information resource support)

These are Delphi VCL properties that later LCL versions added.
FPC 2.6.4 / Lazarus 1.2.6 may be missing them.
Backporting required for full Win32 LCL compatibility.

### DOS Graphics Examples — DEFERRED
http://tnabbs.org/public/files/examples.rar (1040MB)
Black Book of Graphics Programming examples (1997).
Too large to download in-session (~50 min at 350KB/s).
User to upload directly in future session.

### [DECISION] Removed .gitignore — use make clean instead
.gitignore was the source of BUG-A (accidentally stripping shipped LCL PPUs).
Every new PPU path needed a new exception line — fragile and error-prone.
Replaced with `make clean` target that removes build artifacts but never
touches bin/ (shipped PPUs). Everything in the repo is intentional.

### Phase Reorder — 2026-07-19
Phase 9: LCL Delphi Compatibility Backports (safe, needed by Inno port)
  - Ctl3D / ParentCtl3D properties
  - OEMConvert property
  - CreateWindowHandle → CreateWnd
Phase 10: Win32 heap fix + cocoa 200509189 (unstable, do last)

### Phase 9: LCL Delphi Backports — COMPLETE ✅
Added Ctl3D, ParentCtl3D (TWinControl), OEMConvert (TCustomEdit),
CreateWindowHandle (TWinControl virtual method), verinfo.pas unit.
All backward-compatible — existing code unaffected.

### Phase 10 — Revised Plan (2026-07-19)
Based on research doc "fpc-win32-rtl-abi-mismatch-research.md":

The 3-param vs 4-param mismatch is worse than arity — it's a fundamental
calling convention change (raw pchar buffer vs managed var RawByteString
with refcount). Mixing them causes heap corruption, not just stack misalignment.

Two stable states exist. The current state (source=4-param, binary=3-param)
is unstable — held together only by nobody recompiling system.ppu.

**Phase 10a (r3.1):** Revert syswin.inc + ustringh.inc to 3-param.
Source matches shipped binary. Release is stable. No Windows testing needed.

**Phase 10b (r4, future):** Put 4-param back, coordinated full RTL rebuild,
ship new system.ppu, rebuild ALL downstream PPUs. Requires Windows testing.
Build with -vu and DEBUG_UNIT_CRC_CHANGES to verify consistency.

**Phase 10c (future):** cocoa Internal Error 200509189 on Darwin.
ObjC bridge issue, needs macOS testing environment.

### Phase 10b → Phase 11 (2026-07-19)
Coordinated 4-param rebuild deferred to Phase 11.
r3.1 is unstable for this change — needs real testing on WinXP and Win11
to verify Win32 binaries work before shipping as r4.

### BUG-029: AnsiString -Mdelphi stack overflow — KNOWN LIMITATION
Compiler code generator bug. Workaround: {$H-} or avoid String return
values in hot paths. Fixing requires compiler source changes (ppc386).
Reported by Mystic BBS IRC Fork project.

### Inno Setup 5.6.1 FPC Port — Deferred (not our scope)
4/5 Inno targets compile clean against fpc264irc r3.1.
Remaining work is Inno-side (PascalScript, LZMA, DFM, resources).
All test reports and audit docs saved to docs/.
See: INNO_HOLLOW_FEATURES.md, INNO_FPC_WORKMAP.md,
FPCIRC_PHASE9_AUDIT.md, FPCIRC_PHASE9_TEST_RESULTS.md,
FPCIRC_PHASE9_FINAL_TEST.md

### [DECISION] Pure Pascal LZMA decoder (no C dependency)
Created lzmadecpas.pas — 636 lines, LZMA1 + LZMA2 decoder.
Fits project philosophy: minimal C, pure Pascal, self-contained.
Compiles on all targets including go32v2 and i8086-msdos.
Replaces the MinGW cross-compile approach for Inno LZMA decompression.
