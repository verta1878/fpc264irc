# fpc264irc Phase 9 Audit — VCL Compatibility Additions & Build Pipeline Bugs

**From:** netmodem2irc project (verta1878)
**Date:** 2026-07-19
**Tested against:** fpc264irc-r31-repo-phase9-complete-20260719.zip
**Compared to:** released branch (commit f63324c0, r3.1 on GitHub)

---

## Part 1: What Phase 9 Added (Delphi 1 VCL Compatibility)

Phase 9 adds eight Delphi 1 (1995) VCL properties and methods to the
Lazarus 1.2.6 LCL fork. Stock Lazarus never had these — it only had
`RegisterPropertyToSkip` so DFM loading wouldn't crash on Ctl3D. The
fpc264irc author added them based on our Inno Setup 5.6.1 port report.

All additions are **no-op storage properties** — they compile, they
hold a value, but they don't affect rendering. This is correct: Ctl3D
controlled WS_EX_CLIENTEDGE on Windows 3.1/95, and modern Windows
ignores it. The LCL handles borders through BorderStyle and the
widgetset.

### controls.pp — TWinControl (+6 lines)

```diff
+ FCtl3D: Boolean;
+ FParentCtl3D: Boolean;
  ...
+ // VCL Ctl3D compatibility — controls 3D border appearance (WS_EX_CLIENTEDGE)
+ property Ctl3D: Boolean read FCtl3D write FCtl3D default True;
+ property ParentCtl3D: Boolean read FParentCtl3D write FParentCtl3D default True;
  ...
+ procedure CreateWindowHandle(const Params: TCreateParams); virtual;
```

**Ctl3D** (Delphi 1–7, deprecated D2009, removed XE): Boolean that
toggled 3D sunken borders via WS_EX_CLIENTEDGE. Every TWinControl
descendant inherited it. Inno's DropListBox, NewCheckListBox, and
PasswordEdit all publish it. PascalScript's class registration
(`ScriptClasses_C.pas`) registers it as a runtime-accessible property.

**ParentCtl3D** (Delphi 1–7): When True, the control inherits Ctl3D
from its parent. Same lineage and usage as Ctl3D.

**CreateWindowHandle** (Delphi 1–7): Virtual method called during
VCL handle creation. In LCL, handle creation goes through
`CreateWnd` → `TWSWinControlClass.CreateHandle` (widgetset). The
LCL's `CreateWnd` does **not** call `CreateWindowHandle` — this is
a compile-compatibility shim only. Inno's NewCheckListBox overrides
it to call `UpdateThemeData` after handle creation; that code needs
to move to a `CreateWnd` override to actually run.

### stdctrls.pp — TCustomEdit (+2 lines)

```diff
+ FOEMConvert: Boolean;
  ...
+ property OEMConvert: Boolean read FOEMConvert write FOEMConvert default False;
```

**OEMConvert** (Delphi 1–7): Maps to the Win16/Win32 ES_OEMCONVERT
edit control style. Causes characters typed in the edit to be
converted from ANSI to OEM and back, ensuring that `AnsiToOem`
roundtrips correctly. Only matters for codepage-based ANSI apps
talking to FAT filesystems. Inno's PasswordEdit publishes it.

The property stores the value but doesn't apply ES_OEMCONVERT to
the window style. Our FPCCompat.SetOEMConvert procedure does apply
it via `SetWindowLong` at the Win32 API level — that still works
independently.

### wincontrol.inc (+8 lines)

```pascal
{  Method:  TWinControl.CreateWindowHandle
   VCL compatibility method. In Delphi VCL, CreateWindowHandle is called
   during handle creation. In LCL, CreateWnd handles this instead, so
   code that overrides CreateWindowHandle can be ported to LCL.  }
procedure TWinControl.CreateWindowHandle(const Params: TCreateParams);
begin
  // Default: do nothing — LCL handles window creation in CreateWnd/CreateHandle
end;
```

### Delphi Version History

| Property | Introduced | Deprecated | Removed | Unit |
|----------|-----------|------------|---------|------|
| Ctl3D | Delphi 1 (1995) | Delphi 2009 | XE era | Controls.pas |
| ParentCtl3D | Delphi 1 (1995) | Delphi 2009 | XE era | Controls.pas |
| OEMConvert | Delphi 1 (1995) | Delphi 2009 | XE era | StdCtrls.pas |
| CreateWindowHandle | Delphi 1 (1995) | never | never | Controls.pas |

Inno Setup 5.6.1 targets Delphi 2 (non-Unicode) and Delphi 5, both
of which had all four. Stock Lazarus 1.2.6 (2014) intentionally
omitted them because the LCL design philosophy delegates border
rendering to the widgetset.

---

## Part 2: RTL Changes

### paswstring.pas — Platform-Conditional Overloads (+12 lines)

```diff
+{$IFNDEF MSWINDOWS}
 procedure Wide2AnsiMove(source:pwidechar;var dest:ansistring;cp:TSystemCodePage;len:SizeInt);
+{$ELSE}
+procedure Wide2AnsiMove(source:pwidechar;var dest:ansistring;len:SizeInt);
+{$ENDIF}
```

Same pattern for Ansi2WideMove, Unicode2AnsiMove, Ansi2UnicodeMove.

On Unix, the 4-param signature (with `cp:TSystemCodePage`) is used —
matches `cwstring.pp` which was already fixed in r3.1. On Windows,
the 3-param signature (no `cp`) is used — matches `syswin.inc` and
the shipped `system.ppu` which was locked to r3's 3-param ABI.

