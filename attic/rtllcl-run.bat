@echo off
rem fpc264irc: BUG-046 i386 SetLength fix + BUG-047 (G-017) LCL win32 on NT - byte, 2026-11-15 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\rtllcl-run.bat
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\rtllcl\fpc264irc-rtllcl-2026-11-15.zip  (6.2 MB)
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting (75 files, all already in the repo - nothing new):
rem   REPLACED src\rtl\i386\i386.inc
rem            src\lazarus\lcl\interfaces\win32: win32compat.pas win32callback.inc win32listsl.inc win32memostrings.inc
rem              win32object.inc win32proc.pp win32winapi.inc win32wschecklst.pp win32wscomctrls.pp win32wscontrols.pp
rem              win32wsdialogs.pp win32wsspin.pp win32wsstdctrls.pp  (13)
rem            bin\units\i386-win32: system.ppu libpsystem.a win32compat.ppu libpwin32compat.a  (4)
rem            bin\units\i386-win32\lcl: 10 .ppu + 8 libp*.a  (18)
rem            bin\lazarus\units\i386-win32\lcl\win32: 12 .ppu + 8 libp*.a  (20)
rem            bin\units\i386-linux, i386-freebsd, i386-os2: system.ppu libpsystem.a; i386-go32v2: system.ppu system.a;
rem              i386-darwin: system.ppu  (9)
rem            HISTORY.md docs\bugsfixed.md tools\win32-build\README.md toolkit\GLOBALS.TXT STATUS.TXT CHECKPOINT.TXT
rem              NEXT.TXT, CHECKSUMS.md5 .sha256 .txt  (10)
rem 3 check   4 remove marker.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%fpc264irc"
set "Z1=%HERE%rtllcl\fpc264irc-rtllcl-2026-11-15.zip"
set "LOG=%HERE%rtllcl-run.log"
echo fpc264irc rtllcl %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\bin\units\i386-win32\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
echo [1/4] checking the zip
call :md5 "%Z1%" 896973eec774de17214ab34602a79874 zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
if not exist "tools\smartpack\rtllcl.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo REPLACED src\rtl\i386\i386.inc, 13 LCL win32 sources, i386-win32 main 4 + lcl\ 18 + Lazarus lcl\win32 20, system of linux freebsd os2 go32v2 darwin 9, docs toolkit 7, CHECKSUMS 3 >> "%LOG%"
echo [3/4] checking
call :md5 "bin\units\i386-win32\system.ppu" 8511aeda0fdd6c4aeeedf7c02b8f089b win32-system.ppu
call :md5 "bin\units\i386-win32\lcl\win32int.ppu" 8b6fcb09620cac6fdcaad7204a03f807 lcl-win32int.ppu
call :md5 "src\rtl\i386\i386.inc" cce4f625402a07f89690ce758bbbe97f i386.inc
echo [4/4] removing marker
if exist "tools\smartpack\rtllcl.ok" del /f /q "tools\smartpack\rtllcl.ok"
if not exist "tools\smartpack\rtllcl.ok" echo DELETED tools\smartpack\rtllcl.ok marker >> "%LOG%"
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
