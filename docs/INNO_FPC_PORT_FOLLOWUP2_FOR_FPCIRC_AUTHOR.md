# Inno Setup FPC Port — Follow-Up #2 for fpc264irc Author

**From:** netmodem2irc project (verta1878)
**Date:** 2026-07-19
**Tested against:** fpc264irc-r31-repo-phase9-complete-20260719.zip

---

## What's Fixed (confirmed working)

The phase 9 zip fixes all three bugs from Follow-Up #1:

- **BUG-B (paswstring):** Fixed via `{$IFNDEF MSWINDOWS}` — 4-param
  on Unix, 3-param on Windows. Matches each platform's system unit.
  Clean solution.

- **BUG-C (ustringh.inc):** Reverted to 3-param. Source now matches
  shipped system.ppu. Consistent.

- **Ctl3D / ParentCtl3D:** Added as published properties on
  TWinControl in controls.pp (lines 1866-1867, 2110-2112). Storage
  fields FCtl3D/FParentCtl3D with Boolean default True. No-op
  behavior, which is correct — these are Delphi 1 (1995) VCL
  properties that controlled WS_EX_CLIENTEDGE on Windows 3.1/95.
  Inno Setup 5.6.1 targets Delphi 2/5 which had them. Every VCL
  port benefits from this.

- **RTL expanded:** 143 → 587 PPUs. Includes 69+ package units
  (fcl-image, fcl-xml, fcl-base, hash, paszlib, etc.) now prebuilt
  and shipped in bin/units/i386-win32/.

- **ISCC.exe compiles clean:** 437KB, 632 lines, 0.5 sec. ✅

---

## BUG-D: RTL/LCL PPU Version Skew — LCL built against old RTL

**Severity:** Critical — blocks all LCL GUI compilation from the zip

The phase 9 zip ships 587 RTL PPUs (rebuilt Jul 19 06:24) and
1980 LCL PPUs across 7 platforms. But the LCL PPUs were built
**before** the RTL was rebuilt. Timestamps confirm:

```
shellapi.ppu (RTL):    Jul 19 06:24  ← newer
lclintf.ppu  (LCL):    Jul 18 23:37  ← older, references old shellapi checksum
fpreadpng.ppu (RTL):   Jul 19 06:36  ← newer
intfgraphics.ppu (LCL): Jul 18 23:37 ← references old fpreadpng checksum
```

When Setup.dpr compiles, it loads LCL PPUs (intfgraphics) that
reference the OLD fpreadpng/shellapi checksums. The compiler finds
the NEW RTL PPUs (different checksums) → tries to recompile →
can't find LCL source → fatal error.

**Error seen:**
```
Recompiling IntfGraphics, checksum changed for FPReadPNG
Fatal: Can't find unit IntfGraphics used by InterfaceBase
```

**Fix for release pipeline:** Rebuild LCL **after** RTL in the
release process. Order must be: RTL → LazUtils → LCL base →
widgetset. The LCL must see the final RTL PPUs.

---

## BUG-E: build-lcl.sh includes package source paths, causing checksum split

**Severity:** High — even manual LCL rebuild produces broken PPUs

`build-lcl.sh` passes `-Fu$PKG/fcl-image/src` (and 9 other package
source directories) to the compiler. The RTL already ships prebuilt
PPUs for these packages (fpreadpng, fpimage, paszlib, etc.) in
`bin/units/i386-win32/`.

When the compiler sees both `-Fu$RTL` (prebuilt PPUs) and
`-Fu$PKG/fcl-image/src` (source), it recompiles fpreadpng.pp from
source. This produces a **different** fpreadpng.ppu than the one
in `bin/units/i386-win32/`. The LCL's intfgraphics.ppu then
references the LCL-compiled fpreadpng checksum. But downstream
projects (Setup.dpr) find the RTL fpreadpng.ppu → checksum mismatch
→ fatal error.

**Evidence:**
```
md5 bin/lazarus/.../fpreadpng.ppu  52b2ae8b...  (LCL-compiled)
md5 bin/units/.../fpreadpng.ppu    5e4465c7...  (RTL prebuilt)
```
Same size (22,434 bytes), different content.

**Fix:** Remove the `-Fu$PKG/*/src` paths from build-lcl.sh since
those packages are already prebuilt in `bin/units/`. The LCL should
use the RTL PPUs, not recompile from source:

