@echo off
rem pcbirc-cleanup-run.bat - byte, 2026-10-10
rem Removes the 101 fpc264irc files (unitfolders 2026-10-07 zip) that were unpacked into pcbircrevival by mistake.
rem Each file is deleted only if its size matches the fpc264irc copy (all 101 were checked byte-for-byte).
rem Folders are removed only if empty afterwards (rmdir without /s). checksums.* and history.md are NOT touched:
rem they are pcbirc's own tracked files - restore them with GitHub Desktop "Discard changes".
setlocal
set "R=%~dp0pcbircrevival"
set "LOG=%~dp0pcbirc-cleanup.log"
if not exist "%R%\.git" ( echo pcbircrevival not found next to this batch & pause & exit /b 1 )
echo pcbirc cleanup %date% %time% > "%LOG%"
set /a DEL=0, SKIP=0
call :del "bin\tools\i386-win32\i386-win32-fpcres" 924848
call :del "bin\units\i386-darwin\dbugintf.ppu" 10099
call :del "bin\units\i386-darwin\dbugintf.rst" 349
call :del "bin\units\i386-darwin\fpimgcanv.ppu" 5646
call :del "bin\units\i386-darwin\fv\dialogs.ppu" 106616
call :del "bin\units\i386-darwin\fv\dialogs.rst" 683
call :del "bin\units\i386-darwin\fv\libpdialogs.a" 93872
call :del "bin\units\i386-darwin\libpdbugintf.a" 16800
call :del "bin\units\i386-darwin\libpfpimgcanv.a" 10152
call :del "bin\units\i386-darwin\libpmenus.a" 30584
call :del "bin\units\i386-darwin\libpxmldatapacketreader.a" 25728
call :del "bin\units\i386-darwin\xmldatapacketreader.ppu" 13959
call :del "bin\units\i386-darwin\xmldatapacketreader.rst" 101
call :del "bin\units\i386-win32\app.ppu" 33387
call :del "bin\units\i386-win32\app.rst" 148
call :del "bin\units\i386-win32\asciitab.ppu" 8910
call :del "bin\units\i386-win32\buildfv.ppu" 1693
call :del "bin\units\i386-win32\colortxt.ppu" 4229
call :del "bin\units\i386-win32\dialogs.ppu" 106392
call :del "bin\units\i386-win32\dialogs.rst" 683
call :del "bin\units\i386-win32\drivers.ppu" 30926
call :del "bin\units\i386-win32\editors.ppu" 75071
call :del "bin\units\i386-win32\editors.rst" 2672
call :del "bin\units\i386-win32\fpwidestring.ppu" 31764
call :del "bin\units\i386-win32\fvcommon.ppu" 7117
call :del "bin\units\i386-win32\fvconsts.ppu" 27238
call :del "bin\units\i386-win32\gadgets.ppu" 7216
call :del "bin\units\i386-win32\histlist.ppu" 4897
call :del "bin\units\i386-win32\inplong.ppu" 7975
call :del "bin\units\i386-win32\libimpfpwidestring.a" 2728
call :del "bin\units\i386-win32\libpapp.a" 46460
call :del "bin\units\i386-win32\libpasciitab.a" 17448
call :del "bin\units\i386-win32\libpbuildfv.a" 650
call :del "bin\units\i386-win32\libpcolortxt.a" 6774
call :del "bin\units\i386-win32\libpdialogs.a" 155204
call :del "bin\units\i386-win32\libpdrivers.a" 32722
call :del "bin\units\i386-win32\libpeditors.a" 133184
call :del "bin\units\i386-win32\libpfpwidestring.a" 34394
call :del "bin\units\i386-win32\libpfvcommon.a" 11994
call :del "bin\units\i386-win32\libpfvconsts.a" 656
call :del "bin\units\i386-win32\libpgadgets.a" 13148
call :del "bin\units\i386-win32\libphistlist.a" 7320
call :del "bin\units\i386-win32\libpinplong.a" 13156
call :del "bin\units\i386-win32\libpmemory.a" 6804
call :del "bin\units\i386-win32\libpmenus.a" 48564
call :del "bin\units\i386-win32\libpmsgbox.a" 10546
call :del "bin\units\i386-win32\libpoutline.a" 26724
call :del "bin\units\i386-win32\libpstatuses.a" 51340
call :del "bin\units\i386-win32\libpstddlg.a" 124502
call :del "bin\units\i386-win32\libpsysmsg.a" 5428
call :del "bin\units\i386-win32\libptabs.a" 23474
call :del "bin\units\i386-win32\libptime.a" 3708
call :del "bin\units\i386-win32\libptimeddlg.a" 13742
call :del "bin\units\i386-win32\libpvalidate.a" 41050
call :del "bin\units\i386-win32\libpviews.a" 129742
call :del "bin\units\i386-win32\memory.ppu" 6415
call :del "bin\units\i386-win32\menus.ppu" 26677
call :del "bin\units\i386-win32\msgbox.ppu" 6102
call :del "bin\units\i386-win32\msgbox.rst" 214
call :del "bin\units\i386-win32\outline.ppu" 19890
call :del "bin\units\i386-win32\statuses.ppu" 34881
call :del "bin\units\i386-win32\stddlg.ppu" 61492
call :del "bin\units\i386-win32\stddlg.rst" 1623
call :del "bin\units\i386-win32\sysmsg.ppu" 3406
call :del "bin\units\i386-win32\tabs.ppu" 12313
call :del "bin\units\i386-win32\time.ppu" 4125
call :del "bin\units\i386-win32\timeddlg.ppu" 7724
call :del "bin\units\i386-win32\validate.ppu" 24728
call :del "bin\units\i386-win32\views.ppu" 99474
call :del "bin\units\x86_64-win64\fprepos.ppu" 42642
call :del "bin\units\x86_64-win64\fprepos.rst" 993
call :del "bin\units\x86_64-win64\fpxmlrep.ppu" 33270
call :del "bin\units\x86_64-win64\fpxmlrep.rst" 236
call :del "bin\units\x86_64-win64\libpfprepos.a" 78956
call :del "bin\units\x86_64-win64\libpfpxmlrep.a" 69022
call :del "bin\units\x86_64-win64\libppkgcommands.a" 58336
call :del "bin\units\x86_64-win64\libppkgdownload.a" 22170
call :del "bin\units\x86_64-win64\libppkgfpmake.a" 246916
call :del "bin\units\x86_64-win64\libppkgglobals.a" 33484
call :del "bin\units\x86_64-win64\libppkghandler.a" 31434
call :del "bin\units\x86_64-win64\libppkgmessages.a" 85886
call :del "bin\units\x86_64-win64\libppkgmkconv.a" 68160
call :del "bin\units\x86_64-win64\libppkgoptions.a" 71018
call :del "bin\units\x86_64-win64\libppkgrepos.a" 50002
call :del "bin\units\x86_64-win64\libppkgwget.a" 11096
call :del "bin\units\x86_64-win64\pkgcommands.ppu" 20181
call :del "bin\units\x86_64-win64\pkgdownload.ppu" 7619
call :del "bin\units\x86_64-win64\pkgfpmake.ppu" 1699298
call :del "bin\units\x86_64-win64\pkgglobals.ppu" 15542
call :del "bin\units\x86_64-win64\pkghandler.ppu" 11721
call :del "bin\units\x86_64-win64\pkgmessages.ppu" 20789
call :del "bin\units\x86_64-win64\pkgmessages.rst" 10338
call :del "bin\units\x86_64-win64\pkgmkconv.ppu" 18958
call :del "bin\units\x86_64-win64\pkgoptions.ppu" 29027
call :del "bin\units\x86_64-win64\pkgrepos.ppu" 11773
call :del "bin\units\x86_64-win64\pkgrepos.rst" 123
call :del "bin\units\x86_64-win64\pkgwget.ppu" 4255
call :del "docs\ROADMAP-UNITS.md" 11072
call :del "src\rtl\objpas\unicode\fpwidestring.pp" 22733
call :del "tools\smartpack\ppu_consistency.py" 2030
call :del "tools\smartpack\unitfolders.ok" 23
if exist "%R%\bin\units\i386-darwin\fv\" rmdir "%R%\bin\units\i386-darwin\fv" 2>nul
if not exist "%R%\bin\units\i386-darwin\fv\*" echo REMOVED EMPTY FOLDER bin\units\i386-darwin\fv >> "%LOG%"
if exist "%R%\src\rtl\objpas\unicode\" rmdir "%R%\src\rtl\objpas\unicode" 2>nul
if not exist "%R%\src\rtl\objpas\unicode\*" echo REMOVED EMPTY FOLDER src\rtl\objpas\unicode >> "%LOG%"
if exist "%R%\bin\tools\i386-win32\" rmdir "%R%\bin\tools\i386-win32" 2>nul
if not exist "%R%\bin\tools\i386-win32\*" echo REMOVED EMPTY FOLDER bin\tools\i386-win32 >> "%LOG%"
if exist "%R%\bin\units\i386-darwin\" rmdir "%R%\bin\units\i386-darwin" 2>nul
if not exist "%R%\bin\units\i386-darwin\*" echo REMOVED EMPTY FOLDER bin\units\i386-darwin >> "%LOG%"
if exist "%R%\bin\units\i386-win32\" rmdir "%R%\bin\units\i386-win32" 2>nul
if not exist "%R%\bin\units\i386-win32\*" echo REMOVED EMPTY FOLDER bin\units\i386-win32 >> "%LOG%"
if exist "%R%\bin\units\x86_64-win64\" rmdir "%R%\bin\units\x86_64-win64" 2>nul
if not exist "%R%\bin\units\x86_64-win64\*" echo REMOVED EMPTY FOLDER bin\units\x86_64-win64 >> "%LOG%"
if exist "%R%\src\rtl\objpas\" rmdir "%R%\src\rtl\objpas" 2>nul
if not exist "%R%\src\rtl\objpas\*" echo REMOVED EMPTY FOLDER src\rtl\objpas >> "%LOG%"
if exist "%R%\bin\tools\" rmdir "%R%\bin\tools" 2>nul
if not exist "%R%\bin\tools\*" echo REMOVED EMPTY FOLDER bin\tools >> "%LOG%"
if exist "%R%\bin\units\" rmdir "%R%\bin\units" 2>nul
if not exist "%R%\bin\units\*" echo REMOVED EMPTY FOLDER bin\units >> "%LOG%"
if exist "%R%\src\rtl\" rmdir "%R%\src\rtl" 2>nul
if not exist "%R%\src\rtl\*" echo REMOVED EMPTY FOLDER src\rtl >> "%LOG%"
if exist "%R%\tools\smartpack\" rmdir "%R%\tools\smartpack" 2>nul
if not exist "%R%\tools\smartpack\*" echo REMOVED EMPTY FOLDER tools\smartpack >> "%LOG%"
if exist "%R%\bin\" rmdir "%R%\bin" 2>nul
if not exist "%R%\bin\*" echo REMOVED EMPTY FOLDER bin >> "%LOG%"
if exist "%R%\docs\" rmdir "%R%\docs" 2>nul
if not exist "%R%\docs\*" echo REMOVED EMPTY FOLDER docs >> "%LOG%"
if exist "%R%\src\" rmdir "%R%\src" 2>nul
if not exist "%R%\src\*" echo REMOVED EMPTY FOLDER src >> "%LOG%"
if exist "%R%\tools\" rmdir "%R%\tools" 2>nul
if not exist "%R%\tools\*" echo REMOVED EMPTY FOLDER tools >> "%LOG%"
echo DELETED %DEL% files, SKIPPED %SKIP% >> "%LOG%"
echo Restore with GitHub Desktop - Discard changes: checksums.md5 checksums.sha256 checksums.txt history.md >> "%LOG%"
type "%LOG%"
echo.
echo Log: %LOG%
pause
exit /b 0
:del
if not exist "%R%\%~1" ( echo NOT FOUND %~1 >> "%LOG%" & goto :eof )
set "SZ="
for %%F in ("%R%\%~1") do set "SZ=%%~zF"
if not "%SZ%"=="%~2" ( echo SKIPPED size differs %~1 >> "%LOG%" & set /a SKIP+=1 & goto :eof )
del /f /q "%R%\%~1"
if exist "%R%\%~1" ( echo FAILED %~1 >> "%LOG%" & goto :eof )
echo DELETED %~1 >> "%LOG%"
set /a DEL+=1
goto :eof
