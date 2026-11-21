@echo off
rem fpc264irc: BUG-051 Part A - thread units on every target + DOS syncobjs - byte, 2026-11-20
rem Location: C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\bug51-run.bat
rem Zip:      C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\bug51\fpc264irc-bug51-2026-11-20.zip  (6.0 MB)
rem Repo:     C:\Users\owner\Desktop\OneDrive\claude\fpc264irc
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting (180 files + 1 marker):
rem   NEW (35)  bin\units\x86_64-freebsd: initc cthreads pthreads syncobjs fptimer (.ppu + libp*.a)   (10)
rem             bin\units\i386-freebsd: syncobjs fptimer (4)   bin\units\i386-linux: fptimer (2)   bin\units\i386-os2: syncobjs (2)
rem             bin\units\i8086-msdos + -tiny -small -medium -compact -large -huge: syncobjs.ppu + syncobjs.a  (14)
rem             test\threads: thr2.pas tmr.pas syncdos.pas  (3)
rem   REPLACED (145) bin\units\i386-go32v2: syncobjs.ppu syncobjs.a (2); bin\units\i386-go32v2\lcl: 60;
rem             bin\lazarus\units\i386-go32v2\lcl: 62; src\packages\fcl-base\src\go32v2\syncobjs.pp;
rem             tools: freebsd-build (units-extra-i386/x86_64.txt, README), linux-build (units-i386.txt, README),
rem             os2-native-build (unitlist.txt, README), go32v2-build\README, i8086-graph-build (build-rtl.sh, README);
rem             HISTORY.md docs\bugsfixed.md test\README.md toolkit\NEXT STATUS CHECKPOINT GLOBALS; CHECKSUMS.md5 .sha256 .txt
rem 3 check   4 remove marker tools\smartpack\bug51.ok.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%..\..\fpc264irc"
set "Z1=%HERE%bug51\fpc264irc-bug51-2026-11-20.zip"
set "LOG=%HERE%bug51-run.log"
echo fpc264irc bug51 %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\bin\units\i386-win32\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
echo [1/4] checking the zip
call :md5 "%Z1%" 193523491168680614e7c59813629d9a zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
if not exist "tools\smartpack\bug51.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo NEW 35 (x86_64-freebsd 10, i386-freebsd 4, i386-linux 2, i386-os2 2, i8086 x7 14, test\threads 3); REPLACED 145 (go32v2 syncobjs 2 + lcl\ 60 + Lazarus lcl 62, syncobjs.pp, kits 10, docs+toolkit 7, CHECKSUMS 3) >> "%LOG%"
echo [3/4] checking
call :md5 "bin\units\x86_64-freebsd\cthreads.ppu" c05380a7d79ad86e9266296a352956f3 freebsd64-cthreads.ppu
call :md5 "bin\units\i386-go32v2\syncobjs.ppu" 42cffcbc5201b61cc69c29f06d5156f3 go32v2-syncobjs.ppu
echo [4/4] removing marker
if exist "tools\smartpack\bug51.ok" del /f /q "tools\smartpack\bug51.ok"
if not exist "tools\smartpack\bug51.ok" echo DELETED tools\smartpack\bug51.ok marker >> "%LOG%"
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
