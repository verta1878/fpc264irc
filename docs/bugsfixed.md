# FPC 2.6.4irc — Bugs Fixed (r3.1)

## r3.1-20260718

### BUG-001: Win32 Runtime Error 216 on Windows 11 — FIXED
**Root cause:** `syswin.inc` codepage signature changes (`cp:TSystemCodePage`)
altered register allocation, corrupting heap data structures.
**Fix:** Win32 system unit locked to r3's system.o (591KB, Jul 10 2026).
Codepage patches deferred to Phase 6 (unstable branch).

### BUG-002: ActiveX → Variants PPU Checksum Cascade — FIXED
**Root cause:** Win32 PPUs rebuilt in separate sessions had mismatched
internal checksums (variants ↔ varutils). Also varerror.inc timestamp
changes triggered sysutils recompilation cascade.
**Fix:** Restored original r3 Win32 PPUs (Jul 10, consistent checksums)
from user's archive. Built activex, shellapi, shlobj, commctrl, uxtheme,
commdlg + 8 more winunits-base on top. Compile from repo dir with -n flag.

### BUG-003: FreeBSD Mystic — 3/15 → 15/15 — FIXED
**Fix:** 4 source patches: m_ops.pas, m_output.pas, m_input.pas, records.pas.

### BUG-004: x86_64-linux variants ↔ varutils Checksum — FIXED
**Fix:** Full RTL + packages rebuild via make all. 453 PPUs consistent.

### BUG-005: windres Removed from Compiler Source — FIXED
**Fix:** rescmn.pas rcbin set to empty string. windres lives in downstream repos.

### BUG-006: Build Artifacts Causing Extract Conflicts — FIXED
**Fix:** Cleaned 550 stale files from src/rtl/units/ and src/packages/*/units/.

### BUG-007: PPU Reader Crash (i8086 EListError) — FIXED
**Fix:** ppu.pas runtime CpuAluBitSize dispatch instead of compile-time ifdefs.

### BUG-008: cwstring.pp Callback Signatures — FIXED
**Fix:** Wide2AnsiMove/Ansi2WideMove cp:TSystemCodePage parameter added.

## Open / Deferred

### ComObj Checksum Cascade — DEFERRED
ComObj depends on Registry impl checksum. LCL doesn't use ComObj. Deferred.

### Win32 system.o Rebuild — DEFERRED (Phase 6)
Cross-compiled system.o crashes on Win11. Ship r3's pre-built system.o.

### OS/2 emxbind — OPEN
Final .exe packaging requires emxl.exe on OS/2. Platform limitation.

### BUG-009: win32wsstdctrls.pp += Operator — FIXED
**Root cause:** FPC 2.6.4 doesn't support the `+=` compound assignment operator.
**Fix:** `PreferredWidth += 19` → `PreferredWidth := PreferredWidth + 19` (line 571).

### BUG-010: paswstring.pas Codepage Signatures — FIXED
**Root cause:** x86_64-linux RTL rebuilt with 4-arg TUnicodeStringManager types
but LazUtils paswstring.pas had 3-arg procedure signatures.
**Fix:** Added `cp:TSystemCodePage` parameter to Wide2AnsiMove, Ansi2WideMove,
Unicode2AnsiMove, Ansi2UnicodeMove in paswstring.pas.

### BUG-011: Compound Assignment Operators in Lazarus Source — FIXED
**Root cause:** FPC 2.6.4 doesn't support +=, -=, *=, /= operators.
Lazarus 1.2.6 source uses them extensively in easylazfreetype.pas,
avglvltree.pas, lazfileutils.pas, lazfreetypefontcollection.pas, ttcalc.pas.
**Fix:** Bulk conversion of 65+ occurrences to standard assignments
(`x := x + y`, `x := x * y`, etc.). Added to Known Limitations in DECISIONS.md.

### BUG-012: Darwin Dialogs Checksum — FIXED
**Symptom:** "Recompiling NoGUIInt, checksum changed for Dialogs" on Darwin.
**Root cause:** -Fu search order placed RTL before LCL, causing FPC to find
the wrong Dialogs.ppu.
**Fix:** LCL -Fu path before RTL -Fu path in all compile commands.

### Internal Error 200509189 — DOCUMENTED (not fixed, workaround in place)
**Context:** FPC 2.6.4 compiler internal error, NOT the Xcode/Swift bridging
header error of the same number. FPC's 200509189 triggers in the compiler's
Objective-C protocol handling code when compiling units that use ObjC classes
(e.g., customdrawn cocoa backend's cocoautils.pas).

**Xcode version (NOT our bug):** Xcode's 200509189 relates to missing/corrupt
Swift-ObjC bridging headers. Fix: recreate bridging header, update build
settings path. See uploaded `Error_200509189_.txt` for details.

**FPC version (OUR bug):** FPC 2.6.4's ObjC bridge implementation has
incomplete protocol support. When the compiler encounters certain ObjC
class hierarchies (NSObject protocols, delegate patterns), it hits an
internal assertion failure coded as 200509189.

**Affected:** customdrawn cocoa backend on i386-darwin.
**Workaround:** Use Carbon widgetset instead (pure Pascal, no ObjC).
Carbon compiles clean: 46 widgetset PPUs verified.
**Permanent fix:** Would require patching FPC's objc bridge in
src/compiler/objc/ — deferred to Phase 7.
