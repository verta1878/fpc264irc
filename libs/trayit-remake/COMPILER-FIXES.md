# COMPILER-FIXES.md — fpc264irc toolchain: what was done and why

Compiler used: [verta1878/fpc264irc](https://github.com/verta1878/fpc264irc)
(Free Pascal 2.6.4 preservation fork, r4, `ppc386 -iW` → `2.6.4irc-r3 (2026-07-12)`),
cross-compiling from x86_64 Linux with the fork's bundled compilers and
binutils. **No compiler or RTL source code had to be modified.** Everything
below is a build/tooling fix, each one captured in `fpc264irc-changes.diff`
and reproducible via the added `tools/build-fpcres.sh`.

## 1. Bundled binaries ship without the executable bit

Fresh `git clone` leaves `bin/ppc386`, `bin/ppcx64` and everything under
`bin/tools/*/` mode `0644`, so the very first invocation fails with
`Permission denied`.

**Fix:** `chmod +x bin/ppc386 bin/ppcx64 bin/tools/<target>/*`.
These are the `M` (mode `100644 → 100755`) entries in the diff.

## 2. Bundled native x86_64-linux units are stale (checksum mismatch)

Any native compile that pulls in `sysutils` against the shipped
`bin/units/x86_64-linux` dies with:

```
Recompiling Unix, checksum changed for BaseUnix
unix.pp(31,3) Fatal: Can't find unit Unix used by sysutils
```

The shipped `.ppu` files were built by an earlier compiler revision than
the bundled r3 `ppcx64`; interface checksums no longer match, FPC tries
to recompile `Unix` from source it does not have on the path, and aborts.
(The *cross* unit sets — `i386-win32`, `i386-go32v2` — are fine.)

**Fix:** rebuild the native RTL exactly as the repo README says:

```bash
cd src/rtl
make all OS_TARGET=linux CPU_TARGET=x86_64 FPC=$PWD/../../bin/ppcx64 BINUTILSPREFIX=
```

then compile native programs with `-Fu src/rtl/units/x86_64-linux`.

## 3. `cwstring.pp` does not compile in the fork's native RTL

The RTL rebuild above stops at:

```
cwstring.pp(801,26) Error: Incompatible types:
  got "<procedure(PChar,var WideString,Int64)>"
  expected "TUnicodeStringManager.<procedure(PChar,Word,var WideString,Int64)>"
```

Root cause: the fork's Phase-1 codepage-aware strings changed the
`TUnicodeStringManager` callback signatures (extra `Word` codepage
parameter, `UnicodeString` instead of `WideString`), but the Unix
`cwstring` widestring manager was never updated to match — a genuine
fork bug, upstream candidate.

**Workaround (no source change needed here):** `cwstring` is only needed
by programs that install the C-library widestring manager. Neither
`fpcres` nor anything in this project uses it, so the RTL make is simply
allowed to fail *after* the 59 core units (`system`, `sysutils`,
`classes`, `unix`, `baseunix`, …) are built. `tools/build-fpcres.sh`
verifies those core units exist and continues.

## 4. `fpcres` is missing from the bundled i386-win32 toolchain

Linking a win32 program with a resource (`{$R trayit_r.res}` for the
application icon) fails:

```
Error: resource compiler ".../i386-win32-fpcres" not found, switching to external mode
```

`bin/tools/i386-win32/` ships `as`, `ld`, `ar` — but not `fpcres`, which
FPC 2.6.4 requires to turn a `.res` into a linkable COFF object, and the
"external mode" fallback (`windres`) is not bundled either.

**Fix:** build `fpcres` from the fork's own source against the rebuilt
native RTL and the `fcl-res` package sources, then install it under the
cross-prefix name:

```bash
cd src/utils/fpcres
../../../bin/ppcx64 -O2 \
  -Fu../../rtl/units/x86_64-linux \
  -Fu../../packages/fcl-res/src -Fi../../packages/fcl-res/src fpcres.pas
cp fpcres ../../../bin/tools/i386-win32/i386-win32-fpcres
```

Automated by the new `tools/build-fpcres.sh`.

## 5. FPC does not find cross tools through an absolute `-XP` prefix

With `-XP/abs/path/to/i386-win32-`, the compiler *prints* the full
concatenated fpcres path in its error yet still reports it "not found" —
2.6.4 resolves utilities by searching `PATH` for the prefixed name
rather than statting the prefixed absolute path (works for as/ld, which
go through a different lookup, but not for the resource compiler).

**Fix:** put the tool directory on `PATH` and use a *relative* prefix:

```bash
PATH="$PWD/bin/tools/i386-win32:$PATH" \
bin/ppc386 -Twin32 -Fubin/units/i386-win32 -XPi386-win32- prog.pas
```

## 6. `fpcres` silently rejects `.res` files with a non-canonical empty header

A `.res` produced by a custom generator was refused with **exit code 2
and no error message** (fpcres' error text goes to an internal stderr
handle that produced no output here). Cause: the mandatory 32-byte empty
resource entry at the start of the file had non-zero `MemoryFlags`
(0x1030) and `Language` (0x0409). `windres` writes zeros there, and
fpcres' `.res` reader treats anything else as an unknown input format.

**Fix (in the generator, not the compiler):** zero every field of the
empty header except `HeaderSize=0x20` and the two `0xFFFF/0x0000`
type/name ordinals:

```
00 00 00 00 20 00 00 00 ff ff 00 00 ff ff 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
```

After this, `fpcres file.res -o file.o -of coff -a i386` produces a valid
`.rsrc` COFF object and the icon links cleanly (verified: PE contains
`RT_ICON` ×3 + `RT_GROUP_ICON`, subsystem GUI).

## 7. What was verified working, per target

| Target | RTL units used | Link tools | Result |
|---|---|---|---|
| i386-win32 | bundled `bin/units/i386-win32` | bundled MinGW binutils + built fpcres | `trayit_r.exe` (GUI, iconed), `traydemo.exe` (console) |
| x86_64-linux | rebuilt `src/rtl/units/x86_64-linux` | system binutils | `traydemo` builds **and runs** |
| i386-go32v2 (DOS) | bundled `bin/units/i386-go32v2` | bundled DJGPP binutils | `traydemo.exe` (MZ/COFF, go32 extender) |

The `utrayit` unit compiles on all three (Windows branch, Unix branch,
stub branch respectively), which covers every branch of its per-OS
`{$IFDEF}` code; remaining fork targets (freebsd, emx/OS2, i8086-msdos)
use the same Unix or stub branches.

## 8. Windows XP support (application-level, verified against the PE)

The toolchain output is XP-loadable as-is: the bundled ld 2.41 emits
`MajorOperatingSystemVersion`/`MajorSubsystemVersion` **4.0** (checked
with pefile), well under XP's 5.1 ceiling. The only XP breakage was in
the application: a static import of `QueryFullProcessImageNameW`
(Vista+) would make XP's loader refuse to start `trayit_r.exe`. Fixed by
resolving it at runtime with `GetProcAddress`, falling back to
`psapi.dll!GetModuleFileNameExW` on XP, and widening the `OpenProcess`
rights fallback (`PROCESS_QUERY_LIMITED_INFORMATION` is Vista+; XP's
`GetModuleFileNameExW` needs `PROCESS_QUERY_INFORMATION or
PROCESS_VM_READ`). Post-fix pefile scan confirms zero Vista-or-later
static imports; every remaining import (including `SetWinEventHook`,
`RegisterShellHookWindow`, `Shell_NotifyIconW` with the 936-byte V2
struct) exists on XP. `utrayit.pas` needed no changes - it only ever
used Win2000-era APIs.

One pitfall found (and fixed) in the XP fallback itself: in
`{$mode objfpc}`, `@procvar` yields the address **of the variable** -
never nil - unlike Delphi mode, where it yields the stored code pointer.
The dynamic-API nil checks were written as `if @pQFPIN <> nil`, which is
always true; on XP that dereferences a nil function pointer on the first
trayed window, and the psapi fallback (`if @pQFPIN = nil`, always false)
could never load. All three checks now use `Assigned()` - see
`trayit_r.diff`.
