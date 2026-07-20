# Inno Setup 5.6.1 FPC Port — Complete Features List

What compiles, what's hollow, what's missing. Organized by the
6 work items needed to make Setup.exe functional.

---

## 1. LZMA Decompression

### Missing

| Feature | File | Notes |
|---------|------|-------|
| LZMA1 decompression | LZMADecomp.pas | 6 external C functions stubbed to return 0 |
| LZMA2 decompression | LZMADecomp.pas | 6 external C functions stubbed to return 0 |
| LZMA small decoder | LZMADecompSmall.pas | 2 functions stubbed |

### What this blocks

- Setup.exe cannot extract any compressed payload
- Every installer built by ISCC.exe uses LZMA by default
- Without this, Setup.exe is a GUI that can't install anything

### C source available in-tree

```
Projects/Lzma2/C/LzmaDec.c      — LZMA1 decoder
Projects/Lzma2/C/Lzma2Dec.c     — LZMA2 decoder (not in tree, but Lzma2Enc.c is)
Projects/Lzma2/Decoder/          — ISLzmaDec.c, ISLzma2Dec.c (Inno wrappers)
Projects/LzmaDecode/LzmaDecodeInno.c   — small decoder
Projects/LzmaDecode/LzmaDecodeSize.c   — size-optimized decoder
```

### What works

- LZMA compression (LZMA.pas) — dynamic loading via GetProcAddress ✅
- zlib compression/decompression (CompressZlib.pas) ✅
- bzip2 compression/decompression (bzlib.pas) ✅

---

## 2. DFM Form Resources

### Missing

13 forms with `{$R *.DFM}` disabled. All compile but show as
empty windows at runtime — no controls, no layout.

| Form | File | Controls | Purpose |
|------|------|----------|---------|
| MainForm | Main.dfm | None (painted directly) | Main installer window, navy background |
| WizardForm | Wizard.dfm | Bevel, 3 TNewButtons, TNewNotebook (3 pages: Welcome/Inner/Finished), TNewStaticText | Install wizard — all pages, all buttons |
| TNewDiskForm | NewDisk.dfm | Labels, edit, buttons | "Insert disk N" swap dialog |
| TSelectFolderForm | SelFolderForm.dfm | Tree, edit, buttons | Browse for folder |
| TSelectLanguageForm | SelLangForm.dfm | Label, combobox, buttons | Language selection at startup |
| TUninstProgressForm | UninstProgressForm.dfm | Label, progress bar, button | Uninstall progress |
| TUninstSharedFileForm | UninstSharedFileForm.dfm | Labels, buttons | "Shared file in use" dialog |
| TCompileForm | CompForm.dfm | Scintilla editor, menus, toolbar, status bar | IDE main window (Phase 8) |
| TOptionsForm | CompOptions.dfm | Tabs, edits, checkboxes | IDE options (Phase 8) |
| TSignToolsForm | CompSignTools.dfm | Listbox, buttons | IDE sign tools (Phase 8) |
| TStartupForm | CompStartup.dfm | Listbox, buttons | IDE startup (Phase 8) |
| TWizardFormCompWizard | CompWizard.dfm | Pages, edits | IDE new project (Phase 8) |
| TWizardFormFile | CompWizardFile.dfm | Edit, buttons | IDE add file (Phase 8) |

### What this blocks

