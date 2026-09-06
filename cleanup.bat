@echo off
REM ============================================================
REM  FPC 2.6.4irc r311 Repository Cleanup
REM  Run from the repo root (where README.md lives)
REM ============================================================

echo FPC 2.6.4irc r311 — Repository Cleanup
echo ========================================
echo.

REM --- 1. Remove stale build artifacts ---
echo [1/8] Removing stale build artifacts...
if exist link.res     del link.res
if exist ppas.sh      del ppas.sh
if exist ppas.bat     del ppas.bat
if exist script.res   del script.res
if exist pp.o         del pp.o
if exist bin\link.res del bin\link.res
if exist bin\pp.o     del bin\pp.o
if exist test\link.res del test\link.res
if exist test\test_usb.o del test\test_usb.o
echo    Done.

REM --- 2. Remove old compiler copies ---
echo [2/8] Removing old compiler copies...
if exist bin\ppcx64_orig    del bin\ppcx64_orig
if exist bin\ppcx64_patched del bin\ppcx64_patched
echo    Done.

REM --- 3. Remove duplicate license ---
echo [3/8] Removing duplicate LICENSE.txt (keeping LICENSE)...
if exist LICENSE.txt (
    if exist LICENSE (
        del LICENSE.txt
        echo    Removed LICENSE.txt
    ) else (
        ren LICENSE.txt LICENSE
        echo    Renamed LICENSE.txt to LICENSE
    )
)

REM --- 4. Consolidate docs ---
echo [4/8] Consolidating docs...
REM Move root CREDITS.md to docs/ if not already there
if exist CREDITS.md (
    if exist docs\CREDITS.md (
        del CREDITS.md
        echo    Removed duplicate CREDITS.md from root
    ) else (
        move CREDITS.md docs\CREDITS.md >nul
        echo    Moved CREDITS.md to docs\
    )
)
REM docs/README.md is a separate doc — keep both
echo    Root README.md and docs\README.md kept (different content).

REM --- 5. Update VERSION ---
echo [5/8] Updating VERSION file...
echo r311 — 2026-09-06 — x64 bootstrap + USB stack + 1029 Win64 PPUs> VERSION
echo    Done.

REM --- 6. Clean attic ---
echo [6/8] Cleaning attic...
if exist attic\dl_glibc_compat.o del attic\dl_glibc_compat.o
echo    Kept source files, removed .o

REM --- 7. Remove fpcanvas0 temp units ---
echo [7/8] Removing fpcanvas0 temp units...
for /d %%d in (bin\units\*) do (
    if exist "%%d\fpcanvas0.ppu" del "%%d\fpcanvas0.ppu"
    if exist "%%d\fpcanvas0.o"   del "%%d\fpcanvas0.o"
)
echo    Done.

REM --- 8. Summary ---
echo [8/8] Verifying...
echo.
echo === Repository Structure ===
echo.
echo  Root:
if exist README.md    echo    README.md          OK
if exist LICENSE      echo    LICENSE             OK
if exist VERSION      echo    VERSION             OK
if exist Makefile     echo    Makefile            OK
echo.
echo  Compilers:
if exist bin\ppcx64   echo    bin\ppcx64          OK (native x64, stripped)
if exist bin\ppc386   echo    bin\ppc386          OK (i386, stripped)
echo.
echo  Win64 PPUs:
for /f %%a in ('dir /b bin\units\x86_64-win64\*.ppu 2^>nul ^| find /c /v ""') do echo    bin\units\x86_64-win64\  %%a PPUs
echo.
echo  Win32 PPUs:
for /f %%a in ('dir /b bin\units\i386-win32\*.ppu 2^>nul ^| find /c /v ""') do echo    bin\units\i386-win32\    %%a PPUs
echo.
echo  Docs:
if exist docs\USB.md            echo    docs\USB.md             OK
if exist docs\X64-BOOTSTRAP.md  echo    docs\X64-BOOTSTRAP.md   OK
if exist docs\CHANGELOG.md      echo    docs\CHANGELOG.md       OK
echo.
echo  Installer:
if exist installer\fpc264irc-setup.nsi echo    installer\fpc264irc-setup.nsi  OK
if exist installer\build-deb.sh        echo    installer\build-deb.sh         OK
echo.
echo  Should NOT exist (verify clean):
if exist link.res           echo    WARNING: link.res still present!
if exist ppas.sh            echo    WARNING: ppas.sh still present!
if exist ppas.bat           echo    WARNING: ppas.bat still present!
if exist script.res         echo    WARNING: script.res still present!
if exist LICENSE.txt        echo    WARNING: LICENSE.txt still present!
if exist bin\ppcx64_orig    echo    WARNING: bin\ppcx64_orig still present!
if exist bin\ppcx64_patched echo    WARNING: bin\ppcx64_patched still present!
if exist bin\pp.o           echo    WARNING: bin\pp.o still present!
if exist test\test_usb.o    echo    WARNING: test\test_usb.o still present!
echo.
echo Cleanup complete. Ready for: git add -A ^&^& git commit -m "r311" ^&^& git tag r311
echo.
pause

REM --- 9. Remove stale .exe from source tree ---
echo [9/9] Removing compiled .exe files from source tree...
for /r src %%f in (*.exe) do del "%%f"
echo    Done.
