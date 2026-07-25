{$MODE DELPHI}
{$H-}
Program THDInstl;
{
  THD ScanPro Installer / Configuration Wizard
  Phase 25-H — GPLv3
  
  Creates/edits THDPRO.CFG
  The Crew: verta1878, sysop/0, evga, kiddo, wrench
}

Uses SysUtils;

Const
  VERSION  = '1.0.0';
  CFG_FILE = 'THDPRO.CFG';
  ESC = #27;
  clReset  = ESC + '[0m';
  clBold   = ESC + '[1m';
  clCyan   = ESC + '[36m';
  clBCyan  = ESC + '[1;36m';
  clBWhite = ESC + '[1;37m';
  clYellow = ESC + '[33m';
  clBYellow = ESC + '[1;33m';
  clGreen  = ESC + '[32m';
  clBGreen = ESC + '[1;32m';

Type
  TBBSType = (btNone, btRA, btTelegard, btRenegade, btFileBBS,
              btPCBoard, btWildcat, btSBBS, btMystic);

  TCfg = Record
    BBSType      : TBBSType;
    BBSDataDir   : String[60];
    WorkDir      : String[60];
    LogFile      : String[60];
    MaxLogSize   : LongInt;
    ComPort      : Byte;
    { Scanner paths }
    McAfeePath   : String[60];
    FProtPath    : String[60];
    TBScanPath   : String[60];
    ClamAVPath   : String[60];
    { Archive tool paths }
    UnzipPath    : String[60];
    UnrarPath    : String[60];
    ArjPath      : String[60];
    LhaPath      : String[60];
    { Options }
    MaxFileSize  : LongInt;
    MaxDescSize  : Integer;
    SecureMode   : Boolean;
    HeuristicFail: Boolean;
  End;

Var
  Cfg : TCfg;

{ --- I/O helpers --- }

Procedure Prompt(const S: String);
Begin
  Write(clBWhite, S, clReset);
End;

Function ReadLine(const Default: String): String;
Var S: String;
Begin
  Write(clBYellow, '[', Default, '] ', clReset);
  ReadLn(S);
  S := Trim(S);
  If S = '' Then Result := Default Else Result := S;
End;

Function ReadInt(Default: LongInt): LongInt;
Var S: String; V, Code: LongInt;
Begin
  Write(clBYellow, '[', Default, '] ', clReset);
  ReadLn(S);
  S := Trim(S);
  If S = '' Then Begin Result := Default; Exit; End;
  Val(S, V, Code);
  If Code <> 0 Then Result := Default Else Result := V;
End;

Function ReadYN(Default: Boolean): Boolean;
Var S: String;
Begin
  If Default Then Write(clBYellow, '[Y/n] ', clReset)
             Else Write(clBYellow, '[y/N] ', clReset);
  ReadLn(S);
  S := UpperCase(Trim(S));
  If S = '' Then Result := Default
  Else Result := (S = 'Y') Or (S = 'YES');
End;

{ --- Config file I/O --- }

Procedure SaveConfig;
Var F: File Of TCfg;
Begin
  Assign(F, CFG_FILE);
  {$I-} Rewrite(F); {$I+}
  If IOResult <> 0 Then Begin
    WriteLn('ERROR: Cannot write ', CFG_FILE);
    Exit;
  End;
  Write(F, Cfg);
  Close(F);
  WriteLn(clBGreen, 'Configuration saved to ', CFG_FILE, clReset);
End;

Function LoadConfig: Boolean;
Var F: File Of TCfg;
Begin
  Result := False;
  If Not FileExists(CFG_FILE) Then Exit;
  Assign(F, CFG_FILE);
  {$I-} Reset(F); {$I+}
  If IOResult <> 0 Then Exit;
  Read(F, Cfg);
  Close(F);
  Result := True;
End;

{ --- Wizard screens --- }

Procedure ShowBanner;
Begin
  Write(ESC, '[2J', ESC, '[H');
  WriteLn(clBCyan);
  WriteLn('  ╔══════════════════════════════════════════════════════════╗');
  WriteLn('  ║  THD ScanPro Installation / Configuration    v', VERSION, '  ║');
  WriteLn('  ║  GPLv3 — verta1878, sysop/0, evga, kiddo, wrench      ║');
  WriteLn('  ╚══════════════════════════════════════════════════════════╝');
  WriteLn(clReset);
