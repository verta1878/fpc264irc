@echo off
rem ==========================================================================
rem  FPC 2.6.4irc — Windows build script
rem
rem  Builds the Free Pascal Compiler 2.6.4irc from source, producing:
rem    - Native i386-win32 compiler
rem    - RTL + packages for win32
rem    - Optional cross-compiled RTL for go32v2, os2 (EMX)
rem
rem  Prerequisites:
rem    - A working FPC 2.6.x or 3.x already installed (to bootstrap)
rem    - GNU make for Windows (from FPC or GnuWin32)
rem    - For go32v2 cross: DJGPP binutils (as.exe, ld.exe for DJGPP)
rem
rem  Usage:
rem    build-windows.bat                  - build native compiler + RTL
rem    build-windows.bat go32v2           - build native + go32v2 cross RTL
rem    build-windows.bat all              - build native + all cross targets
rem    build-windows.bat clean            - remove build artifacts
rem
rem  Output goes to:  out\
rem ==========================================================================

setlocal enabledelayedexpansion

set ROOT=%~dp0
set ROOT=%ROOT:~0,-1%
set OUT=%ROOT%\out
set OUTBIN=%OUT%\bin
set OUTUNITS=%OUT%\units
set OUTLIB=%OUT%\lib

rem ---- Find bootstrap compiler ----
if defined FPC (
    set BOOTSTRAP_FPC=%FPC%
) else (
    where fpc >nul 2>&1
    if errorlevel 1 (
        echo ERROR: No bootstrap FPC found.
        echo Install FPC 2.6.x or 3.x, or set FPC=path\to\fpc.exe
        exit /b 1
    )
    for /f "tokens=*" %%i in ('where fpc') do set BOOTSTRAP_FPC=%%i
)

echo === FPC 2.6.4irc Windows Build ===
echo Bootstrap compiler: %BOOTSTRAP_FPC%
echo Source root:        %ROOT%
echo Output:             %OUT%
echo.

rem ---- Parse arguments ----
set DO_CLEAN=0
set TARGETS=

if "%~1"=="" goto :no_targets
if "%~1"=="clean" (
    set DO_CLEAN=1
    goto :parsed
)

:parse_loop
if "%~1"=="" goto :parsed
if "%~1"=="all" (
    set TARGETS=go32v2
    shift
    goto :parse_loop
)
set TARGETS=%TARGETS% %~1
shift
goto :parse_loop

:no_targets
:parsed

rem ---- Clean ----
if %DO_CLEAN%==1 (
    echo Cleaning...
    if exist "%OUT%" rmdir /s /q "%OUT%"
    cd /d "%ROOT%\src\compiler"
    make clean FPC="%BOOTSTRAP_FPC%" 2>nul
    cd /d "%ROOT%\src\rtl"
    make clean FPC="%BOOTSTRAP_FPC%" 2>nul
    echo Clean done.
    exit /b 0
)

if not exist "%OUTBIN%" mkdir "%OUTBIN%"
if not exist "%OUTUNITS%" mkdir "%OUTUNITS%"
if not exist "%OUTLIB%" mkdir "%OUTLIB%"

rem ====================================================================
rem  Stage 1: Build the native compiler
rem ====================================================================

echo.
echo === Stage 1: Building native compiler ===

cd /d "%ROOT%\src\compiler"
make clean FPC="%BOOTSTRAP_FPC%" CPU_TARGET=i386 2>nul
make cycle FPC="%BOOTSTRAP_FPC%" CPU_TARGET=i386 OPT="-O2"

if not exist "%ROOT%\src\compiler\ppc386.exe" (
    echo ERROR: Compiler build failed — ppc386.exe not found
    exit /b 1
)

copy /y "%ROOT%\src\compiler\ppc386.exe" "%OUTBIN%\ppc386.exe" >nul
echo Compiler: %OUTBIN%\ppc386.exe

set NEW_FPC=%OUTBIN%\ppc386.exe

rem ====================================================================
rem  Stage 2: Build native RTL + packages
rem ====================================================================

echo.
echo === Stage 2: Building native RTL ===

cd /d "%ROOT%\src\rtl"
make clean FPC="%NEW_FPC%" OS_TARGET=win32 CPU_TARGET=i386 2>nul
make all FPC="%NEW_FPC%" OS_TARGET=win32 CPU_TARGET=i386 INSTALL_UNITDIR="%OUTUNITS%\i386-win32" OPT="-O2"
make install FPC="%NEW_FPC%" OS_TARGET=win32 CPU_TARGET=i386 INSTALL_UNITDIR="%OUTUNITS%\i386-win32"

echo RTL units: %OUTUNITS%\i386-win32\

echo.
echo === Stage 2b: Building native packages ===

cd /d "%ROOT%\src\packages"
make clean FPC="%NEW_FPC%" OS_TARGET=win32 CPU_TARGET=i386 2>nul
make all FPC="%NEW_FPC%" OS_TARGET=win32 CPU_TARGET=i386 INSTALL_UNITDIR="%OUTUNITS%\i386-win32" OPT="-O2 -Fu%OUTUNITS%\i386-win32"
make install FPC="%NEW_FPC%" OS_TARGET=win32 CPU_TARGET=i386 INSTALL_UNITDIR="%OUTUNITS%\i386-win32"