- Wizard shows but controls aren't positioned (overlapping or at 0,0)
- Dialog boxes appear empty
- MainForm should work (it's painted in OnPaint, not from DFM)

---

## 3. Windows Resources

### Missing

12 resource directives disabled across 4 targets. 8 .rc source
files available, 15 prebuilt .res files on disk.

| Target | Resource | Contents |
|--------|----------|----------|
| ISCC.exe | ISCC.res | Application icon |
| ISCC.exe | ISCC.manifest.res | UAC execution level manifest |
| ISCmplr.dll | ISCmplr.res | DLL version info |
| Setup.exe | Setup.res | Application icon (4,912 bytes) |
| Setup.exe | SetupVersion.res | ANSI version info block |
| Setup.exe | SetupVersionUnicode.res | Unicode version info block |
| Setup.exe | Images.res | Wizard header/sidebar bitmaps (1,616 bytes) |
| SetupLdr.exe | SetupLdr.res | Application icon |
| SetupLdr.exe | SetupLdrVersion.res | Version info |
| SetupLdr.exe | SetupLdrOffsetTable.res | Offset table for embedded setup data (108 bytes) |
| Compil32.exe | Compil32.res | Application icon |
| Compil32.exe | Compil32.manifest.res | UAC manifest |
| Compil32.exe | CompDocIcon.res | .iss file association icon (728 bytes) |
| Compil32.exe | CompImages.res | Toolbar/menu images |
| Setup.exe | HelperEXEs.res | Embedded 64-bit helper .exe |
| Setup.exe | XPTheme.res | XP visual styles manifest |
| Setup.exe | _shfoldr.res | SHGetFolderPath fallback |

### What this blocks

- No application icons (generic Windows icon shown)
- No version info in file Properties dialog
- No UAC manifest (may trigger compatibility warnings)
- No wizard header/sidebar bitmaps
- No 64-bit helper EXE (64-bit registry/file operations fail)
- No XP theme manifest (classic look on XP/Vista)

### .rc files that can be built with windres

```
SetupVersion.rc          — version info (ANSI)
SetupVersionUnicode.rc   — version info (Unicode)
SetupLdrVersion.rc       — loader version info
ISCC.manifest.rc         — UAC manifest
Compil32.manifest.rc     — UAC manifest
XPTheme.rc               — visual styles manifest
_shfoldr.rc              — SHGetFolderPath import
HelperEXEs.rc            — embeds Helper/x64/Release/Helper.exe
```

---

## 4. SetupCompat.pas

### Missing

24-line stub. 3 items with wrong or missing behavior.

| Function | Current behavior | Correct behavior |
|----------|-----------------|-----------------|
| `ListContains(List, Item)` | `Pos(Item, List) > 0` — false-matches substrings ("foo" matches "foobar") | Delimiter-aware: split on comma, trim, exact match |
| `ExpandSetupMessage(Msg)` | Returns raw string unchanged | Expands constants: `{app}` → install dir, `{sys}` → system dir, `{cm:Name}` → custom message, `{code:Func}` → script function result, `{reg:Key,Value}` → registry value, `{param:Name}` → command-line parameter, plus ~20 other tokens |
| `TAlphaBitmap` | Empty class with `AlphaFormat` field | Bitmap wrapper supporting premultiplied alpha blending for modern wizard graphics |

### What this blocks

- `ListContains`: affects component/task matching — wrong components may be selected/deselected
- `ExpandSetupMessage`: affects 146 call sites across Main.pas, Wizard.pas, Msgs.pas — all user-facing text with constants shows raw `{app}` tokens instead of paths
- `TAlphaBitmap`: wizard bitmaps with alpha transparency render incorrectly

---

## 5. Compil32.exe (IDE)

### Missing

5 errors in Components/ScintEdit.pas preventing compilation.

| Error | Line | Issue | Fix |
|-------|------|-------|-----|
| `Byte` → `TScintIndicatorNumbers` cast | 753 | FPC won't cast integer to set type | Use intermediate variable or type-punning |
| `TScintIndicatorNumbers` → `Byte` cast | 1955 | Same issue, reverse direction | Same fix |
| `POINT` vs `LPPOINT` | 1753 | FPC's DragQueryPoint wants pointer, Delphi uses var param | Pass `@P` instead of `P` |
| `SListIndexError` not found | 1798 | Resourcestring in FPC's RTLConsts, not in scope | Add `RTLConsts` to uses clause |
| `SListIndexError` not found | 1804 | Same | Same |

### What this blocks

- Compil32.exe (the graphical IDE) doesn't compile
- ISCC.exe (command-line) works fine as alternative
- Phase 8 — not blocking installer functionality

---

## 6. PascalScript [Code] Section

### Missing

22 stub files. ~5,500 lines of original code replaced with ~410
lines of empty stubs. Requires RemObjects PascalScript engine
(external library) ported to FPC 2.6.4.

### Script engine (external dependency)

| File | Stub lines | Purpose |
|------|-----------|---------|
| uPSCompiler.pas | 9 | Bytecode compiler |
| uPSRuntime.pas | 42 | Bytecode interpreter |
| uPSDebugger.pas | 36 | Script debugger |
| uPSUtils.pas | 34 | Shared types and utilities |
| uPSC_std.pas | 6 | Standard type registration (compiler) |
| uPSC_classes.pas | 6 | TStrings/TStringList registration |
| uPSC_controls.pas | 6 | TControl/TWinControl registration |
| uPSC_stdctrls.pas | 6 | TEdit/TLabel/TButton registration |
| uPSC_extctrls.pas | 6 | TPanel/TTimer registration |
| uPSC_forms.pas | 6 | TForm registration |
| uPSC_graphics.pas | 6 | TCanvas/TFont/TBrush registration |
| uPSC_comobj.pas | 6 | COM object registration |
| uPSC_dll.pas | 6 | DLL import registration |
| uPSR_std.pas | 6 | Standard type wrappers (runtime) |
| uPSR_classes.pas | 6 | TStrings/TStringList wrappers |
| uPSR_controls.pas | 6 | TControl/TWinControl wrappers |
| uPSR_stdctrls.pas | 6 | TEdit/TLabel/TButton wrappers |
| uPSR_extctrls.pas | 6 | TPanel/TTimer wrappers |
| uPSR_forms.pas | 6 | TForm wrappers |
| uPSR_graphics.pas | 6 | TCanvas/TFont/TBrush wrappers |
| uPSR_comobj.pas | 6 | COM wrappers |
| uPSR_dll.pas | 6 | DLL call wrappers |

### Inno script integration (in-tree code)

| File | Stub lines | Original lines | Purpose |
|------|-----------|---------------|---------|
| ScriptRunner.pas | 103 | 543 | Drives TPSDebugExec, loads compiled scripts, runs functions, handles DLL imports and debug breakpoints |
| ScriptCompiler.pas | 73 | 464 | Drives TPSPascalCompiler, registers all Inno types/functions, compiles [Code] to bytecode |
| ScriptClasses_C.pas | 6 | 642 | Registers VCL/LCL classes with compiler: TForm, TWinControl, TButton, TLabel, TEdit, TCheckBox, TComboBox, TListBox, TMemo, TPanel, TBevel, TTimer, TBitmap, TCanvas, etc. |
| ScriptClasses_R.pas | 6 | 699 | Runtime wrappers for all registered classes — property getters/setters, method dispatch |
| ScriptDlg.pas | 6 | 833 | Custom wizard pages created from script: TWizardPage, TInputQueryWizardPage, TInputOptionWizardPage, TInputDirWizardPage, TInputFileWizardPage, TOutputMsgWizardPage, TOutputMsgMemoWizardPage, TOutputProgressWizardPage |
| ScriptFunc.pas | 6 | 339 | Shared helpers for script function registration |
| ScriptFunc_C.pas | 6 | 277 | Compiler-side registration of ~150 built-in functions |
| ScriptFunc_R.pas | 6 | 1,872 | Runtime implementation of all built-in functions |

### Built-in script functions (all missing, from ScriptFunc_R.pas)

**File system:** FileExists, DirExists, FileSize, FileSearch,
FindFirst/FindNext/FindClose, DeleteFile, RenameFile, CreateDir,
RemoveDir, FileCopy, GetCurrentDir, SetCurrentDir, ForceDirectories

**Registry:** RegKeyExists, RegValueExists, RegQueryStringValue,
RegQueryMultiStringValue, RegQueryDWordValue, RegQueryBinaryValue,
RegWriteStringValue, RegWriteExpandStringValue, RegWriteMultiStringValue,
RegWriteDWordValue, RegWriteBinaryValue, RegDeleteKey, RegDeleteValue

**System info:** GetWindowsVersion, GetWindowsVersionString, IsWin64,
ProcessorArchitecture, IsAdminLoggedOn, IsPowerUserLoggedOn,
GetUserNameString, GetComputerNameString, GetSystemDir, GetWindowsDir,
GetTempDir, GetEnv, GetCmdTail

**UI dialogs:** MsgBox, TaskDialogMsgBox, InputQuery, InputBox,
BrowseForFolder, GetOpenFileName, GetSaveFileName, SelectDisk,
CreateCustomForm

**Shell operations:** ShellExec, Exec, ShellExecAsOriginalUser,
ExecAsOriginalUser, ExtractTemporaryFile, ExtractTemporaryFiles,
RenameFile

**String operations:** Pos, Copy, Length, Delete, Insert, Trim,
TrimLeft, TrimRight, UpperCase, LowerCase, CompareStr, CompareText,
Format, IntToStr, StrToInt, StrToIntDef, Chr, Ord, FloatToStr,
StringReplace, StringOfChar, AddBackslash, RemoveBackslash

**Path operations:** ExtractFilePath, ExtractFileDir, ExtractFileName,
ExtractFileExt, ExtractFileDrive, ChangeFileExt, ExpandFileName,
AddBackslash, RemoveBackslash, ExpandConstant

**Installation control:** Abort, WizardDirValue, WizardGroupValue,
WizardSetupType, WizardSelectedComponents, WizardSelectedTasks,
WizardIsComponentSelected, WizardIsTaskSelected, GetPreviousData,
SetPreviousData, Log

**DLL calling:** External DLL function imports via `external`
keyword in [Code] — any Win32 API or third-party DLL callable
from script

### Uninstaller script events (also hollow)

- `InitializeUninstall` — pre-uninstall validation
- `DeinitializeUninstall` — cleanup after uninstall
- `InitializeUninstallProgressForm` — customize progress UI
- `CurUninstallStepChanged` — step change notifications
- `UninstallNeedRestart` — script-controlled restart after uninstall

### What this blocks

- Any installer with a `[Code]` section: all script logic silently skipped
- Custom wizard pages: don't exist
- Serial number validation: always fails
- Password checking via script: always passes
- Pre-install checks: skipped
- Custom ready memo text: shows default
- All wizard button event hooks: return defaults
- DLL calls from script: no-op
- ~150 built-in functions: don't exist
- Uninstaller script events: skipped

### What still works without PascalScript

- Installers with no `[Code]` section work normally
- All declarative sections: [Files], [Registry], [Icons], [Run],
  [Dirs], [INI], [InstallDelete], [UninstallDelete], [Tasks],
  [Components], [Types], [Languages], [Messages], [CustomMessages]
- Check/install functions using built-in flags (not script)
- Command-line compilation via ISCC.exe
