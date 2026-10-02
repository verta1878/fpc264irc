# Graph backport to FPC 3.0.4 — byte, 2026-10-02

Step 1 of the graph upgrade (2.6.4 → 3.0.4 → later 3.x, a little at a time). Covers everything FPC 3.0.4's own
graph and ptc fpmake files build for our targets.

## Source changes
- `src/packages/graph` = FPC 3.0.4 graph package + our OS/2 PM backend (`src/os2`, unchanged) + our tests.
  Old 2.6.4 tree: `attic/graph-2.6.4/`. `src/msdos` is the 3.0.4 copy for reference; the shipped i8086 units come
  from the 3.2.2 kit in `tools/i8086-graph-build/` (see `src/msdos/README-fpc264irc.txt`).
- `src/packages/ptc` = FPC 3.0.4 ptc 0.99.15 (old 0.99.14: `attic/ptc-0.99.14/`). fpc264irc patches:
  1. `src/x11/x11keysym_backport.inc` (included from `x11displayi.inc`): 14 dead-key keysyms missing from our x11 `keysym` unit.
  2. `src/x11/x11extensions.inc`: XInput2 off — needs a newer `x`/`xlib` (GenericEvent, xcookie). Core X input still works.
  3. `src/dos/vesa/go32_backport.inc` (included from `vesa.pp`): go32 routines added in FPC 3.0 —
     get/set_page_attributes (DPMI 0506h/0507h), free_linear_addr_mapping (0801h), get_dpmi_version (0400h).
  4. `src/win32/directx/win32directxdisplay.inc`: `TDirectXDisplay.Open` did `FreeAndNil(FMode)` on an `IPTCMode`
     interface, so the 2nd open (InitGraph after CloseGraph) crashed the ptc thread and InitGraph hung. Now `FMode := nil`.
- `src/packages/graph/src/sdlgraph/sdlgraph.pp`: fpc264irc fixes (upstream sdlgraph was unusable) —
  16-colour modes asked SDL 1.2 for 4bpp (not supported, SetVideoMode returned nil, first PutPixel crashed) → 8bpp palette;
  SDL failures now set GraphResult instead of drawing into a nil surface; PutPixel drew colour 255 always → uses the colour;
  SetRGBPalette/GetRGBPalette were empty → SDL_SetColors, default BGI palette loaded; FPU exceptions masked while SDL runs
  (sdl12-compat on SDL2 + Mesa raised SIGFPE).
- `patched-i386-linux/`: 2.6.4 `gl`, `glext`, `glx` + shim — the i386-linux `dynlibs.ppu` here lacks `FreeLibrary`/`GetProcAddress`.
- `patched-sdl/`: 2.6.4 `sdlutils`, `logger` including a renamed `jedi-sdl-copy.inc`, so the prebuilt win32 `sdl.ppu` stays valid.

## Units (bin/units/<target>) — .ppu (+ .a import libs); no .o / .s
| target | units |
|---|---|
| i386-go32v2 | graph; ptc, ptceventqueue, ptcwrapper, hermes, cga, vga, vesa, textfx2, timeunit, mouse33h |
| i386-win32 | graph, wincrt, winmouse; ptc, ptceventqueue, ptcwrapper, ptcgraph, ptccrt, ptcmouse, p_ddraw, gl, glext; sdlgraph, sdlutils, logger |
| x86_64-win64 | graph, wincrt, winmouse; ptc, ptceventqueue, ptcwrapper, ptcgraph, ptccrt, ptcmouse |
| i386-linux | graph, ggigraph; ptc, ptceventqueue, ptcwrapper, ptcgraph, ptccrt, ptcmouse, hermes, gl, glext, glx, syncobjs; sdlgraph, sdl, sdlutils, logger, pthreads |
| x86_64-linux | ggigraph; ptc, ptceventqueue, ptcwrapper, ptcgraph, ptccrt, ptcmouse |
| i386-freebsd | graph, ggigraph; sdlgraph, sdl, sdlutils, logger, pthreads |
| x86_64-freebsd | graph, ggigraph |
| i386-darwin | graph; sdlgraph, sdl, sdlutils, logger, x, xlib |
| i386-os2 | graph |

The replaced units' old 2.6.4 `.o` files were removed (they no longer match the new `.ppu`). With no `.o`, linking a
program against these units needs the unit sources on the path so FPC can rebuild the objects (or run build-all.sh).

Built without `-O2` and without `-CX`: with the 2.6.4 compiler, `-O2` miscompiles the 3.0.4 go32v2 VESA code
(8-bit PutPixel reads back 0) and `-CX` breaks go32v2 mode detection. Both found by the DOSBox test.

## Rebuild / test
```
bash tools/graph-304-build/build-all.sh   # -> tools/graph-304-build/out/<target> (.ppu .o .a)
bash tools/graph-304-build/test-all.sh    # compile + runtime tests, see test-results.txt
```
test-all.sh needs Xvfb, Wine, DOSBox, i386 X11 + SDL 1.2 libs, libc6-dev-i386 and a `lib32/` folder here with
`libX11.so libXext.so libXrandr.so libXxf86vm.so libXxf86dga.so libGL.so libSDL.so` symlinks to the i386 libraries.

## Results (test-results.txt)
- Compile: 25/25 (graph x8, ptcgraph x4, ggigraph x4, sdlgraph x4, ptc x5), nothing recompiled.
- go32v2 graph in DOSBox: VGA, 640x480 256-colour, 640x480 hi-colour — all OK. go32v2 ptc in DOSBox: VESA console open, write, read back OK.
- win32/win64 graph in Wine: VGA + 256-colour OK; hi-colour "Invalid graphics mode" (same as the old 2.6.4 unit).
- win32/win64/i386-linux/x86_64-linux ptcgraph: all 3 modes OK, all in one process (InitGraph/CloseGraph re-init works — ptc patch 4).
- i386-linux sdlgraph (Xvfb, SDL 1.2 / sdl12-compat): all 3 modes OK in one process, colours read back correctly.
- Compile-only: freebsd, darwin, os2, svgalib graph on i386-linux, ggigraph (no libggi to run against).

## Not in 3.0.4 (next step: 3.2.x)
32-bit truecolor in ptcgraph, FillCommon mode-list rework, SetWriteModeEx.
