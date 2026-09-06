# x86_64 Compiler Bootstrap

FPC 2.6.4 shipped with an incomplete x64 backend. Three classes of bugs prevented the RTL from compiling for x86_64-win64:

1. **Enum range check overflow** — ordinal constants promoted to 64-bit, failing 32-bit range checks
2. **Multi-string concat** — `fpc_ansistr_concat_multi` absent from 2.6.4 RTL; shortstring path has Pointer/PShortString mismatch on x64
3. **Open array size ICE** — `tarraydef.size` crashes on open arrays with overflowed bounds; `getmangledparaname` crashes on fixed arrays

## The 4 Patches

### defutil.pas — Range Check Demotion

When the constant evaluator checks if an ordinal value fits a target type, it fires `parser_e_range_check_error`. On x64, valid enum values (e.g. `tkClass = 15`) fail this check due to SizeInt promotion.

**Fix:** If the value is non-negative and fits the target type's byte storage (or is ≤ 255 for set elements), demote to `parser_w_range_check_error` (warning).

### nopt.pas — Multi-String Concat Disabled

`genmultistringadd` converts `a + b + c` into a call to `fpc_*_concat_multi` with an open array of operands. Two problems:
- `fpc_ansistr_concat_multi` does not exist in FPC 2.6.4 RTL
- `fpc_shortstr_concat_multi` expects `array of PShortString` but `caddrnode` produces `Pointer` — compatible on i386, rejected on x64

**Fix:** `canbemultistringadd` unconditionally returns `false`. String concatenation falls back to chained 2-operand `fpc_*str_concat` calls. Negligible performance impact.

### symdef.pas — ICE 99080501 + 200204176

`tarraydef.size` calls `internalerror(99080501)` when `highrange < lowrange` (open array). On x64, arrays loaded from PPUs or created by the type system can have inverted bounds.

`tarraydef.getmangledparaname` calls `internalerror(200204176)` for arrays that aren't recognized as open or array-of-const.

**Fix:** Return `sizeof(pint)` for open arrays (same as dynamic arrays — both are passed by reference). Fall through to element-based mangling for fixed arrays.

### fppu.pas — Bootstrap Bypass

The PPU loader checks source file timestamps and CRC checksums. When source timestamps don't match the PPU's recorded values, it triggers recompilation — which fails because the system unit can't recompile itself.

**Fix:** `do_compile := true` assignments for `rr_sourcenewer` and `rr_crcchanged` are commented out. Only needed during bootstrap; production use doesn't hit these paths.

## Bootstrap Procedure

Requires: Linux x86_64 host with `bin/ppc386` (i386 compiler) and `bin/units/i386-linux/` + `bin/units/x86_64-linux/` PPUs.

### Stage 1: ppc386 → ppcx64 (i386 binary)

```bash
# Remove stale PPUs from /tmp/ if any
rm -f /tmp/*.ppu /tmp/*.o
mkdir -p /tmp/ppcx64_build

# Copy i386-linux PPUs, remove CPU-specific units that conflict:
mkdir -p /tmp/bootstrap
cp bin/units/i386-linux/*.ppu bin/units/i386-linux/*.o /tmp/bootstrap/
rm -f /tmp/bootstrap/cpuinfo.* /tmp/bootstrap/cpubase.* \
      /tmp/bootstrap/aasmcpu.* /tmp/bootstrap/cgcpu.*

# Build i386 binary targeting x86_64:
bin/ppc386 -Tlinux -dx86_64 -n \
  -Fu/tmp/bootstrap \
  -Fusrc/compiler/x86_64 -Fusrc/compiler/x86 \
  -Fusrc/compiler/targets -Fusrc/compiler/systems -Fusrc/compiler \
  -Fisrc/compiler -Fisrc/compiler/x86 -Fisrc/compiler/x86_64 \
  -FE/tmp/ppcx64_build/ \
  src/compiler/pp.pas -o/tmp/ppcx64_build/ppcx64_stage2
```

Output: 32-bit ELF binary that generates x86_64 code. `sizeof(pint) = 4` (host) — incorrect for target calculations.

### Stage 2: ppcx64(i386) → ppcx64(native x64)

```bash
# Use stage 1 compiler with x86_64-linux PPUs to build native:
/tmp/ppcx64_build/ppcx64_stage2 -Tlinux -dx86_64 \
  -Fubin/units/x86_64-linux \
  -Fusrc/compiler -Fusrc/compiler/x86 -Fusrc/compiler/x86_64 \
  -Fusrc/compiler/targets -Fusrc/compiler/systems \
  -Fisrc/compiler -Fisrc/compiler/x86 -Fisrc/compiler/x86_64 \
  -Fisrc/rtl/inc -Fisrc/rtl/linux -Fisrc/rtl/unix \
  -Fisrc/rtl/x86_64 -Fisrc/rtl/objpas \
  -Fisrc/rtl/objpas/sysutils -Fisrc/rtl/objpas/classes \
  -Fisrc/rtl/linux/x86_64 -Fisrc/rtl/unix/x86_64 \
  -FE/tmp/ppcx64_build/ \
  src/compiler/pp.pas -o/tmp/ppcx64_build/ppcx64_native
```

Output: 64-bit ELF binary. `sizeof(pint) = 8` — correct for all target calculations.

### Stage 3: Compile Win64 RTL

```bash
cp /tmp/ppcx64_build/ppcx64_native bin/ppcx64

bin/ppcx64 -Twin64 -Us -Sg \
  -Fusrc/rtl/win64 -Fusrc/rtl/win -Fusrc/rtl/x86_64 \
  -Fusrc/rtl/inc -Fusrc/rtl/objpas \
  -Fisrc/rtl/inc -Fisrc/rtl/win -Fisrc/rtl/win64 \
  -Fisrc/rtl/x86_64 -Fisrc/rtl/objpas -Fisrc/rtl/win/wininc \
  -FUbin/units/x86_64-win64 src/rtl/win64/system.pp
```

## Why sizeof(pint) Matters

FPC 2.6.4's compiler uses `sizeof(pint)` for target pointer sizes (dynamic array size, procvar size). When cross-compiled by ppc386 (i386 → x64), `sizeof(pint) = 4` at compile time but the target needs 8. The native x64 compiler resolves this: `sizeof(pint) = 8` matches the target.

FPC 3.0+ introduced `sizeof_aint` as a target-specific constant. FPC 2.6.4 lacks this, making the native bootstrap essential.

## Upstream TODOs (pre-existing, not addressed)

These are in the original FPC 2.6.4 source, not introduced by our patches:

- `symdef.pas:3267` — TODO: remove fpu_used loading
- `symdef.pas:4779` — TODO: Remove getparentdef hack
- `fppu.pas:1038` — TODO: Remove ibasmsymbols
