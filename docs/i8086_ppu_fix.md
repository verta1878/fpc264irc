# i8086 PPU Loading Fix — EListError Crash

## Problem

The `ppcross8086` cross-compiler crashes when loading PPU files compiled for
the i8086 target:

```
EListError: List count too large (1045430272)
```

The value `1045430272` = `0x3E53C800` is a 2-byte i8086 pointer zero-extended
to 8 bytes by the x86_64 host. The PPU reader reads `aint`-sized values using
the **host** pointer size (8 bytes on x86_64) instead of the **target** size
(2 bytes on i8086).

## Root Cause

In `compiler/ppu.pas`, the functions `getaint`, `getasizeint`, `getaword`, and
`putaint` use compile-time `{$ifdef cpu64bitalu}` to decide how many bytes to
read. This is the HOST cpu size, not the TARGET cpu size. When an x86_64-hosted
cross-compiler reads an i8086 PPU, it reads 8 bytes where only 2 were written.

## Fix

Replace the compile-time `{$ifdef}` dispatch with runtime dispatch using
`CpuAluBitSize[tsystemcpu(header.cpu)]` from the PPU header. The
`{$ifdef generic_cpu}` path already does this correctly — the fix is to make
ALL builds use that path, not just GENERIC_CPU builds.

### Patch (apply to compiler/ppu.pas)

For each of `getaint`, `getasizeint`, `getaword`, `putaint`:

**Before:**
```pascal
function tppufile.getaint:aint;
begin
{$ifdef generic_cpu}
  if CpuAluBitSize[tsystemcpu(header.cpu)]=64 then
    result:=getint64
  ...
{$else not generic_cpu}
{$ifdef cpu64bitalu}
  result:=getint64;
{$else cpu64bitalu}
  result:=getlongint;
{$endif cpu64bitalu}
{$endif not generic_cpu}
end;
```

**After:**
```pascal
function tppufile.getaint:aint;
begin
  if CpuAluBitSize[tsystemcpu(header.cpu)]=64 then
    result:=getint64
  else if CpuAluBitSize[tsystemcpu(header.cpu)]=32 then
    result:=getlongint
  else if CpuAluBitSize[tsystemcpu(header.cpu)]=16 then
    result:=smallint(getword)
  else if CpuAluBitSize[tsystemcpu(header.cpu)]=8 then
    result:=shortint(getbyte)
  else begin
    error:=true;
    result:=0;
  end;
end;
```

Apply the same pattern to `getasizeint` (uses `CpuAddrBitSize`), `getaword`
(uses `CpuAluBitSize`, returns unsigned), and `putaint`.

## Impact

This fix is required for ANY cross-compiler where the host and target have
different pointer/integer sizes. It affects:
- x86_64 → i8086 (8 bytes → 2 bytes) — **the current blocker**
- x86_64 → i386 (8 bytes → 4 bytes) — works by accident because getint64
  reads valid data, but wastes 4 bytes per value
- Any future 64-bit → 16-bit or 64-bit → 8-bit cross-compilation

## Status

The patch has been applied to `src/compiler/ppu.pas` in the fpc264irc source
tree. The `ppcross8086` binary needs to be rebuilt from the patched FPC 3.0
source (the binary was originally built from FPC 3.0, not from this 2.6.4 tree).

Once rebuilt, the following will unblock:
- `fossil_dos.pas` (172 lines, ready)
- `sockets.pp` for Watt-32 linking
- `netmodem.pas` bridge (197 lines, ready)
- Multi-unit i8086 programs in general
