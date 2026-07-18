# Phase 4 — Mystic BBS Cross-Platform Compile Verification

Proves 2.6.4irc compiles a real, substantial BBS application across every
platform the fork targets — not just synthetic test programs.

## Target

**Mystic BBS v1.10 A38irc** (James Coyle, GPLv3) — the BBS engine, internet
server, FidoNet/QWK mailers, utilities, and IDE. ~108 Pascal source files,
tens of thousands of lines, `-Mdelphi` mode.

## Results — 56/56

| Platform | Target | Result |
|---|---|---|
| **x86_64-linux** (native) | ELF64 | **14/14 compile + link** |
| **i386-win32** (Windows) | PE32 | **14/14 compile + link** |
| **i386-go32v2** (DOS) | MZ/COFF | **14/14 compile + link** |
| **i386-emx** (OS/2) | a.out→LX | **14/14 link** (all symbols resolved) |

**All 56** target builds across the four platforms succeed. The 42
Linux/Windows/DOS binaries are finished runnable executables; the 14 OS/2
binaries link to a.out with every symbol resolved and need only the emxbind
+ `emxl.exe` loader step to package into final `.exe` files (documented
boundary — see `docs/os2_linking_solved.md` and
`patches/os2-cross/EMXL-LOADER.md`).

All binaries self-identify as `Mystic BBS v1.10 A38irc`.

## What OS/2 required

Getting Mystic to link on OS/2 meant completing several RTL/package pieces
that upstream FPC shipped in source but never built (or never wrote) for the
emx target:

### RTL units (built into the emx RTL)
- **crt** — fixed a byte-vs-`tcrtcoord` signature mismatch between the shared
  `crth.inc` and the emx `crt.pas` implementation.
- **sysutils** — removed a redundant empty local `Beep` that clashed with the
  shared `objpas/sysutils.inc` one.
- **sockets** + **so32dll** — the OS/2 TCP/IP units, present in source but
  absent from the prebuilt RTL.

### fcl-process — a new OS/2 TProcess implementation
`mis` (the internet server) spawns a child per node via `TProcess` and relays
its stdin/stdout. Upstream FPC — **through 3.x** — never implemented `TProcess`
for OS/2: `fcl-process` had `os2/pipes.inc` and `os2/simpleipc.inc` but no
`os2/process.inc` in any release. This fork adds one:

- **NEW `os2/process.inc`** (~276 lines) — asynchronous process spawning built
  on `DosExecPgm` (with `deAsyncResult`) + `DosWaitChild`, plus pipe
  redirection via `DosCreatePipe` and `DosDupHandle`. Modeled on the Windows
  path (OS/2's `DosExecPgm` resembles `CreateProcess`, not unix `fork`). It
  redirects the standard handles 0/1/2 onto the child pipe ends before the
  spawn, then restores the parent's own handles. Implements `Execute`,
  `PeekExitStatus` (non-blocking `DosWaitChild`), `WaitOnExit` (blocking),
  `Terminate` (`DosKillProcess`), and the handle bookkeeping.
- **`os2/pipes.inc`** — implemented the previously-stubbed
  `GetNumBytesAvailable` using `DosPeekNPipe` (returns `Avail.cbPipe`). `mis`'s
  relay loop polls `Proc.Output.NumBytesAvailable`, so the stub (which always
  returned 0) would have broken it.
- **`process.pp`** — added `DosCalls` to the uses clause under `{$ifdef os2}`.

With these, `mis` compiles and links for OS/2 with zero undefined references,
reaching the same emxbind/emxl.exe boundary as every other target.

This is a genuine upstream-gap-filling contribution: FPC has never had OS/2
`TProcess` support, and this provides it.

## Build recipe (per platform)

```bash
# Native Linux
ppcx64  -Mdelphi -Fu<x86_64-linux-rtl> -Fumdl -Fumystic -Fimdl -Fimystic \
        -Fu<fcl-net>/src -Fu<fcl-base>/src -Fu<paszlib>/src -Fu<hash>/src \
        -FUout/units -FEout/bin mystic/<target>.pas

# Windows (cross from Linux)
ppc386  -Twin32 -Pi386 -Mdelphi -Fu<i386-win32-rtl> ... -FD<i386-win32-tools>

# DOS (cross from Linux; networked targets add a Watt-32 stub)
ppc386  -Tgo32v2 -Pi386 -Mdelphi -Fu<i386-go32v2-rtl> ... -FD<i386-go32v2-tools>

# OS/2 (cross from Linux; networked targets add fcl-process + os2 include dir)
ppc386  -Temx -Pi386 -Mdelphi -Fu<i386-os2-rtl> ... \
        -Fu<fcl-process>/src -Fi<fcl-process>/src/os2 -FD<i386-emx-tools>
```

## Status

**56/56 across all four platforms.** First confirmation that 2.6.4irc handles
a large real-world Object Pascal codebase — including a process-spawning
internet server — across its full platform matrix, OS/2 included.
