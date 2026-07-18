# FPC 2.6.4irc-r3

**Released 2026-07-12**

Fork of Free Pascal 2.6.4 for BBS and retro preservation. r3's headline is
that the entire platform matrix is now proven on a real application, and
that proving it produced the first-ever OS/2 `TProcess` for Free Pascal.

## Highlights

- **Mystic BBS v1.10 A38irc compiles 56/56** — 14/14 each on native Linux,
  Windows (win32), DOS (go32v2), and OS/2 (emx).
- **First OS/2 `TProcess`** — upstream FPC never implemented process spawning
  for OS/2; r3 adds it (`fcl-process/src/os2/process.inc`) on top of
  `DosExecPgm` + pipe redirection.
- **OS/2 RTL completed** — crt, sockets, so32dll built for emx (44 → 60
  units); two upstream RTL bugs fixed.
- **FPC text-mode IDE** bundled, with a 3-tier system/bundled/source setup.
- **Lazarus 1.2.6 LCL** bundled — win32 verified (GUI app → PE32 .exe); gtk2,
  qt built; nogui built + run-verified headless. All widgetset source included.
- **`build-mystic-os2.sh`** — one-command Mystic OS/2 build.

## For Mystic maintainers

```bash
./build-mystic-os2.sh /path/to/mystic-bbs-irc
```
Produces `out/bin-os2/*.out` (all symbols resolved). Final `.exe` packaging
runs on OS/2 via emxbind + emxl.exe.

## Known limitations

- OS/2 output is a.out with all symbols resolved; the runnable `.exe` needs
  `emxl.exe` on OS/2 (a redistributable OS/2 binary, not producible on Linux).
- The new OS/2 `TProcess` compiles and links but has not been run on live
  OS/2 — smoke-test `mis` node spawning before production use.
- i8086 (16-bit DOS), AArch64, and LCL on qt/macOS/wince are out of scope for
  r3 (see `MILESTONE-R3.md`).

## Tests

166 gates · 31 tools · 45 fallback · 13 platforms · 23 OS/2 · 17 IDE+GUI —
all green.

Full detail: `MILESTONE-R3.md`, `CHANGELOG-IRC.md`.
