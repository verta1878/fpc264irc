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

## test_numlib.pas / test_singleinstance.pas — i386-win32 units rebuilt 2026-10-08

Built with `bin/ppc386 -Twin32 -FDbin/tools/i386-win32 -Fubin/units/i386-win32`, run under Wine:
- `test_numlib`: `slegen` solves a 3x3 system (x = 1 3 0), `spl1nati`/`spl1pprv` natural spline of x² gives 6.2321 at 2.5.
- `test_singleinstance`: a minimal `TBaseSingleInstance` descendant starts as server.

## x64graph/ — graph on the x86_64 targets (2026-10-16)

`test/x64graph/build.sh` builds one `uses graph` program for x86_64-win64, -linux, -freebsd and -darwin: it builds on
win64 and freebsd; on linux and darwin the compiler stops with a message that names the fix (`uses ptcgraph` /
build for i386-darwin), and the fix is built next. Details: `test/x64graph/README.md`.

## win32/thr.pas — threads + TryEnterCriticalSection (BUG-050, 2026-11-20)

`bin/ppc386 -Twin32 -Fubin/units/i386-win32 test/win32/thr.pas` (or `ppc386.exe` on Windows). Two threads count to
100,000 each under one critical section (200,000), then `TryEnterCriticalSection` while the section is free (1), held
by another thread (0) and released (1). Prints `ALL OK`. Under Wine (Windows 98 and Windows 2000 mode): ALL OK. On a
real Windows 98 it runs `system`'s own TryEnterCriticalSection (knob `SUPPORT_WIN95`): the test to run there.

## threads/ — threads + syncobjs on every target (BUG-051, 2026-11-20)

- `thr2.pas`: 4 `TThread`s x 100,000 increments under `TCriticalSection`, the RTL critical section and
  `InterLockedIncrement` (400,000 each), `threadvar` per thread, `TryEnterCriticalSection`, `TEvent` timeout/signal,
  `RTLEvent`. Unix targets need `cthreads` (the program uses it). ALL OK on i386-linux, x86_64-linux, i386-win32 (Wine,
  also Windows 98 mode), x86_64-win64; compiles for i386/x86_64-freebsd, links for i386-os2.
- `tmr.pas`: `fptimer` (TFPTimer, 50 ms) - 11 ticks in 600 ms on i386-linux; compiles for FreeBSD.
- `i8086/classes/clist.pas` (BUG-052): TStringList in the i8086 model folders - ALL OK in DOSBox (medium, large;
  huge: use the default folder). `inithand.pas`: init handler list (x86_64-linux with the patch for CPUX86_64).
  `rec2s.pas`: BUG-053 repro (open) - large/huge/default print only "1 set", medium all 5 lines.
- `syncdos.pas`: DOS `syncobjs` (go32v2, i8086-msdos): critical section, auto/manual-reset events, timeouts. ALL OK in
  DOSBox (go32v2 with CWSDPMI; i8086 default, small, medium, large, huge).

## fcl-base/fclb.pas — fcl-base units added in BUG-051 Part B (2026-11-21)

contnrs `TFPHashList`, base64, inifiles `TMemIniFile`, fpexprpars `1+2*3`, avl_tree, uriparser, nullstream, maskutils, and
custapp/wformat/inicol/pooledmm/streamio/cachecls/iostream/streamex/ascii85/idea/fptemplate in `uses`. ALL OK on
i386-linux and go32v2 (DOSBox, CWSDPMI); compiles for i386/x86_64-freebsd; links for i386-os2.
