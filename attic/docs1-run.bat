@echo off
rem fpc264irc: docs gap audit 1 - installers, VERSION, changelogs, INSTALL/README/LCL HOWTO, os2 kit note - byte, 2026-11-21
rem Location: C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\docs1-run.bat
rem Zip:      C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\docs1\fpc264irc-docs1-2026-11-21.zip  (3.3 MB)
rem Repo:     C:\Users\owner\Desktop\OneDrive\claude\fpc264irc
rem (replaces the first docs1 bat + zip of 2026-11-21 21:09, never run - this one adds the item 7 fixes)
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting (20 files + 1 marker):
rem   NEW (2)   attic\fpc264irc-setup-r311.nsi (the old NSIS script, kept); attic\bug52-run.log (the BUG-052 log)
rem   REPLACED (18) installer\fpc264irc.iss fpc264irc-setup.nsi fpc264irc_fast.iss fpc264irc_minimal.iss; VERSION README.md
rem             HISTORY.md; docs\INSTALL.md CHANGELOG.md CHANGELOG-IRC.md LCL-CROSS-COMPILE-HOWTO.md;
rem             tools\os2-native-build\README.md; toolkit\NEXT STATUS CHECKPOINT; CHECKSUMS.md5 .sha256 .txt
rem 3 check   4 remove marker tools\smartpack\docs1.ok.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%..\..\fpc264irc"
set "Z1=%HERE%docs1\fpc264irc-docs1-2026-11-21.zip"
set "LOG=%HERE%docs1-run.log"
echo fpc264irc docs1 %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\installer\fpc264irc.iss" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
echo [1/4] checking the zip
call :md5 "%Z1%" 49e75f4d4487fc387091cdeafd8d9c34 zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
if not exist "tools\smartpack\docs1.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo NEW 2 (attic fpc264irc-setup-r311.nsi, bug52-run.log); REPLACED 18 (installer 4, VERSION README HISTORY, docs 4, os2 kit README, toolkit 3, CHECKSUMS 3) >> "%LOG%"
echo [3/4] checking
call :md5 "installer\fpc264irc.iss" fd5404348acdab58acd12528e0b1cd3f fpc264irc.iss
call :md5 "docs\INSTALL.md" ad1a0ef33a6fc8cdd2e9d21c9aaf769f INSTALL.md
call :md5 "CHECKSUMS.md5" d20132f39164cef7f18aee1ccc55adc8 CHECKSUMS.md5
echo [4/4] removing marker
if exist "tools\smartpack\docs1.ok" del /f /q "tools\smartpack\docs1.ok"
if not exist "tools\smartpack\docs1.ok" echo DELETED tools\smartpack\docs1.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
echo Say "tail log".
pause
endlocal
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
