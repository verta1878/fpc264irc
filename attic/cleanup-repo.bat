@echo off
rem --- Log wrapper: re-run self with all output to cleanup-repo.log (added 2026-10-01, byte) ---
cd /d "%~dp0"
if /i not "%~1"=="_log" (
    call "%~f0" _log > "%~dp0cleanup-repo.log" 2>&1
    type "%~dp0cleanup-repo.log"
    echo.
    echo Log written to %~dp0cleanup-repo.log
    exit /b
)
echo Run: %DATE% %TIME%
rem ============================================================
rem  fpc264irc repo cleanup — removes build artifacts
rem  Run from the fpc264irc repo root directory
rem  2026-10-01 — byte (program discovery)
rem ============================================================

echo fpc264irc repo cleanup
echo =====================
echo.

rem --- Build temp files in repo root ---
echo Removing build temp files...
if exist ppas.sh    del ppas.sh
if exist link.res   del link.res
if exist script.res del script.res
echo   ppas.sh, link.res, script.res

rem --- USB objects in src/ -- KEPT for now (2026-10-01, byte) ---
rem     src/packages/usb/src and src/rtl/usb have .o + .ppu next to the source.
rem     Left alone until USB is verified working; clean up as part of USB work.
echo.
echo Skipping USB objects in src/ (kept until USB is verified)

rem --- installer build artifact ---
echo.
echo Removing installer build artifact...
if exist installer\install.o del installer\install.o
echo   installer/install.o

rem --- Stale units in src/ (BUG-006 safety sweep) ---
echo.
echo Checking for stale PPUs in src/rtl/units and src/packages/*/units...
if exist src\rtl\units\*.ppu (
    echo   WARNING: stale PPUs found in src\rtl\units — removing
    del /q src\rtl\units\*.ppu
    del /q src\rtl\units\*.o 2>nul
) else (
    echo   clean
)

rem --- .s assembly temp files anywhere outside bin/ ---
echo.
echo Checking for .s assembly temps outside bin/...
for /r %%f in (*.s) do (
    echo %%f | findstr /v /i "\\bin\\" >nul && (
        echo %%f | findstr /v /i "\\.git\\" >nul && (
            echo %%f | findstr /v /i "\\sdk\\" >nul && (
                echo   removing %%f
                del "%%f"
            )
        )
    )
)

rem --- Old EMX .o/.s leftovers in bin/units/i386-os2 (2026-10-01, byte) ---
rem     Units were rebuilt native -Tos2; the .o/.s there are stale EMX build output.
rem     KEEP prt0.o and prt1.o -- OS/2 startup code needed by the linker.
echo.
echo Removing stale .o/.s from bin\units\i386-os2 (keeping prt0.o, prt1.o)...
set OS2DIR=bin\units\i386-os2
set /a OS2O=0
set /a OS2S=0
if exist "%OS2DIR%\" (
    for %%f in ("%OS2DIR%\*.o") do (
        if /i not "%%~nxf"=="prt0.o" if /i not "%%~nxf"=="prt1.o" (
            echo   del %%~nxf
            del "%%f" && set /a OS2O+=1
        )
    )
    for %%f in ("%OS2DIR%\*.s") do (
        echo   del %%~nxf
        del "%%f" && set /a OS2S+=1
    )
) else (
    echo   %OS2DIR% not found
)
call echo   removed %%OS2O%% .o and %%OS2S%% .s files
echo   remaining .o in %OS2DIR%:
dir /b "%OS2DIR%\*.o" 2>nul
echo   remaining .s in %OS2DIR%:
dir /b "%OS2DIR%\*.s" 2>nul

rem --- NOT cleaned (intentional) ---
echo.
echo Kept (not build artifacts):
echo   sdk/emx/lib/*.o    — OS/2 EMX SDK objects (needed for cross-compile)
echo   bin/**/*.o          — compiled unit objects (shipped with compiler)
echo   bin/units/i386-os2/prt0.o, prt1.o — OS/2 startup code (linker needs them)
echo   bin/**/*.ppu        — compiled units (shipped with compiler)
echo   src/packages/usb/src/*.o, src/rtl/usb/*.o — kept until USB is verified
echo   docs/bugsfixed-original-2026-10-01.md — attic copy of pre-consolidation bugs

echo.
echo Done. Review with: git status
echo Remember: never commit .o or .s files from src/ — only .ppu, .rst, .a and source.
