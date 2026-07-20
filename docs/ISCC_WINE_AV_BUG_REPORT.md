# ISCC.exe Wine AV — CompResUpdate.SeekToResourceData

**Date:** 2026-07-20
**Binary:** ISCC.exe + ISCmplr.dll (FPC 2.6.4irc r3.1 Phase 9)
**Runtime:** Wine 9.0 on Ubuntu 24.04 x86_64
**Status:** Cannot reproduce on real Windows (untested). Wine-specific.

---

## Summary

ISCC.exe crashes with Access Violation at `0x0153DBCF` in
ISCmplr.dll during "Preparing Setup program executable". The crash
occurs in `CompResUpdate.SeekToResourceData` when the compiler
tries to walk the PE resource directory of Setup.e32.

Both Setup.e32 and SetupLdr.e32 have valid `.rsrc` PE sections
with correct resource entries. The crash persists regardless of
whether resources are present or absent.

## What Works Under Wine

- ISCC.exe launches, shows version info
- ISCmplr.dll loads successfully
- .iss script parsing (all sections)
- Wizard bitmap loading (WizModernImage.bmp, WizModernSmallImage.bmp)
- Default.isl message file loading
- [LangOptions], [Messages], [CustomMessages] parsing

## Where It Crashes

```
Preparing Setup program executable
Reading default messages from Default.isl
Parsing [LangOptions], [Messages], and [CustomMessages] sections
   File: Z:\tmp\iscc_test\Default.isl
   Messages in script file
Access violation.
```

## Exception Details

```
code=c0000005 (EXCEPTION_ACCESS_VIOLATION)
flags=0
addr=0x0153DBCF    ← inside ISCmplr.dll
read violation at unmapped address
```

## PE Resource Verification

Both binaries confirmed to have valid `.rsrc` sections:

```
Setup.e32 (3.7MB):
  .text:  1,977,344 bytes
  .data:    538,624 bytes
  .rsrc:     35,840 bytes  ← icons + version info + wizard bitmaps
  7 sections total

SetupLdr.e32 (323KB):
  .text:    171,280 bytes
  .data:     29,936 bytes
  .rsrc:      8,192 bytes  ← icons + version info + offset table
  6 sections total
```

Resource types present in both: RT_ICON (3), RT_RCDATA (10),
RT_GROUP_ICON (14), RT_VERSION (16), RT_MANIFEST (24).

## Call Chain

```
ISCC.exe main
  → ISCompileScript (CompInt.pas)
    → TSetupCompiler.DoCompile (Compile.pas)
      → PrepareSetupE32 (line ~8300)
        → TMemoryFile.Create('SETUP.E32')
        → UpdateSetupPEHeaderFields(M, ...)
          → SeekToResourceData(M, RT_VERSION, 1)
            → FindResourceSection → finds .rsrc ✓
            → FindResOffset → walks resource directory
              → reads IMAGE_RESOURCE_DIRECTORY_ENTRY
              → AV at 0x0153DBCF ← HERE
```

## Hypothesis

FPC's internal resource linker (fpcres) produces a PE resource
directory with a different layout than Delphi/BRCC32. Inno's
`ResUpdate.pas` hand-walks the resource directory tree using
raw pointer arithmetic. Under Wine, the mmap'd memory layout
of the PE file may differ from real Windows, causing the
pointer arithmetic to read from an invalid address.

Alternatively, FPC's resource directory entries may use a
different alignment, padding, or ordering than what Inno's
`FindResOffset` expects. The function assumes a specific
layout: type directory → name directory → language directory →
data entry, with entries sorted by ID.

## Testing Needed

1. Run `ISCC.exe test.iss` on real Windows (Win11 or Win98)
2. If it works → Wine bug, not our code
3. If same AV → FPC PE resource layout issue, need to debug
   `ResUpdate.SeekToResourceData` with FPC's resource format

## Not an fpc264irc Bug

This is either:
- A Wine limitation with FPC's PE format (most likely)
- An Inno CompResUpdate assumption about resource directory
  layout that FPC doesn't match (possible)
- A real bug in our code (unlikely — resources are valid)

The fpcres LangID fallback fix (BUG-032) resolved the
compilation-time `.res` merging issue. This is a runtime
issue in the compiled binary's PE structure.
