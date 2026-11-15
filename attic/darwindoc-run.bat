@echo off
rem fpc264irc docs: why the Mac link tools use stub libraries - byte, 2026-10-16 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\darwindoc-run.bat   (or inside the fpc264irc folder)
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\darwindoc\fpc264irc-darwindoc-2026-10-16.zip
rem Works from the compilers folder OR from inside the fpc264irc folder (log always goes to the compilers folder)
rem 1 unzip 7 files, overwriting (docs\DARWIN-CROSS.md, bin\tools\i386-darwin\README.md, HISTORY.md, 3 CHECKSUMS, marker)
rem 2 check   3 remove marker.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "ZIP=%BASE%darwindoc\fpc264irc-darwindoc-2026-10-16.zip"
set "LOG=%BASE%darwindoc-run.log"
echo fpc264irc darwindoc %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "bin\units\i386-darwin\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%ZIP%" (echo Zip not found: %ZIP% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
if not exist "tools\darwin-build\build.sh" (echo Apply the darwin delivery first & echo ABORT darwin delivery missing >> "%LOG%" & pause & exit /b 1)
echo [1/3] unzipping into fpc264irc, overwriting
where tar >nul 2>&1
if errorlevel 1 (powershell -NoProfile -Command "Expand-Archive -Force -LiteralPath '%ZIP%' -DestinationPath '%REPO%'") else (tar -xf "%ZIP%" -C "%REPO%")
if errorlevel 1 (echo Unzip failed & echo ABORT unzip failed >> "%LOG%" & pause & exit /b 1)
echo UNZIPPED fpc264irc-darwindoc-2026-10-16.zip - 7 files >> "%LOG%"
echo REPLACED docs\DARWIN-CROSS.md bin\tools\i386-darwin\README.md HISTORY.md CHECKSUMS.md5 CHECKSUMS.sha256 CHECKSUMS.txt >> "%LOG%"
echo [2/3] checking
if not exist "tools\smartpack\darwindoc.ok" (echo Zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
findstr /c:"Why stub libraries?" "docs\DARWIN-CROSS.md" >nul
if errorlevel 1 echo CHECK DARWIN-CROSS.md not updated >> "%LOG%"
echo [3/3] removing marker
if exist "tools\smartpack\darwindoc.ok" del /f /q "tools\smartpack\darwindoc.ok"
if not exist "tools\smartpack\darwindoc.ok" echo DELETED tools\smartpack\darwindoc.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
pause
endlocal
