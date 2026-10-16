# Build knobs — byte, 2026-10-15

Every build setting that switches something on or off (0 / 1). Each one is also described in the file that reads it.

| Knob | Where | How to set | 0 | 1 |
|---|---|---|---|---|
| `FPC_MOVE_NOFPU` | `src/rtl/i386/fmovgo32.inc` (go32v2 RTL `system`) | define it when building the go32v2 RTL: `-dFPC_MOVE_NOFPU`, e.g. `OPT=-dFPC_MOVE_NOFPU tools/go32v2-build/build.sh i386` | not defined (default): at startup one qword goes through the FPU (`fild` / `fistp`); if it does not come back the same (DOSBox 0.74 and other emulators with a 53-bit FPU), `Move` uses the plain `rep movsb` copy; a real x87 keeps the faster FPU copy | defined: `Move` never copies through the FPU (always the plain copy, no startup test) |

`bin/units/i386-go32v2` is built with `FPC_MOVE_NOFPU` = 0. Background: docs/bugsfixed.md BUG-044.
