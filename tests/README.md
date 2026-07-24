# Runtime Test Suite

## rt_test.pas — Basic Runtime Tests (15 tests)

Verifies fundamental compiler and RTL correctness:
1. Basic I/O (WriteLn)
2. AnsiString length
3. String concat (BUG-029 regression)
4. AnsiString ref counting
5. GetMem 64KB + FillChar
6. MaxInt value
7. ShortString length
8. ShortString multi-concat
9. 100K string build (stress)
10. 10K alloc/free cycles
11. IntToStr loop + concat
12. File I/O (write + read + delete)
13. GetMem 1MB
14. Deep string copy (1000 iterations)
15. Exception handling (div by zero)

## rt_stress.pas — Stress + Break Tests (12 tests)

Pushes boundaries and edge cases:
1. 1M character string concat
2. 10K simultaneous allocations (10MB)
3. 100K string create/destroy cycles
4. 16MB single allocation
5. 1K rapid file create/delete
6. Empty string operations
7. Single-char string operations
8. MaxInt overflow (signed wrap)
9. Nil pointer exception safety
10. Double-free protection
11. 10K deep copy+convert
12. 5K mixed-size alloc (16B and 4KB alternating)

## Running

```bash
# Compile:
ppc386 -Tlinux -Mdelphi -Fubin/units/i386-linux tests/rt_test.pas -o rt_test
ppc386 -Tlinux -Mdelphi -Fubin/units/i386-linux tests/rt_stress.pas -o rt_stress

# Run:
./rt_test
./rt_stress
```

## Cross-platform

Both tests compile on all 4 targets. File I/O test (12) uses /tmp/
which exists on Linux/Darwin/OS2 but not DOS — skip on DOS.
