@echo off
rem fpc264irc exact source rebuild 5: i386-darwin + Lazarus i386-darwin + stub libobjc - byte, 2026-10-16 - ONE batch does it all
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\darwin-run.bat   (or inside the fpc264irc folder)
rem Parts:    C:\Users\owner\Desktop\Claude\share\compilers\darwin\fpc264irc-darwin-2026-10-16.zip.part0 + .part1
rem Works from the compilers folder OR from inside the fpc264irc folder (log always goes to the compilers folder)
rem 1 join the 2 parts (MD5 checked)   2 delete 285 files (listed below, each one logged)   3 unzip 2266 files,
rem overwriting   4 check   5 remove the joined zip and the marker.  Deletes nothing else.
rem Deleted: bin\units\i386-darwin: the 7 univint units now in univint\ (.ppu + libp*.a, 14 files);
rem bin\lazarus\units\i386-darwin: the 271 loose .o (now inside libp*.a).
setlocal
set "HERE=%~dp0"
set "BASE=%HERE%"
if exist "%HERE%bin\units\" set "BASE=%HERE%..\"
pushd "%BASE%"
set "BASE=%CD%\"
popd
set "REPO=%BASE%fpc264irc"
set "P=%BASE%darwin\fpc264irc-darwin-2026-10-16.zip"
set "ZIP=%BASE%darwin\fpc264irc-darwin-2026-10-16-joined.zip"
set "LOG=%BASE%darwin-run.log"
set "WANT=a70e5630655dfdc2d2b171ff569e3d04"
echo fpc264irc darwin %DATE% %TIME% > "%LOG%"
cd /d "%REPO%"
if not exist "bin\units\i386-darwin\" (echo fpc264irc folder not found & echo ABORT repo not found >> "%LOG%" & pause & exit /b 1)
if not exist "%P%.part0" (echo Part 0 not found: %P%.part0 & echo ABORT part0 missing >> "%LOG%" & pause & exit /b 1)
if not exist "%P%.part1" (echo Part 1 not found: %P%.part1 & echo ABORT part1 missing >> "%LOG%" & pause & exit /b 1)
if not exist "test\x64graph\build.sh" (echo Apply the x64docs delivery first & echo ABORT x64docs delivery missing >> "%LOG%" & pause & exit /b 1)
echo [1/5] joining the 2 parts
copy /b /y "%P%.part0"+"%P%.part1" "%ZIP%" >nul
if errorlevel 1 (echo Join failed & echo ABORT join failed >> "%LOG%" & pause & exit /b 1)
for %%A in ("%ZIP%") do set "SIZE=%%~zA"
if not "%SIZE%"=="33424426" (echo Joined zip is %SIZE% bytes, not 33424426 & echo ABORT size %SIZE% >> "%LOG%" & del /f /q "%ZIP%" & pause & exit /b 1)
set "GOT="
where certutil >nul 2>&1
if not errorlevel 1 for /f "skip=1 tokens=* delims=" %%h in ('certutil -hashfile "%ZIP%" MD5') do if not defined GOT set "GOT=%%h"
if not defined GOT for /f "delims=" %%h in ('powershell -NoProfile -Command "(Get-FileHash -Algorithm MD5 -LiteralPath '%ZIP%').Hash" 2^>nul') do set "GOT=%%h"
if not defined GOT (echo JOINED 33424426 bytes - MD5 not checked: no certutil / powershell >> "%LOG%" & goto joined)
set "GOT=%GOT: =%"
if /i not "%GOT%"=="%WANT%" (echo Joined zip MD5 %GOT% is not %WANT% & echo ABORT md5 %GOT% >> "%LOG%" & del /f /q "%ZIP%" & pause & exit /b 1)
echo JOINED fpc264irc-darwin-2026-10-16.zip 33424426 bytes, MD5 %GOT% >> "%LOG%"
:joined
echo [2/5] deleting 285 files
if exist "bin\units\i386-darwin\Displays.ppu" (del /f /q "bin\units\i386-darwin\Displays.ppu" & echo DELETED bin\units\i386-darwin\Displays.ppu >> "%LOG%")
if exist "bin\units\i386-darwin\libpDisplays.a" (del /f /q "bin\units\i386-darwin\libpDisplays.a" & echo DELETED bin\units\i386-darwin\libpDisplays.a >> "%LOG%")
if exist "bin\units\i386-darwin\DrawSprocket.ppu" (del /f /q "bin\units\i386-darwin\DrawSprocket.ppu" & echo DELETED bin\units\i386-darwin\DrawSprocket.ppu >> "%LOG%")
if exist "bin\units\i386-darwin\libpDrawSprocket.a" (del /f /q "bin\units\i386-darwin\libpDrawSprocket.a" & echo DELETED bin\units\i386-darwin\libpDrawSprocket.a >> "%LOG%")
if exist "bin\units\i386-darwin\MacOS.ppu" (del /f /q "bin\units\i386-darwin\MacOS.ppu" & echo DELETED bin\units\i386-darwin\MacOS.ppu >> "%LOG%")
if exist "bin\units\i386-darwin\libpMacOS.a" (del /f /q "bin\units\i386-darwin\libpMacOS.a" & echo DELETED bin\units\i386-darwin\libpMacOS.a >> "%LOG%")
if exist "bin\units\i386-darwin\QTSMovie.ppu" (del /f /q "bin\units\i386-darwin\QTSMovie.ppu" & echo DELETED bin\units\i386-darwin\QTSMovie.ppu >> "%LOG%")
if exist "bin\units\i386-darwin\libpQTSMovie.a" (del /f /q "bin\units\i386-darwin\libpQTSMovie.a" & echo DELETED bin\units\i386-darwin\libpQTSMovie.a >> "%LOG%")
if exist "bin\units\i386-darwin\QTStreamingComponents.ppu" (del /f /q "bin\units\i386-darwin\QTStreamingComponents.ppu" & echo DELETED bin\units\i386-darwin\QTStreamingComponents.ppu >> "%LOG%")
if exist "bin\units\i386-darwin\libpQTStreamingComponents.a" (del /f /q "bin\units\i386-darwin\libpQTStreamingComponents.a" & echo DELETED bin\units\i386-darwin\libpQTStreamingComponents.a >> "%LOG%")
if exist "bin\units\i386-darwin\QuickTimeComponents.ppu" (del /f /q "bin\units\i386-darwin\QuickTimeComponents.ppu" & echo DELETED bin\units\i386-darwin\QuickTimeComponents.ppu >> "%LOG%")
if exist "bin\units\i386-darwin\libpQuickTimeComponents.a" (del /f /q "bin\units\i386-darwin\libpQuickTimeComponents.a" & echo DELETED bin\units\i386-darwin\libpQuickTimeComponents.a >> "%LOG%")
if exist "bin\units\i386-darwin\QuickTimeStreaming.ppu" (del /f /q "bin\units\i386-darwin\QuickTimeStreaming.ppu" & echo DELETED bin\units\i386-darwin\QuickTimeStreaming.ppu >> "%LOG%")
if exist "bin\units\i386-darwin\libpQuickTimeStreaming.a" (del /f /q "bin\units\i386-darwin\libpQuickTimeStreaming.a" & echo DELETED bin\units\i386-darwin\libpQuickTimeStreaming.a >> "%LOG%")
for /r "bin\lazarus\units\i386-darwin" %%f in (*.o) do (del /f /q "%%f" & echo DELETED %%f >> "%LOG%")
echo [3/5] unzipping into fpc264irc, overwriting
where tar >nul 2>&1
if errorlevel 1 (powershell -NoProfile -Command "Expand-Archive -Force -LiteralPath '%ZIP%' -DestinationPath '%REPO%'") else (tar -xf "%ZIP%" -C "%REPO%")
if errorlevel 1 (echo Unzip failed & echo ABORT unzip failed >> "%LOG%" & pause & exit /b 1)
echo UNZIPPED fpc264irc-darwin-2026-10-16.zip - 2266 files >> "%LOG%"
echo [4/5] checking
if not exist "tools\smartpack\darwin.ok" (echo Zip did not land & echo ABORT marker missing >> "%LOG%" & pause & exit /b 1)
if not exist "tools\darwin-build\build.sh" echo CHECK tools\darwin-build missing >> "%LOG%"
if not exist "bin\units\i386-darwin\univint\Video.ppu" echo CHECK univint\Video.ppu missing >> "%LOG%"
if not exist "bin\units\i386-darwin\fv\menus.ppu" echo CHECK fv\menus.ppu missing >> "%LOG%"
if not exist "bin\units\i386-darwin\fv\resource.ppu" echo CHECK fv\resource.ppu missing >> "%LOG%"
if not exist "bin\units\i386-darwin\resfactory.ppu" echo CHECK fcl-res units missing >> "%LOG%"
if not exist "bin\units\i386-darwin\jconsts.rst" echo CHECK jconsts.rst missing >> "%LOG%"
if not exist "bin\units\i386-darwin\libpmenus.a" echo CHECK libpmenus.a missing >> "%LOG%"
if exist "bin\units\i386-darwin\Displays.ppu" echo CHECK Displays.ppu still in the main folder >> "%LOG%"
if not exist "bin\lazarus\units\i386-darwin\lcl\carbon\libpcarbonint.a" echo CHECK Lazarus carbon archives missing >> "%LOG%"
findstr /c:"_objc_enumerationMutation" "patches\darwin-cross\stubs\i386\libobjc.A.syms" >nul
if errorlevel 1 echo CHECK stub libobjc list not updated >> "%LOG%"
set "LEFT=0"
for /r "bin\lazarus\units\i386-darwin" %%f in (*.o) do set /a LEFT+=1
if not "%LEFT%"=="0" echo CHECK %LEFT% .o files left in bin\lazarus\units\i386-darwin >> "%LOG%"
echo [5/5] removing the joined zip and the marker
if exist "%ZIP%" del /f /q "%ZIP%"
if not exist "%ZIP%" echo DELETED darwin\fpc264irc-darwin-2026-10-16-joined.zip - made in step 1 >> "%LOG%"
if exist "tools\smartpack\darwin.ok" del /f /q "tools\smartpack\darwin.ok"
if not exist "tools\smartpack\darwin.ok" echo DELETED tools\smartpack\darwin.ok marker >> "%LOG%"
echo DONE >> "%LOG%"
echo.
echo Done. Log: %LOG%
pause
endlocal
