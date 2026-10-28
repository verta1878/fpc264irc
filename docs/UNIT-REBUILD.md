# Exact source rebuild — plan and status (byte, 2026-10-10)

Goal: every shipped unit is what a build kit makes from this repo's own `src/` with today's `bin/ppc386` / `bin/ppcx64`.
Only after that, newer upstream FPC source is ported (on a known-good base).

How each folder is done: a kit rebuilds the whole folder from `src/` (source files + used units read from the shipped
`.ppu`, as `tools/darwin64-build`), the result is compared with the shipped units, and the only difference allowed is the
string-join helper below. Anything else (other source, changed interface, unit that does not compile) is reported
before anything ships. One folder per delivery.

Why units differ today: the old compiler joined `'a' + 'b' + 'c'` with one call to `fpc_*_concat_multi`; today's
compiler (`src/compiler/nopt.pas`, fpc264irc change) joins two at a time. Both work - the helper is in every shipped
system unit. A unit's archive containing `concat_multi` is exactly a unit a rebuild changes (checked on OS/2: the search
named the same 37 units the kit rebuild changed).

| # | Folder | Kit | Units | Old-helper units | Status |
|---|---|---|---|---|---|
| 1 | i386-os2 | `tools/os2-native-build` | 219 | 37 | **Done 2026-10-10** - replaced by the kit build |
| 2 | i386-freebsd / x86_64-freebsd (+ Lazarus i386-freebsd) | `tools/freebsd-build` | 167 / 46 (+ 312) | 20 / 0 (+ 63) | **Done 2026-10-12** - all three folders replaced by the kit build (`dos`/`sysutils` interface changed, so the Lazarus set was rebuilt with them) |
| 3 | i386-linux (+ Lazarus i386-linux) | `tools/linux-build` | 275 (+ 228) | 50 (+ 63) | **Done 2026-10-13** - both folders replaced by the kit build (sysutils, dynlibs, contnrs interface changes) |
| 4 | i386-go32v2 (+ Lazarus i386-go32v2, lcl/) | `tools/go32v2-build` | 235 (+ 138) | 44 (+ 34) | **Done 2026-10-13** - kit build; 2026-10-15: fossil + serial_irq built too (serial has COM_IRQ / MCR_OUT2), `Move` fix for DOSBox (BUG-044) |
| 5 | i386-darwin (+ Lazarus i386-darwin) | `tools/darwin-build` | 795 → 809 (+ 271) | 85 | **Done 2026-10-16** - kit build; new layout: FV `menus` + `resource` in `fv/`, univint `Video` + the 7 units that use it in `univint/`; + fcl-res, `fpobserver`, `jconsts`; `sysutils`/`dos`/`serial` interface changes |
| 6 | x86_64-linux (+ `lcl/`, + Lazarus x86_64-linux) | `tools/linux-build` | 563 + 69 (+ 411) | 144 (+ 147) | **Done 2026-10-27** - all three folders replaced by the kit build; most units are PIC (`-Cg`), as shipped; `lcl/` = flat LCL copy with the nogui widgetset; `sysutils`/`dos`/`dynlibs`/`dl` interface changes, `objpas`/`rtlconst`/`cthreads` came from another compiler build |
| 7 | i386-win32 (main + lcl/, + Lazarus i386-win32) | `tools/win32-build` | 922 + 616 lcl/ (+ 304) | 434 (+ 51) | **Done 2026-10-28** - all three folders kit builds; main 2026-10-27 (`system` from source again, `dynlibs` + GetProcAddress/FreeLibrary), main re-dated + `lcl/` (IDE build, all 616 same checksums) + Lazarus (`paswstring` codepage signatures on win32 too) 2026-10-28 |
| 8 | x86_64-win64 | to do | 1,039 | 0 | next (proof only) |
| 9 | Lazarus unit sets (`bin/lazarus/units`) | to do (i386-freebsd done with #2, i386-linux #3, i386-go32v2 #4) | 1,201 | 358 | last |
| - | x86_64-darwin | `tools/darwin64-build` | 789 | 0 | done 2026-10-09 (byte-identical rebuild) |
| - | i8086-msdos* | `tools/i8086-graph-build` | | n/a (FPC 3.2.2) | done |

## Units that still call the old helper (2026-10-10)

**i386-freebsd**: none (2026-10-12)

**i386-linux**: none (2026-10-13)

**i386-go32v2**: none (2026-10-13)

**i386-darwin**: none (2026-10-16)

**x86_64-linux**: none (2026-10-27)

**i386-win32**: none (2026-10-28)

**bin/lazarus/units**:
i386-freebsd none (2026-10-12);
i386-go32v2 none (2026-10-13);
i386-darwin none (2026-10-16);
i386-linux none (2026-10-13);
i386-win32 none (2026-10-28);
x86_64-linux none (2026-10-27);
