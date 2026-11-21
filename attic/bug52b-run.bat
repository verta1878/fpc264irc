@echo off
rem fpc264irc: bug52b - CHECKSUMS entry of attic\bug51p2-run.log (LF, as git stores it); GLOBALS G-026 - byte, 2026-11-21
rem Location: C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\bug52b-run.bat
rem Zip:      C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\bug52b\fpc264irc-bug52b-2026-11-21.zip  (3.3 MB)
rem Repo:     C:\Users\owner\Desktop\OneDrive\claude\fpc264irc
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting (5 files + 1 marker):
rem   REPLACED (5) CHECKSUMS.md5 .sha256 .txt (46,572 files: bug51p2-run.log fixed, + attic\bug52-run.bat and the bug52 zip);
rem             toolkit\GLOBALS.TXT (G-026) CHECKPOINT.TXT
rem 3 check   4 remove marker tools\smartpack\bug52b.ok.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%..\..\fpc264irc"
set "Z1=%HERE%bug52b\fpc264irc-bug52b-2026-11-21.zip"
set "LOG=%HERE%bug52b-run.log"
echo fpc264irc bug52b %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\CHECKSUMS.md5" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
echo [1/4] checking the zip
call :md5 "%Z1%" 4e5b267540d23a269aa487da861932a7 zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
if not exist "tools\smartpack\bug52b.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo REPLACED 5 (CHECKSUMS.md5 .sha256 .txt, toolkit GLOBALS CHECKPOINT) >> "%LOG%"
echo [3/4] checking
call :md5 "CHECKSUMS.md5" f60c2897a112ae8319dfcfea306f96b4 CHECKSUMS.md5
call :md5 "CHECKSUMS.sha256" 84a2c2377850d3c3bbb12dcfd1ef74a7 CHECKSUMS.sha256
echo [4/4] removing marker
if exist "tools\smartpack\bug52b.ok" del /f /q "tools\smartpack\bug52b.ok"
if not exist "tools\smartpack\bug52b.ok" echo DELETED tools\smartpack\bug52b.ok marker >> "%LOG%"
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
