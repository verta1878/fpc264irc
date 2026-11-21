@echo off
rem fpc264irc: CHECKSUMS fix after BUG-051 (d4551627) - byte, 2026-11-21
rem   CHECKSUMS.md5/.sha256 had the HISTORY.md hash from before its last edit (byte's mistake: HISTORY.md was edited
rem   after the checksums were made); also adds the 3 files verta atticked (attic\bug51-run.bat, .log, bug51\*.zip).
rem Location: C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\bug51b-run.bat
rem Zip:      C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\bug51b\fpc264irc-bug51b-2026-11-21.zip
rem 1 check the zip (MD5)  2 unzip into fpc264irc, overwriting: REPLACED CHECKSUMS.md5 CHECKSUMS.sha256 CHECKSUMS.txt (3)
rem 3 check   4 remove marker tools\smartpack\bug51b.ok.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%..\..\fpc264irc"
set "Z1=%HERE%bug51b\fpc264irc-bug51b-2026-11-21.zip"
set "LOG=%HERE%bug51b-run.log"
echo fpc264irc bug51b %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\bin\units\i386-win32\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
echo [1/4] checking the zip
call :md5 "%Z1%" fc34ec6baa1c32141f2608c9ed0a8fba zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
if not exist "tools\smartpack\bug51b.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo REPLACED CHECKSUMS.md5 CHECKSUMS.sha256 CHECKSUMS.txt (3) >> "%LOG%"
echo [3/4] checking
call :md5 "CHECKSUMS.md5" 8691ffafb8817f1ef3dfce170a6a7216 CHECKSUMS.md5
echo [4/4] removing marker
if exist "tools\smartpack\bug51b.ok" del /f /q "tools\smartpack\bug51b.ok"
if not exist "tools\smartpack\bug51b.ok" echo DELETED tools\smartpack\bug51b.ok marker >> "%LOG%"
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
