@echo off
rem fpc264irc exact source rebuild 7a: i386-win32 main folder - byte, 2026-10-27 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\w32main-run.bat
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\w32main\fpc264irc-w32main-2026-10-27.zip (under 30 MB)
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting:
rem   REPLACED bin\units\i386-win32 (922 units + 151 import libraries; lcl\ is NOT touched),
rem   src\rtl\win\dynlibs.pas (+ GetProcAddress, FreeLibrary), docs\UNIT-REBUILD.md docs\ROADMAP-UNITS.md
rem   docs\bugsfixed.md HISTORY.md CHECKSUMS.md5 CHECKSUMS.sha256 CHECKSUMS.txt,
rem   toolkit\NEXT.TXT STATUS.TXT CHECKPOINT.TXT GLOBALS.TXT test.sh
rem   NEW tools\win32-build (9 files), 9 import libraries + 2 .rst in bin\units\i386-win32
rem 3 check   4 remove marker.  Deletes nothing else (activex_fix.pas, lazarus.or, libimpmultimon.a,
rem   ptop.rst, rstconv.rst and the lcl\ folder stay as they are).
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "Z1=%BASE%w32main\fpc264irc-w32main-2026-10-27.zip"
set "M1=57ce2661959ee43f7346d73409fd436a"
set "LOG=%BASE%w32main-run.log"
echo fpc264irc w32main %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "bin\units\i386-win32\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
echo [1/4] checking the zip
call :md5 "%Z1%" %M1% zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc, overwriting
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
echo REPLACED bin\units\i386-win32 src\rtl\win\dynlibs.pas docs\UNIT-REBUILD.md docs\ROADMAP-UNITS.md docs\bugsfixed.md HISTORY.md CHECKSUMS.md5 CHECKSUMS.sha256 CHECKSUMS.txt toolkit\NEXT.TXT STATUS.TXT CHECKPOINT.TXT GLOBALS.TXT test.sh >> "%LOG%"
echo NEW tools\win32-build + 9 import libraries + 2 .rst >> "%LOG%"
echo [3/4] checking
if not exist "tools\smartpack\w32main.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
set N=0
for %%F in (bin\units\i386-win32\*.ppu) do set /a N+=1
echo CHECK bin\units\i386-win32 %N% .ppu (want 922) >> "%LOG%"
set N=0
for %%F in (bin\units\i386-win32\libimp*.a) do set /a N+=1
echo CHECK bin\units\i386-win32 %N% import libraries (want 152: 151 + libimpmultimon.a kept) >> "%LOG%"
set N=0
for %%F in (bin\units\i386-win32\lcl\*.ppu) do set /a N+=1
echo CHECK bin\units\i386-win32\lcl %N% .ppu untouched (want 616) >> "%LOG%"
if exist "tools\win32-build\build.sh" (echo CHECK tools\win32-build - OK >> "%LOG%") else (echo CHECK tools\win32-build MISSING - BAD >> "%LOG%")
findstr /c:"function FreeLibrary" "src\rtl\win\dynlibs.pas" >nul
if errorlevel 1 (echo CHECK dynlibs.pas not updated - BAD >> "%LOG%") else (echo CHECK dynlibs.pas has FreeLibrary - OK >> "%LOG%")
echo [4/4] removing marker
if exist "tools\smartpack\w32main.ok" del /f /q "tools\smartpack\w32main.ok"
if not exist "tools\smartpack\w32main.ok" echo DELETED tools\smartpack\w32main.ok marker >> "%LOG%"
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