End;

Procedure ConfigBBS;
Var C: Char;
Begin
  WriteLn(clBWhite, '═══ BBS Software Type ═══', clReset);
  WriteLn;
  WriteLn('  1. RemoteAccess (RA)');
  WriteLn('  2. Telegard');
  WriteLn('  3. Renegade');
  WriteLn('  4. FILE.BBS (generic)');
  WriteLn('  5. PCBoard');
  WriteLn('  6. Wildcat');
  WriteLn('  7. Synchronet');
  WriteLn('  8. Mystic BBS');
  WriteLn('  0. None / Standalone');
  WriteLn;
  Prompt('Select BBS type: ');
  ReadLn(C);
  Case C Of
    '1': Cfg.BBSType := btRA;
    '2': Cfg.BBSType := btTelegard;
    '3': Cfg.BBSType := btRenegade;
    '4': Cfg.BBSType := btFileBBS;
    '5': Cfg.BBSType := btPCBoard;
    '6': Cfg.BBSType := btWildcat;
    '7': Cfg.BBSType := btSBBS;
    '8': Cfg.BBSType := btMystic;
  Else
    Cfg.BBSType := btNone;
  End;
  WriteLn;
  
  Prompt('BBS data directory: ');
  Cfg.BBSDataDir := ReadLine(Cfg.BBSDataDir);
  
  Prompt('Working/temp directory: ');
  Cfg.WorkDir := ReadLine(Cfg.WorkDir);
  
  Prompt('Log file path: ');
  Cfg.LogFile := ReadLine(Cfg.LogFile);
  
  Prompt('Max log size (KB, 0=unlimited): ');
  Cfg.MaxLogSize := ReadInt(Cfg.MaxLogSize);
  
  Prompt('COM port (0=local): ');
  Cfg.ComPort := ReadInt(Cfg.ComPort);
End;

Procedure ConfigScanners;
Begin
  WriteLn;
  WriteLn(clBWhite, '═══ Virus Scanner Paths ═══', clReset);
  WriteLn(clCyan, '  Leave blank to disable a scanner.', clReset);
  WriteLn;
  
  Prompt('ClamAV (clamscan) path: ');
  Cfg.ClamAVPath := ReadLine(Cfg.ClamAVPath);
  
  Prompt('McAfee (SCAN.EXE) path: ');
  Cfg.McAfeePath := ReadLine(Cfg.McAfeePath);
  
  Prompt('F-PROT (F-PROT.EXE) path: ');
  Cfg.FProtPath := ReadLine(Cfg.FProtPath);
  
  Prompt('TBSCAN (TBSCAN.EXE) path: ');
  Cfg.TBScanPath := ReadLine(Cfg.TBScanPath);
End;

Procedure ConfigArchiveTools;
Begin
  WriteLn;
  WriteLn(clBWhite, '═══ Archive Tool Paths ═══', clReset);
  WriteLn(clCyan, '  Leave blank to auto-detect from PATH.', clReset);
  WriteLn;
  
  Prompt('UNZIP path: ');
  Cfg.UnzipPath := ReadLine(Cfg.UnzipPath);
  
  Prompt('UNRAR path: ');
  Cfg.UnrarPath := ReadLine(Cfg.UnrarPath);
  
  Prompt('ARJ path: ');
  Cfg.ArjPath := ReadLine(Cfg.ArjPath);
  
  Prompt('LHA path: ');
  Cfg.LhaPath := ReadLine(Cfg.LhaPath);
End;

Procedure ConfigOptions;
Begin
  WriteLn;
  WriteLn(clBWhite, '═══ Options ═══', clReset);
  WriteLn;
  
  Prompt('Max file size (bytes, 0=no limit): ');
  Cfg.MaxFileSize := ReadInt(Cfg.MaxFileSize);
  
  Prompt('Max description size: ');
  Cfg.MaxDescSize := ReadInt(Cfg.MaxDescSize);
  
  Prompt('Secure mode (restrict operations): ');
  Cfg.SecureMode := ReadYN(Cfg.SecureMode);
  
  Prompt('Fail on heuristic detection: ');
  Cfg.HeuristicFail := ReadYN(Cfg.HeuristicFail);
