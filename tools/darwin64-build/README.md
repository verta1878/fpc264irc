# x86_64-darwin (64-bit Mac) unit build kit — byte, 2026-10-09

Builds `bin/units/x86_64-darwin` from `src/` with `bin/ppcx64` on a Linux x86_64 host:

```
tools/darwin64-build/build.sh [work dir]        # default $TMPDIR/fpc264irc-darwin64; result in <work>/units
```
A rebuild is byte-identical to the shipped set (all source dates are set to 2025-01-01 in a copy of `src/` first —
a `.ppu` records the date of every file it was built from). Takes about 4 minutes. Needs make, python3, llvm-ar.

| Step | What |
|---|---|
| 1 | copy `src/rtl` + `src/packages`, fix the dates, put `patched/dynlibs.pas` over `rtl/inc/dynlibs.pas` |
| 2 | RTL Makefile (`rtl/darwin`, `CPU_TARGET=x86_64`, `BINUTILSPREFIX=` so it calls the plain `as`/`ld` of `bin/tools/i386-darwin`) — 59 units |
| 3 | `drive.py`: the other 730 units from `units.txt`, each as soon as the units it uses are built |
| 4 | `tools/smartpack/pack-units.sh`: `.ppu` + `libp<unit>.a`, no `.o` |

Files:
- `units.txt` — one line per unit: `folder|unit|source|units it uses`. Made by `units.py` from the shipped
  `bin/units/i386-darwin` `.ppu` files (source file names + uses lists, read with a Linux `ppudump`), so the 64-bit set
  has the same units from the same sources. Rerun `units.py <repo> <ppudump> > units.txt` only if that set changes.
- `drive.py` — compiles each unit from a copy in an empty folder into an empty output folder, then moves the result
  into place. That way the compiler can never build some other unit on the fly into the wrong folder. `validate`,
  `msgbox` and `app` use FV `dialogs` and the other way round, so they are built together with it, in one run; so are
  `glut` and `freeglut`.
- `patched/dynlibs.pas` — FPC 2.6.4's own layout (`unix/dynlibs.inc` read twice) plus the Patch 5 names
  `GetProcAddress` / `FreeLibrary`; `src/rtl/inc/dynlibs.pas` does not compile together with `unix/dynlibs.inc`.

Folder layout (differs from i386-darwin on purpose): Free Vision's `dialogs` **and** `menus` are in `fv/`, univint's
`Dialogs` and `Menus` in the main folder — so every univint unit builds (in the i386 set FV `menus` sits in the main
folder). Use `-Fu.../x86_64-darwin/fv -Fu.../x86_64-darwin` (fv first) for Free Vision programs.

Not in the 64-bit set (7 of the 794 i386 units):

| Unit | Why |
|---|---|
| `graph` | its Mac backend draws with Carbon HIView / QuickDraw calls that 64-bit macOS does not have |
| `sdlutils`, `sdlgraph` | `sdlutils` keeps pointers in `cardinal` variables (32-bit only) |
| `mmx` | i386 only (`rtl/i386/mmx.pp`) |
| `displays`, `drawsprocket`, `macos` | univint `Displays` uses univint `Video` (same name as the RTL `video` unit); DrawSprocket is PowerPC-only; `MacOS` is the per-header umbrella over them — use `MacOSAll` |

`src/packages/univint/src/MacOSAll.pas` was changed for 64-bit: it linked only CoreFoundation on x86_64, so Carbon /
CoreServices calls (`Gestalt`, File Manager, Apple Events ...) did not link; it now links Carbon on x86_64 too, as on
i386 (the i386 set is unchanged).
