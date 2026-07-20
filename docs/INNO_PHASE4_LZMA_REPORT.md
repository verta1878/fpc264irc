# Inno Setup 5.6.1 FPC Port — Phase 4 Feature Report

**Date:** 2026-07-19
**Phase:** 4 — LZMA Decompression
**Status:** ✅ DONE

---

## What Was Done

Replaced 13 stub functions (returning 0 / no-op) with real LZMA
decompression by cross-compiling the in-tree C source with MinGW
and linking the resulting .o files into FPC via `{$L}` directives.

## Build Process

### C compilation (MinGW cross-compiler)

```bash
# LZMA1 + LZMA2 decoder (for Setup.exe)
cd Projects/Lzma2/Decoder
i686-w64-mingw32-gcc -c -O2 -I../C ISLzmaDec.c -o ISLzmaDec.o
i686-w64-mingw32-gcc -c -O2 -I../C ISLzma2Dec.c -o ISLzma2Dec.o

# Small LZMA1 decoder (for SetupLdr.exe)
cd Projects/LzmaDecode
i686-w64-mingw32-gcc -c -O2 -D_LZMA_OUT_READ -D_LZMA_IN_CB LzmaDecodeInno.c -o LzmaDecodeInno.o
```

Original used Borland C++Builder 6 (`bcc32 -c -pr -O2`). MinGW GCC
produces compatible COFF .o files that FPC's GNU ld can link.

### Object files produced

| File | Size | Symbols | Used by |
|------|------|---------|---------|
| ISLzmaDec.o | 10,872 bytes | IS_LzmaDec_Init, LzmaDec_DecodeToBuf, LzmaDec_Free + 14 internal | Setup.exe |
| ISLzma2Dec.o | 4,421 bytes | IS_Lzma2Dec_Init, Lzma2Dec_DecodeToBuf, IS_Lzma2Dec_Free + 5 internal | Setup.exe |
| LzmaDecodeInno.o | 6,094 bytes | LzmaMyDecodeProperties, LzmaMyDecoderInit, LzmaDecode + 10 internal | SetupLdr.exe |

### Pascal changes

**LZMADecomp.pas** — replaced stubs with:

```pascal
{$L ISLzmaDec.o}
{$L ISLzma2Dec.o}

function IS_LzmaDec_Init(...): TLZMASRes; cdecl; external;
function LzmaDec_DecodeToBuf(...): TLZMASRes; cdecl; external;
procedure LzmaDec_Free(...); cdecl; external;
function IS_Lzma2Dec_Init(...): TLZMASRes; cdecl; external;
function Lzma2Dec_DecodeToBuf(...): TLZMASRes; cdecl; external;
procedure IS_Lzma2Dec_Free(...); cdecl; external;

{ Symbols referenced by .o but not called from Pascal }
procedure LzmaDec_Allocate; cdecl; external;
procedure LzmaDec_AllocateProbs; cdecl; external;
procedure LzmaDec_DecodeToDic; cdecl; external;
procedure LzmaDec_FreeProbs; cdecl; external;
procedure LzmaDec_Init; cdecl; external;
procedure LzmaDec_InitDicAndState; cdecl; external;
procedure LzmaProps_Decode; cdecl; external;
```

**LZMADecompSmall.pas** — replaced stubs with:

```pascal
{$L LzmaDecodeInno.o}

function LzmaMyDecodeProperties(...): Integer; cdecl; external;
procedure LzmaMyDecoderInit(...); cdecl; external;
function LzmaDecode(...): Integer; cdecl; external;
```

**memcpy symbol fix:**

The C code calls `memcpy` (C runtime). The original LZMADecomp.pas
already provided a Pascal implementation via `Move()`. The function
needed a public alias so the linker could find it:

```pascal
function memcpy(dest, src: Pointer; n: Cardinal): Pointer;
  cdecl; [public, alias: '_memcpy'];
begin
  Move(src^, dest^, n);
  Result := dest;
end;
```

FPC's cdecl convention adds a `_` prefix on Win32. The C .o files
reference `_memcpy`. The `[public, alias: '_memcpy']` directive
exports the symbol with the exact name the linker needs.

## Binary Size Impact

| Target | Before | After | Delta | Cause |
|--------|--------|-------|-------|-------|
| Setup.exe | 14,880,521 | 14,892,672 | +12,151 | LZMA1 + LZMA2 C decoder code |
| SetupLdr.exe | 313,132 | 317,531 | +4,399 | Small LZMA1 C decoder code |
| ISCC.exe | 437,170 | 437,170 | 0 | No decompression needed |
| ISCmplr.dll | 749,054 | 749,054 | 0 | No decompression needed |

## What This Unblocks

- Setup.exe can now decompress LZMA1 and LZMA2 compressed payloads
- SetupLdr.exe can decompress the embedded setup data
- ISCC.exe already compresses with LZMA (dynamic loading via
  GetProcAddress in LZMA.pas) — now the other end can decompress

## Calling Convention Notes

The original Delphi code used Borland C++Builder .obj files with
Borland's internal linking. The Pascal declarations had no explicit
calling convention — Delphi's default `register` convention happened
to work because Borland's C compiler and Pascal compiler shared the
same ABI.

For FPC + MinGW, all declarations need explicit `cdecl` because:
- MinGW GCC uses the standard cdecl calling convention
- FPC's default is `register` (parameters in EAX/EDX/ECX)
- Without `cdecl`, parameters would be passed in registers while
  the C code expects them on the stack → crash

## Toolchain Requirements

- `i686-w64-mingw32-gcc` — MinGW cross-compiler for 32-bit Windows
  (`apt install gcc-mingw-w64-i686` on Debian/Ubuntu)
- fpc264irc Phase 9 with GNU ld for i386-win32
  (`bin/tools/i386-win32/ld`)

## Phase Status Update

| Phase | Status |
|-------|--------|
| 1. ISCC.exe | ✅ Done |
| 2. Compression | ✅ Done |
| 3. LCL integration | ✅ Done |
| **4. LZMA decompression** | **✅ Done** |
| 5. Windows resources | Next |
| 6. DFM → LFM forms | — |
| 7. PascalScript | — |
| 8. Compil32 IDE | — |
| 9. Runtime test | — |
