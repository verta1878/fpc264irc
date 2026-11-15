@echo off
rem fpc264irc: delete finished delivery leftovers in the compilers folder (Group A) - byte, 2026-10-10
rem Location: C:\Users\owner\Desktop\Claude\share\compilers\cleanup-run.bat
rem Deletes ONLY these 14 folders and 24 files (all already applied + pushed to GitHub). Touches nothing else:
rem not fpc264irc\, Claude outputs\, owirc\, the ow2_* archives, the .md notes or the 2026-10-01/02 fpc264irc zips.
rem Every deletion is written to cleanup-run.log.
setlocal
set "BASE=%~dp0"
set "LOG=%BASE%cleanup-run.log"
cd /d "%BASE%"
if not exist "fpc264irc\bin\units\" (echo Run this from the compilers folder & echo ABORT not the compilers folder > "%LOG%" & pause & exit /b 1)
echo fpc264irc cleanup %DATE% %TIME% > "%LOG%"
if exist "darwin\" (rmdir /s /q "darwin" & if not exist "darwin\" (echo DELETED folder darwin>> "%LOG%") else (echo FAILED folder darwin>> "%LOG%")) else (echo not there: darwin>> "%LOG%")
if exist "darwinld\" (rmdir /s /q "darwinld" & if not exist "darwinld\" (echo DELETED folder darwinld>> "%LOG%") else (echo FAILED folder darwinld>> "%LOG%")) else (echo not there: darwinld>> "%LOG%")
if exist "darwinfw\" (rmdir /s /q "darwinfw" & if not exist "darwinfw\" (echo DELETED folder darwinfw>> "%LOG%") else (echo FAILED folder darwinfw>> "%LOG%")) else (echo not there: darwinfw>> "%LOG%")
if exist "darwin64\" (rmdir /s /q "darwin64" & if not exist "darwin64\" (echo DELETED folder darwin64>> "%LOG%") else (echo FAILED folder darwin64>> "%LOG%")) else (echo not there: darwin64>> "%LOG%")
if exist "graph322\" (rmdir /s /q "graph322" & if not exist "graph322\" (echo DELETED folder graph322>> "%LOG%") else (echo FAILED folder graph322>> "%LOG%")) else (echo not there: graph322>> "%LOG%")
if exist "i8086os2\" (rmdir /s /q "i8086os2" & if not exist "i8086os2\" (echo DELETED folder i8086os2>> "%LOG%") else (echo FAILED folder i8086os2>> "%LOG%")) else (echo not there: i8086os2>> "%LOG%")
if exist "testos2\" (rmdir /s /q "testos2" & if not exist "testos2\" (echo DELETED folder testos2>> "%LOG%") else (echo FAILED folder testos2>> "%LOG%")) else (echo not there: testos2>> "%LOG%")
if exist "os2ld\" (rmdir /s /q "os2ld" & if not exist "os2ld\" (echo DELETED folder os2ld>> "%LOG%") else (echo FAILED folder os2ld>> "%LOG%")) else (echo not there: os2ld>> "%LOG%")
if exist "os2link\" (rmdir /s /q "os2link" & if not exist "os2link\" (echo DELETED folder os2link>> "%LOG%") else (echo FAILED folder os2link>> "%LOG%")) else (echo not there: os2link>> "%LOG%")
if exist "os2test\" (rmdir /s /q "os2test" & if not exist "os2test\" (echo DELETED folder os2test>> "%LOG%") else (echo FAILED folder os2test>> "%LOG%")) else (echo not there: os2test>> "%LOG%")
if exist "ppufmt\" (rmdir /s /q "ppufmt" & if not exist "ppufmt\" (echo DELETED folder ppufmt>> "%LOG%") else (echo FAILED folder ppufmt>> "%LOG%")) else (echo not there: ppufmt>> "%LOG%")
if exist "unitfolders\" (rmdir /s /q "unitfolders" & if not exist "unitfolders\" (echo DELETED folder unitfolders>> "%LOG%") else (echo FAILED folder unitfolders>> "%LOG%")) else (echo not there: unitfolders>> "%LOG%")
if exist "unitsfix\" (rmdir /s /q "unitsfix" & if not exist "unitsfix\" (echo DELETED folder unitsfix>> "%LOG%") else (echo FAILED folder unitsfix>> "%LOG%")) else (echo not there: unitsfix>> "%LOG%")
if exist "smartpack\" (rmdir /s /q "smartpack" & if not exist "smartpack\" (echo DELETED folder smartpack>> "%LOG%") else (echo FAILED folder smartpack>> "%LOG%")) else (echo not there: smartpack>> "%LOG%")
if exist "darwin-run.bat" (del /f /q "darwin-run.bat" & if not exist "darwin-run.bat" (echo DELETED darwin-run.bat>> "%LOG%") else (echo FAILED darwin-run.bat>> "%LOG%")) else (echo not there: darwin-run.bat>> "%LOG%")
if exist "darwin-run.log" (del /f /q "darwin-run.log" & if not exist "darwin-run.log" (echo DELETED darwin-run.log>> "%LOG%") else (echo FAILED darwin-run.log>> "%LOG%")) else (echo not there: darwin-run.log>> "%LOG%")
if exist "darwinld-run.bat" (del /f /q "darwinld-run.bat" & if not exist "darwinld-run.bat" (echo DELETED darwinld-run.bat>> "%LOG%") else (echo FAILED darwinld-run.bat>> "%LOG%")) else (echo not there: darwinld-run.bat>> "%LOG%")
if exist "darwinld-run.log" (del /f /q "darwinld-run.log" & if not exist "darwinld-run.log" (echo DELETED darwinld-run.log>> "%LOG%") else (echo FAILED darwinld-run.log>> "%LOG%")) else (echo not there: darwinld-run.log>> "%LOG%")
if exist "darwinfw-run.bat" (del /f /q "darwinfw-run.bat" & if not exist "darwinfw-run.bat" (echo DELETED darwinfw-run.bat>> "%LOG%") else (echo FAILED darwinfw-run.bat>> "%LOG%")) else (echo not there: darwinfw-run.bat>> "%LOG%")
if exist "darwinfw-run.log" (del /f /q "darwinfw-run.log" & if not exist "darwinfw-run.log" (echo DELETED darwinfw-run.log>> "%LOG%") else (echo FAILED darwinfw-run.log>> "%LOG%")) else (echo not there: darwinfw-run.log>> "%LOG%")
if exist "darwin64-run.bat" (del /f /q "darwin64-run.bat" & if not exist "darwin64-run.bat" (echo DELETED darwin64-run.bat>> "%LOG%") else (echo FAILED darwin64-run.bat>> "%LOG%")) else (echo not there: darwin64-run.bat>> "%LOG%")
if exist "darwin64-run.log" (del /f /q "darwin64-run.log" & if not exist "darwin64-run.log" (echo DELETED darwin64-run.log>> "%LOG%") else (echo FAILED darwin64-run.log>> "%LOG%")) else (echo not there: darwin64-run.log>> "%LOG%")
if exist "graph322-run.bat" (del /f /q "graph322-run.bat" & if not exist "graph322-run.bat" (echo DELETED graph322-run.bat>> "%LOG%") else (echo FAILED graph322-run.bat>> "%LOG%")) else (echo not there: graph322-run.bat>> "%LOG%")
if exist "graph322-run.log" (del /f /q "graph322-run.log" & if not exist "graph322-run.log" (echo DELETED graph322-run.log>> "%LOG%") else (echo FAILED graph322-run.log>> "%LOG%")) else (echo not there: graph322-run.log>> "%LOG%")
if exist "i8086os2-run.bat" (del /f /q "i8086os2-run.bat" & if not exist "i8086os2-run.bat" (echo DELETED i8086os2-run.bat>> "%LOG%") else (echo FAILED i8086os2-run.bat>> "%LOG%")) else (echo not there: i8086os2-run.bat>> "%LOG%")
if exist "i8086os2-run.log" (del /f /q "i8086os2-run.log" & if not exist "i8086os2-run.log" (echo DELETED i8086os2-run.log>> "%LOG%") else (echo FAILED i8086os2-run.log>> "%LOG%")) else (echo not there: i8086os2-run.log>> "%LOG%")
if exist "testos2-run.bat" (del /f /q "testos2-run.bat" & if not exist "testos2-run.bat" (echo DELETED testos2-run.bat>> "%LOG%") else (echo FAILED testos2-run.bat>> "%LOG%")) else (echo not there: testos2-run.bat>> "%LOG%")
if exist "testos2-run.log" (del /f /q "testos2-run.log" & if not exist "testos2-run.log" (echo DELETED testos2-run.log>> "%LOG%") else (echo FAILED testos2-run.log>> "%LOG%")) else (echo not there: testos2-run.log>> "%LOG%")
if exist "os2ld-run.bat" (del /f /q "os2ld-run.bat" & if not exist "os2ld-run.bat" (echo DELETED os2ld-run.bat>> "%LOG%") else (echo FAILED os2ld-run.bat>> "%LOG%")) else (echo not there: os2ld-run.bat>> "%LOG%")
if exist "os2ld-run.log" (del /f /q "os2ld-run.log" & if not exist "os2ld-run.log" (echo DELETED os2ld-run.log>> "%LOG%") else (echo FAILED os2ld-run.log>> "%LOG%")) else (echo not there: os2ld-run.log>> "%LOG%")
if exist "os2link-run.bat" (del /f /q "os2link-run.bat" & if not exist "os2link-run.bat" (echo DELETED os2link-run.bat>> "%LOG%") else (echo FAILED os2link-run.bat>> "%LOG%")) else (echo not there: os2link-run.bat>> "%LOG%")
if exist "os2link-run.log" (del /f /q "os2link-run.log" & if not exist "os2link-run.log" (echo DELETED os2link-run.log>> "%LOG%") else (echo FAILED os2link-run.log>> "%LOG%")) else (echo not there: os2link-run.log>> "%LOG%")
if exist "ppufmt-run.bat" (del /f /q "ppufmt-run.bat" & if not exist "ppufmt-run.bat" (echo DELETED ppufmt-run.bat>> "%LOG%") else (echo FAILED ppufmt-run.bat>> "%LOG%")) else (echo not there: ppufmt-run.bat>> "%LOG%")
if exist "ppufmt-run.log" (del /f /q "ppufmt-run.log" & if not exist "ppufmt-run.log" (echo DELETED ppufmt-run.log>> "%LOG%") else (echo FAILED ppufmt-run.log>> "%LOG%")) else (echo not there: ppufmt-run.log>> "%LOG%")
if exist "unitfolders-run.bat" (del /f /q "unitfolders-run.bat" & if not exist "unitfolders-run.bat" (echo DELETED unitfolders-run.bat>> "%LOG%") else (echo FAILED unitfolders-run.bat>> "%LOG%")) else (echo not there: unitfolders-run.bat>> "%LOG%")
if exist "unitfolders-run.log" (del /f /q "unitfolders-run.log" & if not exist "unitfolders-run.log" (echo DELETED unitfolders-run.log>> "%LOG%") else (echo FAILED unitfolders-run.log>> "%LOG%")) else (echo not there: unitfolders-run.log>> "%LOG%")
if exist "unitsfix-run.bat" (del /f /q "unitsfix-run.bat" & if not exist "unitsfix-run.bat" (echo DELETED unitsfix-run.bat>> "%LOG%") else (echo FAILED unitsfix-run.bat>> "%LOG%")) else (echo not there: unitsfix-run.bat>> "%LOG%")
if exist "unitsfix-run.log" (del /f /q "unitsfix-run.log" & if not exist "unitsfix-run.log" (echo DELETED unitsfix-run.log>> "%LOG%") else (echo FAILED unitsfix-run.log>> "%LOG%")) else (echo not there: unitsfix-run.log>> "%LOG%")
echo DONE>> "%LOG%"
echo.
echo Done. Log: %LOG%
pause
endlocal
