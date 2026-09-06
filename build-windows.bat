@echo off
REM FPC 2.6.4irc r311 — Windows Build Script
REM Requires: bin\ppc386.exe and bin\ppcx64.exe on PATH

echo FPC 2.6.4irc r311 — Build
echo.

if not exist bin\ppc386.exe (
    echo ERROR: bin\ppc386.exe not found.
    echo Download from: https://github.com/verta1878/fpc264irc
    pause
    exit /b 1
)

echo Building Win32 RTL...
bin\ppc386 -Twin32 -Us -Sg ^
  -Fusrc\rtl\win32 -Fusrc\rtl\win -Fusrc\rtl\i386 -Fusrc\rtl\inc -Fusrc\rtl\objpas ^
  -Fisrc\rtl\inc -Fisrc\rtl\win -Fisrc\rtl\win32 -Fisrc\rtl\i386 -Fisrc\rtl\objpas ^
  -Fisrc\rtl\win\wininc ^
  -FUbin\units\i386-win32 src\rtl\win32\system.pp
if errorlevel 1 (
    echo ERROR: system.pp failed.
    pause
    exit /b 1
)
echo system.pp OK

echo.
echo Build complete. Use ppc386 -Twin32 to compile your programs.
pause
