@echo off
rem attic-byte-fix-run.bat - byte, 2026-11-14
rem Fix: the first attic-byte-run.bat put byte's 45 items in compilers\fpc\attic (the update did not reach the share).
rem This moves them on to compilers\fpc264irc\attic\deliveries, where they belong.
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\attic-byte-fix-run.bat
rem
rem MOVES ONLY - no file is deleted. A name already in deliveries\ is SKIPPED (never overwritten).
rem Then it removes the two EMPTY folders fpc\attic and fpc (rmdir without /s - it fails if anything is left in them).
rem deliveries\ is a subfolder because fpc264irc\attic already has an older darwin-run.bat.
rem NOTE: fpc264irc is the git repo - git status will show attic\deliveries\ as new (about 260 MB).

setlocal
cd /d "%~dp0"
set "LOG=%~dp0attic-byte-fix-run.log"
set "FROM=fpc\attic"
set "AT=fpc264irc\attic\deliveries"
echo attic-byte-fix %DATE% %TIME% > "%LOG%"

if not exist "%FROM%" (echo %FROM% not found & echo ABORT no %FROM% >> "%LOG%" & pause & exit /b 1)
if not exist "fpc264irc\attic" (echo fpc264irc\attic not found - run this from the compilers folder & echo ABORT no fpc264irc\attic >> "%LOG%" & pause & exit /b 1)
if not exist "%AT%" mkdir "%AT%"
if not exist "%AT%" (echo Cannot create %AT% & echo ABORT cannot create %AT% >> "%LOG%" & pause & exit /b 1)

set /a MOVED=0
set /a SKIP=0

for %%D in (darwin darwindoc dosmove freebsd go32v2 linux stubtrim toolkit toolkit2 w32lcl w32main x64docs x64linux) do call :one "%%D" dir

for %%N in (cleanup darwin darwindoc dosmove exact1 freebsd go32v2 linux stubtrim toolkit toolkit2 w32lcl w32main x64docs x64linux) do (
  call :one "%%N-run.bat" file
  call :one "%%N-run.log" file
)
call :one "pcbirc-cleanup-run.bat" file
call :one "pcbirc-cleanup.log" file

rmdir "%FROM%" 2>nul
if exist "%FROM%" (echo KEPT %FROM% - not empty >> "%LOG%") else (echo REMOVED empty folder %FROM% >> "%LOG%")
rmdir "fpc" 2>nul
if exist "fpc" (echo KEPT fpc - not empty >> "%LOG%") else (echo REMOVED empty folder fpc >> "%LOG%")

echo MOVED %MOVED%, SKIPPED %SKIP% >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Moved %MOVED%, skipped %SKIP%.  Log: %LOG%
echo Expected: Moved 45, skipped 0, fpc folder removed.
pause
exit /b 0

:one
if not exist "%FROM%\%~1" (echo MISSING %~1 >> "%LOG%" & set /a SKIP+=1 & goto :eof)
if exist "%AT%\%~1" (echo SKIPPED %~1 - already in %AT% >> "%LOG%" & set /a SKIP+=1 & goto :eof)
move "%FROM%\%~1" "%AT%\" >nul
if exist "%AT%\%~1" (echo MOVED %2 %~1 >> "%LOG%" & set /a MOVED+=1) else (echo FAILED %~1 >> "%LOG%" & set /a SKIP+=1)
goto :eof
