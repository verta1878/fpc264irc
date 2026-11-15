@echo off
rem fpc264irc toolkit fix: memory backup zip ON HOLD + .gitignore - byte, 2026-10-25 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\toolkit2-run.bat
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\toolkit2\fpc264irc-toolkit2-2026-10-25.zip
rem 1 unzip 8 files, overwriting: NEW .gitignore (/byte-memory-backup-*.zip); REPLACED HISTORY.md, CHECKSUMS.md5,
rem   CHECKSUMS.sha256, CHECKSUMS.txt, toolkit\NEXT.TXT, toolkit\CHECKPOINT.TXT (+ marker).
rem   The text now says the backup zip is on hold; the checksums no longer list it (45,373 files with .gitignore).
rem 2 check   3 remove marker.  Deletes nothing else. byte-memory-backup-2026-10-24.zip is NOT touched:
rem   it stays in the folder and git now ignores it.
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "ZIP=%BASE%toolkit2\fpc264irc-toolkit2-2026-10-25.zip"
set "LOG=%BASE%toolkit2-run.log"
echo fpc264irc toolkit2 %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "bin\units\i386-darwin\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%ZIP%" (echo Zip not found: %ZIP% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
if not exist "toolkit\MATCH.PY" (echo Run toolkit-run.bat first & echo ABORT toolkit delivery missing >> "%LOG%" & pause & exit /b 1)
echo [1/3] unzipping into fpc264irc, overwriting
where tar >nul 2>&1
if errorlevel 1 (powershell -NoProfile -Command "Expand-Archive -Force -LiteralPath '%ZIP%' -DestinationPath '%REPO%'") else (tar -xf "%ZIP%" -C "%REPO%")
if errorlevel 1 (echo Unzip failed & echo ABORT unzip failed >> "%LOG%" & pause & exit /b 1)
echo UNZIPPED fpc264irc-toolkit2-2026-10-25.zip - 8 files >> "%LOG%"
echo NEW .gitignore >> "%LOG%"
echo REPLACED HISTORY.md CHECKSUMS.md5 CHECKSUMS.sha256 CHECKSUMS.txt toolkit\NEXT.TXT toolkit\CHECKPOINT.TXT >> "%LOG%"
echo [2/3] checking
if not exist "tools\smartpack\toolkit2.ok" (echo Zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
findstr /c:"/byte-memory-backup-*.zip" ".gitignore" >nul
if errorlevel 1 (echo CHECK .gitignore missing the backup line - BAD >> "%LOG%") else (echo CHECK .gitignore has /byte-memory-backup-*.zip - OK >> "%LOG%")
findstr /c:"byte-memory-backup" "CHECKSUMS.md5" >nul
if errorlevel 1 (echo CHECK CHECKSUMS.md5 does not list the backup zip - OK >> "%LOG%") else (echo CHECK CHECKSUMS.md5 still lists the backup zip - BAD >> "%LOG%")
findstr /c:"ON HOLD" "HISTORY.md" >nul
if errorlevel 1 (echo CHECK HISTORY.md not updated - BAD >> "%LOG%") else (echo CHECK HISTORY.md says ON HOLD - OK >> "%LOG%")
if exist "byte-memory-backup-2026-10-24.zip" echo LEFT byte-memory-backup-2026-10-24.zip in the folder - git ignores it >> "%LOG%"
echo [3/3] removing marker
if exist "tools\smartpack\toolkit2.ok" del /f /q "tools\smartpack\toolkit2.ok"
if not exist "tools\smartpack\toolkit2.ok" echo DELETED tools\smartpack\toolkit2.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
pause
endlocal
