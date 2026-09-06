@echo off
REM ============================================================
REM  FPC 2.6.4irc r311 Repository Cleanup
REM  Run from the repo root (where README.md lives)
REM ============================================================

echo FPC 2.6.4irc r311 — Repository Cleanup
echo ========================================
echo.

REM --- 1. Verify repo structure ---
echo [1/10] Verifying repo structure...
set MISSING=0
if not exist README.md          echo    MISSING: README.md & set /a MISSING+=1
if not exist LICENSE            echo    MISSING: LICENSE & set /a MISSING+=1
if not exist .gitattributes     echo    MISSING: .gitattributes & set /a MISSING+=1
if not exist CHANGELOG-IRC.md   echo    MISSING: CHANGELOG-IRC.md & set /a MISSING+=1
if not exist build-linux.sh     echo    MISSING: build-linux.sh & set /a MISSING+=1
if not exist build-windows.bat  echo    MISSING: build-windows.bat & set /a MISSING+=1
if not exist patches\os2-cross\README.md echo    MISSING: patches\os2-cross\README.md & set /a MISSING+=1
if %MISSING% GTR 0 (
    echo    WARNING: %MISSING% files missing from repo root!
    echo    These should exist from the original repo.
    echo    Check if you are in the right directory.
) else (
    echo    All expected root files present.
)

REM --- 2. Remove stale build artifacts ---
echo [2/10] Removing stale build artifacts...
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

REM --- 3. Remove old compiler copies ---
echo [3/10] Removing old compiler copies...
if exist bin\ppcx64_orig    del bin\ppcx64_orig
if exist bin\ppcx64_patched del bin\ppcx64_patched
echo    Done.

REM --- 4. Remove duplicate license ---
echo [4/10] Removing duplicate LICENSE.txt (keeping LICENSE)...
if exist LICENSE.txt (
    if exist LICENSE (
        del LICENSE.txt
        echo    Removed LICENSE.txt
    ) else (
        ren LICENSE.txt LICENSE
        echo    Renamed LICENSE.txt to LICENSE
    )
)

REM --- 5. Consolidate docs ---
echo [5/10] Consolidating docs...
if exist CREDITS.md (
    if exist docs\CREDITS.md (
        del CREDITS.md
        echo    Removed duplicate CREDITS.md from root
    ) else (
        move CREDITS.md docs\CREDITS.md >nul
        echo    Moved CREDITS.md to docs\
    )
)

REM --- 6. Remove stale RTL workaround files ---
echo [6/10] Checking for stale RTL workarounds...
if exist src\rtl\win\dos.pp.min (
    del src\rtl\win\dos.pp.min
    echo    Removed dos.pp.min
)

REM --- 7. Remove compiled .exe from source tree ---
echo [7/10] Removing compiled .exe files from source tree...
for /r src %%f in (*.exe) do (
    del "%%f"
)
echo    Done.

REM --- 8. Remove fpcanvas0 temp units ---
echo [8/10] Removing fpcanvas0 temp units...
for /d %%d in (bin\units\*) do (
    if exist "%%d\fpcanvas0.ppu" del "%%d\fpcanvas0.ppu"
    if exist "%%d\fpcanvas0.o"   del "%%d\fpcanvas0.o"
)
echo    Done.

REM --- 9. Remove stale .dll .a .lfm .res from Win64 units ---
echo [9/10] Removing stale build artifacts from units...
for %%e in (dll a lfm res reslst) do (
    for /r bin\units\x86_64-win64 %%f in (*.%%e) do del "%%f" 2>nul
)
echo    Done.

REM --- 10. Summary ---
echo [10/10] Verifying final state...
echo.
echo === Repository Structure ===
echo.
echo  Root files:
if exist README.md          echo    README.md           OK
if exist LICENSE            echo    LICENSE              OK
if exist VERSION            echo    VERSION              OK
if exist .gitattributes     echo    .gitattributes       OK
if exist CHANGELOG-IRC.md   echo    CHANGELOG-IRC.md     OK
if exist cleanup.bat        echo    cleanup.bat          OK
if exist build-linux.sh     echo    build-linux.sh       OK
if exist build-windows.bat  echo    build-windows.bat    OK
echo.
echo  Compilers:
if exist bin\ppcx64 echo    bin\ppcx64           OK (native x64, stripped)
if exist bin\ppc386 echo    bin\ppc386           OK (i386, stripped)
echo.
echo  Win64 PPUs:
for /f %%a in ('dir /b bin\units\x86_64-win64\*.ppu 2^>nul ^| find /c /v ""') do echo    bin\units\x86_64-win64\  %%a PPUs
echo.
echo  Win32 PPUs:
for /f %%a in ('dir /b bin\units\i386-win32\*.ppu 2^>nul ^| find /c /v ""') do echo    bin\units\i386-win32\    %%a PPUs
echo.
echo  Docs:
if exist docs\USB.md            echo    docs\USB.md              OK
if exist docs\X64-BOOTSTRAP.md  echo    docs\X64-BOOTSTRAP.md    OK
if exist docs\CHANGELOG.md      echo    docs\CHANGELOG.md        OK
if exist docs\INSTALL.md        echo    docs\INSTALL.md          OK
if exist docs\CREDITS.md        echo    docs\CREDITS.md          OK
echo.
echo  USB Stack:
if exist src\packages\usb\src\usbcore.pas   echo    usbcore              OK
if exist src\packages\usb\src\usbxhci.pas   echo    usbxhci              OK
if exist src\rtl\usb\libusb.pp              echo    libusb               OK
if exist src\rtl\usb\usbserial.pp           echo    usbserial            OK
echo.
echo  Installer:
if exist installer\fpc264irc-setup.nsi echo    NSIS script           OK
if exist installer\build-deb.sh        echo    Debian script         OK
echo.
echo  Patches:
if exist patches\os2-cross\README.md   echo    OS/2 cross patches    OK
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
if exist CREDITS.md         echo    WARNING: CREDITS.md at root (should be in docs\)
echo.
echo ============================================================
echo  Cleanup complete.
echo.
echo  Next steps:
echo    git add -A
echo    git commit -m "r311: x64 bootstrap + USB stack + 1012 Win64 PPUs"
echo    git tag r311
echo    git push origin main --tags
echo ============================================================
echo.
pause
