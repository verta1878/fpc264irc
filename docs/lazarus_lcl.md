# Lazarus 1.2.6 LCL Integration

## What this is

2.6.4irc now ships the **Lazarus Component Library (LCL) 1.2.6**, cross-built
with the fork's own compiler. This lets you build native GUI applications
with FPC 2.6.4irc, starting with **Windows (win32 widgetset)**.

Lazarus 1.2.6 officially targets FPC 2.6.4 — the exact base of this fork —
so the version match is clean, not a hack.

## Status

| Widgetset | Platform | Status |
|---|---|---|
| **win32** | Windows i386 | ✅ **built + verified** — 216 LCL + 33 widgetset + 59 LazUtils; GUI app → PE32 .exe |
| **gtk2** | Linux i386 | ✅ **built** — 214 LCL + 46 widgetset (compiles; final link needs 32-bit GTK/X11 libs on the host) |
| **qt** | Linux i386 | ✅ **built** — 214 LCL + 36 widgetset (compiles; final link needs libQt4Pas + 32-bit X11 on the host) |
| **nogui** | Linux i386 | ✅ **built + RUN-verified** — 5 widgetset units; a headless LCL app links and runs (`LCL version: 1.2.6.0`). For non-visual LCL use (TApplication, component logic); by design it has no window/timer backend. |
| carbon/cocoa | macOS | source present (macOS toolchain needed) |
| wince | Windows CE | source present — needs a wince RTL + target toolchain (not just a widgetset); deferred |
| fpgui / customdrawn | portable | source present |

### Verified

A real LCL GUI program (`TForm` + `TButton`, `uses Interfaces, Forms,
StdCtrls, Controls`) cross-compiles from Linux to a **1.76 MB PE32 GUI
executable for Windows** using `bin/ppc386`. This proves the LCL is usable,
not merely compiled.

The same program compiles fully against the **gtk2** widgetset on Linux
(all units + the app reach object code). Final linking of a gtk2 binary
needs the target's 32-bit GTK/X11 libraries present; on an i386 Linux
system (or an x86_64 host with 32-bit GTK dev libs installed) it links and
runs. On this x86_64-only build host the link stops at "skipping
incompatible libX11" — a host-library limitation, not an LCL one.

## Layout

```
bin/lazarus/units/i386-win32/
├── lazutils/          59 units (LazUtils base package)
└── lcl/
    ├── *.ppu/*.o      216 LCL base units (Forms, Controls, Graphics, ...)
    └── win32/         33 win32 widgetset units (Interfaces, lcl, ...)

src/lazarus/
├── lcl/               LCL source incl. ALL widgetset backends
│   └── interfaces/    win32, gtk2, qt, carbon, cocoa, wince, fpgui, ...
├── lazutils/          LazUtils source
├── packager/registration/   Lazarus package-registration units
└── COPYING*.txt       Lazarus licenses (GPL / modified LGPL)
```

## Building

```bash
./build-lcl.sh win32      # Windows (reference, already built)
./build-lcl.sh gtk2       # Linux GTK2 (next)
./build-lcl.sh qt         # Linux Qt
```

The LCL depends only on in-tree FPC packages (fcl-base, fcl-image, fcl-xml,
fcl-db, fcl-process, paszlib, hash, pasjpeg, regexpr, winunits-base) plus
LazUtils and the packager registration unit — no external downloads.

## Compile recipe (win32, for reference)

```
bin/ppc386 -Twin32 -Pi386 -Mobjfpc -Scghi -O1 -WG \
  -Fubin/units/i386-win32 \
  -Fubin/lazarus/units/i386-win32/lcl \
  -Fubin/lazarus/units/i386-win32/lcl/win32 \
  -Fubin/lazarus/units/i386-win32/lazutils \
  -Fusrc/packages/fcl-base/src -Fusrc/packages/fcl-image/src \
  -Fusrc/packages/winunits-base/src \
  -FDbin/tools/i386-win32 \
  -oMyApp.exe MyApp.lpr
```

## Notes on CodeTyphon

CodeTyphon is a *downstream distribution* that repackages Lazarus + FPC with
its own component set and build system. It is an **upstream update** relative
to this fork, not a dependency: 2.6.4irc integrates the LCL directly from
Lazarus 1.2.6 sources. The goal here is **Lazarus 1.2.6 + LCL on all
platforms**, built with the fork's own toolchain — CodeTyphon's additions are
out of scope for the base fork.

## Roadmap

1. ✅ LCL win32 (Windows) — done
2. LCL gtk2 (Linux) — next
3. LCL qt (Linux)
4. LCL for the remaining targets 2.6.4irc supports
5. (Later, optional) the Lazarus IDE itself — a much larger build that also
   needs the codetools and ideintf packages
