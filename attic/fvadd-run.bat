@echo off
rem fpc264irc: Free Vision on FreeBSD + i8086 medium/large/huge - byte, 2026-10-30 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\fvadd-run.bat
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\fvadd\fpc264irc-fvadd-2026-10-30.zip
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting:
rem   NEW  bin\units\i386-freebsd 53 files (24 Free Vision units + 5 .rst)
rem        bin\units\x86_64-freebsd 61 files (Free Vision + video keyboard mouse objects, + 5 .rst)
rem        bin\units\i8086-msdos-medium, -large, -huge 52 files each (24 Free Vision units + 5 .rsj)
rem        tools\freebsd-build\units-extra-i386.txt, units-extra-x86_64.txt
rem   REPLACED tools\freebsd-build\drive.py README.md, tools\i8086-graph-build\build-rtl.sh README.md, HISTORY.md,
rem        CHECKSUMS.md5 CHECKSUMS.sha256 CHECKSUMS.txt, toolkit\STATUS.TXT CHECKPOINT.TXT SEGMAP.TXT
rem 3 check   4 remove marker.  Deletes nothing else; no existing unit file is replaced.
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "Z1=%BASE%fvadd\fpc264irc-fvadd-2026-10-30.zip"
set "LOG=%BASE%fvadd-run.log"
echo fpc264irc fvadd %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "bin\units\i386-freebsd\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
echo [1/4] checking the zip
call :md5 "%Z1%" f46603303b7bdfc50ad99db6bc0ee359 zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
echo NEW Free Vision: i386-freebsd 53, x86_64-freebsd 61, i8086-msdos-medium/large/huge 52 each; tools\freebsd-build\units-extra-*.txt >> "%LOG%"
echo REPLACED tools\freebsd-build\drive.py README.md tools\i8086-graph-build\build-rtl.sh README.md HISTORY.md CHECKSUMS toolkit\STATUS.TXT CHECKPOINT.TXT SEGMAP.TXT >> "%LOG%"
echo [3/4] checking
if not exist "tools\smartpack\fvadd.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
for %%D in (i386-freebsd x86_64-freebsd i8086-msdos-medium i8086-msdos-large i8086-msdos-huge) do call :count %%D
echo [4/4] removing marker
if exist "tools\smartpack\fvadd.ok" del /f /q "tools\smartpack\fvadd.ok"
if not exist "tools\smartpack\fvadd.ok" echo DELETED tools\smartpack\fvadd.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
pause
endlocal
exit /b 0

:count
set N=0
for %%U in (app asciitab colortxt dialogs drivers editors fvcommon fvconsts gadgets histlist inplong memory menus msgbox outline resource statuses stddlg sysmsg tabs time timeddlg validate views) do if exist "bin\units\%1\%%U.ppu" set /a N+=1
echo CHECK bin\units\%1 Free Vision %N% of 24 >> "%LOG%"
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
