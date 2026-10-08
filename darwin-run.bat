@echo off
rem fpc264irc i386-darwin Mach-O fix - byte, 2026-10-07 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\darwin-run.bat   (next to the fpc264irc folder)
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\darwin\fpc264irc-darwin-2026-10-07.zip
rem 1 unzip into fpc264irc, overwriting (1603 files)  2 check it landed
rem 3 delete bin\units\i386-darwin\*.o (785 files) and serial.s - their code is now inside the libp*.a archives
rem 4 remove the marker
rem Works from the compilers folder OR from inside the fpc264irc folder (logs always go to the compilers folder)
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "ZIP=%BASE%darwin\fpc264irc-darwin-2026-10-07.zip"
set "LOG=%BASE%darwin-run.log"
set "DU=bin\units\i386-darwin"
echo fpc264irc darwin %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "%DU%\" (echo fpc264irc folder not found next to this batch & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%ZIP%" (echo Zip not found: %ZIP% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
echo [1/4] unzipping into fpc264irc, overwriting
where tar >nul 2>&1
if errorlevel 1 (powershell -NoProfile -Command "Expand-Archive -Force -LiteralPath '%ZIP%' -DestinationPath '%REPO%'") else (tar -xf "%ZIP%" -C "%REPO%")
if errorlevel 1 (echo Unzip failed & echo ABORT unzip failed >> "%LOG%" & pause & exit /b 1)
echo UNZIPPED fpc264irc-darwin-2026-10-07.zip - 1603 files >> "%LOG%"
echo [2/4] checking
if not exist "tools\smartpack\darwin.ok" (echo Zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
if not exist "%DU%\libpsystem.a" (echo libpsystem.a missing & echo ABORT archives missing >> "%LOG%" & pause & exit /b 1)
echo [3/4] deleting the darwin .o files and serial.s
del /f /q %DU%\*.o
if exist "%DU%\serial.s" del /f /q "%DU%\serial.s"
if exist "%DU%\*.o" (echo NOT ALL .o DELETED in %DU% >> "%LOG%") else (echo DELETED all 785 .o files in %DU% >> "%LOG%")
if not exist "%DU%\serial.s" echo DELETED %DU%\serial.s >> "%LOG%"
echo [4/4] removing marker
if exist "tools\smartpack\darwin.ok" del /f /q "tools\smartpack\darwin.ok"
if not exist "tools\smartpack\darwin.ok" echo DELETED tools\smartpack\darwin.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
pause
endlocal
