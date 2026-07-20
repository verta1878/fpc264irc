# Inno Setup 5.6.1 → FPC 2.6.4 Port — Workmap

Target: Full compile of Setup.exe, ISCC.exe, Compil32.exe with real LCL (no stubs).
Linker: Dynamic MSVCRT (each OS ships its own version; single-version decision deferred).

---

## Phases

### Phase 1: ISCC.exe (Command-Line Compiler) ✅ DONE
429KB console binary. No GUI, no LCL needed.

### Phase 2: Compression Libraries ✅ DONE
Compress.pas, CompressZlib.pas, bzlib.pas, LZMA.pas, LZMADecomp.pas, LZMADecompSmall.pas all compile.
LZMA uses dynamic loading via GetProcAddress (COFF .obj linking disabled).

### Phase 3: LCL Integration — IN PROGRESS
Real LCL (LazUtils 50 PPUs + LCL 125 PPUs). VCL stub .fpas files disabled.

### Phase 4: Setup.exe Runtime
MD5, file operations, registry, undo, extraction, DLL registration.

### Phase 5: Component Controls (Real Implementations)
All 9 custom controls must be fully functional LCL components.

### Phase 6: GUI Wizard
Full installer wizard flow: language select → welcome → license → dir → tasks → install → finish.

### Phase 7: PascalScript [Code] Section
RemObjects PascalScript engine ported to FPC. ScriptRunner with full uPSExec.

### Phase 8: Compil32.exe (IDE Compiler)
CompForm, ScintEdit, syntax highlighting, project management.

---

## Detailed Audit: Original vs Ours

### Legend
- ✅ = Done, matches original intent
- ⚠️ = Partial — compiles but behavior incomplete or deferred
- ❌ = Stubbed out or broken — needs full code
- 🔧 = Changed for FPC compatibility (correct)

---

### Projects/ — Files Added (not in original)

