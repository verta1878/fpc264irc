@echo off
rem repocheck-run.bat - byte, 2026-11-14
rem READ-ONLY check of the local fpc264irc repo against GitHub. Changes nothing, deletes nothing, no fetch/pull/push.
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\repocheck-run.bat
rem Writes:   C:\Users\owner\Desktop\Claude\share\compilers\repocheck-run.log
rem
rem 1 local HEAD commit            (git rev-parse HEAD)
rem 2 GitHub main commit           (git ls-remote origin main - reads only)
rem 3 changed / deleted / new files (git status --porcelain --untracked-files=all)
rem 4 ignored files                (git status --ignored)
rem 5 tracked file count           (git ls-files)

setlocal
if not exist "%~dp0fpc264irc\.git" (echo fpc264irc repo not found next to this batch & pause & exit /b 1)
cd /d "%~dp0fpc264irc"
set "LOG=%~dp0repocheck-run.log"
rem git: GitHub Desktop has its own git, not on PATH. Use it first, else git on PATH.
set "GIT="
for /d %%A in (%LOCALAPPDATA%\GitHubDesktop\app-*) do if exist "%%~A\resources\app\git\cmd\git.exe" set "GIT=%%~A\resources\app\git\cmd\git.exe"
if not defined GIT set "GIT=git"
call "%GIT%" --version >nul 2>&1
if errorlevel 1 (echo git not found - not in GitHub Desktop folder or PATH & echo ABORT git not found > "%LOG%" & pause & exit /b 1)

echo repocheck %DATE% %TIME% > "%LOG%"
echo git: %GIT% >> "%LOG%"
echo [1] LOCAL HEAD >> "%LOG%"
call "%GIT%" rev-parse HEAD >> "%LOG%" 2>&1
echo [2] GITHUB main >> "%LOG%"
call "%GIT%" ls-remote origin refs/heads/main >> "%LOG%" 2>&1
echo [3] STATUS - empty means no changed, deleted or new files >> "%LOG%"
call "%GIT%" status --porcelain --untracked-files=all >> "%LOG%" 2>&1
echo [4] IGNORED >> "%LOG%"
call "%GIT%" status --porcelain --ignored --untracked-files=all | findstr /b "!!" >> "%LOG%" 2>&1
echo [5] TRACKED FILES >> "%LOG%"
call "%GIT%" ls-files | find /c /v "" >> "%LOG%" 2>&1
echo DONE >> "%LOG%"

echo.
echo Done. Log: %LOG%
echo Say "tail log".
pause
exit /b 0
