# fpc264irc Phase 9 — Final Test Report

**From:** netmodem2irc project (verta1878)
**Date:** 2026-07-19
**Tested:** fpc264irc-r31-repo-phase9-complete-20260719.zip (second upload)
**Test project:** Inno Setup 5.6.1 FPC port (5 build targets)

---

## BUG-D: FIXED ✅

LCL PPUs now match the RTL. No manual LCL rebuild needed. All
four installer targets compile straight from the zip after one
minor fix (BUG-H below).

---

## Test Results — Clean Build

All .ppu and .o files deleted before compile. Fresh from zip.

| Target | Size | Lines | Time | Status |
|--------|------|-------|------|--------|
| ISCC.exe | 437KB | 4,404 | 0.2s | ✅ |
| ISCmplr.dll | 749KB | 11,551 | 0.3s | ✅ |
| Setup.exe | 14MB | 34,323 | 1.1s | ✅ |
| SetupLdr.exe | 313KB | 729 | 0.1s | ✅ |
| Compil32.exe | — | — | — | ❌ 5 errors (Inno-side) |
| test_lcl.exe | 14MB | — | — | ✅ |
| test_ctl3d.exe | 14MB | — | — | ✅ |

---

## BUG-H: LCL Resource Files Missing from Output Directory

**Severity:** Low — 4 files, easy copy from source tree

The LCL PPUs in `bin/lazarus/units/i386-win32/` reference .lfm and
.res resource files that are not shipped alongside them. Compilation
fails at link time with:

```
Error: Can't open file '.../lcl/finddlgunit.lfm'
Error: Can't open file '.../lcl/win32/win32wsextdlgs.res'
```

**Missing files:**

```
bin/lazarus/units/i386-win32/lcl/finddlgunit.lfm
bin/lazarus/units/i386-win32/lcl/replacedlgunit.lfm
bin/lazarus/units/i386-win32/lcl/calendarpopup.lfm
bin/lazarus/units/i386-win32/lcl/win32/win32wsextdlgs.res
```

**Source locations:**

```
src/lazarus/lcl/forms/finddlgunit.lfm
src/lazarus/lcl/forms/replacedlgunit.lfm
src/lazarus/lcl/forms/calendarpopup.lfm
src/lazarus/lcl/interfaces/win32/win32wsextdlgs.res
```

**Fix for build-lcl.sh:** Add after the PPU copy step:

```bash
cp "$LCL/forms"/*.lfm "$OUT/lcl/" 2>/dev/null
cp "$LCL/interfaces/$WS"/*.res "$OUT/lcl/$WS/" 2>/dev/null
```

Or add to the release checklist. Once these 4 files are present,
all targets compile without any workaround.

---

## BUG-F: .gitignore — STILL OPEN

No `!bin/lazarus/**/*.ppu` or `!bin/lazarus/**/*.o` exceptions.
LCL PPUs will be stripped on git push.

---

## Compil32.exe Errors (NOT fpc264irc bugs — Inno-side)

5 errors in `Components/ScintEdit.pas`, all standard FPC-vs-Delphi
differences. Documenting for completeness only — no action needed
from fpc264irc author.

**1. Byte ↔ set cast (lines 753, 1955):**
```pascal
TScintIndicatorNumbers = set of TScintIndicatorNumber;  // 0..2
Result := TScintIndicatorNumbers(Indic);  // Byte → set: illegal in FPC
IndByte := Byte(Indicators) shl 5;        // set → Byte: illegal in FPC
```
Delphi allows direct casts between Byte and small set types. FPC
does not. Standard FPC behavior, not a bug.

**2. POINT vs LPPOINT (line 1753):**
```pascal
DragQueryPoint(Message.Drop, P)  // P is POINT, FPC wants LPPOINT
```
FPC's ShellAPI declares `DragQueryPoint(Drop: HDROP; lppt: LPPOINT)`
using a pointer type. Delphi uses `var Point: TPoint`. Different
binding style for the same Win32 API.

**3. SListIndexError not found (lines 1798, 1804):**
```pascal
Error(@SListIndexError, Index);
```
`SListIndexError` is in Delphi's `Consts` unit. FPC has it in
`RTLConsts`. ScintEdit.pas doesn't use either unit.

All 5 fixes are straightforward and belong in the Inno source.

---

## Summary

| Bug | Severity | Status |
|-----|----------|--------|
| BUG-D: RTL/LCL PPU skew | Critical | **FIXED** ✅ |
| BUG-H: 4 resource files missing from LCL output | Low | **Open** |
| BUG-F: .gitignore lazarus exceptions | Medium | **Open** |
| BUG-E: build-lcl.sh pkg source paths | High | **Needs verify** (may be fixed if BUG-D fix changed build order) |

All VCL compat additions (Ctl3D, ParentCtl3D, OEMConvert,
CreateWindowHandle) confirmed working. 4/5 Inno targets compile
clean from a fresh zip with only 4 resource files copied.
