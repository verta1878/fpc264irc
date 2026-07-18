# Bugs Reported to fpc264irc Author — Status Tracker

## Fixed

| # | Bug | Reported | Fixed in | Notes |
|---|-----|----------|----------|-------|
| 1 | `ld` linker hang on modern binutils | r3 | **r3.1** | `-T link.res` fix, backported from FPC 3.2.2 |
| 2 | Missing unit paths (md5, crc, zipper, netdb, process) | r3 | **r3.1** | Prebuilt PPUs added for all 6 targets |
| 3 | `fpSetEUID`/`fpSetEGID` not exported | r4 | **06cdce00** | Added to baseunix; workaround unit in `src/packages/extra/seteuid_unit.pas` |
| 4 | `cNetDB` libc dependency for DNS | r3 | **r3.1** | Retired; migrated to pure-Pascal `netdb` |

## Resolved

| # | Bug | Reported | Status | Notes |
|---|-----|----------|--------|-------|
| 5 | `fpIsATTY` not exported from prebuilt `baseunix.ppu` | r4 | **FIXED (r4)** | PPUs rebuilt for all targets. `fpIOCtl(TIOCGPGRP)` workaround also available. |
| 6 | ppcross8086 PPU reader crash (EListError) | r4 | **FIXED** | `getaint`/`getasizeint` in `ppu.pas` use host pointer size (8 bytes) instead of target (2 bytes). Fix identified: use `CpuAluBitSize[header.cpu]` dispatch. See `docs/i8086_ppu_fix.md`. Fixed by rebuilding from FPC 3.0.4 source with ppu.pas patch. |

| 7 | cwstring.pp callback signature mismatch | r4 | **FIXED** | Wide2AnsiMove/Ansi2WideMove missing cp:TSystemCodePage param. Fixed in rtl/unix/cwstring.pp. |

## Workarounds in Place

- **fpIsATTY**: `fpIOCtl(fd, TIOCGPGRP, @dummy) = 0` (in mystic-bbs-irc `m_input_linux.pas`)
- **fpSetEUID/fpSetEGID**: `seteuid_unit.pas` direct syscall wrapper (in fpc264irc `src/packages/extra/`)
- **i8086 multi-unit**: single-unit programs work with assembly-direct workflow (bypass PPU loading)
