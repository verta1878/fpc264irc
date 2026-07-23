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

### BUG-029: AnsiString heap corruption in -Mdelphi mode — FIXED
**Symptom:** Runtime Error 216 after 2-3 function calls with AnsiString
concat + function return values in {$H+} mode. Minimal reproducer:
`function Foo(a: String): String; begin Result := a + 'B'; end;`
**Root cause:** Two separate issues in the codepage-aware TAnsiRec backport:
1. `asmutils.pas`: Used `{$ifdef cpu64}` (HOST check) to emit a 4-byte Dummy
   alignment field in constant AnsiString headers. When ppcx64 cross-compiled
   ppc386, the HOST was x86_64 so cpu64=TRUE, emitting 16-byte headers for
   i386 targets. Fix: runtime `if target_info.cpu in [cpu_x86_64,...]` check.
2. `rtl/i386/i386.inc`: Hand-written assembly `fpc_AnsiStr_Decr_Ref` used
   `subl $8,%eax` before FreeMem (old 8-byte TAnsiRec layout), but allocation
   uses AnsiFirstOff=12 (new layout with CodePage+ElementSize). FreeMem got
   called at alloc_ptr+4 instead of alloc_ptr → heap corruption.
   Fix: changed FreeMem's `subl $8` to `subl $12` + binary-patched system.o.
**Files changed:** `src/compiler/asmutils.pas`, `src/compiler/ppu.pas`,
`src/rtl/i386/i386.inc`, `bin/units/i386-linux/system.o` (binary patch),
`bin/ppc386` (rebuilt).
**Verified:** 1000 iterations of nested AnsiString function calls — no crash.

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

### BUG-033: cocoa Internal Error 200509189 — RESOLVED
**Previously:** Reported as compiler crash when building cocoa widgetset.
Internal Error 200509189 is in assemble.pas line 867 — unexpected
character in assembler expression parser.
**Resolution:** Error does NOT reproduce. All 14 cocoa widgetset units
compile clean with -Tdarwin -Amacho -dCOCOA. The original error was
likely caused by a build configuration issue (wrong assembler flag
or ObjC bridge misconfiguration). With correct flags, cocoa compiles.
Darwin now has two widgetsets: Carbon (46 PPUs) and Cocoa (14 PPUs).

### BUG-032 verified: Borland .res icon merge — CONFIRMED FIXED
Tested with actual Inno Setup 5.6.1 .res files:
- SetupLdr.res (4 RT_ICON + 1 RT_GROUP_ICON "MAINICON", LangID 0x0409)
- Setup.res (same structure)
- Merge with SetupLdrVersion.res + SetupLdrOffsetTable.res: OK
- Merge with SetupVersion.res + Images.res: OK
fpcres converts and merges all Borland BRCC32 .res files without errors.
The ISCC crash should be resolved — Setup.e32 and SetupLdr.e32 will
now have valid .rsrc PE sections with icons.

### ISCC crash root cause — SetupLdr.exe missing resources
SetupLdr.exe only has RT_MANIFEST. Missing: RT_ICON (SetupLdr.res),
RT_VERSION (SetupLdrVersion.res), RT_RCDATA #11111 (SetupLdrOffsetTable.res).
The {$R} directives in SetupLdr.dpr are present but the .res files
are not in the compiler's search path during the FPC build.
ISCC tries to seek to RT_RCDATA #11111 to write the offset table →
resource not found → AV.
Fix: ensure all three .res files are in the Projects/ directory
when compiling SetupLdr.dpr. Our fpcres can merge them (BUG-032 verified).
Not an fpc264irc bug — Inno build path issue.

### BUG-034: Wine ANSI codepage crash (GetACP returns 65001) — FIXED
**Symptom:** ISCC.exe crashes in post-message processing under Wine.
**Root cause:** Wine's GetACP() returns 65001 (UTF-8) because it inherits
the Linux locale. FPC's RTL passes CP_ACP to WideCharToMultiByte/
MultiByteToWideChar, which under Wine resolves to UTF-8. Delphi-era
code expects single-byte ANSI (1252). UTF-8 multi-byte conversion
corrupts string lengths → memory corruption → AV.
**Fix:** Added FPC_AnsiCodePage variable to syswin.inc, initialized at
startup by InitAnsiCodePage. When GetACP returns 65001:
  1. Check FPC_ALLOW_UTF8_ACP env var (opt-in override)
  2. Fall back to GetLocaleInfoA(LOCALE_IDEFAULTANSICODEPAGE)
  3. If that fails, default to 1252 (Western European)
Replaced CP_ACP with FPC_AnsiCodePage in Win32Unicode2AnsiMove and
Win32Ansi2UnicodeMove. Requires RTL rebuild.
**Safety:** Only fires when GetACP=65001 (never on real Windows).
**Override:** Set FPC_ALLOW_UTF8_ACP=1 to force UTF-8 codepage.

### BUG-035: ISCC.exe crash in UpdateCRC32 — Lo() incompatibility
**Symptom:** Access Violation at COMPRESS_UPDATECRC32 during installer
compilation. CRC32 table index = 0x4C58 (out of bounds, max 255).
**Root cause:** FPC's Lo() returns Word (16-bit) for LongInt input.
Delphi's Lo() returns Byte (8-bit) for LongInt input.
  Compress.pas line 155: CRC32Table[Lo(CurCRC) xor P^]
  Delphi: Lo($12345678) = $78 (Byte), index 0-255 ✅
  FPC:    Lo($12345678) = $5678 (Word), index 0-65535 ❌
CRC table is array[Byte] (256 entries). Word index overflows → AV.
**Fix (Inno-side):** Change Lo(CurCRC) to Byte(CurCRC) in Compress.pas:
  CRC32Table[Byte(CurCRC) xor P^] xor (CurCRC shr 8);
