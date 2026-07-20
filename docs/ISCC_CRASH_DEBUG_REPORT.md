# ISCC.exe Crash Report — "Preparing Setup program executable"

**Date:** 2026-07-19
**Binary:** ISCC.exe 437KB + ISCmplr.dll 749KB (FPC 2.6.4irc Phase 9)
**Runtime:** Wine 9.0 on Ubuntu 24.04 x86_64
**Script:** Minimal test .iss with [Setup] and [Files] sections

---

## Crash Summary

ISCC.exe successfully parses the .iss script, loads ISCmplr.dll,
reads wizard bitmaps, reads Default.isl messages, and begins
preparing the output installer. It crashes with an Access Violation
at the "Preparing Setup program executable" stage.

## Console Output

```
Inno Setup 5 Command-Line Compiler
Copyright (C) 1997-2018 Jordan Russell. All rights reserved.
Portions Copyright (C) 2000-2018 Martijn Laan

Compiler engine version: Inno Setup 5.6.1 (a)

Parsing [Setup] section, line 2
Parsing [Setup] section, line 3
...
Reading file (WizardImageFile)
   File: Z:\tmp\inno_out\WIZMODERNIMAGE.BMP
Reading file (WizardSmallImageFile)
   File: Z:\tmp\inno_out\WIZMODERNSMALLIMAGE.BMP
Preparing Setup program executable
Reading default messages from Default.isl
Parsing [LangOptions], [Messages], and [CustomMessages] sections
   File: Z:\tmp\inno_out\Default.isl
   Messages in script file
Access violation.
```

## Exception Details (Wine SEH trace)

```
code=c0000005 (EXCEPTION_ACCESS_VIOLATION)
flags=0
addr=0153697F          ← crash address (in ISCmplr.dll code)
info[0]=00000000       ← read violation (not write)
info[1]=0158b478       ← address being read (invalid/unmapped)

Register dump:
  eax=00004faa  ebx=00000000  ecx=00002c0c  edx=0000004f
  esi=01b504c0  edi=01b5071d  ebp=0144fa94  esp=0144fa80
```

## Root Cause

The crash occurs in `UpdateSetupPEHeaderFields` or
`SeekToResourceData` (both in Compile.pas / ResUpdate.pas).
These functions parse the PE resource directory of SETUP.E32
(our compiled Setup.exe renamed).

**Our Setup.exe has no PE resource section.** All `{$R *.res}`
directives are disabled in Setup.dpr:

```pascal
{ $R *.RES}
{ $R SetupVersion.res}
{ $R IMAGES.RES}
```

Without any linked resources, FPC produces a PE executable with
no `.rsrc` section. When the compiler code calls
`SeekToResourceData(ExeFile, RT_RCDATA, SetupLdrOffsetTableResID)`
to find the offset table resource inside SetupLdr.e32, it tries
to parse a nonexistent resource directory. The function reads
garbage memory beyond the PE sections → Access Violation.

The same issue affects SETUP.E32: `UpdateSetupPEHeaderFields`
calls `SeekToPEHeader` which succeeds (PE header exists), but
then later code paths call `SeekToResourceData` on Setup.e32
to find and update version info resources that don't exist.

## Call Chain to Crash

```
ISCC.dpr main
  → ISCompileScript (CompInt)
    → TSetupCompiler.DoCompile (Compile.pas line ~8759)
      → PrepareSetupE32(SetupE32) (line 8300)
        → TMemoryFile.Create('SETUP.E32')  ← succeeds
        → UpdateSetupPEHeaderFields(M, ...)  ← may succeed (PE header ok)
      → later: SeekToResourceData(ExeFile, RT_RCDATA, ...)  ← CRASH
        → walks PE section table
        → finds no .rsrc section
        → reads invalid memory at offset stored in PE header
        → ACCESS_VIOLATION at 0x0158b478
```

## What Needs to Happen (Phase 5)

SETUP.E32 and SetupLdr.e32 must have embedded resources for the
compiler to produce an installer package. At minimum:

| File | Required Resource | Type | Purpose |
|------|------------------|------|---------|
| SetupLdr.e32 | SetupLdrOffsetTable | RT_RCDATA | Patched with payload offsets |
| SetupLdr.e32 | Version info | RT_VERSION | File properties |
| Setup.e32 | Version info | RT_VERSION | File properties |
| Setup.e32 | Images | RT_RCDATA | Wizard bitmaps |

The resources need to be compiled with `fpcres` (in fpc264irc)
or `windres` and linked into the executables via `{$R}` directives
before ISCC can produce a working installer.

## Workaround

None currently. Phase 5 (Windows resources) must be completed
before ISCC can build installer packages.

## What Works

Everything up to the resource-dependent step:

- ✅ ISCC.exe launches and shows version/help
- ✅ ISCmplr.dll loads successfully
- ✅ .iss script parsing (all sections)
- ✅ Wizard bitmap loading
- ✅ Default.isl message loading
- ✅ [LangOptions], [Messages], [CustomMessages] parsing
- ❌ "Preparing Setup program executable" → AV (no resources)

## Files Required in ISCC Directory

```
ISCC.exe           ← our compiled binary
ISCmplr.dll        ← our compiled binary
Setup.e32          ← our Setup.exe renamed (needs resources)
SetupLdr.e32       ← our SetupLdr.exe renamed (needs resources)
Default.isl        ← from issrc Files/ directory
WizModernImage.bmp ← from issrc Files/ directory
WizModernSmallImage.bmp
islzma.dll         ← from issrc Files/ (LZMA compressor DLL)
islzma32.exe       ← from issrc Files/ (LZMA helper)
isbzip.dll         ← from issrc Files/ (bzip2)
iszlib.dll         ← from issrc Files/ (zlib)
isunzlib.dll       ← from issrc Files/ (zlib decompressor)
```
