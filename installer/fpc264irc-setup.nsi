; FPC 2.6.4irc r311 - NSIS installer (the Inno Setup script installer/fpc264irc.iss is the main installer)
; Build: makensis installer/fpc264irc-setup.nsi   (NSIS 3; paths are relative to this folder). On Linux run makensis
; in a UTF-8 locale (LC_ALL=C.UTF-8): in the C locale it aborts on the UTF-8 dash in ../LICENSE (Assertion cbMB).
;
; byte, 2026-11-21: rewritten so it builds from the repo and runs on Windows 98. The r311 script is kept as
; attic/fpc264irc-setup-r311.nsi. Changes: no EnvVarUpdate.nsh (third-party, not in the repo or NSIS 3) - PATH
; is set with plain registry code below; paths ..\ from installer/ (makensis works in the script's folder);
; units are .ppu + .a (no .o any more); ANSI installer (Unicode True does not run on Win9x); unit counts.
;
; Knob (0/1): ADD_PATH below - 1 = add $INSTDIR\bin to the system PATH on Windows NT/2000/XP and later (removed
; again by the uninstaller); 0 = leave PATH alone. Windows 95/98/ME keep PATH in AUTOEXEC.BAT, which this installer
; never edits - it shows the line to add instead.

!define ADD_PATH 1

Unicode False
!include "MUI2.nsh"
!include "LogicLib.nsh"
!include "WordFunc.nsh"
!include "WinMessages.nsh"

;--- General ---
Name "Free Pascal 2.6.4irc r311"
!ifndef OUTFILE
  !define OUTFILE "..\out\fpc264irc-r311-setup.exe"   ; makensis -DOUTFILE=<path> to put it elsewhere
!endif
OutFile "${OUTFILE}"
InstallDir "C:\FPC264IRC"
InstallDirRegKey HKLM "Software\FPC264IRC" "InstallDir"
RequestExecutionLevel admin

!define ENVKEY "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
!define UNKEY  "Software\Microsoft\Windows\CurrentVersion\Uninstall\FPC264IRC"

;--- Interface ---
!define MUI_ABORTWARNING
!define MUI_ICON "fpc264irc.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

;--- Pages ---
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "..\LICENSE"
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES

!insertmacro MUI_LANGUAGE "English"

;--- Sections ---

Section "Compiler (required)" SecCompiler
  SectionIn RO

  SetOutPath "$INSTDIR\bin"
  File "..\bin\ppc386.exe"
  File "..\bin\ppcx64.exe"
  File "..\bin\fpc.cfg"

  ; Write registry
  WriteRegStr HKLM "Software\FPC264IRC" "InstallDir" "$INSTDIR"
  WriteRegStr HKLM "${UNKEY}" "DisplayName" "Free Pascal 2.6.4irc r311"
  WriteRegStr HKLM "${UNKEY}" "UninstallString" '"$INSTDIR\uninstall.exe"'
  WriteRegStr HKLM "${UNKEY}" "DisplayVersion" "2.6.4irc-r311"
  WriteRegStr HKLM "${UNKEY}" "Publisher" "verta1878"
  WriteRegDWORD HKLM "${UNKEY}" "NoModify" 1
  WriteRegDWORD HKLM "${UNKEY}" "NoRepair" 1

!if ${ADD_PATH} == 1
  ; Add to PATH (NT family: the Environment key exists; Win9x: it does not)
  ClearErrors
  ReadRegStr $0 HKLM "${ENVKEY}" "Path"
  ${If} ${Errors}
    DetailPrint "Windows 95/98/ME: add this line to C:\AUTOEXEC.BAT:  SET PATH=$INSTDIR\bin;%PATH%"
  ${Else}
    ${WordFind} ";$0;" ";$INSTDIR\bin;" "E+1{" $1
    ${If} ${Errors}
      WriteRegExpandStr HKLM "${ENVKEY}" "Path" "$0;$INSTDIR\bin"
      SendMessage ${HWND_BROADCAST} ${WM_WININICHANGE} 0 "STR:Environment" /TIMEOUT=5000
    ${EndIf}
  ${EndIf}
!endif

  WriteUninstaller "$INSTDIR\uninstall.exe"
SectionEnd

Section "Win64 RTL & Packages (1,039 units)" SecWin64
  SetOutPath "$INSTDIR\units\x86_64-win64"
  File /r "..\bin\units\x86_64-win64\*.ppu"
  File /r "..\bin\units\x86_64-win64\*.a"
SectionEnd

Section "Win32 RTL, Packages + LCL (1,538 units)" SecWin32
  SetOutPath "$INSTDIR\units\i386-win32"
  File /r "..\bin\units\i386-win32\*.ppu"
  File /r "..\bin\units\i386-win32\*.a"
SectionEnd

Section "Source" SecSource
  SetOutPath "$INSTDIR\src"
  File /r "..\src\rtl\*.*"
  File /r "..\src\packages\*.*"
SectionEnd

Section "Compiler Source + Patches" SecCompSrc
  SetOutPath "$INSTDIR\src\compiler"
  File /r "..\src\compiler\*.*"
SectionEnd

Section "Documentation" SecDocs
  SetOutPath "$INSTDIR\docs"
  File "..\docs\USB.md"
  File "..\docs\X64-BOOTSTRAP.md"
  File "..\docs\CHANGELOG.md"
  File "..\docs\INSTALL.md"
  File "..\docs\CREDITS.md"
  File "..\README.md"
SectionEnd

;--- Descriptions ---
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SecCompiler} \
    "ppc386 (32-bit, Windows 95/98 - 11) and ppcx64 (64-bit Windows) compilers. Required."
  !insertmacro MUI_DESCRIPTION_TEXT ${SecWin64} \
    "Pre-compiled units for x86_64-win64: RTL, FCL, USB, crypto, database, and more."
  !insertmacro MUI_DESCRIPTION_TEXT ${SecWin32} \
    "Pre-compiled units for i386-win32: full RTL, package set and LCL."
  !insertmacro MUI_DESCRIPTION_TEXT ${SecSource} \
    "RTL and package source code."
  !insertmacro MUI_DESCRIPTION_TEXT ${SecCompSrc} \
    "Compiler source with x64 bootstrap patches."
  !insertmacro MUI_DESCRIPTION_TEXT ${SecDocs} \
    "USB API reference, x64 bootstrap guide, changelog."
!insertmacro MUI_FUNCTION_DESCRIPTION_END

;--- Uninstaller ---
Section "Uninstall"
!if ${ADD_PATH} == 1
  ; Remove the PATH entry (NT family only; nothing was added on Win9x)
  ClearErrors
  ReadRegStr $0 HKLM "${ENVKEY}" "Path"
  ${IfNot} ${Errors}
    ${WordReplace} "$0" ";$INSTDIR\bin" "" "+" $1
    ${If} $1 != $0
      WriteRegExpandStr HKLM "${ENVKEY}" "Path" "$1"
      SendMessage ${HWND_BROADCAST} ${WM_WININICHANGE} 0 "STR:Environment" /TIMEOUT=5000
    ${EndIf}
  ${EndIf}
!endif

  ; Remove files
  RMDir /r "$INSTDIR\bin"
  RMDir /r "$INSTDIR\units"
  RMDir /r "$INSTDIR\src"
  RMDir /r "$INSTDIR\docs"
  Delete "$INSTDIR\uninstall.exe"
  RMDir "$INSTDIR"

  ; Remove registry
  DeleteRegKey HKLM "${UNKEY}"
  DeleteRegKey HKLM "Software\FPC264IRC"
SectionEnd
