; ===========================================================================
; fpc264irc — Inno Setup installer script
; Free Pascal 2.6.4irc r3.1 — Multi-Platform Pascal Compiler
;
; GPLv3 — 3dfx Revival / BBS Toolchain Project, 2026-08-14
; The Crew: verta1878, sysop/0, evga, kiddo, wrench, hexadecimal
;
; Packages: ppc386 compiler + RTL + LCL + cross-tools + docs
; Targets: Win32, Linux (cross), DOS go32v2 (cross), i8086 (cross)
; ===========================================================================

[Setup]
AppName=FPC 2.6.4irc
AppVersion=r3.1
AppVerName=Free Pascal 2.6.4irc r3.1
AppPublisher=fpc264irc project
AppPublisherURL=https://github.com/verta1878/fpc264irc
AppSupportURL=https://github.com/verta1878/fpc264irc/issues
DefaultDirName={sd}\FPC264irc
DefaultGroupName=FPC 2.6.4irc
OutputBaseFilename=fpc264irc_r31_setup
OutputDir=..\out
SetupIconFile=fpc264irc.ico
UninstallDisplayIcon={app}\bin\ppc386.exe
Compression=lzma2
SolidCompression=yes
DisableWelcomePage=no
LicenseFile=..\LICENSE.txt
ArchitecturesAllowed=x86 x64
; Win95 minimum — the whole point of this fork!
MinVersion=5.0

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

; ===========================================================================
; Components — user picks what to install
; ===========================================================================

[Components]
Name: "compiler";   Description: "FPC 2.6.4irc Compiler (ppc386)";      Types: full compact custom; Flags: fixed
Name: "rtl_win32";  Description: "Win32 RTL + LCL (737 PPUs)";          Types: full compact
Name: "rtl_linux";  Description: "Linux i386 cross-compile (241 PPUs)";  Types: full
Name: "rtl_dos";    Description: "DOS go32v2 cross-compile (~200 PPUs)"; Types: full
Name: "rtl_freebsd";Description: "FreeBSD i386 cross-compile";          Types: full
Name: "tools_win32";Description: "Win32 linker + assembler";            Types: full compact; Flags: fixed
Name: "tools_dos";  Description: "DOS go32v2 linker + assembler";       Types: full
Name: "tools_linux";Description: "Linux cross-linker + assembler";      Types: full
Name: "examples";   Description: "Examples (PabloDraw, FOSSIL, etc.)";  Types: full
Name: "docs";       Description: "Documentation";                       Types: full compact
Name: "src";        Description: "Source code";                          Types: full
Name: "ide";       Description: "Lazarus IDE"; Types: full
Name: "ide";       Description: "Lazarus IDE (lazarus.exe)";             Types: full

; ===========================================================================
; Files
; ===========================================================================

[Files]
; ---- Compiler ----
Source: "..\bin\ppc386";            DestDir: "{app}\bin"; DestName: "ppc386.exe"; Flags: ignoreversion skipifsourcedoesntexist; Components: compiler

; ---- Win32 PPUs ----
Source: "..\bin\units\i386-win32\*"; DestDir: "{app}\units\i386-win32"; Flags: ignoreversion recursesubdirs; Components: rtl_win32

; ---- Linux PPUs (cross-compile) ----
Source: "..\bin\units\i386-linux\*"; DestDir: "{app}\units\i386-linux"; Flags: ignoreversion recursesubdirs; Components: rtl_linux

; ---- DOS go32v2 PPUs (cross-compile) ----
Source: "..\bin\units\i386-go32v2\*"; DestDir: "{app}\units\i386-go32v2"; Flags: ignoreversion recursesubdirs; Components: rtl_dos

; ---- FreeBSD PPUs ----
Source: "..\bin\units\i386-freebsd\*"; DestDir: "{app}\units\i386-freebsd"; Flags: ignoreversion recursesubdirs; Components: rtl_freebsd

; ---- Win32 Tools (linker, assembler) ----
Source: "..\bin\tools\i386-win32\*"; DestDir: "{app}\bin\tools\i386-win32"; Flags: ignoreversion skipifsourcedoesntexist; Components: tools_win32

; ---- DOS Tools ----
Source: "..\bin\tools\i386-go32v2\*"; DestDir: "{app}\bin\tools\i386-go32v2"; Flags: ignoreversion skipifsourcedoesntexist; Components: tools_dos

; ---- Linux Tools ----
Source: "..\bin\tools\i386-linux\*"; DestDir: "{app}\bin\tools\i386-linux"; Flags: ignoreversion skipifsourcedoesntexist; Components: tools_linux

; ---- Config ----
Source: "..\bin\fpc.cfg"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist; Components: compiler
Source: "..\.fpcirc";     DestDir: "{app}"; Flags: ignoreversion skipifsourcedoesntexist; Components: compiler

; ---- Examples ----
Source: "..\examples\pablodraw\*"; DestDir: "{app}\examples\pablodraw"; Flags: ignoreversion recursesubdirs skipifsourcedoesntexist; Components: examples
Source: "..\examples\fossils\*";   DestDir: "{app}\examples\fossils";   Flags: ignoreversion recursesubdirs skipifsourcedoesntexist; Components: examples
Source: "..\examples\fossil-socket\*"; DestDir: "{app}\examples\fossil-socket"; Flags: ignoreversion skipifsourcedoesntexist; Components: examples
Source: "..\examples\sio\*";      DestDir: "{app}\examples\sio";       Flags: ignoreversion recursesubdirs skipifsourcedoesntexist; Components: examples