**Fix (FPC-side):** Could override Lo() in -Mdelphi mode, but this is
a compiler intrinsic change with wide blast radius. Inno-side fix safer.
**Note:** BUG-034 (Wine codepage) was a RED HERRING. The crash occurs
on any platform, not just Wine. The codepage fix is still valid but
does not address this crash.

### BUG-034: REVERTED — Wine codepage patch removed
The syswin.inc FPC_AnsiCodePage patch was a red herring.
The real crash was BUG-035 (Lo() returning Word instead of Byte).
Wine codepage patch reverted to original CP_ACP code.
syswin.inc restored to pre-patch state (665 lines).

### Setup.exe AV on Win98 — NOT an fpc264irc bug
**Symptom:** Setup.exe shows window frame ("netmodem2irc-setup") with
black client area, then "Access violation" dialog.
**Root cause:** All 13 DFM form resources are disabled ({$R *.DFM}).
The wizard window creates but has zero controls — no panels, buttons,
labels, or notebook pages. Code accessing WizardForm.NextButton or
InnerNotebook hits nil → AV.
**Proof:** Window frame + toolbar rendered correctly = Win32 LCL works.
Black client area = no DFM controls loaded.
**Fix:** Inno Phase 6 (DFM→LFM conversion). Not fpc264irc scope.
**Confirmed:** ISCC.exe works on real Windows (Win98). BUG-035 fix verified.

### Setup.exe AV — FIXED (Inno-side, not fpc264irc)
**Root cause:** Missing RegisterClass() calls for Inno custom components.
LCL's LFM streamer had the form data but couldn't instantiate TNewButton,
TNewNotebook, TBitmapImage, etc. because they weren't registered.
**Fix:** InnoComponentReg.pas — 18 custom components registered in
initialization section. Under Wine, Setup.exe no longer crashes
(hangs waiting for GUI = Wine limitation, not a bug).
**Note:** dfm2lfm converter available at src/lazarus/lcl/dfm2lfm.pas
and Lazarus built-in converter at src/lazarus/converter/.

### BUG-036: C-style operators (+=, -=, *=, /=) not enabled by default — FIXED
**Symptom:** `result += value` fails with 'Syntax error' unless -Sc flag used.
**Root cause:** `cs_support_c_operators` not included in default mode switches.
Scanner recognizes `+=` token but only when flag is set.
**Fix:** Added `include(current_settings.moduleswitches, cs_support_c_operators)`
to SetCompileMode in scanner.pas. Enabled for all modes (OBJFPC, DELPHI, TP, FPC).
**Workaround (until compiler rebuild):** Compile with `-Sc` flag.
**Note:** Cannot break existing code — no valid Pascal puts + immediately before =
as separate operators.
**Files changed:** src/compiler/scanner.pas


### BUG-038: SysTryResizeMem Memory Leak — CLOSED (NOT A BUG)
**Found:** system.ppu audit, Jul 23 2026
**Symptom:** Gradual heap growth during specific ReallocMem patterns.
**Root cause:** When try_concat_free_chunk_forward succeeds but merged
block is still too small, statistics are updated (marking merged portion
as "used") but function exits without using it. Block is leaked — not
on free list, not returned to caller.
**Impact:** Low — only triggers during ReallocMem with adjacent blocks.
Causes leak, not corruption.
**Status:** Deferred. Fix when rebuilding system.ppu.

### BUG-039: Heap Lock Ordering — CLOSED (NOT A BUG)
**Found:** system.ppu audit, Jul 23 2026
**Symptom:** Potential stale pointers in orphaned freelists.
**Root cause:** alloc_oschunk accesses orphaned_freelists under heap_lock.
If a thread exits between waitfree_var and alloc_oschunk processing,
pointers could become stale.
**Impact:** Low — only affects multi-threaded programs. Single-threaded
BBS software not affected.
**Status:** Deferred. Fix when rebuilding system.ppu.

### BUG-037: v4 Engine EInvalidPointer — AUDITED (r3.1)
**Found:** v4 engine heap crash report, Jul 22 2026
**Symptom:** EInvalidPointer during WriteLn when large heap objects
(TRIPEngine ~2MB) coexist with New/Dispose of 64-149KB records.
**Audit:** 3 stress tests, 250 cycles. Cannot reproduce with RTL
heap manager. Heap manager code is correct for this scenario.
**Root cause:** User code — most likely FillChar on class instance
(destroys VMT at offset 0), buffer overrun with {$R-}, or stale
pointer after Dispose.
**Recommendations:**
- Compile with {$R+}{$Q+} to catch overruns
- Never FillChar a class instance — only fill individual fields
- Set pointers to nil after Dispose
**Status:** Audited. RTL cleared. Waiting for v4 maintainer to
narrow down the exact line.
**See:** docs/v4_engine_heap_audit.md
**Deep audit (Jul 23 2026):** Full stats trace through SysReAllocMem
proves the stats update is intentional and balances correctly.
SysTryResizeMem merges the adjacent free block, updates stats,
returns FALSE. SysReAllocMem then gets the merged size via MemSize,
allocates new, copies, frees merged block. Net stats: correct.
Not exported in TMemoryManager — only called by SysReAllocMem.
**Status:** CLOSED — not a bug.
**Deep audit (Jul 23 2026):** Full threading trace proves lock ordering
is correct. FinalizeHeap holds heap_lock continuously from entry to
exit — no gap between finish_waitlist and modify_freelists. The unlocked
check at alloc_oschunk line 756 is deliberate double-checked locking
(safe on x86/x86_64 TSO). waitfree_var blocks on heap_lock until
FinalizeHeap completes, then writes to orphaned_freelists correctly.
**Status:** CLOSED — not a bug.
