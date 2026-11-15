@echo off
rem fpc264irc toolkit/ + rolling memory backup - byte, 2026-10-24 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\toolkit-run.bat   (or inside the fpc264irc folder)
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\toolkit\fpc264irc-toolkit-2026-10-24.zip
rem 1 unzip 15 files, overwriting: NEW toolkit\ (9 files), byte-memory-backup-2026-10-24.zip (repo root), marker;
rem   REPLACED HISTORY.md, CHECKSUMS.md5, CHECKSUMS.sha256, CHECKSUMS.txt
rem 2 check (marker, toolkit files, MD5 of the backup zip)   3 remove marker.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "ZIP=%BASE%toolkit\fpc264irc-toolkit-2026-10-24.zip"
set "LOG=%BASE%toolkit-run.log"
set "BK=byte-memory-backup-2026-10-24.zip"
set "BKMD5=e679254623af2913d6e64bc965eafb7f"
echo fpc264irc toolkit %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "bin\units\i386-darwin\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%ZIP%" (echo Zip not found: %ZIP% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
echo [1/3] unzipping into fpc264irc, overwriting
where tar >nul 2>&1
if errorlevel 1 (powershell -NoProfile -Command "Expand-Archive -Force -LiteralPath '%ZIP%' -DestinationPath '%REPO%'") else (tar -xf "%ZIP%" -C "%REPO%")
if errorlevel 1 (echo Unzip failed & echo ABORT unzip failed >> "%LOG%" & pause & exit /b 1)
echo UNZIPPED fpc264irc-toolkit-2026-10-24.zip - 15 files >> "%LOG%"
echo NEW toolkit\NEXT.TXT RULES.TXT STATUS.TXT CHECKPOINT.TXT MATCH.PY DISASM.TXT GLOBALS.TXT SEGMAP.TXT test.sh >> "%LOG%"
echo NEW %BK% (repo root) >> "%LOG%"
echo REPLACED HISTORY.md CHECKSUMS.md5 CHECKSUMS.sha256 CHECKSUMS.txt >> "%LOG%"
echo [2/3] checking
if not exist "tools\smartpack\toolkit.ok" (echo Zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
set N=0
for %%F in (NEXT.TXT RULES.TXT STATUS.TXT CHECKPOINT.TXT MATCH.PY DISASM.TXT GLOBALS.TXT SEGMAP.TXT test.sh) do if exist "toolkit\%%F" set /a N+=1
echo CHECK toolkit %N% of 9 files present >> "%LOG%"
set "GOT="
for /f "skip=1 delims=" %%H in ('certutil -hashfile "%BK%" MD5 2^>nul') do if not defined GOT set "GOT=%%H"
if not defined GOT for /f "delims=" %%H in ('powershell -NoProfile -Command "(Get-FileHash -Algorithm MD5 -LiteralPath '%BK%').Hash"') do set "GOT=%%H"
if not defined GOT (echo CHECK %BK% MD5 not checked - no certutil or powershell >> "%LOG%" & goto md5done)
set "GOT=%GOT: =%"
if /i "%GOT%"=="%BKMD5%" (echo CHECK %BK% MD5 OK %BKMD5% >> "%LOG%") else (echo CHECK %BK% MD5 BAD got %GOT% want %BKMD5% >> "%LOG%")
:md5done
echo [3/3] removing marker
if exist "tools\smartpack\toolkit.ok" del /f /q "tools\smartpack\toolkit.ok"
if not exist "tools\smartpack\toolkit.ok" echo DELETED tools\smartpack\toolkit.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
pause
endlocal
