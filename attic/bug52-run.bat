@echo off
rem fpc264irc: BUG-052 - i8086 classes links in the medium/large/huge folders; BUG-053 documented (open) - byte, 2026-11-21
rem Location: C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\bug52-run.bat
rem Zip:      C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\bug52\fpc264irc-bug52-2026-11-21.zip  (4.6 MB)
rem Repo:     C:\Users\owner\Desktop\OneDrive\claude\fpc264irc
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting (23 files + 1 marker):
rem   NEW (5)   tools\i8086-graph-build\patches\classes-inithandler.patch; test\i8086\classes\clist.pas inithand.pas
rem             rec2s.pas; attic\bug51p2-run.log (the Part B log, was only in fpc264irc-deliv)
rem   REPLACED (18) bin\units\i8086-msdos-medium, -large, -huge: classes.ppu + classes.a (6);
rem             tools\i8086-graph-build\build-rtl.sh README.md; HISTORY.md docs\bugsfixed.md test\README.md;
rem             toolkit\NEXT STATUS CHECKPOINT GLOBALS; CHECKSUMS.md5 .sha256 .txt
rem 3 check   4 remove marker tools\smartpack\bug52.ok.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%..\..\fpc264irc"
set "Z1=%HERE%bug52\fpc264irc-bug52-2026-11-21.zip"
set "LOG=%HERE%bug52-run.log"
echo fpc264irc bug52 %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\bin\units\i8086-msdos-large\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
echo [1/4] checking the zip
call :md5 "%Z1%" 99dcb0910f03a3516019d7c74b35f10a zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
if not exist "tools\smartpack\bug52.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo NEW 5 (classes-inithandler.patch, test\i8086\classes x3, attic\bug51p2-run.log); REPLACED 18 (classes.ppu/.a medium large huge 6, i8086 kit 2, docs+toolkit 7, CHECKSUMS 3) >> "%LOG%"
echo [3/4] checking
call :md5 "bin\units\i8086-msdos-medium\classes.ppu" 40cba9cd9579efbcf800b27633cf5946 medium-classes.ppu
call :md5 "bin\units\i8086-msdos-large\classes.ppu" 605dbc286898585a8a2c27a698cbccd1 large-classes.ppu
call :md5 "bin\units\i8086-msdos-huge\classes.ppu" c8a48e82ef493e074a5c4c64018a4206 huge-classes.ppu
call :md5 "tools\i8086-graph-build\patches\classes-inithandler.patch" 8e87339ed1e3a14e428d394de2082ab1 patch
echo [4/4] removing marker
if exist "tools\smartpack\bug52.ok" del /f /q "tools\smartpack\bug52.ok"
if not exist "tools\smartpack\bug52.ok" echo DELETED tools\smartpack\bug52.ok marker >> "%LOG%"
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
