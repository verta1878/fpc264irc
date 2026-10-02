# FPC 2.6.4irc — MZ Linker Investigation Results

## Finding: Internal MZ Linker Already Exists

The internal MZ linker is **compiled into ppcross8086** and works. It was
backported from FPC 3.2.2 when i8086 support was added. The source files
were not committed to the fpc264irc repo — only the compiled binary.

Strings in ppcross8086 confirm: `TMZExeOutput`, `TMZExeHeader`,
`TMZExeSection`, `TMZExeRelocation`, `ld_int_msdos`.

## Missing Source Files (Now Recovered)

Copied from FPC 3.2.2 (`/usr/share/fpcsrc/3.2.2/compiler/`):

```
File                              Lines  Purpose
systems/t_msdos.pas                 540  MSDOS target linker config
                                         TInternalLinkerMsDos class
                                         TExternalLinkerMsDosWLink class
systems/i_msdos.pas                 121  System info (link=ld_int_msdos)
ogomf.pas                         3,226  OMF object + MZ exe output
                                         TMZExeOutput, TMZExeHeader
                                         TOmfObjInput, TOmfObjOutput
omfbase.pas                       2,916  OMF format base types
                                         OMF record types, FIXUPP
owomflib.pas                        617  OMF library reader (.a files)
                                         TOmfLibObjectReader
```

## Why Linking Fails

The internal linker (`ld_int_msdos`) IS selected by default. It runs.
But it fails because:

1. RTL units are compiled with **smartlinking** → produces `.a` archives
2. The linker looks for `.o` files (e.g. `system.o`)
3. `system.a` exists but `system.o` does not
4. Error: `Can't open object file: system.o`

The `TMZExeOutput` class uses `TOmfLibObjectReader` to read `.a` files,
but the DefaultLinkScript adds units as READOBJECT (expects `.o`), not
READSTATICLIBRARY (reads `.a`).

## The Fix

Two options:

**Option A — Rebuild RTL without smartlinking:**
Compile i8086 RTL with `-XX-` to produce `.o` instead of `.a`.
Quick fix, but loses smartlinking (larger binaries).

**Option B — Fix the internal linker to handle .a for unit objects:**
In `t_msdos.pas` `DefaultLinkScript`, when adding unit object files,
check if `.a` exists when `.o` is missing and use READSTATICLIBRARY.
Or: in the link script executor, transparently open `.a` when `.o`
lookup fails. This is the proper fix.

## What Works Now

```
ppcross8086 -Tmsdos -Wmsmall test.pas -s
  → test.o        ✅ OMF object file (1,223 bytes)
  → ppas.sh       ✅ link script (calls wlink)
  → link603.res   ✅ wlink response file
  → test.exe      ❌ needs wlink to link

ppcross8086 -Tmsdos -Wmsmall test.pas
  → Compiles      ✅
  → Internal link ❌ "Can't open object file: system.o"
                     (system.a exists but system.o doesn't)
```

## Architecture

```
i_msdos.pas (system info)
  link = ld_int_msdos          ← default: internal linker
  linkextern = ld_msdos        ← fallback: wlink

t_msdos.pas (linker classes)
  TInternalLinkerMsDos          ← uses TMZExeOutput from ogomf.pas
    CArObjectReader = TOmfLibObjectReader  ← reads .a files
    CExeOutput = TMZExeOutput              ← writes MZ .exe
    CObjInput = TOmfObjInput               ← reads .o files
  TExternalLinkerMsDosWLink     ← calls wlink
  TExternalLinkerMsDosTLink     ← calls tlink
  TExternalLinkerMsDosALink     ← calls alink

ogomf.pas (OMF + MZ output)
  TMZExeOutput                  ← full MZ exe writer
    TMZExeHeader                ← 28-byte MZ header
    TMZExeSection               ← .MZ_flat_content section
    TMZExeRelocation            ← segment fixup entries
  TOmfObjInput                  ← reads OMF .o files
  TOmfObjOutput                 ← writes OMF .o files

omfbase.pas (OMF format types)
  OMF record definitions, FIXUPP parsing

owomflib.pas (OMF library)
  TOmfLibObjectReader           ← reads .a (OMF library archives)
```

## Memory Models Supported

All 6, via `DefaultLinkScript` and prt0 selection:

```
Model    prt0    Segments              .exe type
tiny     prt0t   single (CS=DS=SS)     .com
small    prt0s   code + data           .exe
medium   prt0m   multiple code         .exe
compact  prt0c   multiple data         .exe
large    prt0l   multiple code+data    .exe
huge     prt0h   huge pointers         .exe
```

## Next Steps

1. Try Option A first: rebuild one i8086 RTL unit without smartlinking,
   test if internal linker produces a working .exe
2. If that works, rebuild all i8086 PPUs without smartlinking
3. Long term: implement Option B in ogomf.pas or link.pas

## Compiler Patch History

```
Patch 1: src/compiler/defutil.pas      — type conversion crash
Patch 2: src/compiler/nopt.pas         — register allocation
Patch 3: src/compiler/symdef.pas       — overloaded operator resolution
Patch 4: src/compiler/fppu.pas         — PPU cross-compilation writing
Patch 5: src/rtl/unix/dl.pp +          — libdl auto-link + GetProcAddress
          src/rtl/unix/dynlibs.pas
Patch 6: (pending) .o/.a resolution    — MZ internal linker fix
Source recovery: t_msdos.pas, i_msdos.pas, ogomf.pas, omfbase.pas, owomflib.pas
```
