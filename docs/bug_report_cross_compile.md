# FPC 2.6.4irc Cross-Compile Bug Report

**Reporter:** Mystic BBS IRC fork (verta1878/mystic-bbs-irc)
**Compiler:** FPC 2.6.4irc r3.1 (commit `64951fde`)
**Date:** 2026-07-17
**Host:** i386-linux
**Targets tested:** i386-linux, i386-win32, i386-go32v2, i386-os2, i386-freebsd

## Summary

Four cross-compile failures when building MIS (Mystic Internet Server)
from an i386-linux host. All caused by prebuilt PPU issues.

## Bug 1: `fpSetEUID`/`fpSetEGID` not exported — **FIXED in r4**

**Severity:** High
**Status:** FIXED — `seteuid_unit.pas` added to `src/packages/extra/`

The source has the implementations (`bunxsysc.inc` lines 289-307) but
the prebuilt `baseunix.ppu` was never rebuilt. The standalone
`seteuid_unit.pas` provides the functions via direct syscall.

**Workaround:** `Uses seteuid_unit` or use `fpSetUID`/`fpSetGID` (sets
real+effective+saved from root).

## Bug 2: `fpIsATTY` not exported — **WORKAROUND documented**

**Severity:** Medium
**Status:** Workaround in place

Same root cause as Bug 1 — function in source but not in prebuilt PPU.

**Workaround:** `fpIOCtl(fd, TIOCGPGRP, @dummy) = 0` (succeeds on TTY,
fails on socket). Equivalent to `isatty()`.

**Fix:** Rebuild `baseunix.ppu` for all targets.

## Bug 3: Wrong file for BanMaxConns fields — **FIXED in mystic source**

**Severity:** Low
**Status:** FIXED — not a compiler bug

Fields were added to `m_socket_server.pas` instead of `mis_server.pas`.
Fixed in mystic-bbs-irc source.

## Bug 4: i386-freebsd syntax error — **FIXED in r4**

**Severity:** Medium
**Status:** FIXED — stale PPU refresh

The FreeBSD PPUs had version mismatch causing `{$IFDEF}` evaluation
errors. The `m_ops.pas` "identifier YOU" error was the compiler reading
license text as code due to mismatched system unit.

**Fix applied:** Rebuilt x86_64-linux PPUs in r4 (62/62). FreeBSD PPUs
need the same refresh — the cross-compile units should be rebuilt with
the current `ppc386`.

## Bug 5: i386-os2 missing system unit — **KNOWN**

**Severity:** Medium
**Status:** Known issue — path configuration

The OS/2 unit directory exists with 60 units but the compiler doesn't
find them without explicit `-Fu` path. The `etc/fpc.cfg` now includes
the correct paths.

**Fix:** Use `-Fubin/units/i386-os2` explicitly, or ensure `etc/fpc.cfg`
is loaded.

## Root Cause

All five bugs stem from **stale prebuilt PPUs**. The RTL source was
updated (fpSetEUID, fpSetEGID, fpIsATTY, cwstring codepage callbacks)
but the prebuilt PPUs in `bin/units/*/` were not regenerated.

## Actions Taken in r4

| Action | Status |
|--------|--------|
| `seteuid_unit.pas` standalone wrapper | ✅ Done |
| `fpIsATTY` → `fpIOCtl` workaround | ✅ Documented |
| `cwstring.pp` callback fix | ✅ Fixed in source |
| x86_64-linux PPUs rebuilt (62/62) | ✅ Done |
| `etc/fpc.cfg` with correct paths | ✅ Done |
| i386-linux PPU rebuild (69 PPUs) | ✅ Done |
| i386-win32 PPU rebuild (56 PPUs) | ✅ Done |
| i386-go32v2 PPU rebuild (52 PPUs) | ✅ Done |
| i386-freebsd PPU rebuild (7 PPUs, partial) | ⚠️ Partial |
| i386-os2 PPU rebuild (58+23 PPUs) | ✅ Done — Mystic 15/15 compile |

## Recommended: Full PPU Rebuild

```bash
# Rebuild ALL target PPUs from current source:
for tgt in linux win32 go32v2 freebsd; do
    cd src/rtl
    make clean OS_TARGET=$tgt CPU_TARGET=i386 FPC=../../bin/ppc386
    make all   OS_TARGET=$tgt CPU_TARGET=i386 FPC=../../bin/ppc386
    cp units/i386-$tgt/*.ppu ../../bin/units/i386-$tgt/
    cp units/i386-$tgt/*.o   ../../bin/units/i386-$tgt/
done
```
