# Win32 Runtime Error 216 on Windows 11

## Problem
All Win32 binaries cross-compiled from Linux crash at startup with Runtime
Error 216 (Access Violation) on Windows 11. Wine works fine.

## Root Cause
The Win32 RTL (system.o, sysutils.o, etc.) was cross-compiled on Linux using
ppc386 bootstrapped from FPC 3.2.2. The FPC 3.2.2 code generator produces
subtly different machine code than a native FPC 2.6.4 compiler for certain
Win32 API calling patterns in the RTL initialization sequence. Wine tolerates
these differences; Windows 11 does not.

The original r3.x builds worked because they shipped with system.o from the
FPC 2.6.4 binary release, which was compiled natively on Windows.

## Fix
Rebuild the Win32 RTL **natively on Windows**:

```cmd
cd C:\fpc264irc
tools\build-win32-rtl.bat
```

This uses your installed Windows FPC to compile system.pp and all RTL units,
producing native-compatible object files that Windows 11 accepts.

## Workarounds tried (did NOT fix):
- PE header patching (NX_COMPAT, SubsystemVersion 6.0) — `tools/pe-win11-fix.py`
- Disabling WStrInitTablesTable loop — harmless since count=0 for Mystic
- Different optimization levels

## Files
- `tools/build-win32-rtl.bat` — Run on Windows to rebuild RTL
- `tools/pe-win11-fix.py` — PE header patcher (apply anyway for best compat)
- `tools/build-mystic-win32.sh` — Linux cross-compile + PE patch
