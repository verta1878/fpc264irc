# Windows compilers kit — byte, 2026-11-20

Builds `bin/ppc386.exe` (i386-win32) and `bin/ppcx64.exe` (x86_64-win64): the fpc264irc 2.6.4 compiler from
`src/compiler` as Windows programs. Linux x86_64 host, about 10 seconds.

```
tools/wincomp-build/build.sh [work dir]     # -> <work>/out/ppc386.exe + ppcx64.exe; copy them to bin/
```

| | `ppc386.exe` | `ppcx64.exe` |
|---|---|---|
| built by | `bin/ppc386` | `bin/ppcx64` |
| against | `bin/units/i386-win32` | `bin/units/x86_64-win64` |
| options | `-Twin32 -di386 -dGDB -dBROWSERLOG -Fui386 -Fusystems -Fux86 -Fu. -Fii386 -Fix86 -Fi. -Xs` | `-Twin64 -dx86_64 -dGDB -dBROWSERLOG -Fux86_64 -Fusystems -Fux86 -Fu. -Fix86_64 -Fix86 -Fi. -Xs` |
| runs on | Windows 95/98 - 11 (`system` with `SUPPORT_WIN95`, BUG-050) | 64-bit Windows |
| `-iVTOTP` | `2.6.4 win32 i386` | `2.6.4 win64 x86_64` |

The options are those of the FPC compiler Makefile; internal assembler and linker (no `bin/tools` needed), `-Xs`
strips the symbol table. Source dates are fixed to 2025-01-01 as in the unit kits; the compiler still puts its build
date in the binary (`[YYYY/MM/DD]` in `-i`), so builds on the same day are byte-identical, other days differ in
those bytes only.

Checked 2026-11-20 (Wine): both compile a string test, `test/win32/thr.pas` and an FCL test (fpjson, dom, zipper, md5,
base64, strutils, inifiles, registry, contnrs); the programs run correctly and have the same code as the ones the
Linux compilers make (only the build date string differs). `ppc386.exe` in Wine's Windows 98 and Windows 2000 mode.
Not yet: a real Windows 98 / Windows 11; `ppcross8086.exe` (FPC 3.2.2) is not built here.
