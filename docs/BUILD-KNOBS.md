# Build knobs — byte, 2026-10-15

Every build setting that switches something on or off (0 / 1). Each one is also described in the file that reads it.

| Knob | Where | How to set | 0 | 1 |
|---|---|---|---|---|
| `FPC_MOVE_NOFPU` | `src/rtl/i386/fmovgo32.inc` (go32v2 RTL `system`) | define it when building the go32v2 RTL: `-dFPC_MOVE_NOFPU`, e.g. `OPT=-dFPC_MOVE_NOFPU tools/go32v2-build/build.sh i386` | not defined (default): at startup one qword goes through the FPU (`fild` / `fistp`); if it does not come back the same (DOSBox 0.74 and other emulators with a 53-bit FPU), `Move` uses the plain `rep movsb` copy; a real x87 keeps the faster FPU copy | defined: `Move` never copies through the FPU (always the plain copy, no startup test) |
| `SUPPORT_WIN95` | `src/rtl/win/systhrd.inc` (Windows RTL `system`, i386-win32 + x86_64-win64) | define it when building `system`: `-dSUPPORT_WIN95`; for i386-win32 it is on the `system` line of `tools/win32-build/opts-i386.txt` | not defined: `TryEnterCriticalSection` imported from kernel32 - the program needs Windows NT 4 / 2000 or later (Windows 95/98/ME refuse to start it) | defined: the function is looked up at startup; when kernel32 has none (Windows 95/98/ME) `system`'s own version is used |

`bin/units/i386-go32v2` is built with `FPC_MOVE_NOFPU` = 0. Background: docs/bugsfixed.md BUG-044.
`bin/units/i386-win32` is built with `SUPPORT_WIN95` = 1 (since 2026-11-20, BUG-050); `bin/units/x86_64-win64` with 0
(64-bit Windows always has the function).
