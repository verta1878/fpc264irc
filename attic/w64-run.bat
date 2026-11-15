@echo off
rem fpc264irc exact source rebuild 8: x86_64-win64 - byte, 2026-11-14 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\w64-run.bat
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\w64\fpc264irc-w64-2026-11-14.zip  (20.5 MB)
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting:
rem   REPLACED bin\units\x86_64-win64: 1,038 .ppu + 6 libp*.a (dynlibs gl glu openssl sysutils wnaspi32)
rem            HISTORY.md docs\UNIT-REBUILD.md docs\ROADMAP-UNITS.md toolkit\STATUS.TXT CHECKPOINT.TXT NEXT.TXT,
rem            CHECKSUMS.md5 .sha256 .txt
rem   NEW      tools\win64-build\ (9 files: the kit)
rem 3 check   4 remove marker.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%fpc264irc"
set "Z1=%HERE%w64\fpc264irc-w64-2026-11-14.zip"
set "LOG=%HERE%w64-run.log"
echo fpc264irc w64 %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\bin\units\x86_64-win64\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
echo [1/4] checking the zip
call :md5 "%Z1%" 79d1e28889af42c69206443c80b89d63 zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
if not exist "tools\smartpack\w64.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo REPLACED bin\units\x86_64-win64 1038 .ppu + 6 .a, HISTORY.md docs\UNIT-REBUILD.md ROADMAP-UNITS.md toolkit STATUS CHECKPOINT NEXT, CHECKSUMS >> "%LOG%"
echo NEW tools\win64-build (9 files) >> "%LOG%"
echo [3/4] checking
set N=0
for %%F in (bin\units\x86_64-win64\*.ppu) do set /a N+=1
echo CHECK bin\units\x86_64-win64 %N% .ppu (want 1039) >> "%LOG%"
set K=0
for %%F in (tools\win64-build\*) do set /a K+=1
echo CHECK tools\win64-build %K% files (want 9) >> "%LOG%"
echo [4/4] removing marker
if exist "tools\smartpack\w64.ok" del /f /q "tools\smartpack\w64.ok"
if not exist "tools\smartpack\w64.ok" echo DELETED tools\smartpack\w64.ok marker >> "%LOG%"
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
