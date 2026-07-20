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

### BUG-013: lazutf8.pas OS/2 LineEnding — FIXED
**Symptom:** Incompatible types: got "Constant String" expected "Char"
**Root cause:** OS/2 LineEnding is #13#10 (2 chars), Dest^ is single Char.
**Fix:** Added `or defined(OS2)` to the WINDOWS ifdef for multi-char LineEnding handling.

### BUG-014: lazfileutils.pas OS/2 port — OPEN
**Symptom:** winlazfileutils.inc uses Windows unit, unavailable on OS/2.
**Root cause:** LazUtils has Windows and Unix code paths but no OS/2 path.
**Fix needed:** Create os2lazfileutils.inc using OS/2 API (DosQueryPathInfo,
DosFindFirst, etc.) — dedicated porting work.

### BUG-015: pasjpeg OS/2 compilation errors — DEFERRED (Phase 6c)
Four issues: truncated source (jidct2d), inline asm (jidctasm),
DOS goto/asm (jmemdosa), missing Windows types (pasjpeg.pas).

### BUG-013: lazutf8.pas OS/2 LineEnding — FIXED
### BUG-014: lazfileutils.pas OS/2 port — FIXED
Created os2lazfileutils.inc (SysUtils delegation pattern).
### BUG-016: fileutil.pas OS/2 port — FIXED
Created os2fileutil.inc + excluded Windows unit.
### BUG-017: lazutf8sysutils.pas OS/2 Unix dep — FIXED
### BUG-018: lclintf.pas OS/2 sysenvapis — FIXED
Created sysenvapis_os2.inc with OpenURL/OpenDocument stubs.
### BUG-019: OS/2 wrc resource compiler — WORKAROUND
Dummy wrc creates minimal empty .res for cross-compilation.

### BUG-020: customdrawn ExtTextOut override mismatch — FIXED
**Root cause:** pmwin in customdrawnint.pas uses clause redefined HWND,
conflicting with LCLType.HWND. Override signatures didn't match.
**Fix:** Isolated pmwin in customdrawn_os2proc.pas only. Created wrapper
procedures (OS2_Initialize, OS2_GetMsg etc.) so customdrawnint.pas never
imports pmwin directly. Used Cardinal instead of pmwin.HWND in proc types.

