# Graph 3.2.2 — byte, 2026-10-09

Step 2 of the graph upgrade (2.6.4 → 3.0.4 on 2026-10-02 → **3.2.2**). Same targets and units as step 1
(`tools/graph-304-build/`, now superseded).

## What 3.2.2 brings
- **24-bit true colour in ptcgraph** (win32, win64, i386 + x86_64 Linux): driver `D24bit`, modes 320x200 to
  1280x1024 with 16,777,216 colours; colour values are `LongWord` in ptcgraph (`ColorType`), so `SetColor($FF8040)`,
  `PutPixel(x, y, $00FF8040)` and `GetPixel` work with RGB values. Programs that pass `Word` colours compile unchanged.
- go32v2 VESA and i8086 (msdos) backend fixes, fills / text / mode-table fixes, `SetWriteModeEx`, longer mode names.
- ptc: `SetMousePos` in `ptcwrapper` / `ptcmouse`.
- Still no hi-colour in the GDI `graph` of win32/win64 (upstream never added it) — use `ptcgraph` for that.

## Source changes
- `src/packages/graph`, `src/packages/ptc` = FPC 3.2.2, merged 3-way (base 3.0.4, ours, 3.2.2): every file we had
  not changed took the 3.2.2 version; our changes were all in files 3.2.2 left alone (sdlgraph fixes, OS/2 PM backend,
  ptc patches 1–4 of step 1) — no conflicts. The replaced 3.0.4 files: `attic/graph-3.0.4/`.
- `src/inc/graph.inc`: the FPC 3.2 directive `noreturn` (6 routines) only when `FPC_FULLVERSION >= 30200` — the only
  change needed for the 2.6.4 compiler.
- `tests/rtest.pp`: mode 4 for ptcgraph — `D24bit` 640x480, and an RGB colour must read back unchanged.

## Build / test
```
bash tools/graph-322-build/build-all.sh   # -> out/<target> (.ppu + .o) and out/packed/<target> (.ppu + .a, as shipped)
bash tools/graph-322-build/test-all.sh    # compile + runtime tests against bin/units + out/packed -> test-results.txt
```
`OUT=<dir>` puts the output elsewhere; test-all.sh works in `$TESTDIR` (default `$TMPDIR/fpc264irc-graph-test`).
test-all.sh needs Xvfb, Wine (win32 + win64), DOSBox, i386 X11 + SDL 1.2 libs, libc6-dev-i386 and a `lib32/` folder here
with `libX11.so libXext.so libXrandr.so libXxf86vm.so libXxf86dga.so libGL.so libSDL.so` symlinks to the i386 libraries.
New in this kit: i386-darwin / i386-os2 objects are assembled with the repo's own `as`, and every target is packed like
`bin/units` (`tools/smartpack/pack-units.sh`). Two builds give identical shipped units, except the file dates inside the OS/2 `.a`.
No `-O2` and no go32v2 `-CX`, as in step 1.

## Shipped (bin/units/<target>, .ppu + .a)
The kit builds 77 units; only those whose code or interface changed (and the ones that use them) were replaced — the
rest (hermes, gl, sdl, x11, pthreads, ...) are the same sources as before and stay as they were:

| target | replaced |
|---|---|
| i386-win32 | graph, wincrt, winmouse, ptcgraph, ptccrt, ptcmouse, ptcwrapper, sdlgraph |
| x86_64-win64 | graph, wincrt, winmouse, ptcgraph, ptccrt, ptcmouse, ptcwrapper |
| i386-linux | graph, ggigraph, ptcgraph, ptccrt, ptcmouse, ptcwrapper, sdlgraph |
| x86_64-linux | ggigraph, ptcgraph, ptccrt, ptcmouse, ptcwrapper |
| i386-go32v2 | graph, ptcwrapper |
| i386-freebsd | graph, ggigraph, sdlgraph |
| x86_64-freebsd | graph, ggigraph |
| i386-darwin | graph, sdlgraph |
| i386-os2 | graph |

