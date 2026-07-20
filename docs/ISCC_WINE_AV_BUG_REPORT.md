# ISCC.exe Wine AV — Post-Message Processing Crash

**Date:** 2026-07-20
**Binary:** ISCC.exe + ISCmplr.dll built against fpc264irc commit b7b5254f ("inno wine fix")
**Runtime:** Wine 9.0 + wine32:i386 on Ubuntu 24.04 x86_64
**Status:** AV persists after wine fix commit. Needs real Windows test.

---

## Summary

ISCC.exe crashes with Access Violation in post-message processing.
The crash persists after the fpc264irc "inno wine fix" commit
(b7b5254f). All resources are correctly embedded. PrepareSetupE32
and message parsing both succeed. The crash is after "Messages in
script file" — in PopulateLanguageEntryData, language codepage
handling, or the transition to file compression.

## Build Details

- fpc264irc: commit b7b5254f ("inno wine fix")
- RTL: 589 PPUs
- LCL: rebuilt from source (50 LazUtils + 37 base + 90 win32)
- fpcres: system FPC 3.2.2 fpcres (installed to toolchain)
- Source: innosetup-5_6_1-fpc-src_tar.gz (uploaded, good tarball)
- All 5 targets compile clean

## Binaries

| File | Size | Status |
|------|------|--------|
| ISCC.exe | 437KB | compiles, runs under Wine |
| ISCmplr.dll | 1.9MB | loads correctly |
| Setup.exe | 2.5MB | compiles, has .rsrc (43KB, 7 resource types) |
| SetupLdr.exe | 215KB | compiles, has .rsrc (8KB, 5 resource types) |
| Compil32.exe | 2.3MB | compiles |

## Resource Verification

```
Setup.exe:    RT_BITMAP, RT_ICON, RT_RCDATA, RT_GROUP_ICON, RT_VERSION, RT_MANIFEST
SetupLdr.exe: RT_ICON, RT_RCDATA, RT_GROUP_ICON, RT_VERSION, RT_MANIFEST
```

RT_RCDATA #11111 (SetupLdrOffsetTable) confirmed present in SetupLdr.

## What Works Under Wine

1. ISCC.exe launches, shows version
2. ISCmplr.dll loads
3. .iss script parsing (all sections)
4. Wizard bitmap loading
5. "Preparing Setup program executable" — PrepareSetupE32 succeeds
6. Default.isl message loading
7. [LangOptions], [Messages], [CustomMessages] parsing
8. "Messages in script file" — ReadMessagesFromScript succeeds
9. **Access violation** — post-message processing

## Exception

```
code=c0000005 (EXCEPTION_ACCESS_VIOLATION)
addr=0x0153DBCF (inside ISCmplr.dll)
```

## Code Flow (Compile.pas)

```
line 8750: Read wizard images              <- OK
line 8759: PrepareSetupE32(SetupE32)       <- OK
line 8770+: ReadDefaultMessages            <- OK
line 8800+: ReadMessagesFromScript          <- OK
line 8810+: PopulateLanguageEntryData       <- CRASH (suspected)
```

## What Has Been Ruled Out

- Missing resources — all present, verified
- Missing RT_RCDATA #11111 — confirmed in SetupLdr
- fpcres LangID bug — BUG-032 fixed
- PE resource directory layout — PrepareSetupE32 succeeds
- fpc264irc wine fix commit b7b5254f — does not fix this crash

## Likely Cause

Wine ANSI string/codepage handling differs from real Windows.
The crash occurs in language data processing after message parsing.
FPC AnsiString implementation under Wine may behave differently.

## Next Step

Test on real Windows. If `ISCC.exe test.iss` produces test-setup.exe,
this is Wine-only and not a code bug.