```diff
-PKGS="-Fu$PKG/fcl-base/src -Fu$PKG/fcl-image/src -Fu$PKG/fcl-xml/src \
--Fu$PKG/regexpr/src -Fu$PKG/paszlib/src -Fu$PKG/fcl-process/src \
--Fu$PKG/winunits-base/src -Fu$PKG/hash/src -Fu$PKG/pasjpeg/src \
--Fu$PKG/fcl-db/src/base -Fu$REG \
--Fi$PKG/fcl-process/src/$([ \"$OS\" = win32 ] && echo win || echo unix) \
--Fi$PKG/pasjpeg/src"
+PKGS=""
+# Package PPUs already prebuilt in $RTL (bin/units/i386-$OS/).
+# Do NOT add -Fu to package source dirs — that recompiles them
+# with different checksums than the shipped RTL PPUs.
```

Keep the `-Fi` (include) paths only if LCL source actually needs
them for `.inc` files (check if any LCL unit does
`{$I something.inc}` from pasjpeg or fcl-process).

---

## BUG-F: .gitignore still missing lazarus PPU exceptions

**Severity:** Medium — PPUs present in zip but will be lost on git push

The `.gitignore` still has:
```
*.ppu
!bin/units/**/*.ppu
```

No `!bin/lazarus/**/*.ppu` exception. The 1980 LCL PPUs in the zip
survive because they were included in the archive directly, but any
`git add` / `git push` cycle will strip them. Same issue from
Follow-Up #1 (BUG-A).

**Fix:**
```
!bin/lazarus/**/*.ppu
!bin/lazarus/**/*.o
```

---

## BUG-G: LCL forms.pp output directory mismatch

**Severity:** Low — build artifact location confusion

When compiling forms.pp with `-FU"$OUT/lcl"`, the compiler ignores
the `-FU` flag and writes PPUs to `src/lazarus/lcl/units/i386-win32/`
instead (governed by the Lazarus Makefile's unit output directory).
The build-lcl.sh script handles this by copying afterward, but
direct compilation requires manual copying.

Not a bug per se — just documenting behavior for anyone building
LCL manually outside the script.

---

## Workaround Used (successful)

We rebuilt LCL from source with these steps:

```bash
# 1. LazUtils (59 PPUs)
cd src/lazarus/lazutils
ppc386 -Twin32 -Pi386 -Mobjfpc -Scghi -O1 -dLCL \
  -Fu$RTL -FU$OUT/lazutils -Fi. lazutils.pas

# 2. LCL base (124 PPUs) — NO package source paths
cd src/lazarus/lcl
ppc386 -Twin32 -Pi386 -Mobjfpc -Scghi -O1 -dLCL -dLCLwin32 \
  -Fu$RTL -Fu$OUT/lazutils \
  -Fu. -Fu./widgetset -Fu./interfaces -Fu./interfaces/win32 \
  -Fi. -Fi./include \
  -FU./units/i386-win32 forms.pp
# Then copy units/i386-win32/*.ppu to $OUT/lcl/

# 3. Win32 widgetset (90 PPUs)
cd src/lazarus/lcl/interfaces/win32
ppc386 -Twin32 -Pi386 -Mobjfpc -Scghi -O1 -dLCL -dLCLwin32 \
  -Fu$RTL -Fu$OUT/lazutils \
  -Fu../.. -Fu../../widgetset -Fu$OUT/lcl \
  -Fi../.. -Fi../../include -Fi. \
  -FU$OUT/lcl/win32 win32int.pp
```

Total: 59 + 124 + 90 = 273 PPUs (all consistent with 587-PPU RTL).
After this rebuild, ISCC.exe compiled clean.
Setup.exe compilation reached the **Inno-level errors** (our porting
work) rather than fpc264irc infrastructure failures.

---

## Delphi Version Reference

The Ctl3D/ParentCtl3D properties added to TWinControl originate from
**Delphi 1** (1995, 16-bit). They were present in TWinControl through
the entire Delphi 1–7 lineage, deprecated around Delphi 2009, and
removed in the XE era. Inno Setup 5.6.1 compiles under Delphi 2
(non-Unicode) and Delphi 5 — both of which have Ctl3D.

The OEMConvert property on TCustomEdit is also Delphi 1 era — maps
to the Win16/Win32 ES_OEMCONVERT edit control style. Not added to
LCL in this phase (low priority, workaround in FPCCompat).

---

## Summary

| # | Bug | Severity | Root Cause |
|---|-----|----------|------------|
| D | RTL/LCL PPU version skew | Critical | LCL built before RTL in release pipeline |
| E | build-lcl.sh recompiles package units | High | -Fu to package source dirs conflicts with prebuilt RTL PPUs |
| F | .gitignore missing lazarus exceptions | Medium | Same as Follow-Up #1 BUG-A, still unfixed |
| G | forms.pp ignores -FU flag | Low | Lazarus Makefile controls output dir |