echo Packages: %OUTUNITS%\i386-win32\

rem ====================================================================
rem  Stage 3: Cross-compiled RTL for requested targets
rem ====================================================================

for %%t in (%TARGETS%) do (
    call :cross_rtl %%t
)

goto :make_cfg

:cross_rtl
set TARGET=%~1
echo.
echo === Cross RTL: %TARGET% ===

if "%TARGET%"=="go32v2" (
    rem Check for DJGPP binutils
    where i686-pc-msdosdjgpp-as >nul 2>&1
    if errorlevel 1 (
        echo   SKIP: DJGPP binutils not found
        echo   Download DJGPP binutils and add to PATH
        exit /b 0
    )
    for /f "tokens=*" %%i in ('where i686-pc-msdosdjgpp-as') do set CROSS_BINDIR=%%~dpi
)

cd /d "%ROOT%\src\rtl"
make clean FPC="%NEW_FPC%" OS_TARGET=%TARGET% CPU_TARGET=i386 2>nul
make all FPC="%NEW_FPC%" OS_TARGET=%TARGET% CPU_TARGET=i386 INSTALL_UNITDIR="%OUTUNITS%\i386-%TARGET%" OPT="-O2"
make install FPC="%NEW_FPC%" OS_TARGET=%TARGET% CPU_TARGET=i386 INSTALL_UNITDIR="%OUTUNITS%\i386-%TARGET%"

echo   Units: %OUTUNITS%\i386-%TARGET%\

if "%TARGET%"=="go32v2" (
    if exist "%OUTUNITS%\i386-go32v2\sockets.ppu" (
        echo   sockets.ppu: PRESENT (Watt-32 DOS sockets)
    ) else (
        echo   WARNING: sockets.ppu not built
    )
)

exit /b 0

rem ====================================================================
rem  Stage 4: Create fpc.cfg
rem ====================================================================

:make_cfg
echo.
echo === Creating fpc.cfg ===

(
echo # FPC 2.6.4irc configuration
echo # Generated by build-windows.bat
echo.
echo # Search paths
echo -Fu%OUTUNITS%\$FPCTARGET\*
echo -Fu%OUTUNITS%\$FPCTARGET\rtl
echo.
echo # Binary utils
echo -FD%OUTBIN%
echo.
echo # Optimizations
echo -O2
) > "%OUT%\fpc.cfg"

echo Config: %OUT%\fpc.cfg

rem ====================================================================
rem  Summary
rem ====================================================================

echo.
echo ===========================================
echo  FPC 2.6.4irc build complete
echo ===========================================
echo.
echo  Compiler:  %OUTBIN%\ppc386.exe
echo  Config:    %OUT%\fpc.cfg
echo  Native:    %OUTUNITS%\i386-win32\

for %%t in (%TARGETS%) do (
    if exist "%OUTUNITS%\i386-%%t" (
        echo  Cross:     %OUTUNITS%\i386-%%t\
    )
)

echo.
echo  Usage:
echo    %OUTBIN%\ppc386.exe -Fu%OUTUNITS%\i386-win32 myprogram.pas
echo.

rem ====================================================================
rem  Stage 5: Create release archive (source + binaries)
rem ====================================================================

echo === Creating release archive ===

set RELEASE_NAME=fpc-2.6.4irc-i386-win32
set RELEASE_DIR=%OUT%\%RELEASE_NAME%
if exist "%RELEASE_DIR%" rmdir /s /q "%RELEASE_DIR%"
mkdir "%RELEASE_DIR%"

echo   Copying source...
for %%d in (compiler rtl packages utils tests patches) do (
    if exist "%ROOT%\%%d" xcopy /s /e /q /i "%ROOT%\%%d" "%RELEASE_DIR%\%%d" >nul
)
for %%f in (README.md CHANGELOG-IRC.md LICENSE Makefile Makefile.fpc build-linux.sh build-windows.bat) do (
    if exist "%ROOT%\%%f" copy /y "%ROOT%\%%f" "%RELEASE_DIR%\%%f" >nul
)

echo   Copying binaries...
mkdir "%RELEASE_DIR%\out"
xcopy /s /e /q /i "%OUT%\bin" "%RELEASE_DIR%\out\bin" >nul
xcopy /s /e /q /i "%OUT%\units" "%RELEASE_DIR%\out\units" >nul
if exist "%OUT%\lib" xcopy /s /e /q /i "%OUT%\lib" "%RELEASE_DIR%\out\lib" >nul
copy /y "%OUT%\fpc.cfg" "%RELEASE_DIR%\out\fpc.cfg" >nul

echo   Compressing...
cd /d "%OUT%"
if exist "%RELEASE_NAME%.zip" del "%RELEASE_NAME%.zip"
powershell -nologo -noprofile -command "Compress-Archive -Path '%RELEASE_NAME%' -DestinationPath '%RELEASE_NAME%.zip'"
rmdir /s /q "%RELEASE_DIR%"

echo.
echo   Release: %OUT%\%RELEASE_NAME%.zip
echo.
echo ===========================================

endlocal
