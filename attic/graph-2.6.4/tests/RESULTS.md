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
