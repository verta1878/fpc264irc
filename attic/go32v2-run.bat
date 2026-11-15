@echo off
rem fpc264irc exact source rebuild 4: i386-go32v2 + Lazarus i386-go32v2 - byte, 2026-10-13 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\go32v2-run.bat   (or inside the fpc264irc folder)
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\go32v2\fpc264irc-go32v2-2026-10-13.zip
rem Works from the compilers folder OR from inside the fpc264irc folder (log always goes to the compilers folder)
rem 1 unzip 813 files, overwriting   2 check   3 remove marker.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "ZIP=%BASE%go32v2\fpc264irc-go32v2-2026-10-13.zip"
set "LOG=%BASE%go32v2-run.log"
echo fpc264irc go32v2 %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "bin\units\i386-go32v2\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%ZIP%" (echo Zip not found: %ZIP% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
if not exist "tools\linux-build\build.sh" (echo Apply the linux delivery first & echo ABORT linux delivery missing >> "%LOG%" & pause & exit /b 1)
echo [1/3] unzipping into fpc264irc, overwriting
where tar >nul 2>&1
if errorlevel 1 (powershell -NoProfile -Command "Expand-Archive -Force -LiteralPath '%ZIP%' -DestinationPath '%REPO%'") else (tar -xf "%ZIP%" -C "%REPO%")
if errorlevel 1 (echo Unzip failed & echo ABORT unzip failed >> "%LOG%" & pause & exit /b 1)
echo UNZIPPED fpc264irc-go32v2-2026-10-13.zip - 813 files >> "%LOG%"
echo [2/3] checking
if not exist "tools\smartpack\go32v2.ok" (echo Zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
if not exist "tools\go32v2-build\build.sh" echo CHECK tools\go32v2-build missing >> "%LOG%"
if not exist "tools\go32v2-build\patched\fileutil.pas" echo CHECK patched fileutil missing >> "%LOG%"
if not exist "bin\units\i386-go32v2\jcapimin.a" echo CHECK i386-go32v2 jpeg code missing >> "%LOG%"
if not exist "bin\lazarus\units\i386-go32v2\lcl\wslclclasses.ppu" echo CHECK Lazarus wslclclasses missing >> "%LOG%"
if not exist "bin\units\i386-go32v2\lcl\forms.a" echo CHECK lcl copy code missing >> "%LOG%"
echo [3/3] removing marker
if exist "tools\smartpack\go32v2.ok" del /f /q "tools\smartpack\go32v2.ok"
if not exist "tools\smartpack\go32v2.ok" echo DELETED tools\smartpack\go32v2.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
pause
endlocal
