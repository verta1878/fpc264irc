# pcbfoss / pcbfoss_rings — Bug Scan Report

**Auditor:** sysop/0
**Date:** 2026-08-13
**Files:** pcbfoss.pas (380 lines), pcbfoss_rings.pas (240 lines)

## Summary

| ID | File | Severity | Issue | Status |
|----|------|----------|-------|--------|
| BUG-1 | pcbfoss.pas | Medium | Fn $02 doesn't block (returns 0) | TO FIX |
| BUG-2 | pcbfoss.pas | Medium | Fn $13 writes 1 char, spec says string | TO FIX |
| BUG-3 | pcbfoss.pas | Low | Double-init clears pending data | TO FIX |
| BUG-4 | pcbfoss_rings.pas | Low | Block I/O per-byte (slow) | TO FIX |
| IMP-1 | pcbfoss.pas | Low | Overrun bit never set | TO FIX |
| IMP-2 | pcbfoss.pas | Low | BaudRate 115 should be 1152 | TO FIX |

### BUG-1: FN_RX_WAIT ($02) doesn't actually wait

FSC-0015 says Fn $02 WAITS until a character is available.
Implementation returns immediately with AL=0 if buffer is empty.

Fix: Spin-wait with Sleep(1) until RXAvail > 0, check FConnected.

### BUG-2: FN_ANSI_WRITE ($13) processes single char, spec says string

FSC-0015 says Fn $13 writes a string at ES:DI with length CX.
Implementation writes single character from AL.

Fix: Use BlockPtr and CX like Fn $19.

### BUG-3: FN_INIT ($04) doesn't check for double-init

If called twice without Fn $05 between, ring buffers are cleared
and pending data is lost.

Fix: Only clear on first init (track FActive state).

### BUG-4: TXBlockRead/RXBlockRead per-byte (slow)

Each byte goes through TXGet with modular arithmetic. For 4KB
block transfers, this is 4096 function calls.

Fix: Two-phase memcpy (head-to-end, then wrap-around).

### IMP-1: Overrun bit never set

FSTAT_OVERRUN ($02) in AH is never set even when RX ring overflows.

### IMP-2: BaudRate 115 should be 1152

FSC-0015: BaudRate in units of 100 bps. 115200 = 1152, not 115.
