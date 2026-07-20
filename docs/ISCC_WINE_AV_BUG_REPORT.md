# ISCC.exe Wine AV — Post-Message Processing Crash

**Date:** 2026-07-20 (updated)
**Binary:** ISCC.exe + ISCmplr.dll (FPC 2.6.4irc r3.1 Phase 9)
**Runtime:** Wine 9.0 on Ubuntu 24.04 x86_64
**Status:** Needs real Windows test to determine if Wine-only

---

## Summary

ISCC.exe crashes with Access Violation after successfully parsing
.iss scripts and loading messages. The crash occurs in post-message
processing (PopulateLanguageEntryData or language code page handling),
NOT in PE resource walking as previously suspected.

## Previous Root Cause (FIXED)

SetupLdr.exe was missing RT_RCDATA #11111 (offset table) because
`{$R}` directives couldn't find the `.res` files. This has been
fixed — all resources now embed correctly.

## Current Resource Status (VERIFIED)

```
Setup.e32 (2.5MB):
  .rsrc: 43,008 bytes
  Types: RT_BITMAP, RT_ICON, RT_RCDATA, RT_GROUP_ICON, RT_VERSION, RT_MANIFEST

SetupLdr.e32 (215KB):
  .rsrc: 8,192 bytes
  Types: RT_ICON, RT_RCDATA, RT_GROUP_ICON, RT_VERSION, RT_MANIFEST
```

RT_RCDATA #11111 (SetupLdrOffsetTable) confirmed present.

## What Works Under Wine

- ISCC.exe launches, shows version info
- ISCmplr.dll loads successfully
- .iss script parsing (all sections)
- Wizard bitmap loading
- **"Preparing Setup program executable" — succeeds**
- PrepareSetupE32 — succeeds (reads Setup.e32, patches PE header)
- Default.isl message file loading
- [LangOptions], [Messages], [CustomMessages] parsing
- "Messages in script file" — succeeds

## Where It Crashes

```
Preparing Setup program executable       ← OK
Reading default messages from Default.isl ← OK
Parsing [LangOptions], [Messages]...     ← OK
   File: Z:\...\Default.isl              ← OK
   Messages in script file               ← OK
Access violation.                         ← HERE (post-message)
```

## Exception Details

```
code=c0000005 (EXCEPTION_ACCESS_VIOLATION)
addr=0x0153DBCF    ← inside ISCmplr.dll
```

## Code Flow Analysis

```
Compile.pas DoCompile:
  line 8750: Read wizard images           ← OK
  line 8759: PrepareSetupE32(SetupE32)    ← OK
  line 8770: Read Default.isl             ← OK
  line 8800: ReadMessagesFromScript        ← OK ("Messages in script file")
  line 8810+: PopulateLanguageEntryData    ← CRASH (suspected)
             or language codepage handling
             or EnumIniSection for [Files]
```

The crash is in the code that runs AFTER message parsing completes.
Possible causes under Wine:
- String/codepage conversion in PopulateLanguageEntryData
- Memory allocation for language data streams
- Wine's ANSI codepage handling differs from real Windows

## Testing Needed

1. Run `ISCC.exe test.iss` on real Windows
2. If it works → Wine string/codepage issue, not our code
3. If same AV → debug with Lazarus or gdb at the crash point

## Not an fpc264irc Bug

This is either:
- Wine codepage/string handling incompatibility (most likely)
- An Inno ANSI string processing issue specific to FPC's
  AnsiString implementation under Wine (possible)
- A real bug in our code (unlikely — all prior stages work)
