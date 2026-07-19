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
