@echo off
rem fpc264irc: BUG-050 Win98 TryEnterCriticalSection + Windows compilers ppc386.exe / ppcx64.exe - byte, 2026-11-20
rem Location: C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\bug50-run.bat
rem Zip:      C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\bug50\fpc264irc-bug50-2026-11-20.zip  (5.1 MB)
rem Repo:     C:\Users\owner\Desktop\OneDrive\claude\fpc264irc
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting (23 files + 1 marker):
rem   NEW      bin\ppc386.exe bin\ppcx64.exe tools\wincomp-build\build.sh tools\wincomp-build\README.md
rem            test\win32\thr.pas  (5)
rem   REPLACED bin\units\i386-win32: system.ppu libpsystem.a libimpsystem.a  (3)
rem            src\rtl\win\systhrd.inc  tools\win32-build\opts-i386.txt tools\win32-build\README.md  (3)
rem            HISTORY.md docs\bugsfixed.md docs\BUILD-KNOBS.md docs\INSTALL.md test\README.md  (5)
rem            toolkit\NEXT.TXT STATUS.TXT CHECKPOINT.TXT GLOBALS.TXT  (4)
rem            CHECKSUMS.md5 .sha256 .txt  (3)      = 5 new + 18 replaced
rem 3 check   4 remove marker tools\smartpack\bug50.ok.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%..\..\fpc264irc"
set "Z1=%HERE%bug50\fpc264irc-bug50-2026-11-20.zip"
set "LOG=%HERE%bug50-run.log"
echo fpc264irc bug50 %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\bin\units\i386-win32\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
echo [1/4] checking the zip
call :md5 "%Z1%" c2e3108f063c1dae5bce406e83cd642a zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
if not exist "tools\smartpack\bug50.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo NEW bin\ppc386.exe bin\ppcx64.exe tools\wincomp-build 2 test\win32\thr.pas; REPLACED i386-win32 system 3, systhrd.inc, win32-build 2, docs 5, toolkit 4, CHECKSUMS 3 >> "%LOG%"
echo [3/4] checking
call :md5 "bin\units\i386-win32\system.ppu" 91404abbb80bea8a4b196aed700c0771 win32-system.ppu
call :md5 "bin\ppc386.exe" d624f30d99daf311c72f74d1284d1c9a ppc386.exe
call :md5 "bin\ppcx64.exe" db3ec179e56ea560930c071484a21480 ppcx64.exe
echo [4/4] removing marker
if exist "tools\smartpack\bug50.ok" del /f /q "tools\smartpack\bug50.ok"
if not exist "tools\smartpack\bug50.ok" echo DELETED tools\smartpack\bug50.ok marker >> "%LOG%"
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
