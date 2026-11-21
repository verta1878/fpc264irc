[Setup]
AppName=FPC 2.6.4irc
AppVersion=r3.1
DefaultDirName={sd}\FPC264irc
DefaultGroupName=FPC 2.6.4irc
OutputBaseFilename=fpc264irc_r31_setup
OutputDir=..\out
Compression=lzma2
SolidCompression=yes
LicenseFile=..\LICENSE
SetupIconFile=fpc264irc.ico
; Windows 98 (4.1) and Windows 2000 (5.0) or later, as fpc264irc.iss. Needs a setup built with InnoIRC561
; (netmodem2irc ab9787f or later): stock Inno 5.6.1 refuses a Win9x MinVersion.  (byte, 2026-11-21: was 5.0)
MinVersion=4.1,5.0

[Files]
; The compilers in bin/ without .exe are Linux programs: only the Windows builds are packed (byte, 2026-11-21:
; these lines packed the Linux bin/ppc386, ppcx64, ppcross8086 renamed to .exe). No Windows ppcross8086.exe yet.
Source: "..\bin\ppc386.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "..\bin\fpc.cfg"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\fpc-linux.cfg"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\ppcx64.exe"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
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
; Add to PATH if the task is picked (byte, 2026-11-21: the task did nothing before; same line as fpc264irc.iss)
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{app}\bin"; Tasks: addpath; Check: NeedsAddPath('{app}\bin')

[Code]
// byte, 2026-11-21: same code as fpc264irc.iss (PATH check with the parameter expanded; uninstall removes the
// entry again)
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
  // Param arrives unexpanded ('{app}\bin') - expand it, or the check never finds it and every install adds it again
  Result := Pos(';' + Uppercase(ExpandConstant(Param)) + ';', ';' + Uppercase(OrigPath) + ';') = 0;
end;

// Uninstall: take {app}\bin out of the system PATH again (the [Registry] entry above only adds it)
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
var
  P, Dir: string;
  I: Integer;
begin
  if CurUninstallStep <> usUninstall then exit;
  if not RegQueryStringValue(HKEY_LOCAL_MACHINE,
    'SYSTEM\CurrentControlSet\Control\Session Manager\Environment', 'Path', P) then exit;
  Dir := ExpandConstant('{app}\bin');
  P := ';' + P + ';';
  I := Pos(';' + Uppercase(Dir) + ';', Uppercase(P));
  while I > 0 do begin
    Delete(P, I, Length(Dir) + 1);
    I := Pos(';' + Uppercase(Dir) + ';', Uppercase(P));
  end;
  P := Copy(P, 2, Length(P) - 2);
  RegWriteExpandStringValue(HKEY_LOCAL_MACHINE,
    'SYSTEM\CurrentControlSet\Control\Session Manager\Environment', 'Path', P);
end;

[Files]
; byte, 2026-11-21: these entries were after [Code] without a section header, so ISCC stopped with "Error on
; line 61" - [Files] again (Inno merges repeated sections).
; ---- FPC Tools ----
Source: "..\bin\fpc.exe"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\fpcmake.exe"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\fpcres.exe"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\h2pas.exe"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\ppudump.exe"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\ppufiles.exe"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\ppumove.exe"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\ptop.exe"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\rstconv.exe"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\plex.exe"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\bin\pyacc.exe"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist

; ---- Help Files (CHM) ----
Source: "..\src\lazarus\docs\chm\*.chm"; DestDir: "{app}\docs\chm"; Flags: ignoreversion skipifsourcedoesntexist

; ---- fpGUI ----
Source: "..\libs\fpgui\*"; DestDir: "{app}\libs\fpgui"; Flags: ignoreversion recursesubdirs skipifsourcedoesntexist

; ---- Lazarus docs ----
Source: "..\src\lazarus\docs\*.txt"; DestDir: "{app}\docs\lazarus"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\src\lazarus\docs\*.pdf"; DestDir: "{app}\docs\lazarus"; Flags: ignoreversion skipifsourcedoesntexist
Source: "..\src\lazarus\docs\*.xml"; DestDir: "{app}\docs\lazarus"; Flags: ignoreversion skipifsourcedoesntexist

; ---- Lazarus IDE ----
Source: "..\bin\lazarus.exe"; DestDir: "{app}\bin"; Flags: ignoreversion skipifsourcedoesntexist
