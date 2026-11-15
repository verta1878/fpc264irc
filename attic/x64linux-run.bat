@echo off
rem fpc264irc exact source rebuild 6: x86_64-linux + lcl/ + Lazarus x86_64-linux - byte, 2026-10-27 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\x64linux-run.bat
rem Zips (two complete zips, each under 30 MB):
rem   C:\Users\owner\Desktop\Claude\share\compilers\x64linux\fpc264irc-x64linux-1-units-2026-10-27.zip
rem   C:\Users\owner\Desktop\Claude\share\compilers\x64linux\fpc264irc-x64linux-2-lazarus-2026-10-27.zip
rem 1 check both zips (MD5)   2 unzip both into fpc264irc, overwriting:
rem   REPLACED bin\units\x86_64-linux (563 units + lcl\ 69), bin\lazarus\units\x86_64-linux (411 units),
rem   tools\linux-build (README.md build.sh drive.py lazdrive.py lazunits.py pickopts.py),
rem   docs\UNIT-REBUILD.md docs\ROADMAP-UNITS.md HISTORY.md CHECKSUMS.md5 CHECKSUMS.sha256 CHECKSUMS.txt,
rem   toolkit\NEXT.TXT STATUS.TXT CHECKPOINT.TXT SEGMAP.TXT GLOBALS.TXT test.sh
rem   NEW tools\linux-build\units-x86_64.txt opts-x86_64.txt override-x86_64.txt laz-x86_64.txt lazmain-x86_64.txt,
rem   59 .rst in bin\units\x86_64-linux, 24 .lfm/.rst in bin\lazarus\units\x86_64-linux
rem 3 DELETE bin\units\x86_64-linux\system.ppu.new and system.o.new (leftovers, verta ok 2026-10-27)
rem 4 check   5 remove marker.  Deletes nothing else. bin\units\x86_64-linux\graph.pp is kept.
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "Z1=%BASE%x64linux\fpc264irc-x64linux-1-units-2026-10-27.zip"
set "Z2=%BASE%x64linux\fpc264irc-x64linux-2-lazarus-2026-10-27.zip"
set "M1=ab526f91ac332bb3e08299cf50b4e4bf"
set "M2=abbec4a2974bd2313dfeddef14c4914f"
set "LOG=%BASE%x64linux-run.log"
echo fpc264irc x64linux %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "bin\units\x86_64-linux\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip 1 not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z2%" (echo Zip not found: %Z2% & echo ABORT zip 2 not found >> "%LOG%" & pause & exit /b 1)
echo [1/5] checking the zips
call :md5 "%Z1%" %M1% zip1
if "%BADZIP%"=="1" (echo Zip 1 is damaged - copy it again & pause & exit /b 1)
call :md5 "%Z2%" %M2% zip2
if "%BADZIP%"=="1" (echo Zip 2 is damaged - copy it again & pause & exit /b 1)
echo [2/5] unzipping into fpc264irc, overwriting
for %%Z in ("%Z1%" "%Z2%") do call :unzip "%%~Z"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
echo REPLACED bin\units\x86_64-linux bin\lazarus\units\x86_64-linux tools\linux-build docs\UNIT-REBUILD.md docs\ROADMAP-UNITS.md HISTORY.md CHECKSUMS.md5 CHECKSUMS.sha256 CHECKSUMS.txt toolkit\NEXT.TXT STATUS.TXT CHECKPOINT.TXT SEGMAP.TXT GLOBALS.TXT test.sh >> "%LOG%"
echo NEW tools\linux-build\units-x86_64.txt opts-x86_64.txt override-x86_64.txt laz-x86_64.txt lazmain-x86_64.txt + 59 .rst + 24 Lazarus .lfm/.rst >> "%LOG%"
echo [3/5] deleting the 2 leftovers
if exist "bin\units\x86_64-linux\system.ppu.new" del /f /q "bin\units\x86_64-linux\system.ppu.new"
if not exist "bin\units\x86_64-linux\system.ppu.new" echo DELETED bin\units\x86_64-linux\system.ppu.new >> "%LOG%"
if exist "bin\units\x86_64-linux\system.o.new" del /f /q "bin\units\x86_64-linux\system.o.new"
if not exist "bin\units\x86_64-linux\system.o.new" echo DELETED bin\units\x86_64-linux\system.o.new >> "%LOG%"
echo [4/5] checking
if not exist "tools\smartpack\x64linux.ok" (echo Zip 1 did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
set N=0
for %%F in (bin\units\x86_64-linux\*.ppu) do set /a N+=1
echo CHECK bin\units\x86_64-linux %N% .ppu (want 563) >> "%LOG%"
set N=0
for %%F in (bin\units\x86_64-linux\lcl\*.ppu) do set /a N+=1
echo CHECK bin\units\x86_64-linux\lcl %N% .ppu (want 69) >> "%LOG%"
set N=0
for /r "bin\lazarus\units\x86_64-linux" %%F in (*.ppu) do set /a N+=1
echo CHECK bin\lazarus\units\x86_64-linux %N% .ppu (want 411) >> "%LOG%"
if exist "bin\units\x86_64-linux\graph.pp" (echo CHECK graph.pp kept - OK >> "%LOG%") else (echo CHECK graph.pp MISSING - BAD >> "%LOG%")
if exist "tools\linux-build\lazmain-x86_64.txt" (echo CHECK tools\linux-build x86_64 lists - OK >> "%LOG%") else (echo CHECK tools\linux-build lists MISSING - BAD >> "%LOG%")
echo [5/5] removing marker
if exist "tools\smartpack\x64linux.ok" del /f /q "tools\smartpack\x64linux.ok"
if not exist "tools\smartpack\x64linux.ok" echo DELETED tools\smartpack\x64linux.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
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