End;

Procedure ShowSummary;
Var BBSName: String;
Begin
  WriteLn;
  WriteLn(clBWhite, '═══ Configuration Summary ═══', clReset);
  WriteLn;
  
  Case Cfg.BBSType Of
    btNone:     BBSName := 'Standalone';
    btRA:       BBSName := 'RemoteAccess';
    btTelegard: BBSName := 'Telegard';
    btRenegade: BBSName := 'Renegade';
    btFileBBS:  BBSName := 'FILE.BBS';
    btPCBoard:  BBSName := 'PCBoard';
    btWildcat:  BBSName := 'Wildcat';
    btSBBS:     BBSName := 'Synchronet';
    btMystic:   BBSName := 'Mystic BBS';
  End;
  
  WriteLn(clCyan, '  BBS Type:    ', clBWhite, BBSName, clReset);
  WriteLn(clCyan, '  Data Dir:    ', clBWhite, Cfg.BBSDataDir, clReset);
  WriteLn(clCyan, '  Work Dir:    ', clBWhite, Cfg.WorkDir, clReset);
  WriteLn(clCyan, '  Log File:    ', clBWhite, Cfg.LogFile, clReset);
  WriteLn(clCyan, '  COM Port:    ', clBWhite, Cfg.ComPort, clReset);
  WriteLn;
  WriteLn(clCyan, '  ClamAV:      ', clBWhite, Cfg.ClamAVPath, clReset);
  WriteLn(clCyan, '  McAfee:      ', clBWhite, Cfg.McAfeePath, clReset);
  WriteLn(clCyan, '  F-PROT:      ', clBWhite, Cfg.FProtPath, clReset);
  WriteLn(clCyan, '  TBSCAN:      ', clBWhite, Cfg.TBScanPath, clReset);
  WriteLn;
  WriteLn(clCyan, '  UNZIP:       ', clBWhite, Cfg.UnzipPath, clReset);
  WriteLn(clCyan, '  UNRAR:       ', clBWhite, Cfg.UnrarPath, clReset);
  WriteLn(clCyan, '  ARJ:         ', clBWhite, Cfg.ArjPath, clReset);
  WriteLn(clCyan, '  LHA:         ', clBWhite, Cfg.LhaPath, clReset);
End;

{ --- Main --- }

Var Choice: Char;
Begin
  { Defaults }
  FillChar(Cfg, SizeOf(Cfg), 0);
  Cfg.BBSType := btMystic;
  Cfg.BBSDataDir := '.';
  Cfg.WorkDir := '.';
  Cfg.LogFile := 'THDPRO.LOG';
  Cfg.MaxLogSize := 5000;
  Cfg.MaxDescSize := 450;
  {$IFDEF UNIX}
  Cfg.ClamAVPath := '/usr/bin/clamscan';
  Cfg.UnzipPath := '/usr/bin/unzip';
  Cfg.UnrarPath := '/usr/bin/unrar';
  {$ENDIF}
  
  { Load existing config if present }
  If LoadConfig Then
    WriteLn('Loaded existing ', CFG_FILE);
  
  Repeat
    ShowBanner;
    WriteLn('  1. BBS Software & Directories');
    WriteLn('  2. Virus Scanner Paths');
    WriteLn('  3. Archive Tool Paths');
    WriteLn('  4. Options');
    WriteLn('  5. View Summary');
    WriteLn('  S. Save Configuration');
    WriteLn('  Q. Quit');
    WriteLn;
    Prompt('Select: ');
    ReadLn(Choice);
    Choice := UpCase(Choice);
    
    Case Choice Of
      '1': ConfigBBS;
      '2': ConfigScanners;
      '3': ConfigArchiveTools;
      '4': ConfigOptions;
      '5': ShowSummary;
      'S': SaveConfig;
    End;
    
    If Choice <> 'Q' Then Begin
      WriteLn;
      Prompt('Press Enter to continue...');
      ReadLn;
    End;
  Until Choice = 'Q';
  
  WriteLn;
  WriteLn('THD ScanPro configuration complete.');
End.
