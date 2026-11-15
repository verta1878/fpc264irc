@echo off
rem fpc264irc go32v2: Move fix for DOSBox (BUG-044) + fossil/serial_irq built (BUG-045) - byte, 2026-10-15 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\dosmove-run.bat   (or inside the fpc264irc folder)
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\dosmove\fpc264irc-dosmove-2026-10-15.zip
rem Works from the compilers folder OR from inside the fpc264irc folder (log always goes to the compilers folder)
rem 1 unzip 21 files, overwriting (18 changed, 2 new: src\rtl\i386\fmovgo32.inc, docs\BUILD-KNOBS.md; + marker)
rem 2 check   3 remove marker.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "ZIP=%BASE%dosmove\fpc264irc-dosmove-2026-10-15.zip"
set "LOG=%BASE%dosmove-run.log"
echo fpc264irc dosmove %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "bin\units\i386-go32v2\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%ZIP%" (echo Zip not found: %ZIP% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
if not exist "tools\go32v2-build\build.sh" (echo Apply the go32v2 delivery first & echo ABORT go32v2 delivery missing >> "%LOG%" & pause & exit /b 1)
echo [1/3] unzipping into fpc264irc, overwriting
where tar >nul 2>&1
if errorlevel 1 (powershell -NoProfile -Command "Expand-Archive -Force -LiteralPath '%ZIP%' -DestinationPath '%REPO%'") else (tar -xf "%ZIP%" -C "%REPO%")
if errorlevel 1 (echo Unzip failed & echo ABORT unzip failed >> "%LOG%" & pause & exit /b 1)
echo UNZIPPED fpc264irc-dosmove-2026-10-15.zip - 21 files >> "%LOG%"
echo REPLACED bin\units\i386-go32v2 system.ppu system.a serial.ppu serial.a serial_irq.ppu fossil.ppu >> "%LOG%"
echo NEW src\rtl\i386\fmovgo32.inc docs\BUILD-KNOBS.md >> "%LOG%"
echo [2/3] checking
if not exist "tools\smartpack\dosmove.ok" (echo Zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
if not exist "src\rtl\i386\fmovgo32.inc" echo CHECK fmovgo32.inc missing >> "%LOG%"
if not exist "docs\BUILD-KNOBS.md" echo CHECK BUILD-KNOBS.md missing >> "%LOG%"
findstr /c:"COM_IRQ" "src\packages\serial\serial.pp" >nul
if errorlevel 1 echo CHECK serial.pp COM_IRQ missing >> "%LOG%"
findstr /c:"KEEP = {}" "tools\go32v2-build\drive.py" >nul
if errorlevel 1 echo CHECK drive.py KEEP not empty >> "%LOG%"
echo [3/3] removing marker
if exist "tools\smartpack\dosmove.ok" del /f /q "tools\smartpack\dosmove.ok"
if not exist "tools\smartpack\dosmove.ok" echo DELETED tools\smartpack\dosmove.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
pause
endlocal
