# FPC 2.6.4irc — r3 Release Milestone

**Release:** 2.6.4irc-r3
**Date:** 2026-07-12
**Version string:** `2.6.4irc-r3 (2026-07-12)` (see `src/compiler/version.pas`)

This document is the headline summary of what the r3 release contains. It is
written for two audiences: maintainers of the compiler fork, and the Mystic
BBS maintainer who builds their application with it.

---

## Headline: the full platform matrix is proven on a real application

r3's defining result is that **Mystic BBS v1.10 A38irc compiles across every
platform the fork targets — 56/56** — and that getting there required, and
delivered, a genuine upstream-gap-filling contribution to Free Pascal.

| Platform | Target | Mystic result |
|---|---|---|
| x86_64-linux (native) | ELF64 | 14/14 compile + link |
| i386-win32 (Windows) | PE32 | 14/14 compile + link |
| i386-go32v2 (DOS) | MZ/COFF | 14/14 compile + link |
| i386-emx (OS/2) | a.out → LX | 14/14 link (all symbols resolved) |

The 42 Linux/Windows/DOS binaries are finished runnable executables. The 14
OS/2 binaries link to a.out with every symbol resolved; producing the final
`.exe` needs the emxbind + `emxl.exe` loader step, which runs on OS/2 (the
loader is a redistributable OS/2 binary that cannot be produced on Linux).

---

## What r3 adds over r2

### 1. OS/2 TProcess — a first for Free Pascal

Upstream FPC — through 3.x — never implemented `TProcess` for OS/2.
`fcl-process` shipped `os2/pipes.inc` and `os2/simpleipc.inc` but no
`os2/process.inc` in any release, ever. Mystic's internet server (`mis`)
spawns a child per node via `TProcess` and relays its I/O, so it could not
link on OS/2 without this.

r3 provides the first OS/2 `TProcess`:

- **`src/packages/fcl-process/src/os2/process.inc`** (new, ~276 lines) —
  asynchronous spawning on `DosExecPgm` (`deAsyncResult`) + `DosWaitChild`,
  with pipe redirection via `DosCreatePipe` + `DosDupHandle`. Modeled on the
  Windows path, because OS/2's `DosExecPgm` resembles `CreateProcess`, not
  unix `fork`. Standard handles 0/1/2 are redirected onto the child pipe ends
  before the spawn and the parent's own handles restored after.
- **`os2/pipes.inc`** — the previously-stubbed `GetNumBytesAvailable` (which
  always returned 0) now uses `DosPeekNPipe` and returns `Avail.cbPipe`, so
  `mis`'s relay loop works.
- **`process.pp`** — `DosCalls` added to the uses clause under `{$ifdef os2}`.

**Status caveat:** this compiles and links cleanly and follows OS/2's
documented `DosExecPgm`/`DosDupHandle` semantics, but it has not been run in a
live OS/2 environment. The Mystic maintainer should smoke-test `mis` spawning
a node on real OS/2 before relying on it in production.

### 2. OS/2 RTL completion

Three standard RTL units that upstream shipped in source but never built for
the emx target are now completed, growing the OS/2 RTL from 44 to 60 units:

- **crt** — fixed a byte-vs-`tcrtcoord` signature mismatch between the shared
  `crth.inc` and the emx `crt.pas` implementation.
- **sysutils** — removed a redundant empty local `Beep` that clashed with the
  shared `objpas/sysutils.inc` one.
- **sockets** + **so32dll** — the OS/2 TCP/IP units, built into the RTL so the
  networked programs compile.

### 3. FPC text-mode IDE — self-contained 3-tier system

- Tier 1 system / Tier 2 bundled (`bin/ide/fp` + units) / Tier 3
  build-from-source (`build-ide.sh`), resolved by `tools/get-ide.sh`.
- Every unit the IDE needs (Free Vision, the embedded compiler, chm/xml help)
  ships in-tree.

### 4. Lazarus 1.2.6 LCL — self-contained 3-tier system per widgetset

- **win32 built + verified** — a real LCL GUI app cross-compiles to a PE32 GUI
  `.exe`.
- **gtk2 built** — compiles fully on Linux (final link needs 32-bit GTK libs).
- Bundled units ship with their `.lfm`/`.res` form resources; `build-lcl.sh`
  rebuilds from the full Lazarus source in `src/lazarus/`; `tools/get-lcl.sh`
  emits the unit paths.
- All widgetset source (win32, gtk2, qt, carbon, cocoa, wince, …) is present
  for future builds.

### 5. Mystic build tooling

- **`build-mystic-os2.sh`** — one command builds all 14 Mystic OS/2 targets
  with the fork's compiler, RTL, and the new fcl-process OS/2 support.
- Mystic version corrected to `1.10 A38irc`.

---

## Test coverage (all green)

| Suite | Result |
|---|---|
| Core string/codepage gates | 166 / 166 |
| Bundled tools | 31 / 31 |
| 3-tier tool fallback | 45 / 45 (2 skip) |
| All-platforms cross-build | 13 / 13 |
| OS/2 build chain | 23 / 23 |
| IDE + GUI 3-tier | 11 / 11 |

---

## For the Mystic maintainer

You do not need to change your Mystic source for OS/2 — the fix is in the
compiler fork. To build Mystic for OS/2:

```bash
git clone <fpc264irc repo>
cd fpc264irc
./build-mystic-os2.sh /path/to/mystic-bbs-irc         # all 14 targets
./build-mystic-os2.sh /path/to/mystic-bbs-irc mis     # one target
```

Output lands in `<mystic>/out/bin-os2/*.out` (a.out, all symbols resolved).
On OS/2, run emxbind + `emxl.exe` to produce the final `.exe`
(see `docs/os2_linking_solved.md` and `patches/os2-cross/EMXL-LOADER.md`).

The only change in the Mystic repo itself is the version bump to
`1.10 A38irc` in `mystic/records.pas`.

---

## What r3 deliberately does NOT include

- **i8086 (16-bit real-mode DOS)** — a full compiler backend port, not a
  cherry-pick; scoped as its own future release (see `docs/i8086_scoping.md`).
  Mystic itself is a 32-bit application and uses go32v2, which is complete.
- **AArch64 / Apple Silicon** — a new CPU backend; deferred (see the Modern
  Platform Bridge notes).
- **LCL on qt / macOS / wince** — source present, unbuilt; win32 verified,
  gtk2 compiles.
- **Runnable OS/2 `.exe` packaging** — needs `emxl.exe` on OS/2 (out of band).
