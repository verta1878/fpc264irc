@echo off
rem fpc264irc: os2dates - OS/2 kit builds from dated sources, bin\units\i386-os2 reshipped from it; installer note - byte, 2026-11-21
rem Location: C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\os2dates-run.bat
rem Zip:      C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\os2dates\fpc264irc-os2dates-2026-11-21.zip  (7.0 MB)
rem Repo:     C:\Users\owner\Desktop\OneDrive\claude\fpc264irc
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting (452 files + 1 marker):
rem   NEW (1)   bin\units\i386-os2\stringtableresource.rst
rem   REPLACED (451) bin\units\i386-os2: 219 .ppu + 220 libp*.a (same code and checksums; stored dates);
rem             tools\os2-native-build\build.sh drive.py fclbase.sh README.md; HISTORY.md; toolkit\NEXT STATUS
rem             CHECKPOINT GLOBALS; CHECKSUMS.md5 .sha256 .txt
rem 3 check   4 remove marker tools\smartpack\os2dates.ok.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%..\..\fpc264irc"
set "Z1=%HERE%os2dates\fpc264irc-os2dates-2026-11-21.zip"
set "LOG=%HERE%os2dates-run.log"
echo fpc264irc os2dates %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\bin\units\i386-os2\system.ppu" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
echo [1/4] checking the zip
call :md5 "%Z1%" 6a552902b9abeb26fd6409d8cb26bb3a zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
if not exist "tools\smartpack\os2dates.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo NEW 1 (i386-os2 stringtableresource.rst); REPLACED 451 (i386-os2 219 ppu + 220 libp*.a, os2 kit 4, HISTORY, toolkit 4, CHECKSUMS 3) >> "%LOG%"
echo [3/4] checking
call :md5 "bin\units\i386-os2\system.ppu" 69d27aae62c2ad72402c5b01ef7890c5 system.ppu
call :md5 "bin\units\i386-os2\libpsysutils.a" af042fcd3583790f01dbdb76abe96130 libpsysutils.a
call :md5 "tools\os2-native-build\build.sh" ac32260125ae5f2d5ee86e573224d941 build.sh
call :md5 "CHECKSUMS.md5" e3d6a772c2b3b98044df779895c5d6f5 CHECKSUMS.md5
echo [4/4] removing marker
if exist "tools\smartpack\os2dates.ok" del /f /q "tools\smartpack\os2dates.ok"
if not exist "tools\smartpack\os2dates.ok" echo DELETED tools\smartpack\os2dates.ok marker >> "%LOG%"
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
