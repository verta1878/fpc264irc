# fpc264irc i386-os2 native (-Tos2) unit build kit — byte, 2026-10-01, rewritten 2026-10-07

Rebuilds all 219 units of `bin/units/i386-os2` from `src/` and packs them the way the repo ships them
(`.ppu` + `libp<unit>.a`, `prt0.o`/`prt1.o`). Linux x86_64 host, repo-relative, no paths outside the repo.

```
tools/os2-native-build/build.sh [out dir]      # default: $TMPDIR/fpc264irc-os2/units (bin/units/i386-os2 is not touched)
```

| Step | What |
|---|---|
| 1 | `system.ppu` bootstrapped from `src/rtl/os2/system.pas` (`-Us`) |
| 2 | `drive.py <repo> <out>`: every other unit in `unitlist.txt`, pass after pass until nothing new builds (3 passes) |
| 3 | each `.s` assembled with `bin/tools/i386-os2/as` (GNU as 2.30, a.out) |
| 4 | `tools/smartpack/pack-units.sh`: `<unit>.o` -> `libp<unit>.a` with `bin/tools/i386-emx/emx-ar` (a.out symbol index), `.ppu` rewritten to link the archive |
| 5 | `prt0.o` from `src/rtl/os2/prt0.as`, `prt1.o` from `src/rtl/emx/prt1.as` (2.6.4 keeps prt1 under emx) |

Flags: `-Tos2 -Pi386 -s -O2 -Ur -n -FU<out> -FE<out> -Fu<out>`, `-Fi` for rtl/inc, rtl/i386, rtl/objpas (+sysutils, classes,
unicode), rtl/os2, packages/fv/src, and per unit `-Fi` <srcdir>, <srcdir>/os2, <srcdir>/inc, <srcdir>/../inc.
`-Ur` (release units) stops the system.pas recompile cascade, so rtl/os2 can be on the include path.
`graph` is built like `tools/graph-304-build` does it: no `-O2`, plus `-Fi src/packages/graph/src/inc`.

## Unit set (`unitlist.txt`, 219)
The 209 units of the 2026-10-01 native rebuild plus 10 fcl-res units added 2026-10-02:
`groupcursorresource groupiconresource groupresource icocurtypes newexe resdatastream resfactory resmerger
resourcetree stringtableresource`. With them, **`resource` is fcl-res's `resource` unit** (`packages/fcl-res/src/resource.pp`),
not Free Vision's — the two share the name, and resourcetree/stringtableresource need the fcl-res one.

Source choices for names that exist more than once in `src/` (all in `drive.py`):
- `unixcp` -> `patched/unixcp.pas` (copy of rtl/objpas/unicode/unixcp_stub.pas, returns CP437)
- `fpwidestring` -> `patched/fpwidestring.pp` (CompareUnicodeStringProc called with 2 params, the 2.6.4 signature)
- `resource` -> packages/fcl-res; `dialogs`/`menus`/`msgbox`/`tabs` -> packages/fv; `crc` -> packages/hash;
  `rexxsaa` -> os2bindings; `graph` -> packages/graph/src/os2 (PM backend); `regexpr` -> packages/regexpr/src/regexpr.pas;
  `newexe` -> rtl/os2; `cpu` -> rtl/i386; `dynlibs`, `matrix` -> rtl/inc
- eventlog/pipes/process/resolve pick up their `src/os2/*.inc`

Not built here, shipped as they are in `bin/units/i386-os2`: the 21 DLL import libraries (`DOSCALLS.dll.a`,
`PMWIN.dll.a`, ...) and the 30 import archives named after units (`doscalls.a`, `pmwin.a`, `system.a`, ...).

## Verified (2026-10-07)
- From a clean clone of GitHub `5e50f421`: 219/219 units build, 3 passes.
- With the compiler as it was before the Darwin fix (`bin/ppc386` of `789ce1eb`) the code in every `libp*.a`, `prt0.o`,
  `prt1.o` and every `.rst` is **identical** to `bin/units/i386-os2`. The `.ppu` files differ only in the stored source
  file dates.
- With today's `bin/ppc386` 38 units differ, all for one reason: the compiler source has an fpc264irc change that turns
  off the multi-string concatenation helper (`src/compiler/nopt.pas`, `canbemultistringadd` -> false; the helper has a
  pointer type mismatch on x86_64). The older `ppc386` binary predates that change and calls `fpc_shortstr_concat_multi`;
  the rebuilt one emits single concatenations. Both are valid on i386 (the helper is in the shipped system unit).

## Shipped = kit build (2026-10-10)
The 37 units that still had the old compiler's code (`system`, `sysutils`, `classes`, `dos`, `strutils`, `typinfo`,
FV `views`/`menus`/`stddlg`/... - list in HISTORY.md; `graph` was already rebuilt by `tools/graph-322-build`) were
replaced by this kit's build with today's `bin/ppc386`. No interface checksum changed (every other unit stays valid);
now the code of all 219 units is exactly what `build.sh` produces. The `test/os2` programs were rebuilt.
Found before the replacement: the kit build differs from the shipped units in exactly the units whose code called
`fpc_*_concat_multi`, so searching the archives for that name predicts a rebuild's changes (used for the other folders,
`docs/UNIT-REBUILD.md`).

## Linking and testing
Linking OS/2 programs: `bin/tools/i386-os2/README.md`. Sample programs to run on a real OS/2 / ArcaOS machine:
`test/os2/` (seven programs with ready-built `.exe` files; `build.sh` rebuilds them).