This solves Follow-Up #1 BUG-B cleanly.

### ustringh.inc — TUnicodeStringManager Reverted to 3-param (6 lines changed)

```diff
-Wide2AnsiMoveProc : procedure(source:pwidechar;var dest:ansistring;cp:TSystemCodePage;len:SizeInt);
+Wide2AnsiMoveProc : procedure(source:pwidechar;var dest:ansistring;len:SizeInt);
```

Source now matches the shipped system.ppu ABI. Solves Follow-Up #1
BUG-C. Anyone rebuilding the Win32 RTL from source will get the
same binary ABI as the shipped PPU.

### RTL PPU Count: 143 → 587

444 new prebuilt PPUs, primarily fcl-image, fcl-xml, fcl-base,
fcl-process, fcl-db, hash, paszlib, pasjpeg, regexpr, and
winunits-base packages. These were previously only available as
source in `src/packages/` and had to be compiled by downstream
projects.

---

## Part 3: Build Pipeline Bugs (Still Open)

### BUG-D: RTL/LCL PPU Version Skew — CRITICAL

The zip ships 587 RTL PPUs (rebuilt Jul 19 06:24) and 1980 LCL PPUs
(built Jul 18 23:37). The LCL references old RTL checksums.

```
shellapi.ppu  (RTL): Jul 19 06:24 ← rebuilt
lclintf.ppu   (LCL): Jul 18 23:37 ← references old shellapi checksum
```

Any project using LCL gets:
```
Recompiling LCLIntf, checksum changed for ShellApi
Fatal: Can't find unit LCLIntf used by Forms
```

**Fix:** Rebuild LCL after RTL in the release pipeline.

### BUG-E: build-lcl.sh Recompiles Package Units — HIGH

The script passes `-Fu$PKG/fcl-image/src` (and 9 other source dirs).
Since the RTL now ships prebuilt PPUs for these packages, the compiler
finds both the source and the PPU. It recompiles from source, producing
a fpreadpng.ppu with a different checksum than the RTL's copy:

```
LCL-compiled fpreadpng.ppu:  md5 52b2ae8b...
RTL prebuilt fpreadpng.ppu:  md5 5e4465c7...
```

Downstream projects find the RTL copy → checksum mismatch → crash.

**Fix:** Remove `-Fu$PKG/*/src` from build-lcl.sh. The 587 RTL PPUs
already include these packages. The LCL should link against the
prebuilt PPUs, not recompile from source.

### BUG-F: .gitignore Missing Lazarus Exceptions — MEDIUM

Still no `!bin/lazarus/**/*.ppu` exception. PPUs survive in the zip
but will be stripped by git.

### BUG-G: CreateWindowHandle Not Called by CreateWnd — LOW

The new `CreateWindowHandle` virtual method is declared and has an
implementation (empty body), but LCL's `CreateWnd` does not call it.
VCL code that overrides `CreateWindowHandle` will compile but the
override will never execute. This is fine as a compile shim, but
the comment should note that ported code must move the logic to
`CreateWnd`.

---

## Our LCL Rebuild Workaround

After fixing BUG-D and BUG-E locally:

```
LazUtils:     59 PPUs  (rebuilt, consistent with 587-PPU RTL)
LCL base:    124 PPUs  (rebuilt without -Fu$PKG source paths)
Win32 WS:     90 PPUs  (rebuilt)
Total:       273 PPUs

ISCC.exe:    437KB  ✅  (632 lines, 0.5 sec)
Setup.exe:   not yet — LCL rebuild got us past infrastructure errors,
             now hitting Inno-level porting errors (the real work)
```

---

## Summary Table — All Bugs Across Both Follow-Ups

| # | Bug | Severity | Filed In | Status |
|---|-----|----------|----------|--------|
| A | .gitignore missing lazarus PPU exceptions | Critical | Follow-Up #1 | **Open** (= BUG-F) |
| B | paswstring 4-param vs system.ppu 3-param | Critical | Follow-Up #1 | **Fixed** (IFDEF) |
| C | ustringh.inc source ≠ shipped system.ppu | High | Follow-Up #1 | **Fixed** (reverted) |
| D | RTL/LCL PPU version skew | Critical | Follow-Up #2 | **Open** |
| E | build-lcl.sh recompiles packages | High | Follow-Up #2 | **Open** |
| F | .gitignore (same as A) | Medium | Follow-Up #2 | **Open** |
| G | CreateWindowHandle not called by CreateWnd | Low | Follow-Up #2 | **Open** (by design) |

### VCL Compat Additions — All Confirmed Working

| Addition | File | Lines | Origin | Behavior |
|----------|------|-------|--------|----------|
| Ctl3D | controls.pp | +2 | Delphi 1 (1995) | No-op storage |
| ParentCtl3D | controls.pp | +2 | Delphi 1 (1995) | No-op storage |
| CreateWindowHandle | controls.pp + wincontrol.inc | +2+8 | Delphi 1 (1995) | No-op virtual |
| OEMConvert | stdctrls.pp | +2 | Delphi 1 (1995) | No-op storage |
| paswstring IFDEF | paswstring.pas | +12 | r3.1 fix | Platform-conditional |
| ustringh revert | ustringh.inc | 6 changed | r3.1 fix | ABI consistency |
