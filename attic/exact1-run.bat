@echo off
rem fpc264irc exact source rebuild 1: OS/2 units = kit build (37 replaced), Foundation/AppKit stub fix - byte, 2026-10-10
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\exact1-run.bat   (or inside the fpc264irc folder)
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\exact1\fpc264irc-exact1-2026-10-10.zip
rem 1 unzip 105 files, overwriting   2 delete 2 old stub files (moved to Versions\C)   3 check   4 remove marker
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "ZIP=%BASE%exact1\fpc264irc-exact1-2026-10-10.zip"
set "LOG=%BASE%exact1-run.log"
set "FW=bin\tools\i386-darwin\MacOSX10.6.sdk\System\Library\Frameworks"
echo fpc264irc exact1 %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "bin\units\i386-os2\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%ZIP%" (echo Zip not found: %ZIP% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
if not exist "tools\graph-322-build\build-all.sh" (echo Apply the graph322 delivery first & echo ABORT graph322 missing >> "%LOG%" & pause & exit /b 1)
echo [1/4] unzipping into fpc264irc, overwriting
where tar >nul 2>&1
if errorlevel 1 (powershell -NoProfile -Command "Expand-Archive -Force -LiteralPath '%ZIP%' -DestinationPath '%REPO%'") else (tar -xf "%ZIP%" -C "%REPO%")
if errorlevel 1 (echo Unzip failed & echo ABORT unzip failed >> "%LOG%" & pause & exit /b 1)
echo UNZIPPED fpc264irc-exact1-2026-10-10.zip - 105 files >> "%LOG%"
if not exist "tools\smartpack\exact1.ok" (echo Zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo [2/4] deleting the 2 old stub files (their new place: Versions\C)
if exist "%FW%\Foundation.framework\Versions\C\Foundation" if exist "%FW%\Foundation.framework\Versions\A\Foundation" (del /f /q "%FW%\Foundation.framework\Versions\A\Foundation" & rmdir "%FW%\Foundation.framework\Versions\A" 2>nul & echo DELETED %FW%\Foundation.framework\Versions\A\Foundation>> "%LOG%")
if exist "%FW%\AppKit.framework\Versions\C\AppKit" if exist "%FW%\AppKit.framework\Versions\A\AppKit" (del /f /q "%FW%\AppKit.framework\Versions\A\AppKit" & rmdir "%FW%\AppKit.framework\Versions\A" 2>nul & echo DELETED %FW%\AppKit.framework\Versions\A\AppKit>> "%LOG%")
echo [3/4] checking
if exist "%FW%\Foundation.framework\Versions\A\Foundation" echo CHECK old Foundation stub still there >> "%LOG%"
if exist "%FW%\AppKit.framework\Versions\A\AppKit" echo CHECK old AppKit stub still there >> "%LOG%"
if not exist "%FW%\Foundation.framework\Versions\C\Foundation" echo CHECK new Foundation stub missing >> "%LOG%"
if not exist "docs\UNIT-REBUILD.md" echo CHECK docs\UNIT-REBUILD.md missing >> "%LOG%"
if not exist "bin\units\i386-os2\libpsystem.a" echo CHECK i386-os2 system missing >> "%LOG%"
echo [4/4] removing marker
if exist "tools\smartpack\exact1.ok" del /f /q "tools\smartpack\exact1.ok"
if not exist "tools\smartpack\exact1.ok" echo DELETED tools\smartpack\exact1.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
pause
endlocal
