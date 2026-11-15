@echo off
rem fpc264irc exact source rebuild 3: i386-linux + Lazarus i386-linux - byte, 2026-10-13 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\linux-run.bat   (or inside the fpc264irc folder)
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\linux\fpc264irc-linux-2026-10-13.zip
rem Works from the compilers folder OR from inside the fpc264irc folder (log always goes to the compilers folder)
rem 1 unzip 788 files, overwriting   2 check   3 remove marker.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "ZIP=%BASE%linux\fpc264irc-linux-2026-10-13.zip"
set "LOG=%BASE%linux-run.log"
echo fpc264irc linux %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "bin\units\i386-linux\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%ZIP%" (echo Zip not found: %ZIP% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
if not exist "tools\freebsd-build\build.sh" (echo Apply the freebsd delivery first & echo ABORT freebsd delivery missing >> "%LOG%" & pause & exit /b 1)
echo [1/3] unzipping into fpc264irc, overwriting
where tar >nul 2>&1
if errorlevel 1 (powershell -NoProfile -Command "Expand-Archive -Force -LiteralPath '%ZIP%' -DestinationPath '%REPO%'") else (tar -xf "%ZIP%" -C "%REPO%")
if errorlevel 1 (echo Unzip failed & echo ABORT unzip failed >> "%LOG%" & pause & exit /b 1)
echo UNZIPPED fpc264irc-linux-2026-10-13.zip - 788 files >> "%LOG%"
echo [2/3] checking
if not exist "tools\smartpack\linux.ok" (echo Zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
if not exist "tools\linux-build\build.sh" echo CHECK tools\linux-build missing >> "%LOG%"
if not exist "tools\linux-build\opts-i386.txt" echo CHECK opts-i386.txt missing >> "%LOG%"
if not exist "bin\units\i386-linux\libpdynlibs.a" echo CHECK i386-linux dynlibs missing >> "%LOG%"
if not exist "bin\lazarus\units\i386-linux\lcl\libpforms.a" echo CHECK Lazarus lcl forms missing >> "%LOG%"
echo [3/3] removing marker
if exist "tools\smartpack\linux.ok" del /f /q "tools\smartpack\linux.ok"
if not exist "tools\smartpack\linux.ok" echo DELETED tools\smartpack\linux.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
pause
endlocal
