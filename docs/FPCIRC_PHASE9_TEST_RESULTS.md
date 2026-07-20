# fpc264irc Phase 9 Test Results — Bug Report

**From:** netmodem2irc project (verta1878)
**Date:** 2026-07-19
**Tested:** fpc264irc-r31-repo-phase9-complete-20260719.zip
**Test project:** Inno Setup 5.6.1 FPC port (5 build targets)

---

## Test Results

| Target | Size | Status |
|--------|------|--------|
| ISCC.exe (console compiler) | 437KB | ✅ Clean |
| ISCmplr.dll (compiler DLL) | 735KB | ✅ Clean (after Inno-side fix) |
| Setup.exe (installer GUI) | 3.2MB | ✅ Clean |
| SetupLdr.exe (setup loader) | 313KB | ✅ Clean |
| Compil32.exe (IDE) | — | ❌ 5 errors in ScintEdit.pas |
| test_lcl.exe (LCL basic) | 2.6MB | ✅ Clean |
| test_ctl3d.exe (Ctl3D test) | 2.6MB | ✅ Clean |
| test_cwh.exe (CreateWindowHandle) | 2.6MB | ✅ Clean |

**4 of 5 Inno targets compile. All VCL compat additions work.**

---

## BUG-D: RTL/LCL PPU Version Skew — STILL OPEN

**Severity:** Critical

Same issue as Follow-Up #2. The shipped LCL PPUs (404, built Jul 18)
don't match the shipped RTL PPUs (587, built Jul 19). First error:

```
Recompiling LCLIntf, checksum changed for ShellApi
Fatal: Can't find unit LCLIntf used by Forms
```

**Workaround applied:** Rebuilt LCL from source (59 LazUtils + 124
LCL base + 90 Win32 WS = 273 PPUs) using only RTL PPU paths (no
`-Fu$PKG/*/src`). After rebuild, all 4 targets compiled clean.

**Fix needed:** Rebuild LCL after RTL in the release pipeline. The
build order must be: RTL → packages → LazUtils → LCL base → widgetset.
Ship the resulting PPUs. The current zip ships PPUs from two different
build sessions.

---

## BUG-E: build-lcl.sh Package Source Paths — STILL OPEN

**Severity:** High

`build-lcl.sh` still includes `-Fu$PKG/fcl-image/src` and 9 other
package source directories. Since the RTL now ships prebuilt PPUs
for those packages (the 587 → 143 expansion includes fcl-image,
paszlib, etc.), the LCL build recompiles them from source with
different checksums. Downstream projects find the RTL copy →
checksum mismatch.

**Fix:** Remove `-Fu$PKG/*/src` paths. The 587 RTL PPUs already
cover them.

---

## BUG-F: .gitignore Lazarus PPU Exceptions — STILL OPEN

**Severity:** Medium

Still no `!bin/lazarus/**/*.ppu` or `!bin/lazarus/**/*.o` exceptions.

---

## Confirmed Working

### Ctl3D / ParentCtl3D on TWinControl ✅

```pascal
Self.Ctl3D := False;
Self.ParentCtl3D := True;
```
Compiles, links, no errors. Properties store values correctly.

### OEMConvert on TCustomEdit ✅

```pascal
E := TEdit.Create(Self);
E.OEMConvert := True;
```
Compiles clean.

### CreateWindowHandle override ✅

```pascal
TMyControl = class(TWinControl)
protected
  procedure CreateWindowHandle(const Params: TCreateParams); override;
end;
```
Compiles with `uses LCLType` (for TCreateParams). Note: `CreateWnd`
does not call `CreateWindowHandle`, so overrides compile but don't
execute. This is acceptable as a compile-compat shim — documented
in Phase 9 audit.

### paswstring IFDEF overloads ✅

The `{$IFNDEF MSWINDOWS}` conditional correctly provides 4-param
on Unix and 3-param on Windows. LazUtils compiles clean against
the shipped system.ppu.

