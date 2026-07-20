# Inno Setup FPC Port — Follow-Up for fpc264irc Author

**From:** netmodem2irc project (verta1878)
**Date:** 2026-07-19
**Checked against:** current released branch (commit f63324c0, "FPC 2.6.4irc r3.1")

This follows up the initial Inno port bug report with issues found
in the **released branch itself**, not just the Inno code.

---

## BUG-A: .gitignore strips ALL LCL PPUs and .o files from release

**Severity:** Critical — Win32 LCL is unusable from a fresh clone

`.gitignore` has:
```
*.ppu
!bin/units/**/*.ppu
*.o
!bin/units/**/*.o
```

The exception covers `bin/units/` (RTL — 143 PPUs present, correct).
But LCL PPUs live under `bin/lazarus/units/` which is **not covered**.

**Result:** Fresh clone has 0 LCL PPUs, 0 LCL .o files. The
`bin/lazarus/units/i386-win32/lcl/` directory contains only `.lfm`
and `.rst` resource files. The README in `bin/lazarus/units/i386-linux/`
says "win32 target ships complete with .o files and links out of the
box" — but it doesn't, because gitignore ate them.

**Fix:** Add to `.gitignore`:
```
!bin/lazarus/**/*.ppu
!bin/lazarus/**/*.o
```

Then re-add the LCL PPUs:
```
git add -f bin/lazarus/units/i386-win32/lcl/*.ppu
git add -f bin/lazarus/units/i386-win32/lcl/*.o
git add -f bin/lazarus/units/i386-win32/lcl/win32/*.ppu
git add -f bin/lazarus/units/i386-win32/lcl/win32/*.o
git add -f bin/lazarus/units/i386-win32/lazutils/*.ppu
git add -f bin/lazarus/units/i386-win32/lazutils/*.o
```

This is the same class of bug as the earlier `!bin/units/**/*.ppu`
fix (documented in `docs/gitignore_ppu_fix.md`), just for the
lazarus path.

---

## BUG-B: paswstring.pas source/binary mismatch — LCL cannot build from release source

**Severity:** Critical — blocks any LCL rebuild from source

The released source has a three-way inconsistency:

| File | Signature | cp param? |
|------|-----------|-----------|
| `src/rtl/inc/ustringh.inc` (type definition) | `Wide2AnsiMoveProc: procedure(...cp:TSystemCodePage;len:SizeInt)` | **YES** |
| `src/rtl/win/syswin.inc` (Win32 implementation) | `procedure Win32Unicode2AnsiMove(...len:SizeInt)` | **NO** |
| `src/lazarus/lazutils/paswstring.pas` (LCL override) | `procedure Wide2AnsiMove(...cp:TSystemCodePage;len:SizeInt)` | **YES** |
| Shipped `bin/units/i386-win32/system.ppu` | "locked to r3's system.o" per bugsfixed.md | **NO** (3-param) |

The shipped system.ppu uses 3-param callbacks (no `cp`). This
matches syswin.inc. But paswstring.pas has 4-param signatures
(with `cp`), matching ustringh.inc's type definition.

**Result:** Compiling paswstring.pas against the shipped system.ppu
fails because the `TWideStringManager` record in the PPU has 3-param
proc fields, but paswstring.pas defines 4-param procedures and tries
to assign them to `widestringmanager.*MoveProc`.

This is why LCL PPUs cannot be built from a fresh clone —
paswstring is a LazUtils dependency that every LCL unit pulls in.

**What we did (netmodem2irc local fix):** Reverted paswstring.pas
to 3-param signatures (removed `cp:TSystemCodePage` from all four
Move procedures). This matches the shipped system.ppu. After this
single change, all 175 LCL PPUs build successfully.

**Recommended fix:** Since r3.1 locked the system unit to 3-param
(bugsfixed.md: "Codepage patches deferred to Phase 6"), revert
paswstring.pas to match:

```diff
-procedure Wide2AnsiMove(source:pwidechar;var dest:ansistring;cp:TSystemCodePage;len:SizeInt);
+procedure Wide2AnsiMove(source:pwidechar;var dest:ansistring;len:SizeInt);

-procedure Ansi2WideMove(source:pchar;cp:TSystemCodePage;var dest:widestring;len:SizeInt);
+procedure Ansi2WideMove(source:pchar;var dest:widestring;len:SizeInt);

-procedure Unicode2AnsiMove(source:pwidechar;var dest:ansistring;cp:TSystemCodePage;len:SizeInt);
+procedure Unicode2AnsiMove(source:pwidechar;var dest:ansistring;len:SizeInt);

-procedure Ansi2UnicodeMove(source:pchar;cp:TSystemCodePage;var dest:UnicodeString;len:SizeInt);
+procedure Ansi2UnicodeMove(source:pchar;var dest:UnicodeString;len:SizeInt);
```

Also revert ustringh.inc to match (or note that the shipped PPU
doesn't match the source). The source and binary must agree.

---

## BUG-C: ustringh.inc source doesn't match shipped system.ppu

**Severity:** High — anyone rebuilding RTL from source gets a
different ABI than the shipped PPU

`src/rtl/inc/ustringh.inc` defines `TUnicodeStringManager` with
4-param proc types (with `cp:TSystemCodePage`). The shipped
system.ppu was built from r3 source which had 3-param types.

If a downstream project needs to rebuild system.ppu (e.g. for a
platform fix), the rebuilt PPU will have 4-param types but
syswin.inc assigns 3-param functions → stack corruption → Runtime
Error 216 (the exact bug that r3.1 fixed by locking system.o).

**Fix:** Either revert ustringh.inc to 3-param (matching shipped
PPU and syswin.inc), or fix syswin.inc to 4-param and rebuild
system.ppu. The current state where source and binary disagree
will bite anyone who recompiles.

---

## Summary

| # | Bug | Severity | Impact |
|---|-----|----------|--------|
| A | .gitignore missing `!bin/lazarus/**` exceptions | Critical | No LCL PPUs in fresh clone |
| B | paswstring.pas 4-param vs shipped system.ppu 3-param | Critical | LCL cannot build from source |
| C | ustringh.inc source ≠ shipped system.ppu ABI | High | RTL rebuild produces wrong binary |

All three bugs interact: A means LCL PPUs are missing, B means
you can't rebuild them, and C means you can't fix B by rebuilding
the system unit without also fixing syswin.inc.

**Our netmodem2irc workaround** (applied locally, not pushed):
1. Revert paswstring.pas to 3-param (fixes B)
2. Rebuild LCL PPUs (175 PPUs, works after fix 1)
3. LCL PPUs exist locally but can't be pushed because of A

Once the author fixes A and B in the release branch, downstream
projects (netmodem2irc, Inno Setup port) can build from a clean
clone.
