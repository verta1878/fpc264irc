@echo off
rem fpc264irc Mac stubs trimmed to Apple's names per architecture (+ CoreVideo) - byte, 2026-10-10 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\stubtrim-run.bat   (or inside the fpc264irc folder)
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\stubtrim\fpc264irc-stubtrim-2026-10-10.zip
rem Works from the compilers folder OR from inside the fpc264irc folder (log always goes to the compilers folder)
rem 1 unzip 112 files, overwriting   2 check   3 remove marker.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "ZIP=%BASE%stubtrim\fpc264irc-stubtrim-2026-10-10.zip"
set "LOG=%BASE%stubtrim-run.log"
echo fpc264irc stubtrim %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "bin\units\i386-darwin\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%ZIP%" (echo Zip not found: %ZIP% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
if not exist "docs\UNIT-REBUILD.md" (echo Apply the exact1 delivery first & echo ABORT exact1 missing >> "%LOG%" & pause & exit /b 1)
echo [1/3] unzipping into fpc264irc, overwriting
where tar >nul 2>&1
if errorlevel 1 (powershell -NoProfile -Command "Expand-Archive -Force -LiteralPath '%ZIP%' -DestinationPath '%REPO%'") else (tar -xf "%ZIP%" -C "%REPO%")
if errorlevel 1 (echo Unzip failed & echo ABORT unzip failed >> "%LOG%" & pause & exit /b 1)
echo UNZIPPED fpc264irc-stubtrim-2026-10-10.zip - 112 files >> "%LOG%"
echo [2/3] checking
if not exist "tools\smartpack\stubtrim.ok" (echo Zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
if not exist "patches\darwin-cross\apple-trim.py" echo CHECK apple-trim.py missing >> "%LOG%"
if not exist "patches\darwin-cross\stubs\x86_64\DROPPED.txt" echo CHECK stubs\x86_64 lists missing >> "%LOG%"
if not exist "bin\tools\i386-darwin\MacOSX10.6.sdk\System\Library\Frameworks\CoreVideo.framework\CoreVideo" echo CHECK CoreVideo stub missing >> "%LOG%"
echo [3/3] removing marker
if exist "tools\smartpack\stubtrim.ok" del /f /q "tools\smartpack\stubtrim.ok"
if not exist "tools\smartpack\stubtrim.ok" echo DELETED tools\smartpack\stubtrim.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
pause
endlocal
