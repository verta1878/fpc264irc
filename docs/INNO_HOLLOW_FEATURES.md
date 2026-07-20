# Inno Setup 5.6.1 FPC Port — Hollow Features List

Compiles. Does not run. These features have stub code that satisfies
the compiler but produces no runtime behavior.

---

## 1. PascalScript [Code] Section — HOLLOW

**22 stub files, ~6,500 lines of original code missing.**

The entire scripting engine is empty. Any installer that uses a
`[Code]` section will silently skip all script logic.

### What doesn't work:

**Wizard event hooks** (Wizard.pas, 11 call sites):
- `InitializeSetup` — script-controlled startup logic, skipped
- `DeinitializeSetup` — script cleanup, skipped
- `NextButtonClick` — custom validation on Next, always returns True
- `BackButtonClick` — custom validation on Back, always returns True
- `CancelButtonClick` — custom cancel handling, skipped
- `ShouldSkipPage` — dynamic page skipping, always returns default
- `CurPageChanged` — page change notifications, skipped
- `CurStepChanged` — install step notifications, skipped
- `CheckPassword` — script-based password validation, always passes
- `CheckSerial` — serial number validation, always fails
- `PrepareToInstall` — pre-install checks, skipped
- `UpdateReadyMemo` — custom ready memo text, returns default
- `NeedRestart` — script-controlled restart, returns default

**Install event hooks** (Main.pas, 13 call sites):
- `RegisterExtraCloseApplicationsResources` — skipped
- `GetCustomSetupExitCode` — returns default (0)
- Custom message expansion via `[Code]` functions — returns raw text
- DLL imports via `[Code]` — no-op
- Debug breakpoints — no-op

**Custom wizard pages** (ScriptDlg.pas — 833 lines → 6 lines):
- `CreateCustomPage` — doesn't exist
- `CreateInputQueryPage` — doesn't exist
- `CreateOutputMsgPage` — doesn't exist
- `CreateOutputProgressPage` — doesn't exist
- All custom page controls (labels, edits, checkboxes) — don't exist

**Script built-in functions** (ScriptFunc_R.pas — 1,872 lines → 6 lines):
- File operations: `FileExists`, `DirExists`, `FileSize`, etc.
- Registry: `RegQueryStringValue`, `RegWriteStringValue`, etc.
- String operations: `Pos`, `Copy`, `Length`, `Trim`, etc.
- System: `GetWindowsVersion`, `IsWin64`, `ProcessorArchitecture`
- Shell: `ShellExec`, `Exec`, `ShellExecAsOriginalUser`
- UI: `MsgBox`, `TaskDialogMsgBox`, `InputQuery`, `BrowseForFolder`
- Download: `idpDownloadFile` (common plugin)
- All ~150 built-in Pascal functions — none exist

**PascalScript engine** (16 uPS*.pas files — all 6-line stubs):
- Bytecode compiler — doesn't exist
- Bytecode runtime — doesn't exist
- Debugger — doesn't exist
- DLL calling — doesn't exist
- Class registration for Forms/Controls/StdCtrls/ExtCtrls — doesn't exist

### Stub files:

| File | Stub | Original | Missing |
|------|------|----------|---------|
| ScriptRunner.pas | 103 | 543 | 440 lines |
| ScriptCompiler.pas | 73 | 464 | 391 lines |
| ScriptClasses_C.pas | 6 | 642 | 636 lines |
| ScriptClasses_R.pas | 6 | 699 | 693 lines |
| ScriptDlg.pas | 6 | 833 | 827 lines |
| ScriptFunc.pas | 6 | 339 | 333 lines |
| ScriptFunc_C.pas | 6 | 277 | 271 lines |
| ScriptFunc_R.pas | 6 | 1,872 | 1,866 lines |
| uPSCompiler.pas | 9 | ext | — |
| uPSRuntime.pas | 42 | ext | — |
| uPSDebugger.pas | 36 | ext | — |
| uPSUtils.pas | 34 | ext | — |
| uPSC_*.pas (6) | 6 ea | ext | — |
| uPSR_*.pas (6) | 6 ea | ext | — |
| **Total** | **~410** | **~5,669+** | **~5,457+** |

