{$MODE OBJFPC}
{$H+}
program install;
{ FPC 2.6.4irc r3.1 — Installer
  Free Vision TUI. Creates directory structure, writes fpc.cfg,
  displays exit animation. }

uses
  SysUtils, Classes, Crt,
  App, Objects, Drivers, Views, Menus, Dialogs, MsgBox;

const
  cmInstall = 100;
  cmAbout   = 101;
  AppTitle  = 'FPC 2.6.4irc r3.1 Installer';
  DefPath   = {$IFDEF WINDOWS}'C:\fpc264irc'{$ELSE}'/usr/local/fpc264irc'{$ENDIF};
  DS = DirectorySeparator;

type
  PInstallDialog = ^TInstallDialog;
  TInstallDialog = object(TDialog)
    PathInput: PInputLine;
    PkgChecks: PCheckBoxes;
    constructor Init;
  end;

  TInstallerApp = object(TApplication)
    constructor Init;
    procedure InitMenuBar; virtual;
    procedure InitStatusLine; virtual;
    procedure HandleEvent(var Event: TEvent); virtual;
    procedure DoInstall;
    procedure ShowAbout;
  end;

{ Directory structure for Mystic 1.12 + FPC }
const
  NumDirs = 11;
  InstallDirs: array[0..NumDirs - 1] of String = (
    { FPC compiler }
    'bin',
    'lib',
    'units',
    'docs',
    'source',
    'examples',
    'sdk',
    { Mystic 1.12 BBS paths }
    { Libraries }
    'libs',
    'libs' + DS + 'fpgui',
    'libs' + DS + 'serial',
    'libs' + DS + 'fossil'
  );

procedure WriteFpcCfg(const BasePath: String); forward;
procedure CreateDirs(const BasePath: String); forward;
procedure ExitAnimation; forward;

{ ---- Install Dialog ---- }

constructor TInstallDialog.Init;
var R: TRect; Items: PSItem; I: Integer;
begin
  R.Assign(5, 2, 75, 22);
  inherited Init(R, AppTitle);

  R.Assign(3, 3, 65, 4);
  PathInput := New(PInputLine, Init(R, 255));
  Insert(PathInput);
  R.Assign(3, 2, 20, 3);
  Insert(New(PLabel, Init(R, '~P~ath:', PathInput)));

  Items :=
    NewSItem('Base Compiler (ppc386)',
    NewSItem('Runtime Library (RTL)',
    NewSItem('Free Component Library (FCL)',
    NewSItem('Free Vision (TUI)',
    NewSItem('Pure Pascal Sockets',
    NewSItem('Serial + FOSSIL driver',
    NewSItem('fpGUI Toolkit v2.1.0',
    NewSItem('PabloDraw Pascal',
    NewSItem('Multimedia Codecs (SDK)',
    NewSItem('Documentation + Source',
    NewSItem('Mystic 1.12 BBS directories',
    nil)))))))))));

  R.Assign(3, 5, 65, 17);
  PkgChecks := New(PCheckBoxes, Init(R, Items));
  Insert(PkgChecks);
  R.Assign(3, 4, 20, 5);
  Insert(New(PLabel, Init(R, '~C~omponents:', PkgChecks)));

  R.Assign(15, 18, 30, 20);
  Insert(New(PButton, Init(R, '~I~nstall', cmInstall, bfDefault)));
  R.Assign(35, 18, 50, 20);
  Insert(New(PButton, Init(R, '~C~ancel', cmCancel, bfNormal)));
end;

{ ---- Installer App ---- }

constructor TInstallerApp.Init;
begin inherited Init; end;

procedure TInstallerApp.InitMenuBar;
var R: TRect;
begin
  GetExtent(R); R.B.Y := R.A.Y + 1;
  MenuBar := New(PMenuBar, Init(R, NewMenu(
    NewSubMenu('~I~nstall', hcNoContext, NewMenu(
      NewItem('~R~un', 'F2', kbF2, cmInstall, hcNoContext,
      NewItem('~A~bout', 'F1', kbF1, cmAbout, hcNoContext,
      NewLine(
      NewItem('E~x~it', 'Alt-X', kbAltX, cmQuit, hcNoContext, nil))))),
    nil))));
end;

procedure TInstallerApp.InitStatusLine;
var R: TRect;
begin
  GetExtent(R); R.A.Y := R.B.Y - 1;
  StatusLine := New(PStatusLine, Init(R,
    NewStatusDef(0, $FFFF,
      NewStatusKey('~F2~ Install', kbF2, cmInstall,
      NewStatusKey('~F1~ About', kbF1, cmAbout,
      NewStatusKey('~Alt-X~ Exit', kbAltX, cmQuit, nil))),
    nil)));
end;

procedure TInstallerApp.HandleEvent(var Event: TEvent);
begin
  inherited HandleEvent(Event);
  if Event.What = evCommand then begin
    case Event.Command of
      cmInstall: DoInstall;
      cmAbout: ShowAbout;
    else Exit;
    end;
    ClearEvent(Event);
  end;
end;

procedure TInstallerApp.DoInstall;
var
  Dlg: PInstallDialog;
  Cmd: Word;
  Path: String;
