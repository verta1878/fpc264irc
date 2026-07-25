@echo off
rem ======================================================================
rem  build-win32-rtl.bat — Build Win32 RTL natively on Windows
rem
rem  This fixes Runtime Error 216 on Windows 11 by building the RTL
rem  with a NATIVE Windows compiler instead of cross-compiling from Linux.
rem
rem  Prerequisites:
rem    1. FPC 2.6.4 installed on Windows (any version)
rem    2. This repo extracted somewhere (e.g., C:\fpc264irc)
rem
rem  Usage:
rem    cd C:\fpc264irc
rem    tools\build-win32-rtl.bat
rem
rem  Output:
rem    bin\units\i386-win32\  — rebuilt Win32 RTL PPUs
rem ======================================================================

setlocal

set ROOT=%~dp0..
set SRC=%ROOT%\src\rtl
set OUT=%ROOT%\bin\units\i386-win32

rem Find FPC compiler
where ppc386 >nul 2>&1
if errorlevel 1 (
    echo ERROR: ppc386.exe not found in PATH
    echo Install FPC 2.6.4 for Windows first.
    exit /b 1
)

for /f "tokens=*" %%v in ('ppc386 -iV') do set FPCVER=%%v
echo FPC version: %FPCVER%
echo Source: %SRC%
echo Output: %OUT%
echo.

rem Build RTL
echo === Building Win32 RTL ===
cd /d "%SRC%"
make clean OS_TARGET=win32 CPU_TARGET=i386 FPC=ppc386
make all OS_TARGET=win32 CPU_TARGET=i386 FPC=ppc386 ^
    INSTALL_UNITDIR="%OUT%"
make install OS_TARGET=win32 CPU_TARGET=i386 FPC=ppc386 ^
    INSTALL_UNITDIR="%OUT%"

echo.
echo === Building packages ===
cd /d "%ROOT%\src"
make -C packages all OS_TARGET=win32 CPU_TARGET=i386 FPC=ppc386 ^
    INSTALL_UNITDIR="%OUT%" OPT="-Fu%OUT%"
make -C packages install OS_TARGET=win32 CPU_TARGET=i386 FPC=ppc386 ^
    INSTALL_UNITDIR="%OUT%"

echo.
echo === Done ===
echo Win32 RTL rebuilt natively. Try building Mystic now:
echo   ppc386 -Twin32 -Fu%OUT% mystic\mystic.pas
echo.

endlocal
