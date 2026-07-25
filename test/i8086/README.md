# i8086 Codegen Test Suite (FPC 2.6.4irc)

Regression tests for the i8086 (16-bit real-mode DOS) backport. Each case is a
small unit that exercises one codegen feature; the runner compiles it with the
`ppcross8086` cross-compiler and verifies:

1. Compilation to assembly succeeds (no internalerror / type error).
2. A real 8086 OMF object is produced (`file` reports "8086 relocatable").
3. Expected instruction patterns appear in the emitted NASM (`BITS 16`, etc.).

## Running

```
WORK=/path/to/i8086_work bash run_tests.sh
```

(`WORK` must point at a tree whose `compiler/ppcross8086` is built and whose
`rtl/inc`, `rtl/i8086` are present.)

## Coverage

| Case | Feature |
|------|---------|
| t01_arith16      | 16-bit add/sub/and/or/xor |
| t02_shift16      | 16-bit shifts stay 16-bit (cpunodefaultint) |
| t03_divmod16     | 16-bit div/mod |
| t04_arith32      | 32-bit register-pair arithmetic (OS_32 check) |
| t05_int64        | int64 result/negate/add (physical-reg GetNextReg) |
| t06_seg          | Seg() on huge pointer (second_seg dispatch) |
| t07_farptr       | far/huge pointer deref |
| t08_split32param | 32-bit split-register parameter passing |
| t09_fpuparam     | extended float param (single-location + MOVSW copy) |
| t10_trunc32      | 32-bit -> 16-bit truncating load (OS_S32) |
| t11_compare      | 16/32-bit comparisons (SHORT conditional jumps) |
| t12_ptrops       | pointer arithmetic + typed deref |

## Bugs this suite caught

- **386 string instructions at CPU 8086** (t09): `g_concatcopy`'s copy_string
  path emitted `mov ecx / rep movsd` (386-only) instead of 16-bit `cx / movsw`.
- **NEAR conditional jumps** (t11): the NASM writer emitted `jl NEAR` / `jae
  NEAR`, but the 8086 has no NEAR encoding for Jcc — only SHORT. Any program
  with a comparison failed to assemble. Fixed by omitting the NEAR prefix on
  i8086 (NASM then picks SHORT/near correctly), matching FPC 3.0.