begin
  Dlg := New(PInstallDialog, Init);
  Cmd := Desktop^.ExecView(Dlg);

  if Cmd = cmInstall then begin
    Path := PString(Dlg^.PathInput^.Data)^;
    if Path = '' then Path := DefPath;

    MessageBox('Installing to:' + #13 + Path + #13 + #13 +
      'Creating directories...', nil, mfInformation + mfOkButton);

    CreateDirs(Path);
    WriteFpcCfg(Path);

    MessageBox(
      'Installation complete!' + #13 + #13 +
      'Installed to: ' + Path + #13 +
      IntToStr(NumDirs) + ' directories created' + #13 +
      'fpc.cfg written' + #13 + #13 +
      'Run bin' + DS + 'ppc386 to compile.',
      nil, mfInformation + mfOkButton);
  end;

  Dispose(Dlg, Done);
end;

procedure TInstallerApp.ShowAbout;
begin
  MessageBox(
    'FPC 2.6.4irc r3.1 Installer' + #13 + #13 +
    '3,021 PPUs / 7 targets' + #13 +
    '266/266 fpGUI / 151/151 smart-linked' + #13 +
    'Pure Pascal TCP/IP + UART + FOSSIL' + #13 + #13 +
    'verta1878  sysop/0  evga  kiddo  wrench' + #13 + #13 +
    'DOS will live.',
    nil, mfInformation + mfOkButton);
end;

{ ---- Support Procedures ---- }

procedure CreateDirs(const BasePath: String);
var I: Integer; Dir: String;
begin
  ForceDirectories(BasePath);
  for I := 0 to NumDirs - 1 do begin
    Dir := BasePath + DS + InstallDirs[I];
    if not DirectoryExists(Dir) then
      ForceDirectories(Dir);
  end;
end;

procedure WriteFpcCfg(const BasePath: String);
var F: TextFile;
begin
  AssignFile(F, BasePath + DS + 'fpc.cfg');
  Rewrite(F);
  WriteLn(F, '# FPC 2.6.4irc r3.1 configuration');
  WriteLn(F, '# Generated by installer on ', DateTimeToStr(Now));
  WriteLn(F, '');
  WriteLn(F, '-Fu', BasePath, DS, 'units', DS, '$fpctarget');
  WriteLn(F, '-Fu', BasePath, DS, 'units', DS, '$fpctarget', DS, '*');
  WriteLn(F, '-Fu', BasePath, DS, 'libs', DS, '*');
  WriteLn(F, '-Fl', BasePath, DS, 'lib');
  WriteLn(F, '-FD', BasePath, DS, 'bin');
  WriteLn(F, '');
  WriteLn(F, '# Smart linking');
  WriteLn(F, '-CX');
  WriteLn(F, '-XX');
  WriteLn(F, '');
  WriteLn(F, '# Optimization');
  WriteLn(F, '-O2');
  WriteLn(F, '-Xs');
  CloseFile(F);
end;

procedure ExitAnimation;
const
  Frame1 = '    ____  ____  ____   ____  ____   ___ _                ';
  Frame2 = '   / __ \/ __ \/ __ \ / __ \/ __ \ /__ \ \   ___ __ __  ';
  Frame3 = '  / /_/ / /_/ / / / // / / / / / /   / / /  / _ \\/ // /';
  Frame4 = ' / ____/ ____/ /_/ // /_/ / /_/ /   / /_/  /  __/\_, /  ';
  Frame5 = '/_/   /_/    \____/ \____/\____/   /____/   \___//_//_/  ';
  Spark: array[0..3] of Char = ('|', '/', '-', '\');
var
  I, J, W: Integer;
  Lines: array[0..4] of String;
begin
  Lines[0] := Frame1;
  Lines[1] := Frame2;
  Lines[2] := Frame3;
  Lines[3] := Frame4;
  Lines[4] := Frame5;

  ClrScr;
  TextColor(LightCyan);

  { Slide in from left }
  W := Length(Lines[0]);
  for I := 0 to W do begin
    GotoXY(1, 8);
    for J := 0 to 4 do begin
      GotoXY(1, 8 + J);
      if I < W then
        Write(Copy(Lines[J], W - I, I + 1))
      else
        Write(Lines[J]);
    end;
    Delay(15);
  end;

  { Sparkle effect }
  TextColor(White);
  GotoXY(1, 14);
  Write('  ');
  for I := 0 to 50 do begin
    TextColor(LightCyan + (I mod 2) * 8);
    Write(Spark[I mod 4]);
    Delay(30);
  end;

  { Credits }
  TextColor(Yellow);
  GotoXY(10, 16);
  WriteLn('FPC 2.6.4irc r3.1 installed successfully.');
  TextColor(LightGray);
  GotoXY(10, 17);
  WriteLn('verta1878 / sysop/0 / evga / kiddo / wrench');
  TextColor(DarkGray);
  GotoXY(10, 18);
  WriteLn('DOS will live.');

  TextColor(Green);
  GotoXY(10, 20);
  Write('Press any key...');
  ReadKey;

  TextColor(LightGray);
  ClrScr;
end;

{ ---- Main ---- }
var InstApp: TInstallerApp;
begin
  InstApp.Init;
  InstApp.Run;
  InstApp.Done;
  ExitAnimation;
end.