---

## 2. LZMA Decompression — HOLLOW

**2 files, 13 external C functions stubbed to return 0.**

Setup.exe cannot decompress any installer payload. The LZMA
compressor side works (dynamic loading via GetProcAddress in
LZMA.pas), but the decompressor (statically linked C objects in
original) has all functions replaced with empty stubs.

| File | Stub functions |
|------|---------------|
| LZMADecomp.pas | ISLzmaDec_Init, ISLzmaDec_Decode, ISLzmaDec_Free, ISLzma2Dec_Init, ISLzma2Dec_Decode, ISLzma2Dec_Free (6) |
| LZMADecompSmall.pas | Similar set (6) |

Original uses `{$L lzma2/Decoder/ISLzmaDec.obj}` (MSVC COFF).
FPC can't link COFF objects. Needs either MinGW recompile of the
C source or dynamic loading.

---

## 3. DFM Form Resources — HOLLOW

**13 forms with `{$R *.DFM}` disabled.**

All forms compile but have no visual layout at runtime. They will
show as empty windows with no controls positioned.

| Form | Purpose |
|------|---------|
| Main.dfm | Main installer window |
| Wizard.dfm | Install wizard (pages, buttons, panels) |
| NewDisk.dfm | Disk swap dialog |
| SelFolderForm.dfm | Folder selection dialog |
| SelLangForm.dfm | Language selection dialog |
| UninstProgressForm.dfm | Uninstall progress |
| UninstSharedFileForm.dfm | Shared file removal dialog |
| CompForm.dfm | IDE main form (Phase 8) |
| CompOptions.dfm | IDE options (Phase 8) |
| CompSignTools.dfm | IDE sign tools (Phase 8) |
| CompStartup.dfm | IDE startup (Phase 8) |
| CompWizard.dfm | IDE new project wizard (Phase 8) |
| CompWizardFile.dfm | IDE file wizard (Phase 8) |

Options: convert DFM → LFM, or construct forms in code at runtime.

---

## 4. Windows Resources — HOLLOW

**12 .res directives disabled across 4 targets.**

| Target | Missing Resources |
|--------|------------------|
| ISCC.exe | ISCC.res (icon), ISCC.manifest.res (UAC) |
| ISCmplr.dll | ISCmplr.res (version info) |
| Setup.exe | Setup.res (icon), SetupVersion.res (version), IMAGES.RES (wizard bitmaps) |
| SetupLdr.exe | SetupLdr.res, SetupLdrVersion.res, SetupLdrOffsetTable.res |

Without these: no application icons, no version info in file
properties, no UAC manifest, no wizard bitmap images.

Fix: build with `windres` (already in the netmodem2irc toolchain).

---

## 5. SetupCompat.pas — HOLLOW

**24 lines. Two functions with wrong behavior.**

| Function | Stub behavior | Correct behavior |
|----------|--------------|-----------------|
| `ListContains` | `Pos(Item, List) > 0` | Delimiter-aware match (won't false-match "foo" in "foobar") |
| `ExpandSetupMessage` | Returns raw string | Expands `{cm:MessageName}`, `{code:FuncName}`, `{app}`, `{sys}`, etc. |
| `TAlphaBitmap` | Empty class | Alpha-blended bitmap with premultiplied alpha support |

---

## What Actually Works at Runtime

- **ISCC.exe** — compiles .iss scripts to setup packages (no [Code])
- **ISCmplr.dll** — same compiler as a DLL
- **SetupLdr.exe** — locates and launches Setup.exe
- **Compression** — zlib, bzip2, LZMA compressor (not decompressor)
- **Crypto** — MD5, SHA1, ArcFour
- **Int64Em** — 64-bit integer emulation
- **File operations** — FileClass (TFile, TTextFileReader)
- **Path functions** — PathFunc (expand, extract, combine)
- **Common functions** — CmnFunc, CmnFunc2
- **Version info reading** — VerInfo
- **Registry operations** — InstFnc2 (COM/ActiveX, PROPVARIANT)
- **Fusion/GAC** — LibFusion (assembly cache)
- **Undo logging** — Undo.pas