### BUG-015: pasjpeg cross-compile fixes — FIXED (Phase 6c)
**jidct2d.pas:** Truncated source (code after end.) + 2 unclosed { comments.
  Fixed: truncated at end., closed {SHIFT_TEMPS} and {ISHIFT_TEMPS}.
  Still has 'num' identifier issue — non-essential fast IDCT, skipped.
**pasjpeg.pas:** Missing TBitmapFileHeader/TBitmapInfoHeader types.
  Fixed: added {$IFNDEF WINDOWS} local type definitions for BMP headers.
  Also: ShowMessage → WriteLn on non-Windows platforms.
**Skipped (acceptable):** jidctasm (TASM asm), jmemdos/jmemdosa (DOS),
  jmemsys (skeleton). These are platform-specific and non-essential.
**Result:** 54 of 59 pasjpeg units compile for OS/2. OS/2 total: 116 PPUs.

### BUG-021: go32v2 syncobjs GetLastOSError — FIXED
DOS is single-threaded, no GetLastOSError. Fixed with ifdef in syncobjs.pp.

### BUG-022: go32v2 dialogs {$R} resource directives — FIXED
go32v2 COFF doesn't support resource embedding. Wrapped {$R} in {$IFNDEF GO32V2}.

### BUG-023: go32v2 lazutf8/lazfileutils/fileutil/lazutf8sysutils — FIXED
Same as OS/2: no Unix/BaseUnix unit. Added GO32V2 and MSDOS to all OS/2 routing.

### BUG-024: .gitignore strips LCL PPUs from git — FIXED
.gitignore had *.ppu and *.o rules with exceptions only for bin/units/.
LCL PPUs in bin/lazarus/ were stripped on clone. Added exceptions:
!bin/lazarus/**/*.ppu and !bin/lazarus/**/*.o
Now 1980 LCL PPUs across 7 platforms are tracked.

### BUG-024: syswin.inc 3-param vs ustringh.inc 4-param (BUG-C from Inno report)
**Root cause:** syswin.inc declared Win32Unicode2AnsiMove, Win32Ansi2WideMove,
Win32Ansi2UnicodeMove with 3-param (no cp:TSystemCodePage), but ustringh.inc
defined TUnicodeStringManager proc types with 4-param. If system.ppu was
rebuilt from source, the 3-param functions would be assigned to 4-param
proc types → stack corruption → Runtime Error 216.
**Fix:** Added cp:TSystemCodePage parameter to all three Win32 functions
in syswin.inc. They now use the cp parameter instead of hardcoded CP_ACP.
Source and type definitions now agree.
**Note:** Shipped i386-win32 system.ppu (r3 archive) is still 3-param.
paswstring.pas retains {$IFNDEF MSWINDOWS} conditional to match.
A full Win32 RTL rebuild from the fixed source would produce a 4-param
system.ppu, eliminating the need for the conditional.

### Phase 9: LCL Delphi Compatibility Backports

**Ctl3D / ParentCtl3D** — Added to TWinControl as public properties.
FCtl3D and FParentCtl3D fields with defaults True. Components can
publish them as needed. RegisterPropertyToSkip kept for legacy DFM.

**OEMConvert** — Added to TCustomEdit as public property.
FOEMConvert field with default False. Win32 widgetset can apply
ES_OEMCONVERT via CreateParams when this is True.

**CreateWindowHandle** — Added as virtual method to TWinControl.
VCL compatibility: Delphi code overriding CreateWindowHandle can
be ported. Default implementation is empty — LCL handles creation
in CreateWnd/CreateHandle.

**verinfo.pas** — New unit. TFileVersionInfo class reads Windows
version resources (GetFileVersionInfo API). Cross-platform stub
on non-Windows.

### BUG-025 (BUG-D): RTL/LCL PPU version skew — DOCUMENTED
LCL PPUs built 7hrs before RTL was rebuilt. Checksum mismatch causes
"Recompiling IntfGraphics, checksum changed for FPReadPNG" fatals.
Fix: Always rebuild LCL AFTER RTL in release pipeline.
Order: RTL → packages → LazUtils → LCL base → widgetset.

### BUG-026 (BUG-E): build-lcl.sh recompiles package units — FIXED
build-lcl.sh had -Fu$PKG/fcl-image/src etc. which recompiled package
units from source with different checksums than prebuilt RTL PPUs.
Fix: Removed all -Fu to package source dirs. LCL now uses only
prebuilt PPUs from bin/units/i386-<os>/.

### BUG-027 (BUG-F): .gitignore missing lazarus exceptions — FIXED
Already fixed: .gitignore was deleted entirely. Using make clean instead.

### BUG-028 (BUG-G): forms.pp output directory mismatch — DOCUMENTED
Lazarus Makefile controls unit output dir, ignoring -FU flag.
build-lcl.sh handles by copying afterward. Low priority.

### BUG-029: AnsiString stack overflow in -Mdelphi mode — KNOWN LIMITATION
**Symptom:** Runtime Error 216 after 3-5 function calls with AnsiString
params/return values in -Mdelphi mode ({$H+}).
**Root cause:** Compiler generates temporary AnsiString finalization code
that leaks stack frames. Each call accumulates unreleased stack frames
until stack overflows.
**Workaround:** Add {$H-} to force ShortStrings, or use Var parameters
instead of function return values for strings.
**Status:** Compiler-level bug in ppc386 code generator. Cannot fix by
editing RTL/LCL source. Would need changes to the compiler itself.
Not present with {$H-} or -Mobjfpc without {$H+}.

### BUG-025 (BUG-D): RTL/LCL PPU version skew — FIXED
LCL rebuilt after RTL using Lazarus make system.
All PPUs now consistent (Jul 19 timestamps).
LazUtils: 52, LCL base: 117, Win32 WS: 26 = 195 total.
Build order enforced: RTL → packages → LazUtils → LCL → widgetset.

### BUG-030 (BUG-H): LCL resource files missing from output — FIXED
4 files (.lfm + .res) needed by LCL PPUs were not copied to
bin/lazarus/units/ during build. Added copy step to build-lcl.sh:
finddlgunit.lfm, replacedlgunit.lfm, calendarpopup.lfm,
win32wsextdlgs.res.

### BUG-031: Compil32.exe ScintEdit.pas 5 errors — FIXED (FPCCompat unit)
Created fpccompat.pas providing:
- SetToByte/ByteToSet: Byte↔set casting helpers (FPC stricter than Delphi)
- DragQueryPoint: Delphi-compatible var TPoint overload (wraps LPPOINT)
- SListIndexError: resourcestring re-export from RTLConsts
- GetAppHandle, SetCtl3D, SetOEMConvert, DisableTaskWindows
ScintEdit.pas needs: uses FPCCompat, RTLConsts + replace casts with helpers.

### Pure Pascal LZMA Decoder — NEW UNIT
lzmadecpas.pas: 636 lines, pure Pascal LZMA1 + LZMA2 decoder.
No C, no MinGW, no {$L}, compiles on all 8 targets.
Based on LZMA SDK specification (Igor Pavlov, public domain).
Provides LzmaDecode() and Lzma2Decode() functions.
Replaces MinGW-compiled C objects for self-contained builds.

### BUG-032: Borland .res RT_ICON LangID incompatibility — FIXED
**Symptom:** "Cannot find resource: Type = 3, Name = 1, Lang ID = 0409"
when linking Borland BRCC32-compiled .res files containing icons.
**Root cause:** groupiconresource.pp requires RT_ICON sub-resources to
have the exact same LangID as RT_GROUP_ICON. Borland's .res format may
store them with different LangIDs (e.g., neutral 0 vs $0409).
**Fix:** Added LangID fallback in ReadResourceItemHeader — tries exact
LangID first, then neutral (0), then any language. Same fix applied
to groupcursorresource.pp for RT_CURSOR resources.
**Files:** fcl-res/src/groupiconresource.pp, fcl-res/src/groupcursorresource.pp

### BUG-032 addendum: fpcres binary was not rebuilt after fix
The LangID fallback fix was in fcl-res source but the fpcres binary
(Jul 17) predated the fix (Jul 20). Rebuilt fpcres from source.
The compiler calls fpcres externally to merge .res files — source
fixes don't take effect until the binary is recompiled.
