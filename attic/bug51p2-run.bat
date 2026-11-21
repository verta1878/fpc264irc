@echo off
rem fpc264irc: BUG-051 Part B - the rest of fcl-base on FreeBSD (x2), OS/2, i386-linux, go32v2 - byte, 2026-11-21
rem Location: C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\bug51p2-run.bat
rem Zip:      C:\Users\owner\Desktop\OneDrive\claude\memory\fpc264irc-deliv\bug51p2\fpc264irc-bug51-partb-2026-11-21.zip  (5.1 MB)
rem Repo:     C:\Users\owner\Desktop\OneDrive\claude\fpc264irc
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting (329 files + 1 marker):
rem   NEW (304) bin\units\x86_64-freebsd 73, i386-freebsd 65, i386-linux 55, i386-go32v2 45, i386-os2 63 (.ppu .a .rst of
rem             30/30/25/19/26 fcl-base units); tools\os2-native-build\fclbase.sh; tools\freebsd-build\opts-i386.txt;
rem             test\fcl-base\fclb.pas
rem   REPLACED (25) bin\units\i386-freebsd\syncobjs.ppu (Lazarus checksum fix);
rem             tools: freebsd-build drive.py units-extra-i386.txt units-extra-x86_64.txt README.md; linux-build units-i386.txt
rem             opts-i386.txt README.md; go32v2-build units-i386.txt opts-i386.txt README.md; os2-native-build drive.py
rem             unitlist.txt README.md; i8086-graph-build README.md (14);
rem             HISTORY.md docs\bugsfixed.md test\README.md toolkit\NEXT STATUS CHECKPOINT GLOBALS (7); CHECKSUMS.md5 .sha256 .txt
rem 3 check   4 remove marker tools\smartpack\bug51p2.ok.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%..\..\fpc264irc"
set "Z1=%HERE%bug51p2\fpc264irc-bug51-partb-2026-11-21.zip"
set "LOG=%HERE%bug51p2-run.log"
echo fpc264irc bug51 part B %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\bin\units\i386-win32\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
echo [1/4] checking the zip
call :md5 "%Z1%" a5c99ea671ba860ae82bb492f505d7fe zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/4] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
if not exist "tools\smartpack\bug51p2.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo NEW 304 (x86_64-freebsd 73, i386-freebsd 65, i386-linux 55, i386-go32v2 45, i386-os2 63, os2 fclbase.sh, freebsd opts-i386.txt, test\fcl-base\fclb.pas); REPLACED 25 (i386-freebsd syncobjs.ppu, kits 14, docs+toolkit 7, CHECKSUMS 3) >> "%LOG%"
echo [3/4] checking
call :md5 "bin\units\x86_64-freebsd\contnrs.ppu" e334f5659fa97ba9447ae02ae32d5b8f freebsd64-contnrs.ppu
call :md5 "bin\units\i386-freebsd\syncobjs.ppu" 69718c9a04eb6134b9e8aee7a2485a45 freebsd32-syncobjs.ppu
call :md5 "bin\units\i386-os2\inifiles.ppu" 9f40ce1dab6f183578335da9c38f5cf5 os2-inifiles.ppu
echo [4/4] removing marker
if exist "tools\smartpack\bug51p2.ok" del /f /q "tools\smartpack\bug51p2.ok"
if not exist "tools\smartpack\bug51p2.ok" echo DELETED tools\smartpack\bug51p2.ok marker >> "%LOG%"
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
