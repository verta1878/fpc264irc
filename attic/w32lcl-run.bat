@echo off
rem fpc264irc exact source rebuild 7b: i386-win32 lcl\ + Lazarus i386-win32 (+ main folder re-dated) - byte, 2026-10-28
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\w32lcl-run.bat
rem Zips (three complete zips, each under 30 MB) in C:\Users\owner\Desktop\Claude\share\compilers\w32lcl\
rem   fpc264irc-w32lcl-1-main-2026-10-28.zip     bin\units\i386-win32 (main folder, re-dated), tools, docs, src, CHECKSUMS
rem   fpc264irc-w32lcl-2-lcl-2026-10-28.zip      bin\units\i386-win32\lcl (616 units)
rem   fpc264irc-w32lcl-3-lazarus-2026-10-28.zip  bin\lazarus\units\i386-win32 (304 units)
rem 1 check the 3 zips (MD5)   2 unzip all 3 into fpc264irc, overwriting:
rem   REPLACED bin\units\i386-win32 (922 + lcl\ 616), bin\lazarus\units\i386-win32 (304),
rem   src\lazarus\components\lazutils\paswstring.pas + src\lazarus\lazutils\paswstring.pas,
rem   tools\win32-build (build.sh README.md lazdrive.py ...), docs\UNIT-REBUILD.md ROADMAP-UNITS.md bugsfixed.md,
rem   HISTORY.md CHECKSUMS.md5 CHECKSUMS.sha256 CHECKSUMS.txt, toolkit\NEXT.TXT STATUS.TXT CHECKPOINT.TXT GLOBALS.TXT test.sh
rem   NEW tools\win32-build\laz-i386.txt lazmain-i386.txt lazdrive.py lazunits.py; 121 files in the Lazarus folder
rem   (105 libp*.a of units that had no code, 7 .lfm, 7 .rst, 2 import libraries)
rem 3 check   4 remove marker.  Deletes nothing else (activex_fix.pas, lazarus.or, libimpmultimon.a, ptop.rst,
rem   rstconv.rst, lcl\dialogs.rst, lcl\editoroptions.res, lcl\lazarus.res stay).
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "Z1=%BASE%w32lcl\fpc264irc-w32lcl-1-main-2026-10-28.zip"
set "Z2=%BASE%w32lcl\fpc264irc-w32lcl-2-lcl-2026-10-28.zip"
set "Z3=%BASE%w32lcl\fpc264irc-w32lcl-3-lazarus-2026-10-28.zip"
set "LOG=%BASE%w32lcl-run.log"
echo fpc264irc w32lcl %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "bin\units\i386-win32\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip 1 not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z2%" (echo Zip not found: %Z2% & echo ABORT zip 2 not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z3%" (echo Zip not found: %Z3% & echo ABORT zip 3 not found >> "%LOG%" & pause & exit /b 1)
echo [1/4] checking the zips
call :md5 "%Z1%" 843ec208d4bf89e067118f7230c8206b zip1
if "%BADZIP%"=="1" (echo Zip 1 is damaged - copy it again & pause & exit /b 1)
call :md5 "%Z2%" 9feb3f51f33c4bc542f996c1bf9eda8f zip2
if "%BADZIP%"=="1" (echo Zip 2 is damaged - copy it again & pause & exit /b 1)
call :md5 "%Z3%" b7de7a54ac545bf44fd952aa8bc4d00a zip3
if "%BADZIP%"=="1" (echo Zip 3 is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc, overwriting
call :unzip "%Z1%"
call :unzip "%Z2%"
call :unzip "%Z3%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
echo REPLACED bin\units\i386-win32 bin\units\i386-win32\lcl bin\lazarus\units\i386-win32 src\lazarus\components\lazutils\paswstring.pas src\lazarus\lazutils\paswstring.pas tools\win32-build docs HISTORY.md CHECKSUMS toolkit >> "%LOG%"
echo NEW tools\win32-build\laz-i386.txt lazmain-i386.txt lazdrive.py lazunits.py + 121 Lazarus files >> "%LOG%"
echo [3/4] checking
if not exist "tools\smartpack\w32lcl.ok" (echo Zip 1 did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
set N=0
for %%F in (bin\units\i386-win32\*.ppu) do set /a N+=1
echo CHECK bin\units\i386-win32 %N% .ppu (want 922) >> "%LOG%"
set N=0
for %%F in (bin\units\i386-win32\lcl\*.ppu) do set /a N+=1
echo CHECK bin\units\i386-win32\lcl %N% .ppu (want 616) >> "%LOG%"
set N=0
for /r "bin\lazarus\units\i386-win32" %%F in (*.ppu) do set /a N+=1
echo CHECK bin\lazarus\units\i386-win32 %N% .ppu (want 304) >> "%LOG%"
set N=0
for /r "bin\lazarus\units\i386-win32" %%F in (libp*.a) do set /a N+=1
echo CHECK bin\lazarus\units\i386-win32 %N% libp*.a (want 304) >> "%LOG%"
findstr /c:"IFNDEF MSWINDOWS" "src\lazarus\components\lazutils\paswstring.pas" >nul
if errorlevel 1 (echo CHECK paswstring.pas updated - OK >> "%LOG%") else (echo CHECK paswstring.pas NOT updated - BAD >> "%LOG%")
if exist "tools\win32-build\lazdrive.py" (echo CHECK tools\win32-build lazdrive.py - OK >> "%LOG%") else (echo CHECK tools\win32-build lazdrive.py MISSING - BAD >> "%LOG%")
echo [4/4] removing marker
if exist "tools\smartpack\w32lcl.ok" del /f /q "tools\smartpack\w32lcl.ok"
if not exist "tools\smartpack\w32lcl.ok" echo DELETED tools\smartpack\w32lcl.ok marker >> "%LOG%"
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
