@echo off
rem fpc264irc graph on the x86_64 targets: docs, graph.pp message (linux, darwin), test\x64graph - byte, 2026-10-16 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\x64docs-run.bat   (or inside the fpc264irc folder)
rem Zip:      C:\Users\owner\Desktop\Claude\share\compilers\x64docs\fpc264irc-x64docs-2026-10-16.zip
rem Works from the compilers folder OR from inside the fpc264irc folder (log always goes to the compilers folder)
rem 1 unzip 15 files, overwriting (8 changed, 6 new: bin\units\x86_64-linux\graph.pp, bin\units\x86_64-darwin\graph.pp,
rem   test\x64graph\ x64graph.pas x64ptcgraph.pas build.sh README.md; + marker; no .ppu changes)
rem 2 check   3 remove marker.  Deletes nothing else.
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "ZIP=%BASE%x64docs\fpc264irc-x64docs-2026-10-16.zip"
set "LOG=%BASE%x64docs-run.log"
echo fpc264irc x64docs %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "bin\units\x86_64-linux\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%ZIP%" (echo Zip not found: %ZIP% & echo ABORT zip not found >> "%LOG%" & pause & exit /b 1)
if not exist "src\rtl\i386\fmovgo32.inc" (echo Apply the dosmove delivery first & echo ABORT dosmove delivery missing >> "%LOG%" & pause & exit /b 1)
echo [1/3] unzipping into fpc264irc, overwriting
where tar >nul 2>&1
if errorlevel 1 (powershell -NoProfile -Command "Expand-Archive -Force -LiteralPath '%ZIP%' -DestinationPath '%REPO%'") else (tar -xf "%ZIP%" -C "%REPO%")
if errorlevel 1 (echo Unzip failed & echo ABORT unzip failed >> "%LOG%" & pause & exit /b 1)
echo UNZIPPED fpc264irc-x64docs-2026-10-16.zip - 15 files >> "%LOG%"
echo REPLACED tools\graph-322-build\README.md README.md docs\ROADMAP-UNITS.md test\README.md HISTORY.md CHECKSUMS.md5 CHECKSUMS.sha256 CHECKSUMS.txt >> "%LOG%"
echo NEW bin\units\x86_64-linux\graph.pp bin\units\x86_64-darwin\graph.pp test\x64graph\x64graph.pas test\x64graph\x64ptcgraph.pas test\x64graph\build.sh test\x64graph\README.md >> "%LOG%"
echo [2/3] checking
if not exist "tools\smartpack\x64docs.ok" (echo Zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
findstr /c:"Graph on the x86_64 targets" "tools\graph-322-build\README.md" >nul
if errorlevel 1 echo CHECK graph-322-build README not updated >> "%LOG%"
if not exist "bin\units\x86_64-linux\graph.pp" echo CHECK x86_64-linux graph.pp missing >> "%LOG%"
if not exist "bin\units\x86_64-darwin\graph.pp" echo CHECK x86_64-darwin graph.pp missing >> "%LOG%"
if not exist "bin\units\x86_64-linux\graph.ppu" (echo OK no graph.ppu on x86_64-linux >> "%LOG%") else (echo CHECK x86_64-linux has a graph.ppu - the message file is then not used >> "%LOG%")
if not exist "test\x64graph\build.sh" echo CHECK test\x64graph missing >> "%LOG%"
echo [3/3] removing marker
if exist "tools\smartpack\x64docs.ok" del /f /q "tools\smartpack\x64docs.ok"
if not exist "tools\smartpack\x64docs.ok" echo DELETED tools\smartpack\x64docs.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
pause
endlocal
