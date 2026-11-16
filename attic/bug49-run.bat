@echo off
rem fpc264irc: BUG-049 S := S emptied a string (system on 10 targets), installer/fpc264irc.iss for InnoIRC - byte, 2026-11-15
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\bug49-run.bat
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\bug49\fpc264irc-bug49-2026-11-15.zip
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting (33 replaced, nothing new):
rem   REPLACED bin\units\<t>\system.ppu + libpsystem.a for i386-win32 i386-linux i386-freebsd i386-os2 i386-darwin
rem              x86_64-linux x86_64-freebsd x86_64-win64 x86_64-darwin; i386-go32v2 system.ppu + system.a  (20)
rem            src\rtl\inc\astrings.inc, src\rtl\i386\i386.inc, installer\fpc264irc.iss
rem            HISTORY.md docs\bugsfixed.md tools\win32-build\README.md toolkit\GLOBALS STATUS CHECKPOINT NEXT, CHECKSUMS 3
rem 3 check   4 remove marker.  Deletes nothing else. No git commands - commit in GitHub Desktop as usual.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%fpc264irc"
set "Z1=%HERE%bug49\fpc264irc-bug49-2026-11-15.zip"
set "LOG=%HERE%bug49-run.log"
echo fpc264irc bug49 %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\src\rtl\inc\astrings.inc" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
echo [1/4] checking the zip
call :md5 "%Z1%" ccda5a9ba3e42d06270f9d7eb2fc7773 zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
if not exist "tools\smartpack\bug49.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo REPLACED system of 10 targets (20 files), astrings.inc i386.inc fpc264irc.iss, docs 7, CHECKSUMS 3 >> "%LOG%"
echo [3/4] checking
call :md5 "src\rtl\inc\astrings.inc" 5fec3a6e4e76ed0fdcdafc6e7feb17c3 astrings.inc
call :md5 "bin\units\i386-win32\system.ppu" 671015f984e48d2dc82d5a3ba2bc1364 win32-system.ppu
call :md5 "CHECKSUMS.md5" 75231915fe2a9ee4a58477de364d0c67 CHECKSUMS.md5
echo [4/4] removing marker
if exist "tools\smartpack\bug49.ok" del /f /q "tools\smartpack\bug49.ok"
if not exist "tools\smartpack\bug49.ok" echo DELETED tools\smartpack\bug49.ok marker >> "%LOG%"
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
