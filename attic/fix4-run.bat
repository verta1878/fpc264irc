@echo off
rem fpc264irc: execute bits, BUG-048 win64 syncobjs, ppu_consistency CLASH, attic checksums - byte, 2026-11-15
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\fix4-run.bat
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\fix4\fpc264irc-fix4-2026-11-15.zip  (3.3 MB)
rem 1 check the zip (MD5)   2 unzip into fpc264irc, overwriting (28 replaced, 1 new):
rem   REPLACED bin\units\x86_64-win64: syncobjs fpapache fpapache24 ptcwrapper (.ppu + libp*.a), ptccrt ptcgraph ptcmouse .ppu (11)
rem            tools\win64-build: override-x86_64.txt units-x86_64.txt README.md;  tools\smartpack: ppu_consistency.py README.md
rem            README.md HISTORY.md fix-permissions.sh docs\bugsfixed.md docs\UNIT-REBUILD.md
rem            toolkit\GLOBALS.TXT STATUS.TXT CHECKPOINT.TXT NEXT.TXT, CHECKSUMS.md5 .sha256 .txt
rem   NEW      tools\smartpack\exec-bits.txt  (the 324 files that get the execute bit)
rem 3 git: mark the 324 files executable in the git index (git update-index --chmod=+x - the file contents do not
rem   change; GitHub Desktop then shows them as "file mode changed 100644 -> 100755"). No commit, no push.
rem 4 check   5 remove marker.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%fpc264irc"
set "Z1=%HERE%fix4\fpc264irc-fix4-2026-11-15.zip"
set "LOG=%HERE%fix4-run.log"
echo fpc264irc fix4 %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\.git" (echo fpc264irc git repo not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%Z1%" (echo Zip not found: %Z1% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
rem git: GitHub Desktop has its own git, not on PATH. Use it first, else git on PATH.
set "GIT="
for /d %%A in (%LOCALAPPDATA%\GitHubDesktop\app-*) do if exist "%%~A\resources\app\git\cmd\git.exe" set "GIT=%%~A\resources\app\git\cmd\git.exe"
if not defined GIT set "GIT=git"
call "%GIT%" --version >nul 2>&1
if errorlevel 1 (echo git not found & echo ABORT git not found - nothing changed >> "%LOG%" & pause & exit /b 1)
echo git: %GIT% >> "%LOG%"
echo [1/5] checking the zip
call :md5 "%Z1%" ebbe0facf0de078a4be13b97aaadeba6 zip
if "%BADZIP%"=="1" (echo The zip is damaged - copy it again & pause & exit /b 1)
echo [2/5] unzipping into fpc264irc
call :unzip "%Z1%"
if "%BADZIP%"=="1" (echo Unzip failed & pause & exit /b 1)
if not exist "tools\smartpack\fix4.ok" (echo The zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
echo REPLACED x86_64-win64 11 files, tools\win64-build 3, tools\smartpack 2, README HISTORY fix-permissions.sh bugsfixed UNIT-REBUILD, toolkit 4, CHECKSUMS 3 >> "%LOG%"
echo NEW tools\smartpack\exec-bits.txt >> "%LOG%"
echo [3/5] git: execute bit on 324 files (takes a minute)
set N=0
set BAD=0
for /f "usebackq eol=# delims=" %%F in ("tools\smartpack\exec-bits.txt") do call :chx "%%F"
echo GIT update-index --chmod=+x: %N% files set, %BAD% failed (want 324, 0) >> "%LOG%"
echo [4/5] checking
call :md5 "bin\units\x86_64-win64\syncobjs.ppu" 900b60a33ed415c5e6c4a7f47a5873f0 syncobjs.ppu
call :md5 "tools\smartpack\exec-bits.txt" e9bd32c048656816151fd274a194bcf3 exec-bits.txt
call :md5 "CHECKSUMS.md5" 6ced41964da683c48779b2163eb6f34a CHECKSUMS.md5
set K=0
for /f %%M in ('call "%GIT%" ls-files -s ^| findstr /b "100755"') do set /a K+=1
echo CHECK git index: %K% files with mode 100755 (want 324) >> "%LOG%"
echo [5/5] removing marker
if exist "tools\smartpack\fix4.ok" del /f /q "tools\smartpack\fix4.ok"
if not exist "tools\smartpack\fix4.ok" echo DELETED tools\smartpack\fix4.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
echo Say "tail log".
pause
endlocal
exit /b 0

:chx
call "%GIT%" update-index --chmod=+x -- %1 >nul 2>&1
if not errorlevel 1 (set /a N+=1 & exit /b 0)
rem one retry (e.g. index.lock held a moment by GitHub Desktop)
ping -n 2 127.0.0.1 >nul
call "%GIT%" update-index --chmod=+x -- %1 >nul 2>&1
if errorlevel 1 (set /a BAD+=1 & echo GIT FAILED %~1 >> "%LOG%") else (set /a N+=1)
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
