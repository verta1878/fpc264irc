@echo off
rem fpc264irc exact source rebuild 2: FreeBSD i386 + x86_64 + Lazarus i386-freebsd - byte, 2026-10-12 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\freebsd-run.bat   (or inside the fpc264irc folder)
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\freebsd\fpc264irc-freebsd-2026-10-12.zip
rem Works from the compilers folder OR from inside the fpc264irc folder (log always goes to the compilers folder)
rem 1 unzip 927 files, overwriting   2 check   3 remove marker.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "ZIP=%BASE%freebsd\fpc264irc-freebsd-2026-10-12.zip"
set "LOG=%BASE%freebsd-run.log"
echo fpc264irc freebsd %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "bin\units\i386-freebsd\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%ZIP%" (echo Zip not found: %ZIP% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
if not exist "patches\darwin-cross\apple-trim.py" (echo Apply the stubtrim delivery first & echo ABORT stubtrim missing >> "%LOG%" & pause & exit /b 1)
echo [1/3] unzipping into fpc264irc, overwriting
where tar >nul 2>&1
if errorlevel 1 (powershell -NoProfile -Command "Expand-Archive -Force -LiteralPath '%ZIP%' -DestinationPath '%REPO%'") else (tar -xf "%ZIP%" -C "%REPO%")
if errorlevel 1 (echo Unzip failed & echo ABORT unzip failed >> "%LOG%" & pause & exit /b 1)
echo UNZIPPED fpc264irc-freebsd-2026-10-12.zip - 927 files >> "%LOG%"
echo [2/3] checking
if not exist "tools\smartpack\freebsd.ok" (echo Zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
if not exist "tools\freebsd-build\build.sh" echo CHECK tools\freebsd-build missing >> "%LOG%"
if not exist "bin\units\x86_64-freebsd\prt0.o" echo CHECK x86_64-freebsd prt0.o missing >> "%LOG%"
if not exist "bin\lazarus\units\i386-freebsd\synedit\customdrawn\registry.ppu" echo CHECK Lazarus registry unit missing >> "%LOG%"
if not exist "bin\lazarus\units\i386-freebsd\ideintf\customdrawn\libpideintf.a" echo CHECK Lazarus ideintf code missing >> "%LOG%"
echo [3/3] removing marker
if exist "tools\smartpack\freebsd.ok" del /f /q "tools\smartpack\freebsd.ok"
if not exist "tools\smartpack\freebsd.ok" echo DELETED tools\smartpack\freebsd.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
pause
endlocal
