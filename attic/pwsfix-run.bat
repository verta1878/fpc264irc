@echo off
rem fpc264irc: paswstring refresh (5 Lazarus sets) + darwin dynlibs date fix + docs - byte, 2026-11-14 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\pwsfix-run.bat
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\pwsfix\fpc264irc-pwsfix-2026-11-14.zip
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting:
rem   REPLACED bin\lazarus\units\i386-linux\lazutils\paswstring.ppu, ...\x86_64-linux\lazutils + lcl\customdrawn,
rem            ...\i386-freebsd\lazutils, ...\i386-go32v2\lazutils, ...\i386-darwin\lazutils  (7 paswstring.ppu)
rem            bin\units\i386-darwin\dynlibs.ppu, tools\darwin-build\drive.py README.md,
rem            README.md HISTORY.md docs\UNIT-REBUILD.md toolkit\STATUS.TXT CHECKPOINT.TXT, CHECKSUMS.md5 .sha256 .txt
rem   NEW      attic\PATCH6-MZ-LINKER-HANDOFF.md, attic\PHASE-RTL-REBUILD.md
rem 3 MOVE to attic: deletes docs\PATCH6-MZ-LINKER-HANDOFF.md and docs\PHASE-RTL-REBUILD.md ONLY if the attic copy
rem   landed with the same size   4 check   5 remove marker.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%fpc264irc"
set "Z1=%HERE%pwsfix\fpc264irc-pwsfix-2026-11-14.zip"
set "LOG=%HERE%pwsfix-run.log"
echo fpc264irc pwsfix %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\bin\lazarus\units\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
echo [1/5] checking the zip
call :md5 "%Z1%" 9107ccad24b11b1bfd96198ad676ca4c zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/5] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
if not exist "tools\smartpack\pwsfix.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo REPLACED 7 paswstring.ppu, i386-darwin dynlibs.ppu, tools\darwin-build drive.py README.md, README.md HISTORY.md docs\UNIT-REBUILD.md toolkit STATUS CHECKPOINT, CHECKSUMS >> "%LOG%"
echo [3/5] moving two docs to attic
call :mv PATCH6-MZ-LINKER-HANDOFF.md
call :mv PHASE-RTL-REBUILD.md
echo [4/5] checking
set N=0
for %%D in (i386-linux\lazutils x86_64-linux\lazutils x86_64-linux\lcl\customdrawn i386-freebsd\lazutils i386-go32v2\lazutils i386-darwin\lazutils) do call :sz "bin\lazarus\units\%%D\paswstring.ppu"
echo CHECK paswstring.ppu present %N% of 6 folders >> "%LOG%"
echo [5/5] removing marker
if exist "tools\smartpack\pwsfix.ok" del /f /q "tools\smartpack\pwsfix.ok"
if not exist "tools\smartpack\pwsfix.ok" echo DELETED tools\smartpack\pwsfix.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
echo Say "tail log".
pause
endlocal
exit /b 0

:mv
if not exist "docs\%~1" (echo SKIP docs\%~1 - not there >> "%LOG%" & exit /b 0)
if not exist "attic\%~1" (echo KEPT docs\%~1 - attic copy missing >> "%LOG%" & exit /b 0)
for %%A in ("attic\%~1") do set "SA=%%~zA"
for %%B in ("docs\%~1") do set "SB=%%~zB"
if not "%SA%"=="%SB%" (echo KEPT docs\%~1 - attic copy %SA% bytes, docs %SB% >> "%LOG%" & exit /b 0)
del /f /q "docs\%~1"
if not exist "docs\%~1" (echo MOVED docs\%~1 to attic\ - deleted the docs copy, %SA% bytes >> "%LOG%") else (echo FAILED to delete docs\%~1 >> "%LOG%")
exit /b 0

:sz
if exist "%~1" set /a N+=1
exit /b 0

:md5
set "BADZIP=0"
set "GOT="
for /f "skip=1 delims=" %%H in ('certutil -hashfile "%~1" MD5 2^>nul') do if not defined GOT set "GOT=%%H"
if not defined GOT for /f "delims=" %%H in ('powershell -NoProfile -Command "(Get-FileHash -Algorithm MD5 -LiteralPath '%~1').Hash" 2^>nul') do set "GOT=%%H"
if not defined GOT (echo CHECK %3 MD5 not checked - no certutil or powershell >> "%LOG%" & exit /b 0)
set "GOT=%GOT: =%"
if /i "%GOT%"=="%2" (echo CHECK %3 MD5 OK %2 >> "%LOG%") else (echo CHECK %3 MD5 BAD got %GOT% want %2 >> "%LOG%" & set "BADZIP=1")
exit /b 0

:unzip
where tar >nul 2>&1
if errorlevel 1 (powershell -NoProfile -Command "Expand-Archive -Force -LiteralPath '%~1' -DestinationPath '%REPO%'") else (tar -xf "%~1" -C "%REPO%")
if errorlevel 1 (echo ABORT unzip failed %~nx1 >> "%LOG%" & set "BADZIP=1" & exit /b 0)
echo UNZIPPED %~nx1 >> "%LOG%"
exit /b 0
