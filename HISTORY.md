# FPC 2.6.4irc — Patch History

## Compiler Patches

### Patch 1 — Type conversion crash fix
- **File:** `src/compiler/defutil.pas`
- **Issue:** Crash on certain implicit type conversions
- **Session:** 2026-07-11

### Patch 2 — Register allocation fix
- **File:** `src/compiler/nopt.pas`
- **Issue:** Incorrect register allocation in nested procedures
- **Session:** 2026-07-11

### Patch 3 — Overloaded operator resolution
- **File:** `src/compiler/symdef.pas`
- **Issue:** Overloaded operator symbol resolution failure
- **Session:** 2026-07-11

### Patch 4 — PPU cross-compilation writing
- **File:** `src/compiler/fppu.pas`
- **Issue:** PPU write failure during cross-compilation
- **Session:** 2026-07-11

### Patch 5 — libdl auto-link + GetProcAddress aliases
- **Files:** `src/rtl/unix/dl.pp`, `src/rtl/unix/dynlibs.pas`
- **Issue:** Linux programs using dlopen/dlsym required manual `-k-ldl` flags.
  Added `{$linklib dl}` `{$linklib c}` to dl.pp. Added `GetProcAddress()`
  and `FreeLibrary()` aliases to dynlibs.pas.
- **Known issue:** dynlibs.pas overloaded function aliases break `make cycle`.
  Prebuilt PPUs work fine.
- **Session:** 2026-09-07

### Patch 6 — MZ linker source recovery
- **Files:** `src/compiler/systems/t_msdos.pas` (540 lines),
  `src/compiler/systems/i_msdos.pas` (121 lines),
  `src/compiler/ogomf.pas` (3,226 lines),
  `src/compiler/omfbase.pas` (2,916 lines),
  `src/compiler/owomflib.pas` (617 lines)
- **Issue:** Internal MZ linker for i8086-msdos was backported from FPC 3.2.2
  and compiled into ppcross8086, but source files were never committed.
  Recovered from FPC 3.2.2.
- **Pending (6b):** Fix `DefaultLinkScript` in t_msdos.pas to fall back to
  `.a` (READSTATICLIBRARY) when `.o` is missing. See PATCH6-MZ-LINKER-HANDOFF.md.
- **Session:** 2026-09-09

## Platform Matrix

```
Target            Compiler      PPUs    Status
x86_64-linux      ppcx64         529    complete
i386-linux        ppc386         252    complete
i386-win32        ppc386       1,521    complete
x86_64-win64      ppcx64       1,012    complete
i386-go32v2       ppc386         308    complete
i8086-msdos       ppcross8086    132    compile ok, link needs Patch 6b
i386-darwin       ppc386          —     complete
i386-os2          ppc386          —     partial (system.ppu version mismatch)
x86_64-freebsd    ppc386          19    partial (needs full RTL cross-build)
```

## Key Binaries

```
bin/ppcx64         3.0 MB   x86_64 native compiler (3-stage bootstrap)
bin/ppc386         2.6 MB   i386 native compiler
bin/ppcross8086    4.4 MB   i8086 cross-compiler (MZ linker built in)
```

## Crew

| Handle      | Role |
|-------------|------|
| verta1878   | Project lead |
| sysop/0     | Compiler patches, USB stack, FPC builds |
| bob         | OpenWatcom2 x64 |
| evga        | Display, SIO |
| kiddo       | Protocols, serial IRQ |
| wrench      | Transport, FOSSIL, DVI/HDMI |
| hexadecimal | PCBoard, Cyclades |
| DotMatrix   | Documentation sourcing |
| byte        | Program discovery |