### ustringh.inc 3-param revert ✅

Source matches shipped binary. No ABI mismatch.

---

## Inno-Side Fixes Applied During Testing

These are changes to the Inno source, not fpc264irc issues:

1. **ScriptCompiler.pas** expanded from 18 → 78 lines. Added
   `CheckExports`, `Compile(ScriptText, CompiledText, DebugInfo)`,
   `FunctionFound`, and 5 event properties with correct `of object`
   signatures matching Compile.pas expectations.

2. **Compile.pas** — added `LCLStrConsts` to uses clause. The
   `SmkcBkSp`, `SmkcTab`, `SmkcAlt` etc. resourcestrings are in
   Delphi's `Menus` unit but LCL puts them in `LCLStrConsts`.

---

## Remaining Failure: Compil32.exe (Phase 8, Not Blocking)

5 errors in `Components/ScintEdit.pas` (Scintilla editor wrapper):

```
ScintEdit.pas(753):  Illegal type conversion: "Byte" to "TScintIndicatorNumbers"
ScintEdit.pas(1753): Incompatible type for arg no. 2: Got "POINT", expected "LPPOINT"
ScintEdit.pas(1798): Identifier not found "SListIndexError"
ScintEdit.pas(1804): Identifier not found "SListIndexError"
ScintEdit.pas(1955): Illegal type conversion: "TScintIndicatorNumbers" to "Byte"
```

**Analysis:**

- **TScintIndicatorNumbers ↔ Byte casts (lines 753, 1955):** FPC is
  stricter than Delphi about casting between `set` types and `Byte`.
  `TScintIndicatorNumbers = set of TScintIndicatorNumber` (3-element
  enum, fits in a byte). Delphi allows direct `Byte(ASet)` and
  `TSet(AByte)` casts. FPC does not. **Not an fpc264irc issue** —
  this is standard FPC behavior. Fix is in the Inno source.

- **POINT vs LPPOINT (line 1753):** `DragQueryPoint` expects
  `LPPOINT` (pointer to POINT) in the FPC RTL declaration, but the
  code passes a POINT value. Delphi's declaration takes a `var`
  parameter. **Not an fpc264irc issue** — FPC's Win32 API bindings
  use pointer types where Delphi uses var parameters.

- **SListIndexError (lines 1798, 1804):** This resourcestring is in
  FPC's `RTLConsts` unit (via `rtlconst.inc`). Delphi has it in
  `Consts` or `RTLConsts`. Our `Consts.pas` wrapper doesn't include
  it. **Not an fpc264irc issue** — Inno source fix needed.

All 5 errors are Inno porting issues, not fpc264irc bugs. Compil32
is Phase 8 (IDE) and not blocking the installer targets.

---

## Summary

| Bug | Severity | Status | Notes |
|-----|----------|--------|-------|
| BUG-D: RTL/LCL PPU skew | Critical | **Still open** | Same as Follow-Up #2. LCL rebuilt manually. |
| BUG-E: build-lcl.sh pkg paths | High | **Still open** | Same as Follow-Up #2. |
| BUG-F: .gitignore lazarus | Medium | **Still open** | Same as Follow-Up #1 (BUG-A). |
| Ctl3D / ParentCtl3D | — | **Working** ✅ | Confirmed. |
| OEMConvert | — | **Working** ✅ | Confirmed. |
| CreateWindowHandle | — | **Working** ✅ | Compile-compat only, as designed. |
| paswstring IFDEF | — | **Working** ✅ | Confirmed. |
| ustringh.inc revert | — | **Working** ✅ | Confirmed. |

**Bottom line:** The VCL compat work is solid. 4/5 Inno targets
compile clean after an LCL rebuild. The blocking issue is the build
pipeline — LCL PPUs ship stale. Once BUG-D is fixed (rebuild LCL
after RTL), downstream projects will compile out of the box.
