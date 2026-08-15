[Setup]
AppName=FPC 2.6.4irc
AppVersion=r3.1
DefaultDirName={sd}\FPC264irc
DefaultGroupName=FPC 2.6.4irc
OutputBaseFilename=fpc264irc_r31_setup
OutputDir=..\out
Compression=lzma2
SolidCompression=yes
LicenseFile=..\LICENSE.txt
SetupIconFile=fpc264irc.ico
MinVersion=5.0

[Files]
Source: "..\bin\ppc386"; DestDir: "{app}\bin"; DestName: "ppc386.exe"; Flags: ignoreversion
Source: "..\bin\fpc.cfg"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\fpc-linux.cfg"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\ppcx64"; DestDir: "{app}\bin"; DestName: "ppcx64.exe"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\ppcross8086"; DestDir: "{app}\bin"; DestName: "ppcross8086.exe"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\units\i386-win32\*"; DestDir: "{app}\units\i386-win32"; Flags: ignoreversion recursesubdirs
Source: "..\bin\units\i386-linux\*"; DestDir: "{app}\units\i386-linux"; Flags: ignoreversion recursesubdirs skipifsourcedoesntexist
Source: "..\bin\units\i386-go32v2\*"; DestDir: "{app}\units\i386-go32v2"; Flags: ignoreversion recursesubdirs skipifsourcedoesntexist
Source: "..\bin\units\i386-freebsd\*"; DestDir: "{app}\units\i386-freebsd"; Flags: ignoreversion recursesubdirs skipifsourcedoesntexist
Source: "..\bin\tools\i386-win32\*"; DestDir: "{app}\bin\tools\i386-win32"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\tools\i386-go32v2\*"; DestDir: "{app}\bin\tools\i386-go32v2"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\tools\i386-linux\*"; DestDir: "{app}\bin\tools\i386-linux"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\docs\*"; DestDir: "{app}\docs"; Flags: ignoreversion recursesubdirs skipifsourcedoesntexist
Source: "..\scripts\*"; DestDir: "{app}\scripts"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\LICENSE"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\LICENSE.txt"; DestDir: "{app}"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\README.md"; DestDir: "{app}"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\CREDITS.md"; DestDir: "{app}"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\.fpcirc"; DestDir: "{app}"; Flags: ignoreversion skipifsourcedoesntexist

[Icons]
Name: "{group}\FPC Command Prompt"; Filename: "{cmd}"; Parameters: "/k set PATH={app}\bin;%PATH%"; WorkingDir: "{app}"
Name: "{group}\Uninstall FPC 2.6.4irc"; Filename: "{uninstallexe}"
Name: "{commondesktop}\FPC 2.6.4irc"; Filename: "{cmd}"; Parameters: "/k set PATH={app}\bin;%PATH%"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"
Name: "addpath"; Description: "Add FPC to system PATH"

[Registry]
Root: HKLM; Subkey: "SOFTWARE\FPC264irc"; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\FPC264irc"; ValueType: string; ValueName: "Version"; ValueData: "r3.1"

[Code]
function NeedsAddPath(Param: string): boolean;
var OrigPath: string;
begin
  if not RegQueryStringValue(HKEY_LOCAL_MACHINE,
    'SYSTEM\CurrentControlSet\Control\Session Manager\Environment',
    'Path', OrigPath) then begin Result := True; exit; end;
  Result := Pos(';' + Param + ';', ';' + OrigPath + ';') = 0;
end;
