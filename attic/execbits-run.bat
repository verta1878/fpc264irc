@echo off
rem fpc264irc: commit the execute bit for 324 Linux programs and scripts - byte, 2026-11-15
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\execbits-run.bat      (no zip)
rem Why: GitHub Desktop dropped the mode changes of fix4-run.bat when it made commit d81ebce9.
rem 1 checks: HEAD = d81ebce9 (or later with the same list), nothing else staged, list file MD5
rem 2 core.filemode: if true, set to false for this repo (Git for Windows default; Windows files have no execute bit,
rem   with true GitHub Desktop shows the 324 files as changed back to 644 and would commit them back)
rem 3 git update-index --chmod=+x for the files in tools\smartpack\exec-bits.txt (contents do not change)
rem 4 git commit of exactly those 324 mode changes (your git name/email) - NO push: push in GitHub Desktop
rem 5 checks: 324 mode changes in the new commit, no content change.  Deletes nothing, changes no file.
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%fpc264irc"
set "LOG=%HERE%execbits-run.log"
set "LIST=tools\smartpack\exec-bits.txt"
echo fpc264irc execbits %DATE% %TIME% > "%LOG%"
if not exist "%REPO%\.git" (echo fpc264irc git repo not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
cd /d "%REPO%"
set "GIT="
for /d %%A in (%LOCALAPPDATA%\GitHubDesktop\app-*) do if exist "%%~A\resources\app\git\cmd\git.exe" set "GIT=%%~A\resources\app\git\cmd\git.exe"
if not defined GIT set "GIT=git"
call "%GIT%" --version >nul 2>&1
if errorlevel 1 (echo git not found & echo ABORT git not found - nothing changed >> "%LOG%" & pause & exit /b 1)
echo git: %GIT% >> "%LOG%"
echo [1/5] checks
for /f %%H in ('call "%GIT%" rev-parse HEAD') do set "HEAD=%%H"
echo HEAD %HEAD% >> "%LOG%"
call "%GIT%" merge-base --is-ancestor d81ebce97 HEAD >nul 2>&1
if errorlevel 1 (echo HEAD is not d81ebce9 or later & echo ABORT HEAD does not contain d81ebce9 - nothing changed >> "%LOG%" & pause & exit /b 1)
call "%GIT%" diff --cached --quiet
if errorlevel 1 (echo Something is already staged - commit or unstage it first & echo ABORT staged changes present - nothing changed >> "%LOG%" & call "%GIT%" diff --cached --name-status >> "%LOG%" & pause & exit /b 1)
call :md5 "%LIST%" e9bd32c048656816151fd274a194bcf3 exec-bits.txt
if "%BADMD5%"=="1" (echo exec-bits.txt is not the delivered one & echo ABORT list differs - nothing changed >> "%LOG%" & pause & exit /b 1)
echo [2/5] core.filemode
set "FM="
for /f %%M in ('call "%GIT%" config --get core.filemode') do set "FM=%%M"
echo core.filemode was: [%FM%] >> "%LOG%"
if /i "%FM%"=="true" (call "%GIT%" config core.filemode false & echo SET core.filemode false for this repo >> "%LOG%")
echo [3/5] execute bit on 324 files (takes a minute)
set N=0
set BAD=0
for /f "usebackq eol=# delims=" %%F in ("%LIST%") do call :chx "%%F"
echo GIT update-index --chmod=+x: %N% files set, %BAD% failed (want 324, 0) >> "%LOG%"
set S=0
for /f %%L in ('call "%GIT%" diff --cached --name-only') do set /a S+=1
echo STAGED %S% files (want 324) >> "%LOG%"
if not "%S%"=="324" (echo Not 324 staged - not committing & echo ABORT staged %S% not 324 - not committed, run: git reset >> "%LOG%" & pause & exit /b 1)
echo [4/5] commit
call "%GIT%" commit -q -m "Execute bits for 324 Linux programs and scripts (no content change)" -m "bin/ppc386, bin/ppcx64, bin/ppcross8086, the bin/tools programs and the #! scripts listed in tools/smartpack/exec-bits.txt: git mode 100644 -> 100755. Only the mode changes, not the content. GitHub Desktop had dropped these mode changes from d81ebce9." -m "byte, 2026-11-15" >> "%LOG%" 2>&1
if errorlevel 1 (echo commit failed & echo ABORT git commit failed >> "%LOG%" & pause & exit /b 1)
for /f %%H in ('call "%GIT%" rev-parse --short HEAD') do echo COMMITTED %%H >> "%LOG%"
echo [5/5] checking the commit
set C=0
for /f "delims=" %%L in ('call "%GIT%" show --summary --format^= HEAD ^| findstr /c:"mode change 100644 => 100755"') do set /a C+=1
echo CHECK commit: %C% mode changes 100644 to 100755 (want 324) >> "%LOG%"
set "SS="
for /f "delims=" %%L in ('call "%GIT%" show --shortstat --format^= HEAD') do set "SS=%%L"
echo CHECK commit:%SS% >> "%LOG%"
echo       want: 324 files changed, 0 insertions(+), 0 deletions(-) >> "%LOG%"
set W=0
for /f "delims=" %%L in ('call "%GIT%" status --porcelain --untracked-files=no') do set /a W+=1
echo CHECK git status after: %W% changed files (want 0) >> "%LOG%"
echo DONE - push it in GitHub Desktop >> "%LOG%"
echo.
echo Done. Log: %LOG%
echo Push in GitHub Desktop, then say "tail log".
pause
endlocal
exit /b 0

:chx
call "%GIT%" update-index --chmod=+x -- %1 >nul 2>&1
if not errorlevel 1 (set /a N+=1 & exit /b 0)
ping -n 2 127.0.0.1 >nul
call "%GIT%" update-index --chmod=+x -- %1 >nul 2>&1
if errorlevel 1 (set /a BAD+=1 & echo GIT FAILED %~1 >> "%LOG%") else (set /a N+=1)
exit /b 0

:md5
set "BADMD5=0"
set "GOT="
for /f "skip=1 delims=" %%H in ('certutil -hashfile "%~1" MD5 2^>nul') do if not defined GOT set "GOT=%%H"
if not defined GOT for /f "delims=" %%H in ('powershell -NoProfile -Command "(Get-FileHash -Algorithm MD5 -LiteralPath '%~1').Hash" 2^>nul') do set "GOT=%%H"
if not defined GOT (echo CHECK %3 MD5 not checked - no certutil or powershell >> "%LOG%" & exit /b 0)
set "GOT=%GOT: =%"
if /i "%GOT%"=="%2" (echo CHECK %3 MD5 OK %2 >> "%LOG%") else (echo CHECK %3 MD5 BAD got %GOT% want %2 >> "%LOG%" & set "BADMD5=1")
exit /b 0
