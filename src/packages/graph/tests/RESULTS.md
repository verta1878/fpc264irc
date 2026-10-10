# fpc264irc graph compile test results — 2026-10-01, byte

| # | Target | Unit | Result | Notes |
|---|--------|------|--------|-------|
| 1 | i386-win32 | graph | PASS | original, GDI backend |
| 2 | x86_64-win64 | graph | PASS | win32/graph.pp via GDI |
| 3 | i386-go32v2 | graph | PASS | original, VESA backend |
| 4 | i386-linux | graph | PASS | unix/graph.pp, svgalib |
| 5 | i386-freebsd | graph | PASS | unix/graph.pp, svgalib |
| 6 | i386-darwin | graph | PASS | macosx/graph.pp, Quartz (-Sg) |
| 7 | x86_64-freebsd | graph | PASS | unix/graph.pp + x86 unit |
| 8 | i386-os2 (emx) | graph | FAIL | system.ppu target 0x04, graph.ppu target 0x1C |
| 9 | x86_64-linux | ptcgraph | PASS | full ptc chain (hermes→gl→glx→ptc) |

## OS/2 fix plan
The 29 core RTL PPUs are native OS/2 (target 0x04) — correct per sysop/0.
The 179 package PPUs are EMX (target 0x1C) — build error.
Fix: rebuild 179 package PPUs with -Tos2. graph.pp recompile with -Tos2 after.

# Graph 3.0.4 backport — 2026-10-02, byte

Sources now FPC 3.0.4 (graph) + ptc 0.99.15; OS/2 PM backend unchanged. Compile tests 25/25 PASS
(graph x8, ptcgraph x4, ggigraph x4, sdlgraph x4, ptc x5). Runtime — see tools/graph-304-build/test-results.txt:
go32v2 graph + ptc OK in DOSBox; ptcgraph OK on win32/win64 (Wine) and i386/x86_64-linux (Xvfb);
win32/win64 graph VGA + 256-colour OK (no hi-colour, same as 2.6.4); i386-linux sdlgraph crashes at the
first PutPixel — the 2.6.4 sdlgraph does the same.

## Fixes — 2026-10-02 (later), byte

- sdlgraph: the crash was SDL_SetVideoMode returning nil — SDL 1.2 has no 4bpp surfaces and every 16-colour mode asked for 4.
  Now 8bpp palettised; SDL failures set GraphResult; PutPixel uses the colour (was always 255); palette routines implemented;
  FPU exceptions masked around SDL calls (modern Linux SDL 1.2 is sdl12-compat on SDL2 + Mesa, which raised SIGFPE).
  i386-linux sdlgraph under Xvfb: VGA-Hi, 8bit-640, 16bit-640 all OK in one process, putpix/line/bar read back 5/14/3.
- ptcgraph on win32/win64: second InitGraph after CloseGraph hung. Cause: ptc `TDirectXDisplay.Open` called FreeAndNil on
  the `IPTCMode` interface field, the ptc thread died with an access violation, InitGraph waited forever. Fixed (`FMode := nil`);
  Wine runs all 3 modes in one process now. Not Wine-specific — it would hang on real Windows too.
- test-all.sh: sets the exec bit on bin/ppc* and bin/tools/*/* (git from Windows drops it), Xvfb screen 1280x1024.

# Graph 3.2.2 — 2026-10-09, byte

Sources now FPC 3.2.2 graph (+ ptc 3.2.2: `ptcwrapper` gains SetMousePos); OS/2 PM backend, sdlgraph fixes and the
other fpc264irc ptc patches kept (3-way merge, no conflicts). One source change for the 2.6.4 compiler: the 3.2 directive
`noreturn` in `inc/graph.inc` is only used when FPC_FULLVERSION >= 30200. Compile tests 25/25 PASS, runtime unchanged,
plus `rtest.pp` mode 4: ptcgraph 24-bit true colour (D24bit, 640x480, 16,777,216 colours) — OK on win32/win64 (Wine) and
i386/x86_64-linux (Xvfb), an RGB colour reads back unchanged. See tools/graph-322-build/test-results.txt.
