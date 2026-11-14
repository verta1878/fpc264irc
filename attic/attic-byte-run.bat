@echo off
rem attic-byte-run.bat - byte, 2026-11-14
rem Moves byte's finished fpc264irc delivery files out of the compilers folder into compilers\fpc\attic.
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\attic-byte-run.bat
rem
rem MOVES ONLY - nothing is deleted. If a name already exists in the attic it is SKIPPED (never overwritten).
rem
rem Moved (13 folders + 32 files):
rem   folders: darwin darwindoc dosmove freebsd go32v2 linux stubtrim toolkit toolkit2 w32lcl w32main x64docs x64linux
rem   files:   <name>-run.bat + <name>-run.log for cleanup darwin darwindoc dosmove exact1 freebsd go32v2 linux
rem            stubtrim toolkit toolkit2 w32lcl w32main x64docs x64linux, plus pcbirc-cleanup-run.bat + pcbirc-cleanup.log
rem
rem Left in place:
rem   fvadd\ + fvadd-run.bat   - not run yet (pending delivery)
rem   macsdk\                  - Apple SDKs, kept outside the repo on purpose
rem   fpc264irc\               - the repo
rem   owirc\, attic-old-milestones.bat              - bob's
rem   SYSOP0-METHODOLOGY.*, error127_debug_log.md, tier_fallback_system.md,
rem   fpc264irc-*-2026-10-01.zip, fpc264irc-graph304-makefiles.zip - not byte's
rem   this batch and its log

setlocal
cd /d "%~dp0"
set "LOG=%~dp0attic-byte-run.log"
set "AT=fpc\attic"
echo attic-byte %DATE% %TIME% > "%LOG%"

if not exist "fpc" mkdir "fpc"
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

echo MOVED %MOVED%, SKIPPED %SKIP% >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Moved %MOVED%, skipped %SKIP%.  Log: %LOG%
echo Expected: Moved 45, skipped 0.
pause
exit /b 0

:one
if not exist "%~1" (echo MISSING %~1 >> "%LOG%" & set /a SKIP+=1 & goto :eof)
if exist "%AT%\%~1" (echo SKIPPED %~1 - already in %AT% >> "%LOG%" & set /a SKIP+=1 & goto :eof)
move "%~1" "%AT%\" >nul
if exist "%AT%\%~1" (echo MOVED %2 %~1 >> "%LOG%" & set /a MOVED+=1) else (echo FAILED %~1 >> "%LOG%" & set /a SKIP+=1)
goto :eof
