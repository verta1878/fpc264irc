# GitHub Release — copy/paste guide

Everything below is ready to paste into GitHub's "Draft a new release" form.

---

## Tag
```
v2.6.4irc-r3
```
(Target: `master`, or whichever branch holds the r3 commit.)

## Release title
```
2.6.4irc-r3 — OS/2 TProcess, Mystic 56/56, IDE + Lazarus LCL
```

## Release description (paste into the big text box)

---

Fork of Free Pascal 2.6.4 for BBS and retro preservation. r3's headline: the
**entire platform matrix is proven on a real application** — Mystic BBS v1.10
A38irc compiles **56/56** — and getting there produced the **first-ever OS/2
`TProcess` for Free Pascal**.

### Highlights

- **Mystic BBS v1.10 A38irc compiles 56/56** — 14/14 units each on native
  Linux (x86_64), Windows (i386-win32), DOS (i386-go32v2), and OS/2 (i386-emx).
- **First OS/2 `TProcess`** — upstream FPC never implemented process spawning
  for OS/2. r3 adds it (`fcl-process/src/os2/process.inc`) on top of
  `DosExecPgm` + pipe redirection.
- **OS/2 RTL completed** — crt, sockets, and so32dll built for emx (44 → 60
  units); two upstream RTL bugs fixed along the way.
- **OS/2 cross-compilation from Linux** — binutils `N_IMP` patch + a ported
  `emxbind` let the whole toolchain run on Linux up to the final LX bind.
- **FPC text-mode IDE** bundled, with a 3-tier system/bundled/source setup.
- **Lazarus 1.2.6 LCL** bundled — **win32** verified (GUI app → PE32 `.exe`),
  **gtk2** and **qt** built (compile clean; final link needs the host GUI
  libs), and **nogui** built + run-verified headless (`LCL version: 1.2.6.0`).
- **Codepage-aware AnsiStrings, DOS Watt-32 sockets, COFF fix** carried from
  the earlier phases.
- **One-command Mystic OS/2 build:** `./build-mystic-os2.sh /path/to/mystic`.

### For Mystic maintainers

```bash
./build-mystic-os2.sh /path/to/mystic-bbs-irc
```
Produces `out/bin-os2/*.out` with all symbols resolved. Final `.exe` packaging
runs on OS/2 via `emxbind` + `emxl.exe`.

### Compiler identification

- `ppcx64 -iR` → `2.6.4irc-r3 (2026-07-12)`
- `ppcx64 -iV` → `2.6.4` (unchanged, for tool compatibility)

### Known limitations

- **OS/2 output is a.out** with all symbols resolved; the runnable `.exe` needs
  `emxl.exe` on OS/2 (a redistributable OS/2 binary that cannot be produced on
  Linux).
- **The new OS/2 `TProcess` compiles and links but has not been run on live
  OS/2** — smoke-test `mis` node spawning before production use.
- **gtk2/qt LCL** compile but need 32-bit GTK/X11 (gtk2) or libQt4Pas + 32-bit
  X11 (qt) on the host to complete the final link.
- **16-bit DOS (i8086), AArch64, and LCL on macOS/wince are out of scope for
  r3.** (A 16-bit i8086/real-mode DOS backend is in active development on a
  separate branch and is **not** part of this release.)

### Tests — all green

166 core gates · 31 test-tools · 45 tool-fallback · 13 all-platforms ·
23 OS/2-build · 17 IDE+GUI.

Full detail: `MILESTONE-R3.md`, `docs/mystic_build.md`, `docs/lazarus_lcl.md`.

---

## Suggested "This is a pre-release?" setting
Leave **unchecked** — r3 is a stable release for the Linux/Windows/DOS targets
and the toolchain. (The OS/2 `TProcess` run-verification and i8086 work are
noted as limitations/out-of-scope, not pre-release caveats.)

## After publishing
- Update the repo **About** box (see `github-about.txt`).
- The **Mystic** repo gets its own tag/release — different scope (version bump
  only). See `commit-mystic.txt`. Remember `git checkout -- build.sh` there to
  drop the accidental mode change before committing.