| File | Status | Notes |
|------|--------|-------|
| `FPCCompat.pas` | 🔧 88 lines | VCL→LCL shim. Has GetAppHandle, DisableTaskWindows, SetCtl3D, SetOEMConvert, AppHandleException, TWMCopyData. **These are real implementations, not stubs.** DisableTaskWindows is a no-op (acceptable — VCL's version is Win16 legacy). SetOEMConvert correctly applies ES_OEMCONVERT via SetWindowLong. |
| `SetupCompat.pas` | ❌ 22 lines | ListContains is a naive Pos() — original uses proper delimited matching. ExpandSetupMessage returns raw string — original does `{cm:...}` expansion. TAlphaBitmap is an empty class. **Needs real implementation.** |
| `Consts.pas` | 🔧 11 lines | Thin wrapper providing SMsgDlg* resourcestrings that Inno references. LCL has these in LCLStrConsts — could redirect there instead. |
| `VERSION.INC` | 🔧 | Defines IS_D3/D4/D5/D7, Delphi3orHigher. No UNICODE. Correct for FPC 2.6.4. |
| `Int64Em.pas` | 🔧 291 lines | Full record with .Hi/.Lo + Inc64/Dec64/Div64/Mul64/Compare64. Same line count as original — likely complete. |
| `*.fpas` (11 files) | ⚠️ | Old VCL stub units (Graphics, Controls, Forms, etc). Currently disabled/unused since we switched to real LCL. **Should be deleted** to avoid confusion. |
| `uPS*.pas` (16 files) | ❌ | Empty PascalScript stubs (6-18 lines each vs hundreds in real library). Phase 7. |
| `libimpInstFunc.a` | ❌ | Static import lib — purpose unclear. Not in original. |

### Projects/ — Files Changed from Original

| File | Lines Orig→Ours | Status | Changes |
|------|-----------------|--------|---------|
| **CmnFunc.pas** | 325→325 | 🔧 | Added FPCCompat to uses. `Application.Handle` → `GetAppHandle` (6 places). Correct. |
| **CmnFunc2.pas** | 410→410 | 🔧 | Added `ActiveX` to uses for IMalloc. `GetEnvironmentVariable` → `Windows.GetEnvironmentVariable` to avoid ambiguity. Correct. |
| **BrowseFunc.pas** | 219→232 | 🔧 | Added BFFM_* constants, local GetAppHandle, `Application.Handle` → `GetAppHandle`. Duplicates FPCCompat's GetAppHandle — should use FPCCompat instead. |
| **SetupForm.pas** | 170→177 | 🔧 | Added LCLType to uses. TTextMetric replaced with manual record + `GetTextMetricsA`. Works but fragile — should use LCL's TTextMetric if available. |
| **UIStateForm.pas** | 26→26 | 🔧 | Uses Forms+Controls+LMessages instead of Dialogs. Correct — CM_DIALOGKEY and CM_SHOWINGCHANGED are in LMessages. |
| **InstFnc2.pas** | 499→499 | 🔧 | `PV.boolVal` → pointer arithmetic workaround for FPC PROPVARIANT layout. Correct but should verify offset=8 on all targets. |
| **Install.pas** | 1246→1246 | 🔧 | Added FPCCompat. `CompareFileTime(a,b)` → `CompareFileTime(@a,@b)` (FPC wants pointers). Correct. |
| **LibFusion.pas** | 131→131 | 🔧 | `Ole2` → `ActiveX`. IAssemblyCache changed from Delphi `class(Ole2.IUnknown)` to proper `interface(IUnknown)`. `.Release` → `._Release`. Correct. |
| **Undo.pas** | 137→139 | 🔧 | Added `SHCNF_PATH = $0005`. Also defined in FPCCompat — **duplicate, pick one**. |
| **Wizard.pas** | 2798→2798 | 🔧 | Added LCLType, FPCCompat. `Application.Handle` → `GetAppHandle`. `ParentBackground := False` commented out (LCL doesn't have it). `{$R *.DFM}` disabled. Correct. |
| **NewDisk.pas** | 127→127 | 🔧 | `{$R *.DFM}` disabled. Otherwise identical. |
| **Main.pas** | 4428→4428 | 🔧 | Added FPCCompat, LCLType, LMessages. `Application.Handle` → `GetAppHandle`. `{$R *.DFM}` disabled. |
| **CompForm.pas** | 4213→4213 | ⚠️ | 28 changed lines. Not fully audited — Phase 8 (Compil32). |
| **LZMADecomp.pas** | 118→127 | ⚠️ | COFF `{$L}` directives disabled. External functions replaced with **empty stubs returning 0**. LZMA decompression will not work at runtime. **Needs dynamic loading like LZMA.pas does.** |
| **LZMADecompSmall.pas** | similar | ⚠️ | Same issue — external stubs returning 0. |
| **SpawnServer.pas** | 404→406 | 🔧 | `ShellExecuteEx` → `ShellExecuteExA`. `Application.Handle` → `GetAppHandle`. `Abort` → `SysUtils.Abort`. Correct. |
| **SelLangForm.pas** | — | 🔧 | Minor LCL adaptations. |
| **RegSvr.pas** | — | 🔧 | 8 changed lines. |
| **D2009Win2kFix.pas** | 93→6 | 🔧 | Gutted — Delphi 2009 specific VCL hack, irrelevant for FPC. Correct. |
| **Verinfo.pas** | — | 🔧 | 5 changed lines. |
| **SimpleExpression.pas** | — | 🔧 | 4 changed lines. |
| **TaskbarProgressFunc.pas** | — | 🔧 | 6 changed lines — likely ITaskbarList3 COM interface fix. |
| **Uninstall.pas** | — | ⚠️ | 18 changed lines. Not fully audited. |
| **DebugClient.pas** | — | 🔧 | 2 changed lines. |

### Projects/ — PascalScript Files (ALL STUBBED — Phase 7)

| File | Orig Lines | Our Lines | Status |
|------|-----------|-----------|--------|
| `ScriptRunner.pas` | 543 | 103 | ❌ **Stub.** Has correct signatures but LoadScript/FunctionExists/RunProcedure are all no-ops. Original uses TPSDebugExec, handles DLL imports, debug breakpoints, exception handling. |
| `ScriptClasses_C.pas` | 642 | 6 | ❌ Empty unit. Registers all VCL/Inno classes with PascalScript compiler. |
| `ScriptClasses_R.pas` | 699 | 6 | ❌ Empty unit. Runtime class wrappers for PascalScript. |
| `ScriptCompiler.pas` | 464 | 18 | ❌ Minimal stub. Original drives TPSPascalCompiler with all Inno-specific registrations. |
| `ScriptDlg.pas` | 833 | 6 | ❌ Empty unit. Creates custom wizard pages from PascalScript. |
| `ScriptFunc.pas` | 339 | 6 | ❌ Empty unit. Shared script function helpers. |
| `ScriptFunc_C.pas` | 277 | 6 | ❌ Empty unit. Compiler-side script function registration. |
| `ScriptFunc_R.pas` | 1872 | 6 | ❌ Empty unit. Runtime script function implementations (the big one). |
| `uPSCompiler.pas` | ext | 7 | ❌ Empty class. Needs RemObjects PascalScript source. |
| `uPSRuntime.pas` | ext | 6 | ❌ Empty. |
| `uPSDebugger.pas` | ext | 6 | ❌ Empty. |
| `uPSUtils.pas` | ext | 20 | ❌ Minimal types only. |
| `uPSC_*.pas` (6) | ext | 6 each | ❌ Empty. |
| `uPSR_*.pas` (6) | ext | 6 each | ❌ Empty. |

**Total: ~5,700 lines of original code replaced with ~230 lines of stubs.**
PascalScript is an external library (RemObjects) that must be obtained and ported to FPC 2.6.4.

### Components/ — Custom Controls

| Component | Orig Lines | Our Lines | Status | What's Missing |
|-----------|-----------|-----------|--------|----------------|
| `BitmapImage.pas` | 417 | 420 | ⚠️ | +3 lines. Likely minor LCL fix. Needs audit for `CreateWindowHandle` / `Ctl3D`. |
| `NewCheckListBox.pas` | 2137 | 2141 | ⚠️ | `CreateWindowHandle` commented out (→ CreateWnd). `Ctl3D` and `ParentCtl3D` commented out. **Need real properties.** |
| `PasswordEdit.pas` | orig | ours | ⚠️ | `Ctl3D`, `ParentCtl3D`, `OEMConvert` all commented out. **Need real properties.** |
| `DropListBox.pas` | orig | ours | ⚠️ | `Ctl3D` and `ParentCtl3D` commented out. |
| `FolderTreeView.pas` | changed | changed | ⚠️ | Not audited. |
| `NewNotebook.pas` | changed | changed | ⚠️ | Not audited. |
| `NewProgressBar.pas` | changed | changed | ⚠️ | Not audited. |
| `NewStaticText.pas` | changed | changed | ⚠️ | Not audited. |
| `NewTabSet.pas` | changed | changed | ⚠️ | Not audited. |
| `RichEditViewer.pas` | changed | changed | ⚠️ | Not audited. |
| `ScintEdit.pas` | changed | changed | ⚠️ | Phase 8 (Compil32 IDE). |
| `BidiCtrls.pas` | changed | changed | ⚠️ | Not audited. |
| `BidiUtils.pas` | changed | changed | ⚠️ | Not audited. |
| `NewDisk.pas` | N/A | added | ❌ | Moved from Projects/ — was it stubbed? Original Projects/NewDisk.pas is a TForm. |

---

## Missing/Broken/Changed — Summary List

### ❌ MISSING (must be created)

1. **Ctl3D property** — LCL TWinControl has no Ctl3D. Options: (a) add published property to each component that stores the value and applies WS_EX_CLIENTEDGE via CreateParams/RecreateWnd, or (b) use FPCCompat.SetCtl3D which already exists but components need `property Ctl3D` declarations to compile PascalScript class registration.
2. **ParentCtl3D property** — Same situation. Needs published property on components.
3. **OEMConvert property** — PasswordEdit needs `property OEMConvert: Boolean`. FPCCompat.SetOEMConvert exists and correctly applies ES_OEMCONVERT. Need the property declaration + storage field.
4. **CreateWindowHandle** — NewCheckListBox overrides this in original (calls inherited then UpdateThemeData). LCL uses CreateWnd instead. **Move the logic to CreateWnd override.** Not a stub — needs real code.
5. **Application.HandleException** — Used in Install.pas, CompForm.pas, DebugClient.pas. FPCCompat.AppHandleException wrapper exists. Check all call sites use it or call `Application.HandleException` directly (LCL has it).
6. **ScriptRunner.pas** — Full 543-line implementation needed. Requires PascalScript engine.
7. **ScriptClasses_C/R, ScriptCompiler, ScriptDlg, ScriptFunc, ScriptFunc_C/R** — All 7 files are empty stubs. ~5,100 lines of code missing.
8. **PascalScript engine** (uPSCompiler, uPSRuntime, uPSDebugger, uPSUtils + 12 uPSC/uPSR units) — External dependency. Must obtain RemObjects PascalScript source and port to FPC 2.6.4.
9. **LZMA decompression** — LZMADecomp.pas and LZMADecompSmall.pas have the C externals replaced with stubs returning 0. **Need dynamic loading** (LoadLibrary/GetProcAddress pattern like LZMA.pas uses) or compile the C source with GCC and link as .a.
10. **SetupCompat.pas** — ListContains needs proper delimiter-aware matching. ExpandSetupMessage needs `{cm:...}` / `{code:...}` expansion engine (this is part of the message system).
11. **DFM resources** — All `{$R *.DFM}` disabled. Forms need LFM equivalents or runtime construction. Affects: Main, Wizard, NewDisk, SelFolderForm, SelLangForm, UninstProgressForm, UninstSharedFileForm, CompForm, CompOptions, CompSignTools, CompStartup, CompWizard, CompWizardFile.
12. **Windows resources** — Setup.res, Compil32.res, ISCC.res, Images.res, CompImages.res, SetupLdrOffsetTable.res, HelperEXEs.res all disabled. Need windres builds.

### ⚠️ PARTIAL (compiles, needs work)

13. **SetupForm.pas TTextMetric** — Replaced with manual record. Should use Windows.TTextMetric or LCL equivalent.
14. **BrowseFunc.pas duplicate GetAppHandle** — Has its own local copy. Should use FPCCompat.
15. **Undo.pas duplicate SHCNF_PATH** — Defined locally AND in FPCCompat.
16. **InstFnc2.pas PROPVARIANT** — Pointer arithmetic offset=8 hardcoded. Verify for 32-bit/64-bit.
17. **VCL .fpas stubs** — 11 files still on disk. Should be deleted since we use real LCL now.

### 🔧 CORRECTLY CHANGED (no action needed)

18. `Application.Handle` → `GetAppHandle` (all call sites)
19. `Ole2` → `ActiveX` (LibFusion, CmnFunc2)
20. IAssemblyCache → proper interface syntax
21. CompareFileTime pointer syntax
22. D2009Win2kFix gutted (Delphi-specific)
23. VERSION.INC flags
24. Int64Em.pas full implementation
25. ShellExecuteEx → ShellExecuteExA

---

## Priority Order

**Immediate (Phase 3 completion):**
- Add Ctl3D/ParentCtl3D/OEMConvert as real published properties to components
- Fix CreateWindowHandle → CreateWnd in NewCheckListBox
- Fix LZMA decompression (dynamic loading)
- Fix SetupCompat.pas (real ListContains, ExpandSetupMessage)
- Clean up duplicates (SHCNF_PATH, GetAppHandle in BrowseFunc)
- Delete .fpas stub files

**Phase 4-5 (Runtime):**
- Build DFM→LFM or runtime form construction for all forms
- Build Windows resources with windres
- Verify MD5, file ops, registry, undo at runtime

**Phase 6 (GUI):**
- Full wizard flow working with real components

**Phase 7 (PascalScript):**
- Obtain and port RemObjects PascalScript to FPC 2.6.4
- Restore all 8 Script*.pas files to full original code
- ScriptRunner.pas full 543-line implementation

**Phase 8 (Compil32):**
- CompForm.pas, ScintEdit, IDE features
