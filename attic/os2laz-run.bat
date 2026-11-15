@echo off
rem fpc264irc exact source rebuild 9: Lazarus i386-os2 - byte, 2026-11-14 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\os2laz-run.bat
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\os2laz\fpc264irc-os2laz-2026-11-14.zip  (8.7 MB)
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting:
rem   REPLACED bin\lazarus\units\i386-os2: 233 .ppu (lazutils 59, lcl 174); tools\os2-native-build\README.md;
rem            HISTORY.md docs\UNIT-REBUILD.md docs\ROADMAP-UNITS.md toolkit\STATUS.TXT CHECKPOINT.TXT NEXT.TXT,
rem            CHECKSUMS.md5 .sha256 .txt
rem   NEW      bin\lazarus\units\i386-os2: 233 libp*.a (the shipped set had no code);
rem            tools\os2-native-build: lazbuild.sh lazdrive.py lazunits.py laz-i386.txt ardate.py
rem 3 check   4 remove marker.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%fpc264irc"
set "Z1=%HERE%os2laz\fpc264irc-os2laz-2026-11-14.zip"
set "LOG=%HERE%os2laz-run.log"
echo fpc264irc os2laz %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\bin\lazarus\units\i386-os2\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
echo [1/4] checking the zip
call :md5 "%Z1%" 8c8a149fa282c53d9b62caddbeacdc2a zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
if not exist "tools\smartpack\os2laz.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo REPLACED bin\lazarus\units\i386-os2 233 .ppu, tools\os2-native-build\README.md, HISTORY.md docs\UNIT-REBUILD.md ROADMAP-UNITS.md toolkit STATUS CHECKPOINT NEXT, CHECKSUMS >> "%LOG%"
echo NEW bin\lazarus\units\i386-os2 233 libp*.a, tools\os2-native-build lazbuild.sh lazdrive.py lazunits.py laz-i386.txt ardate.py >> "%LOG%"
echo [3/4] checking
set N=0
for %%F in (bin\lazarus\units\i386-os2\lazutils\*.ppu bin\lazarus\units\i386-os2\lcl\*.ppu) do set /a N+=1
echo CHECK bin\lazarus\units\i386-os2 %N% .ppu (want 233) >> "%LOG%"
set K=0
for %%F in (bin\lazarus\units\i386-os2\lazutils\*.a bin\lazarus\units\i386-os2\lcl\*.a) do set /a K+=1
echo CHECK bin\lazarus\units\i386-os2 %K% .a (want 233) >> "%LOG%"
echo [4/4] removing marker
if exist "tools\smartpack\os2laz.ok" del /f /q "tools\smartpack\os2laz.ok"
if not exist "tools\smartpack\os2laz.ok" echo DELETED tools\smartpack\os2laz.ok marker >> "%LOG%"
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