; ---- Tests ----
Source: "..\test\u7-platform\*";   DestDir: "{app}\test\u7-platform";  Flags: ignoreversion skipifsourcedoesntexist; Components: examples

; ---- Documentation ----
Source: "..\docs\*";     DestDir: "{app}\docs";    Flags: ignoreversion recursesubdirs skipifsourcedoesntexist; Components: docs
Source: "..\README.md";  DestDir: "{app}";         Flags: ignoreversion skipifsourcedoesntexist; Components: docs
Source: "..\LICENSE";    DestDir: "{app}";         Flags: ignoreversion skipifsourcedoesntexist; Components: compiler
Source: "..\CREDITS.md"; DestDir: "{app}";         Flags: ignoreversion skipifsourcedoesntexist; Components: docs

; ---- Source ----
Source: "..\src\compiler\*";  DestDir: "{app}\src\compiler";  Flags: ignoreversion recursesubdirs skipifsourcedoesntexist; Components: src
Source: "..\src\rtl\*";       DestDir: "{app}\src\rtl";       Flags: ignoreversion recursesubdirs skipifsourcedoesntexist; Components: src

; ---- Lazarus IDE (optional) ----
Source: "..\bin\lazarus.exe"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist; Components: ide
; ---- fix-permissions (for Wine/Linux users) ----
Source: "..\fix-permissions.sh"; DestDir: "{app}"; Flags: ignoreversion skipifsourcedoesntexist; Components: compiler

; ===========================================================================
; Start Menu + Desktop
; ===========================================================================

; ---- Additional compilers ----
Source: "..\bin\ppcx64"; DestDir: "{app}\bin"; DestName: "ppcx64.exe"; Flags: ignoreversion skipifsourcedoesntexist; Components: compiler
Source: "..\bin\ppcross8086"; DestDir: "{app}\bin"; DestName: "ppcross8086.exe"; Flags: ignoreversion skipifsourcedoesntexist; Components: compiler

; ---- OS/2 tools ----

; ---- i8086 tools ----


; ---- make ----
Source: "..\bin\tools\make"; DestDir: "{app}\bin"; DestName: "make.exe"; Flags: ignoreversion skipifsourcedoesntexist; Components: compiler

; ---- OS/2 + i8086 PPUs ----

; ---- IDE resources ----
Source: "..\bin\ide\*"; DestDir: "{app}\bin\ide"; Flags: ignoreversion skipifsourcedoesntexist recursesubdirs; Components: ide
Source: "..\bin\lazarus\*"; DestDir: "{app}\bin\lazarus"; Flags: ignoreversion skipifsourcedoesntexist recursesubdirs; Components: ide


[Icons]
Name: "{group}\FPC Command Prompt"; Filename: "{cmd}"; Parameters: "/k set PATH={app}\bin;%PATH%"; WorkingDir: "{app}"
Name: "{group}\Documentation";     Filename: "{app}\docs"
Name: "{group}\Examples";           Filename: "{app}\examples"
Name: "{group}\Uninstall FPC 2.6.4irc"; Filename: "{uninstallexe}"
Name: "{commondesktop}\FPC 2.6.4irc"; Filename: "{cmd}"; Parameters: "/k set PATH={app}\bin;%PATH%"; Tasks: desktopicon
Name: "{group}\Lazarus IDE"; Filename: "{app}\bin\lazarus.exe"; Components: ide

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional:"
Name: "addpath";     Description: "Add FPC to system PATH"; GroupDescription: "Additional:"

; ===========================================================================
; Registry — compiler location + PATH
; ===========================================================================

[Registry]
Root: HKLM; Subkey: "SOFTWARE\FPC264irc"; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\FPC264irc"; ValueType: string; ValueName: "Version"; ValueData: "r3.1"
Root: HKLM; Subkey: "SOFTWARE\FPC264irc"; ValueType: string; ValueName: "CompilerPath"; ValueData: "{app}\bin\ppc386.exe"
Root: HKLM; Subkey: "SOFTWARE\FPC264irc"; ValueType: dword;  ValueName: "Win32PPUs"; ValueData: "737"
Root: HKLM; Subkey: "SOFTWARE\FPC264irc"; ValueType: dword;  ValueName: "LinuxPPUs"; ValueData: "241"

; Add to PATH if task selected:
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{app}\bin"; Tasks: addpath; Check: NeedsAddPath('{app}\bin')

; ===========================================================================
; Pascal script — PATH check
; ===========================================================================

[Code]
function NeedsAddPath(Param: string): boolean;
var
  OrigPath: string;
begin
  if not RegQueryStringValue(HKEY_LOCAL_MACHINE,
    'SYSTEM\CurrentControlSet\Control\Session Manager\Environment',
    'Path', OrigPath)
  then begin
    Result := True;
    exit;
  end;
  Result := Pos(';' + Param + ';', ';' + OrigPath + ';') = 0;
end;

[UninstallDelete]
Type: filesandordirs; Name: "{app}\units"
Type: filesandordirs; Name: "{app}\bin\tools"
