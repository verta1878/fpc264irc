@echo off
rem fpc264irc: toolkit/test.sh win64 + Lazarus os2, kits chmod fix, CHECKSUMS attic catch-up - byte, 2026-11-15 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\testsh-run.bat
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\testsh\fpc264irc-testsh-2026-11-15.zip
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting (19 replaced, nothing new):
rem   REPLACED toolkit\test.sh, toolkit\NEXT.TXT STATUS.TXT CHECKPOINT.TXT GLOBALS.TXT, HISTORY.md, CHECKSUMS.md5 .sha256 .txt
rem            tools\{darwin,darwin64,freebsd,go32v2,linux,win32}-build\build.sh, tools\os2-native-build\build.sh lazbuild.sh,
rem            tools\graph-304-build\test-all.sh, tools\graph-322-build\test-all.sh  (the chmod line)
rem 3 check   4 remove marker.  Deletes nothing else. No git commands - commit in GitHub Desktop as usual.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%fpc264irc"
set "Z1=%HERE%testsh\fpc264irc-testsh-2026-11-15.zip"
set "LOG=%HERE%testsh-run.log"
echo fpc264irc testsh %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\toolkit\test.sh" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
echo [1/4] checking the zip
call :md5 "%Z1%" fdc598af2239449306c231295cdebfcb zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
if not exist "tools\smartpack\testsh.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo REPLACED toolkit\test.sh NEXT.TXT STATUS.TXT CHECKPOINT.TXT GLOBALS.TXT, HISTORY.md, CHECKSUMS 3, 10 kit scripts (chmod line) >> "%LOG%"
echo [3/4] checking
call :md5 "toolkit\test.sh" 87fd7d02cb93dc9f879ec0e7d4b68063 test.sh
call :md5 "tools\linux-build\build.sh" d876053141ea2b18a85b98a5ee687377 linux-build.sh
call :md5 "CHECKSUMS.md5" 26288b18ef9492f0e051529cb3aa10fc CHECKSUMS.md5
echo [4/4] removing marker
if exist "tools\smartpack\testsh.ok" del /f /q "tools\smartpack\testsh.ok"
if not exist "tools\smartpack\testsh.ok" echo DELETED tools\smartpack\testsh.ok marker >> "%LOG%"
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