Checked: no unit in any of these folders records an old checksum of a replaced unit (`ppu_consistency`, same result as
before the change). i8086-msdos graph is unchanged (already built from the 3.2.2 msdos backend by
`tools/i8086-graph-build`). x86_64-darwin has no graph (32-bit Carbon only).

## Graph on the x86_64 targets (2026-10-16)
Which unit a graph program uses on each 64-bit target:

| target | `graph` | `ptcgraph` | also | use |
|---|---|---|---|---|
| x86_64-win64 | yes (GDI) | yes | `wincrt`, `winmouse`, `ptccrt`, `ptcmouse` | `graph`, or `ptcgraph` for hi-colour / 24-bit (the GDI `graph` has no hi-colour) |
| x86_64-linux | **no** | yes | `ptccrt`, `ptcmouse`, `ggigraph` (needs libggi) | `ptcgraph` |
| x86_64-freebsd | yes (svgalib, `libvga`) | no | `ggigraph` | `graph` - compile only here (no x86_64 FreeBSD linker, see `tools/freebsd-build`) |
| x86_64-darwin | no | no | - | none: the Mac `graph` is Carbon, 32-bit only (use i386-darwin) |

- **x86_64-linux has no `graph` unit, on purpose.** The Linux `graph` (`src/unix/graph.pp`) is built on svgalib
  (`libvga`), and FPC builds it for Linux/i386 only (`fpmake.pp`: `// Graph unit Linux/i386`,
  `AddUnit('graph.pp',[i386],[linux])`). On x86_64-linux `ptcgraph` is the graph backend (X11 through ptc): write
  `uses ptcgraph` (and `ptccrt` / `ptcmouse` for `crt` / mouse). It has the same routines as `graph`, plus 24-bit colour.
  A program that says `uses graph` stops there with a message that says so (below) - change the line, nothing else.
- **The message.** x86_64-linux and x86_64-darwin have a 6-line `graph.pp` in their unit folder
  (`bin/units/x86_64-linux/graph.pp`, `bin/units/x86_64-darwin/graph.pp`): with no `graph.ppu` there, the compiler
  compiles that file, and it only holds a `{$fatal}` that names the fix - x86_64-linux: "x86_64-linux has no graph unit
  (FPC builds graph for Linux/i386 only, it needs svgalib). Use ptcgraph instead: uses ptcgraph; ...", x86_64-darwin:
  "... the Mac graph uses Carbon, which is 32-bit only). Build the program for i386-darwin instead ...". Before, the
  compiler only said "Can't find unit graph used by ...". Nothing else uses these files.
- **Test:** `test/x64graph` - one `uses graph` program built for all four x86_64 targets: where it builds, where it
  stops (and the message), and the fix built (`build.sh`, results in its README).
- `ptcgraph` exists only where ptc does: win32, win64, Linux (`fpmake.pp`: `AddUnit('ptcgraph.pp',[win32,win64,linux])`).
- Tested: x86_64-win64 `graph` + `ptcgraph` (Wine), x86_64-linux `ptcgraph` (Xvfb) - see Results below and
  `test/x64graph`; x86_64-freebsd compile only.
Test programs rebuilt: `test/os2/graphdemo.exe`, `test/darwin/graphdemo` (the other test programs are unchanged).

## Results (test-results.txt)
- Compile: 25/25, nothing recompiled — against the packed units, exactly as they ship.
- go32v2 graph (DOSBox): VGA, 640x480 256-colour, 640x480 hi-colour OK. go32v2 ptc (DOSBox) OK.
- ptcgraph win32/win64 (Wine) and i386/x86_64-linux (Xvfb): VGA, 256-colour, hi-colour **and 24-bit true colour** OK,
  all in one process; `$00FF8040` reads back as `$00FF8040`.
- win32/win64 GDI graph: VGA + 256-colour OK, hi-colour "Invalid graphics mode" (unchanged; use ptcgraph).
- i386-linux sdlgraph (Xvfb, SDL 1.2): all 3 modes OK.
- Compile-only: freebsd, darwin, os2, ggigraph.
