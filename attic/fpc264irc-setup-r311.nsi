; FPC 2.6.4irc r311 Installer
; NSIS script — build with: makensis fpc264irc-setup.nsi

!include "MUI2.nsh"
!include "EnvVarUpdate.nsh"

;--- General ---
Name "Free Pascal 2.6.4irc r311"
OutFile "fpc264irc-r311-setup.exe"
Unicode True
InstallDir "$PROGRAMFILES64\FPC264IRC"
InstallDirRegKey HKLM "Software\FPC264IRC" "InstallDir"
RequestExecutionLevel admin

;--- Interface ---
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

;--- Pages ---
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "docs\CREDITS.md"
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
  File "bin\ppcx64.exe"
  File "bin\ppc386.exe"

  ; Write registry
  WriteRegStr HKLM "Software\FPC264IRC" "InstallDir" "$INSTDIR"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\FPC264IRC" \
    "DisplayName" "Free Pascal 2.6.4irc r311"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\FPC264IRC" \
    "UninstallString" '"$INSTDIR\uninstall.exe"'
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\FPC264IRC" \
    "DisplayVersion" "2.6.4irc-r311"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\FPC264IRC" \
    "Publisher" "verta1878"
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\FPC264IRC" \
    "NoModify" 1
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\FPC264IRC" \
    "NoRepair" 1

  ; Add to PATH
  ${EnvVarUpdate} $0 "PATH" "A" "HKLM" "$INSTDIR\bin"

  WriteUninstaller "$INSTDIR\uninstall.exe"
SectionEnd

Section "Win64 RTL & Packages (1,029 units)" SecWin64
  SetOutPath "$INSTDIR\units\x86_64-win64"
  File /r "bin\units\x86_64-win64\*.ppu"
  File /r "bin\units\x86_64-win64\*.o"
SectionEnd

Section "Win32 RTL & Packages (1,521 units)" SecWin32
  SetOutPath "$INSTDIR\units\i386-win32"
  File /r "bin\units\i386-win32\*.ppu"
  File /r "bin\units\i386-win32\*.o"
SectionEnd

Section "Source" SecSource
  SetOutPath "$INSTDIR\src"
  File /r "src\rtl\*.*"
  File /r "src\packages\*.*"
SectionEnd

Section "Compiler Source + Patches" SecCompSrc
  SetOutPath "$INSTDIR\src\compiler"
  File /r "src\compiler\*.*"
SectionEnd

Section "Documentation" SecDocs
  SetOutPath "$INSTDIR\docs"
  File "docs\USB.md"
  File "docs\X64-BOOTSTRAP.md"
  File "docs\CHANGELOG.md"
  File "docs\INSTALL.md"
  File "docs\CREDITS.md"
  File "README.md"
SectionEnd

;--- Descriptions ---
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SecCompiler} \
    "ppcx64 (native x64) and ppc386 compilers. Required."
  !insertmacro MUI_DESCRIPTION_TEXT ${SecWin64} \
    "Pre-compiled units for x86_64-win64: RTL, FCL, USB, crypto, database, and more."
  !insertmacro MUI_DESCRIPTION_TEXT ${SecWin32} \
    "Pre-compiled units for i386-win32: full RTL and package set."
  !insertmacro MUI_DESCRIPTION_TEXT ${SecSource} \
    "RTL and package source code."
  !insertmacro MUI_DESCRIPTION_TEXT ${SecCompSrc} \
    "Compiler source with x64 bootstrap patches."
  !insertmacro MUI_DESCRIPTION_TEXT ${SecDocs} \
    "USB API reference, x64 bootstrap guide, changelog."
!insertmacro MUI_FUNCTION_DESCRIPTION_END

;--- Uninstaller ---
Section "Uninstall"
  ; Remove PATH entry
  ${un.EnvVarUpdate} $0 "PATH" "R" "HKLM" "$INSTDIR\bin"

  ; Remove files
  RMDir /r "$INSTDIR\bin"
  RMDir /r "$INSTDIR\units"
  RMDir /r "$INSTDIR\src"
  RMDir /r "$INSTDIR\docs"
  Delete "$INSTDIR\uninstall.exe"
  RMDir "$INSTDIR"

  ; Remove registry
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\FPC264IRC"
  DeleteRegKey HKLM "Software\FPC264IRC"
SectionEnd
