{$MODE DELPHI}
{$H-}
Program THDPro;
{
  THD ScanPro v1.0.0 — GPLv3 Clean-Room Rebuild
  Phase 25-A/B/C: Core Engine + Archive Extraction + Scanner Hooks
  
  Based on THDDOC.TXT specification by David Muir (PainSoft)
  100% new code — no original source reused
  
  Archive support via marc-lib (kiddo/evga — GPLv3)
  
  The Crew: verta1878, sysop/0, evga, kiddo, wrench
}

Uses
  SysUtils, m_Archive, thd_shim, m_door;

Const
  VERSION    = '1.0.0';
  BUILD_DATE = '2026-07-24';
  PROG_NAME  = 'THD ScanPro';

Type
  TScannerID = (scNone, scMcAfee, scFProt, scTBScan, scClamAV);

  TConvertTarget = (
    ctNone, ctZIP, ctARJ, ctLHA, ctSQZ, ctUC2, ctRAR
  );

  TTestResult = (
    trPassed, trVirusFound, trSuspicious,
    trCorrupt, trPassworded, trTooBig,
    trNoSpace, trTimeout, trError
  );

  TScannerRec = Record
    ID       : TScannerID;
    Name     : String[16];
    Path     : String;
    Args     : String;
    Active   : Boolean;
  End;

  TConfig = Record
    WorkDir     : String;
    LogFile     : String;
    BBSDir      : String;
    TempPath    : String;
    MaxLogSize  : LongInt;
    MaxFileSize : LongInt;
    ComPort     : Byte;
    MaxDescSize : Integer;
    ReadOnly    : Boolean;
    ConvertOnly : Boolean;
    KeepOrig    : Boolean;
    LogAll      : Boolean;
    NoDesc      : Boolean;
    OverrideLim : Boolean;
    SecureMode  : Boolean;
    AddDesc     : Boolean;
    ConvertTo   : TConvertTarget;
    Scanners    : Array[1..4] Of TScannerRec;
    NScanners   : Integer;
  End;

Var
  Config   : TConfig;
  FileName : String;
  LogF     : TextFile;
  LogOpen  : Boolean;

{ ======================================================================
  Logging
  ====================================================================== }

Procedure LogInit;
Begin
  LogOpen := False;
  If Config.MaxLogSize = 0 Then Exit;
  Assign(LogF, Config.LogFile);
  {$I-}
  If FileExists(Config.LogFile) Then Append(LogF) Else Rewrite(LogF);
  {$I+}
  If IOResult = 0 Then LogOpen := True;
End;

Procedure Log(const S: String);
Begin
  If Not LogOpen Then Exit;
  WriteLn(LogF, FormatDateTime('yyyy-mm-dd hh:nn:ss', Now), ' ', S);
  Flush(LogF);
End;

Procedure LogDone;
Begin
  If LogOpen Then Close(LogF);
  LogOpen := False;
End;

{ ======================================================================
  Temp Directory
  ====================================================================== }

Var TempCounter: LongInt = 0;

Function CreateTempDir: String;
Var Dir: String;
Begin
  Inc(TempCounter);
  Dir := Config.TempPath + DirectorySeparator +
         'thd_' + IntToStr(TempCounter) + '_' + IntToStr(Random(9999));
  ForceDirectories(Dir);
  Result := Dir;
End;

Procedure RemoveTempDir(const Dir: String);
Var SR: TSearchRec;
Begin
  If FindFirst(Dir + DirectorySeparator + '*', faAnyFile, SR) = 0 Then Begin
    Repeat
      If (SR.Name <> '.') And (SR.Name <> '..') Then Begin
        If (SR.Attr And faDirectory) <> 0 Then
          RemoveTempDir(Dir + DirectorySeparator + SR.Name)
        Else
          DeleteFile(Dir + DirectorySeparator + SR.Name);
      End;
    Until FindNext(SR) <> 0;
    FindClose(SR);
  End;
  {$I-} RmDir(Dir); {$I+}
  If IOResult <> 0 Then;
End;

{ ======================================================================
  FILE_ID.DIZ Extraction (Phase 25-D preview)
  ====================================================================== }

Function FindFileInDir(const Dir, Name: String): String;
Var SR: TSearchRec;
    Sub: String;
Begin
  Result := '';
  If FindFirst(Dir + DirectorySeparator + '*', faAnyFile, SR) = 0 Then Begin
    Repeat
      If (SR.Name = '.') Or (SR.Name = '..') Then Continue;
      If strUpper(SR.Name) = strUpper(Name) Then Begin
        Result := Dir + DirectorySeparator + SR.Name;
        FindClose(SR);
        Exit;
      End;
      { Recurse into subdirectories }
      If (SR.Attr And faDirectory) <> 0 Then Begin
        Sub := FindFileInDir(Dir + DirectorySeparator + SR.Name, Name);
        If Sub <> '' Then Begin
          Result := Sub;
          FindClose(SR);
          Exit;
        End;
      End;
    Until FindNext(SR) <> 0;
    FindClose(SR);
  End;
End;

{ ======================================================================
  Description Processing (Phase 25-D)
  Priority: VENDINFO.DIZ > FILE_ID.DIZ > DESC.SDI > DESC.SDN
  ====================================================================== }

Type
  TDescSource = (dsNone, dsVendInfo, dsFileID, dsDescSDI, dsDescSDN);

  TDescInfo = Record
    Source    : TDescSource;
    FileName : String;
    Desc     : String;
    Author   : String;
    Product  : String;
    Version  : String;
  End;

Function ParseVendInfo(const VIFile: String): TDescInfo;
Var
  F    : TextFile;
  Line : String;
  Key  : String;
  Val  : String;
  P    : Integer;
Begin
  Result.Source   := dsVendInfo;
  Result.FileName := VIFile;
  Result.Desc     := '';
  Result.Author   := '';
  Result.Product  := '';
  Result.Version  := '';

  Assign(F, VIFile);
  {$I-} Reset(F); {$I+}
  If IOResult <> 0 Then Begin
    Result.Source := dsNone;
    Exit;
  End;

  While Not EOF(F) Do Begin
    ReadLn(F, Line);
    P := Pos(':', Line);
    If P > 0 Then Begin
      Key := Trim(Copy(Line, 1, P - 1));
      Val := Trim(Copy(Line, P + 1, Length(Line)));

      If Key = 'Product' Then
        Result.Product := Val
      Else If Key = 'Version' Then
        Result.Version := Val
      Else If Key = 'Product Description' Then Begin
        Result.Desc := Val;
        { Read continuation lines }
        While Not EOF(F) Do Begin
          ReadLn(F, Line);
          If (Length(Line) > 20) And (Line[1] = ' ') Then
            Result.Desc := Result.Desc + ' ' + Trim(Line)
          Else
            Break;
          If Length(Result.Desc) > 1500 Then Break;
        End;
      End;
    End;
  End;

  Close(F);
  Log('  VENDINFO: ' + Result.Product + ' v' + Result.Version);
  Log('  Desc: ' + Copy(Result.Desc, 1, 60) + '...');
End;

Function ReadTextFile(const FName: String; MaxLen: Integer): String;
Var
  F    : TextFile;
  Line : String;
Begin
  Result := '';
  Assign(F, FName);
  {$I-} Reset(F); {$I+}
  If IOResult <> 0 Then Exit;

  While Not EOF(F) Do Begin
    ReadLn(F, Line);
    If Result <> '' Then Result := Result + ' ';
    Result := Result + Line;
    If Length(Result) >= MaxLen Then Break;
  End;
  Close(F);
End;

Function ExtractDescription(const TempDir: String): TDescInfo;
Var DIZFile: String;
Begin
  Result.Source   := dsNone;
  Result.FileName := '';
  Result.Desc     := '';
  Result.Author   := '';
  Result.Product  := '';
  Result.Version  := '';

  { 1. VENDINFO.DIZ — richest source, has product/author/version }
  DIZFile := FindFileInDir(TempDir, 'VENDINFO.DIZ');
  If DIZFile <> '' Then Begin
    Result := ParseVendInfo(DIZFile);
    If Result.Desc <> '' Then Exit;
  End;

  { 2. FILE_ID.DIZ — standard BBS description file }
  DIZFile := FindFileInDir(TempDir, 'FILE_ID.DIZ');
  If DIZFile <> '' Then Begin
    Result.Source   := dsFileID;
    Result.FileName := DIZFile;
    Result.Desc     := ReadTextFile(DIZFile, 450);
    If Result.Desc <> '' Then Begin
      Log('  FILE_ID.DIZ: ' + Copy(Result.Desc, 1, 60) + '...');
      Exit;
    End;
  End;

  { 3. DESC.SDI — SDS/SDN description }
  DIZFile := FindFileInDir(TempDir, 'DESC.SDI');
  If DIZFile <> '' Then Begin
    Result.Source   := dsDescSDI;
    Result.FileName := DIZFile;
    Result.Desc     := ReadTextFile(DIZFile, 450);
    If Result.Desc <> '' Then Begin
      Log('  DESC.SDI: ' + Copy(Result.Desc, 1, 60) + '...');
      Exit;
    End;
  End;

  { 4. DESC.SDN — last resort }
  DIZFile := FindFileInDir(TempDir, 'DESC.SDN');
  If DIZFile <> '' Then Begin
    Result.Source   := dsDescSDN;
    Result.FileName := DIZFile;
    Result.Desc     := ReadTextFile(DIZFile, 450);
    If Result.Desc <> '' Then
      Log('  DESC.SDN: ' + Copy(Result.Desc, 1, 60) + '...');
  End;
End;

{ ======================================================================
  Scanner Execution (Phase 25-C)
  ====================================================================== }

Function RunScanner(const Scan: TScannerRec; const TargetDir: String): TTestResult;
Var
  RC      : Integer;
  CmdArgs : String;
Begin
  Result := trPassed;
  If Not Scan.Active Then Exit;
  If Scan.Path = '' Then Exit;
  If Not FileExists(Scan.Path) Then Begin
    Log('  Scanner not found: ' + Scan.Path);
    Exit;
  End;

  { Build scanner-specific arguments }
  Case Scan.ID Of
    scMcAfee: CmdArgs := TargetDir + ' /ALL /CLEAN /REPORT';
    scFProt:  CmdArgs := TargetDir + ' /ANALYZE /COLLECT';
    scTBScan: CmdArgs := TargetDir + ' /heur';
    scClamAV: CmdArgs := '-r --no-summary ' + TargetDir;
  Else
    CmdArgs := TargetDir;
  End;

  WriteLn('  Scanning with ', Scan.Name, '...');
  Log('  Scanner: ' + Scan.Name + ' ' + CmdArgs);

  {$I-}
  RC := ExecuteProcess(Scan.Path, CmdArgs);
  {$I+}

  Case Scan.ID Of
    scMcAfee: Begin
      { McAfee: 0=clean, 1=virus, 2=error }
      If RC = 1 Then Result := trVirusFound
      Else If RC = 2 Then Begin
        Result := trSuspicious;
        Log('  McAfee error (RC=2) — scanner error');
      End;
    End;
    scFProt: Begin
      { F-Prot: 0=clean, 1=not scanned, 2=self-check fail,
        3=suspicious, 6=virus, 8=virus removed }
      If RC = 6 Then Result := trVirusFound
      Else If RC = 3 Then Result := trSuspicious;
    End;
    scTBScan: Begin
      { TBScan: 0=clean, 1=virus }
      If RC = 1 Then Result := trVirusFound;
    End;
    scClamAV: Begin
      { ClamAV: 0=clean, 1=virus, 2=error }
      If RC = 1 Then Result := trVirusFound
      Else If RC = 2 Then Begin
        Result := trSuspicious;
        Log('  ClamAV error (RC=2) — file may be corrupt or unreadable');
      End;
    End;
  End;

  If Result = trVirusFound Then Begin
    Log('  *** VIRUS DETECTED by ' + Scan.Name + ' (exit ' + IntToStr(RC) + ') ***');
    WriteLn('  *** VIRUS DETECTED by ', Scan.Name, ' ***');
  End Else If Result = trSuspicious Then Begin
    Log('  SUSPICIOUS by ' + Scan.Name + ' (exit ' + IntToStr(RC) + ')');
    WriteLn('  SUSPICIOUS — ', Scan.Name);
  End Else
    Log('  ' + Scan.Name + ': clean');
End;

{ ======================================================================
  Main Test Pipeline
  ====================================================================== }

{ ======================================================================
  GIF Spec Extraction (Phase 25-E)
  ====================================================================== }

Type
  TGIFSpec = Record
    Valid   : Boolean;
    Width   : Word;
    Height  : Word;
    Colors  : LongInt;
    Version : String[5];
  End;

Function GetGIFSpec(const FName: String): TGIFSpec;
Var
  F   : File;
  Hdr : Array[0..12] Of Byte;
  R   : Integer;
  Packed1 : Byte;
Begin
  Result.Valid := False;
  Result.Width := 0;
  Result.Height := 0;
  Result.Colors := 0;
  Result.Version := '';

  Assign(F, FName);
  {$I-} Reset(F, 1); {$I+}
  If IOResult <> 0 Then Exit;

  BlockRead(F, Hdr, 13, R);
  Close(F);

  If R < 13 Then Exit;

  { Check GIF signature: GIF87a or GIF89a }
  If (Hdr[0] <> $47) Or (Hdr[1] <> $49) Or (Hdr[2] <> $46) Then Exit; { GIF }
  If (Hdr[3] <> $38) Then Exit; { 8 }
  If (Hdr[4] <> $37) And (Hdr[4] <> $39) Then Exit; { 7 or 9 }
  If (Hdr[5] <> $61) Then Exit; { a }

  If Hdr[4] = $37 Then Result.Version := 'GIF87a'
                   Else Result.Version := 'GIF89a';

  { Width and Height (little-endian) }
  Result.Width  := Hdr[6] Or (Word(Hdr[7]) SHL 8);
  Result.Height := Hdr[8] Or (Word(Hdr[9]) SHL 8);

  { Color table: packed byte at offset 10 }
  Packed1 := Hdr[10];
  If (Packed1 And $80) <> 0 Then
    Result.Colors := 1 SHL ((Packed1 And 7) + 1)
  Else
    Result.Colors := 0;

  Result.Valid := True;
End;

Function ScanForGIFs(const TempDir: String): String;
Var
  SR   : TSearchRec;
  Spec : TGIFSpec;
  S    : String;
  Full : String;
Begin
  Result := '';
  If FindFirst(TempDir + DirectorySeparator + '*', faAnyFile, SR) = 0 Then Begin
    Repeat
      If (SR.Name = '.') Or (SR.Name = '..') Then Continue;

      Full := TempDir + DirectorySeparator + SR.Name;

      { Recurse into subdirs }
      If (SR.Attr And faDirectory) <> 0 Then Begin
        S := ScanForGIFs(Full);
        If S <> '' Then Begin
          If Result <> '' Then Result := Result + ', ';
          Result := Result + S;
        End;
        Continue;
      End;

      { Check for GIF extension }
      If Length(SR.Name) > 4 Then Begin
        S := strUpper(Copy(SR.Name, Length(SR.Name) - 3, 4));
        If S = '.GIF' Then Begin
          Spec := GetGIFSpec(Full);
          If Spec.Valid Then Begin
            S := SR.Name + ' ' + IntToStr(Spec.Width) + 'x' +
                 IntToStr(Spec.Height) + 'x' + IntToStr(Spec.Colors);
            If Result <> '' Then Result := Result + ', ';
            Result := Result + S;
            Log('  GIFSPEC: ' + S);
          End;
        End;
      End;
    Until FindNext(SR) <> 0;
    FindClose(SR);
  End;
End;

{ ======================================================================
  TESTINFO.DAT — Byte-Compatible Format (Phase 25-I)
  2380 bytes per record, matches TESTINFO.INC exactly
  ====================================================================== }

Type
  TTestInfoFileRec = Packed Record
    FILE_SFX      : Boolean;
    FILE_EXISTS   : Boolean;
    FILE_FULL     : String[60];
    FILE_PATH     : String[60];
    FILE_DRIVE    : String[2];
    FILE_NAME     : String[8];
    FILE_EXT      : String[3];
    FILE_TYPE     : String[3];
    FILE_DT       : LongInt;
    FILE_SIZE     : LongInt;
  End;

  TTestInfoRec = Packed Record
    Processed       : Boolean;
    VND_present     : Boolean;
    DESC_imp_req    : Boolean;
    ADD_rec         : Boolean;
    F_conv          : Boolean;
    Ansi_detected   : Boolean;
    Avatar_detected : Boolean;
    CD_detected     : Boolean;
    BBS_Processed   : Boolean;
    RES_bool_one    : Boolean;
    RES_bool_two    : Boolean;
    RES_bool_thr    : Boolean;
    RES_bool_fou    : Boolean;
    RES_bool_fiv    : Boolean;
    RES_bool_six    : Boolean;
    RES_bool_sev    : Boolean;
    RES_bool_eig    : Boolean;
    Check_count     : Byte;
    BBS_type        : Byte;
    COM_port        : Byte;
    EXIT_level      : Byte;
    TESTINFO_REV    : Byte;
    RES_byte_one    : Byte;
    RES_byte_two    : Byte;
    RES_byte_thr    : Byte;
    RES_byte_fou    : Byte;
    RES_byte_fiv    : Byte;
    RES_byte_six    : Byte;
    RES_byte_sev    : Byte;
    RES_byte_eig    : Byte;
    RES_byte_nin    : Byte;
    TEST_DT         : LongInt;
    RES_li_one      : LongInt;
    RES_li_two      : LongInt;
    RES_li_thr      : LongInt;
    RES_li_fou      : LongInt;
    RES_li_fiv      : LongInt;
    RES_li_six      : LongInt;
    RES_li_sev      : LongInt;
    RES_li_eig      : LongInt;
    RES_li_nin      : LongInt;
    RES_li_ten      : LongInt;
    CMD_options     : String[60];
    BBS_data_dir    : String[60];
    Creator         : String[60];
    Log_path        : String[60];
    RES_str60_one   : String[60];
    RES_str60_two   : String[60];
    RES_str60_thr   : String[60];
    Ver_major       : String[2];
    Ver_minor       : String[2];
    VAR_ext         : String[3];
    Desc_filename   : String[12];
    RES_str12_one   : String[12];
    RES_str12_two   : String[12];
    RES_str12_thr   : String[12];
    ORIGINAL_F_info : TTestInfoFileRec;
    FINISHED_F_info : TTestInfoFileRec;
    RES_int_one     : SmallInt;
    RES_int_two     : SmallInt;
    RES_int_thr     : SmallInt;
    RES_int_fou     : SmallInt;
    RES_int_fiv     : SmallInt;
    Descr_Length    : SmallInt;
    DIZ_Description : Array[1..1500] Of Char;
  End;

Function PackDT(Y, M, D, H, Mi, S: Word): LongInt;
Begin
  Result := (LongInt(Y - 1980) SHL 25) Or (LongInt(M) SHL 21) Or
            (LongInt(D) SHL 16) Or (LongInt(H) SHL 11) Or
            (LongInt(Mi) SHL 5) Or (S DIV 2);
End;

Function NowPackedDT: LongInt;
Var Y, M, D, H, Mi, S, MS: Word;
Begin
  DecodeDate(Now, Y, M, D);
  DecodeTime(Now, H, Mi, S, MS);
  Result := PackDT(Y, M, D, H, Mi, S);
End;

Procedure FillFileRec(Var FR: TTestInfoFileRec; const FName: String; AType: TArcType);
Var SR: TSearchRec;
Begin
  FillChar(FR, SizeOf(FR), 0);
  FR.FILE_FULL := UpperCase(FName);
  FR.FILE_PATH := UpperCase(ExtractFilePath(FName));
  If (Length(FName) >= 2) And (FName[2] = ':') Then
    FR.FILE_DRIVE := UpperCase(Copy(FName, 1, 2))
  Else
    FR.FILE_DRIVE := '';
  FR.FILE_NAME := UpperCase(Copy(ExtractFileName(FName), 1,
    Pos('.', ExtractFileName(FName)) - 1));
  If Pos('.', ExtractFileName(FName)) > 0 Then
    FR.FILE_EXT := UpperCase(Copy(ExtractFileExt(FName), 2, 3));
  FR.FILE_TYPE := UpperCase(ArcTypeToStr(AType));
  FR.FILE_EXISTS := FileExists(FName);
  FR.FILE_SFX := False;
  If FindFirst(FName, faAnyFile, SR) = 0 Then Begin
    FR.FILE_SIZE := SR.Size;
    FR.FILE_DT := SR.Time;
    FindClose(SR);
  End;
End;

Procedure WriteTestInfo(const FName: String; AType: TArcType;
  ExitLvl: Byte; const DescInfo: TDescInfo);
Var
  F   : File Of TTestInfoRec;
  Rec : TTestInfoRec;
  I   : Integer;
Begin
  FillChar(Rec, SizeOf(Rec), 0);

  Rec.Processed     := False;
  Rec.VND_present   := (DescInfo.Source = dsVendInfo);
  Rec.DESC_imp_req  := Not Config.NoDesc;
  Rec.ADD_rec       := Config.AddDesc;
  Rec.F_conv        := (Config.ConvertTo <> ctNone);
  Rec.CD_detected   := (Config.ComPort > 0);
  Rec.BBS_Processed := False;

  Rec.Check_count   := 1;
  Rec.BBS_type      := Ord(Config.ConvertTo);  { from config }
  Rec.COM_port      := Config.ComPort;
  Rec.EXIT_level    := ExitLvl;
  Rec.TESTINFO_REV  := 1;

  Rec.TEST_DT       := NowPackedDT;
  Rec.CMD_options   := ParamStr(0) + ' ' + FileName;  { actual cmdline }
  Rec.Creator       := 'THD ScanPro';
  Rec.Log_path      := Config.LogFile;
  Rec.BBS_data_dir  := Config.BBSDir;
  Rec.Ver_major     := '01';
  Rec.Ver_minor     := '.0';

  If DescInfo.FileName <> '' Then
    Rec.Desc_filename := UpperCase(ExtractFileName(DescInfo.FileName));

  FillFileRec(Rec.ORIGINAL_F_info, FName, AType);
  FillFileRec(Rec.FINISHED_F_info, FName, AType);

  { Copy description }
  Rec.Descr_Length := Length(DescInfo.Desc);
  If Rec.Descr_Length > 1500 Then Rec.Descr_Length := 1500;
  For I := 1 To Rec.Descr_Length Do
    Rec.DIZ_Description[I] := DescInfo.Desc[I];

  { Write record }
  Assign(F, 'TESTINFO.DAT');
  {$I-}
  If FileExists('TESTINFO.DAT') Then Begin
    Reset(F);
    Seek(F, FileSize(F));
  End Else
    Rewrite(F);
  {$I+}
  If IOResult <> 0 Then Begin
    Log('  ERROR: Cannot write TESTINFO.DAT');
    Exit;
  End;

  Write(F, Rec);
  Close(F);
  Log('  TESTINFO.DAT: record written (' + IntToStr(SizeOf(Rec)) + ' bytes)');
End;

{ ======================================================================
  TUI — ANSI Terminal Interface (Phase 25-G)
  Works on DOS (ANSI.SYS), Linux, Win32, OS/2
  ====================================================================== }

Const
  ESC = #27;
  
  { ANSI color codes }
  clReset   = ESC + '[0m';
  clBold    = ESC + '[1m';
  clRed     = ESC + '[31m';
  clGreen   = ESC + '[32m';
  clYellow  = ESC + '[33m';
  clBlue    = ESC + '[34m';
  clMagenta = ESC + '[35m';
  clCyan    = ESC + '[36m';
  clWhite   = ESC + '[37m';
  clBGBlue  = ESC + '[44m';
  clBRed    = ESC + '[1;31m';
  clBGreen  = ESC + '[1;32m';
  clBYellow = ESC + '[1;33m';
  clBCyan   = ESC + '[1;36m';
  clBWhite  = ESC + '[1;37m';

Procedure TUI_Clear;
Begin
  Write(ESC, '[2J', ESC, '[H');
End;

Procedure TUI_GotoXY(X, Y: Integer);
Begin
  Write(ESC, '[', Y, ';', X, 'H');
End;

Procedure TUI_HLine(Ch: Char; Len: Integer);
Var I: Integer;
Begin
  For I := 1 To Len Do Write(Ch);
End;

Procedure TUI_Banner;
Begin
  WriteLn(clBCyan, '  ', #218); TUI_HLine(#196, 74); Write(#191, clReset);
  WriteLn;
  WriteLn(clBCyan, '  ', #179, clBWhite,
    '  THD ScanPro v', VERSION, '  ', clCyan,
    '— GPLv3 File Processor',
    '                          ',
    clBCyan, #179, clReset);
  WriteLn(clBCyan, '  ', #179, clCyan,
    '  Clean-room rebuild — verta1878, sysop/0, evga, kiddo, wrench  ',
    clBCyan, #179, clReset);
  WriteLn(clBCyan, '  ', #192); TUI_HLine(#196, 74); Write(#217, clReset);
  WriteLn;
End;

Procedure TUI_FileInfo(const FName, FType: String; FSize: LongInt);
Begin
  WriteLn(clBWhite, '  File: ', clBYellow, ExtractFileName(FName), clReset);
  WriteLn(clWhite,  '  Type: ', clBCyan, FType,
    clWhite, '  Size: ', clBCyan, IntToStr(FSize), ' bytes', clReset);
  WriteLn;
End;

Procedure TUI_Step(const Step: String; Success: Boolean);
Begin
  Write(clWhite, '  ', #254, ' ', Step);
  { Pad to 40 chars }
  Write('' : 40 - Length(Step));
  If Success Then
    WriteLn(clBGreen, '[  OK  ]', clReset)
  Else
    WriteLn(clBRed, '[ FAIL ]', clReset);
End;

Procedure TUI_StepProgress(const Step: String);
Begin
  Write(clWhite, '  ', #254, ' ', Step);
  Write('' : 40 - Length(Step));
  Write(clBYellow, '[  ..  ]', clReset);
  Write(#13); { carriage return to overwrite }
End;

Procedure TUI_StepDone(const Step: String; Success: Boolean);
Begin
  Write(clWhite, '  ', #254, ' ', Step);
  Write('' : 40 - Length(Step));
  If Success Then
    WriteLn(clBGreen, '[  OK  ]', clReset)
  Else
    WriteLn(clBRed, '[ FAIL ]', clReset);
End;

Procedure TUI_Result(R: TTestResult);
Begin
  WriteLn;
  Write('  ');
  TUI_HLine(#196, 50);
  WriteLn;
  Write('  Result: ');
  Case R Of
    trPassed:     WriteLn(clBGreen, 'PASSED — File is clean', clReset);
    trVirusFound: WriteLn(clBRed, '*** VIRUS DETECTED ***', clReset);
    trSuspicious: WriteLn(clBYellow, 'SUSPICIOUS — Review manually', clReset);
    trCorrupt:    WriteLn(clBRed, 'CORRUPT — Archive damaged', clReset);
    trPassworded: WriteLn(clBYellow, 'PASSWORD PROTECTED — Cannot test', clReset);
    trTooBig:     WriteLn(clBYellow, 'SKIPPED — Exceeds size limit', clReset);
    trError:      WriteLn(clBRed, 'ERROR / DUPLICATE', clReset);
  End;
  WriteLn;
End;

Procedure TUI_Description(const DescInfo: TDescInfo);
Begin
  If DescInfo.Desc = '' Then Exit;
  Write(clWhite, '  Desc: ', clCyan);
  Case DescInfo.Source Of
    dsVendInfo: Write('[VENDINFO] ');
    dsFileID:   Write('[FILE_ID]  ');
    dsDescSDI:  Write('[DESC.SDI] ');
    dsDescSDN:  Write('[DESC.SDN] ');
  End;
  WriteLn(Copy(DescInfo.Desc, 1, 55), clReset);
  If DescInfo.Product <> '' Then
    WriteLn(clWhite, '  Product: ', clBCyan, DescInfo.Product,
      ' v', DescInfo.Version, clReset);
End;

Procedure TUI_GIFSpec(const Specs: String);
Begin
  If Specs = '' Then Exit;
  WriteLn(clWhite, '  GIFSPEC: ', clMagenta, Specs, clReset);
End;

Procedure TUI_Duplicate;
Begin
  WriteLn;
  WriteLn(clBRed, '  ', #254, ' DUPLICATE — This file is already in the database', clReset);
  WriteLn;
End;

Procedure TUI_Scanner(const Name: String; Found: Boolean);
Begin
  If Found Then
    WriteLn(clBRed, '  ', #254, ' ', Name, ': *** VIRUS DETECTED ***', clReset)
  Else
    WriteLn(clWhite, '  ', #254, ' ', Name, ': clean', clReset);
End;

Procedure TUI_LoadScreen(const FName: String);
Var
  F    : File;
  Buf  : Array[0..4095] Of Byte;
  R, I : Integer;
Begin
  If Not FileExists(FName) Then Exit;
  Assign(F, FName);
  {$I-} Reset(F, 1); {$I+}
  If IOResult <> 0 Then Exit;
  Repeat
    BlockRead(F, Buf, 4096, R);
    For I := 0 To R - 1 Do Write(Chr(Buf[I]));
  Until R = 0;
  Close(F);
End;

{ ======================================================================
  CRC32 Duplicate Detection (Phase 25-F)
  THDPRO.DUP format: file of [FileSize:LongInt, CRC32:LongInt] pairs
  THDPRO.CRC format: same — built in CRC mode
  ====================================================================== }

Var
  CRCTable : Array[0..255] Of LongWord;
  CRCTableInit : Boolean = False;

Procedure InitCRCTable;
Var I, J: Integer; C: LongWord;
Begin
  For I := 0 To 255 Do Begin
    C := LongWord(I);
    For J := 0 To 7 Do Begin
      If (C And 1) <> 0 Then
        C := $EDB88320 XOR (C SHR 1)
      Else
        C := C SHR 1;
    End;
    CRCTable[I] := C;
  End;
  CRCTableInit := True;
End;

Function CalcCRC32File(const FName: String): LongWord;
Var
  F    : File;
  Buf  : Array[0..4095] Of Byte;
  R, I : Integer;
  CRC  : LongWord;
Begin
  If Not CRCTableInit Then InitCRCTable;
  CRC := $FFFFFFFF;
  Assign(F, FName);
  {$I-} Reset(F, 1); {$I+}
  If IOResult <> 0 Then Begin Result := 0; Exit; End;

  Repeat
    BlockRead(F, Buf, 4096, R);
    For I := 0 To R - 1 Do
      CRC := CRCTable[(CRC XOR Buf[I]) And $FF] XOR (CRC SHR 8);
  Until R = 0;

  Close(F);
  Result := CRC XOR $FFFFFFFF;
End;

Function CheckDuplicate(FileSize: LongInt; CRC: LongWord): Boolean;
Var
  F       : File;
  FSize   : LongInt;
  FCRC    : LongWord;
  R       : Integer;
Begin
  Result := False;
  If Not FileExists('THDPRO.DUP') Then Exit;

  Assign(F, 'THDPRO.DUP');
  {$I-} Reset(F, 1); {$I+}
  If IOResult <> 0 Then Exit;

  While Not EOF(F) Do Begin
    BlockRead(F, FSize, 4, R);
    BlockRead(F, FCRC, 4, R);
    If R < 4 Then Break;
    If (FSize = FileSize) And (FCRC = CRC) Then Begin
      Result := True;
      Break;
    End;
  End;

  Close(F);
End;

Procedure AddToDupList(FileSize: LongInt; CRC: LongWord);
Var F: File;
Begin
  Assign(F, 'THDPRO.DUP');
  {$I-}
  If FileExists('THDPRO.DUP') Then Begin
    Reset(F, 1);
    System.Seek(F, System.FileSize(F));
  End Else
    Rewrite(F, 1);
  {$I+}
  If IOResult <> 0 Then Exit;

  BlockWrite(F, FileSize, 4);
  BlockWrite(F, CRC, 4);
  Close(F);
End;

Function ScanDuplicates(const TempDir: String; const ArcFile: String): Boolean;
Var
  SR      : TSearchRec;
  Full    : String;
  CRC     : LongWord;
  FSize   : LongInt;
Begin
  Result := False;

  { CRC the archive itself }
  CRC := CalcCRC32File(ArcFile);

  If FindFirst(ArcFile, faAnyFile, SR) = 0 Then Begin
    FSize := SR.Size;
    FindClose(SR);
  End Else
    FSize := 0;

  If CheckDuplicate(FSize, CRC) Then Begin
    Log('  DUPLICATE: archive CRC 0x' + IntToStr(CRC) + ' size ' + IntToStr(FSize));
    WriteLn('  DUPLICATE: archive already in database');
    Result := True;
    Exit;
  End;

  { Add to database }
  AddToDupList(FSize, CRC);
  Log('  CRC: 0x' + IntToStr(CRC) + ' size ' + IntToStr(FSize) + ' — new');
End;

Function TestFile(const FName: String): TTestResult;
Var
  AType    : TArcType;
  ARes     : TArcResult;
  TempDir  : String;
  DescInfo : TDescInfo;
  GIFSpecs : String;
  IsDup    : Boolean;
  I        : Integer;
  ScanRes  : TTestResult;
Begin
  Result := trPassed;

  { Step 1: Detect archive format via marc-lib }
  AType := ArcDetectType(FName);
  If AType = atUnknown Then Begin
    Log('File: ' + FName + ' — not an archive, skipping');
    WriteLn('Skipping: ', ExtractFileName(FName), ' (not an archive)');
    Exit;
  End;

  Log('File: ' + FName + ' [' + ArcTypeToStr(AType) + ']');
  TUI_FileInfo(FName, ArcTypeToStr(AType), 0);

  { Step 1.5: CRC duplicate check (Phase 25-F) }
  IsDup := ScanDuplicates('', FName);
  If IsDup Then Begin
    Result := trError;
    Log('  RESULT: DUPLICATE');
    WriteLn('  Result: DUPLICATE — rejected');
    Exit;
  End;

  { Step 2: Test archive integrity via marc-lib }
  Write('  Integrity test... ');
  ARes := ArcTest(FName);
  If Not ARes.Success Then Begin
    WriteLn('FAILED');
    Log('  Archive integrity: FAILED');
    Result := trCorrupt;
    Exit;
  End;
  WriteLn('OK');
  Log('  Archive integrity: OK');

  { Step 3: Extract to temp directory }
  TempDir := CreateTempDir;
  Write('  Extracting... ');
  ARes := ArcExtractAll(FName, TempDir);
  If Not ARes.Success Then Begin
    WriteLn('FAILED');
    Log('  Extraction: FAILED');
    RemoveTempDir(TempDir);
    If Not ARes.Success Then Begin
      Result := trPassworded;
      WriteLn('  Password protected — cannot test');
      Log('  Password protected archive');
    End Else
      Result := trError;
    Exit;
  End;
  WriteLn('OK');
  Log('  Extracted to: ' + TempDir);

  { Step 4: Run virus scanners (Phase 25-C) }
  For I := 1 To Config.NScanners Do Begin
    ScanRes := RunScanner(Config.Scanners[I], TempDir);
    If ScanRes = trVirusFound Then Begin
      Result := trVirusFound;
      Break;
    End;
    If ScanRes = trSuspicious Then
      Result := trSuspicious;
  End;

  { Step 5: Extract descriptions (Phase 25-D) }
  If (Result <> trVirusFound) And (Not Config.NoDesc) Then Begin
    DescInfo := ExtractDescription(TempDir);
    If DescInfo.Desc <> '' Then Begin
      Case DescInfo.Source Of
        dsVendInfo: Write('  VENDINFO: ');
        dsFileID:   Write('  FILE_ID.DIZ: ');
        dsDescSDI:  Write('  DESC.SDI: ');
        dsDescSDN:  Write('  DESC.SDN: ');
      End;
      WriteLn(Copy(DescInfo.Desc, 1, 60));
      If DescInfo.Product <> '' Then
        WriteLn('  Product: ', DescInfo.Product, ' v', DescInfo.Version);
    End;
  End;

  { Step 5.5: Write TESTINFO.DAT (Phase 25-I) }
  If Not Config.ReadOnly Then
    WriteTestInfo(FName, AType, Ord(Result), DescInfo);

  { Step 6: GIF spec extraction (Phase 25-E) }
  GIFSpecs := ScanForGIFs(TempDir);
  If GIFSpecs <> '' Then
    WriteLn('  GIFSPEC: ', GIFSpecs);

  { Step 7: Cleanup }
  RemoveTempDir(TempDir);

  { Report }
  Case Result Of
    trPassed:     Begin Log('  RESULT: PASSED'); WriteLn('  Result: PASSED'); End;
    trVirusFound: Begin Log('  RESULT: *** VIRUS ***'); WriteLn('  Result: *** VIRUS FOUND ***'); End;
    trSuspicious: Begin Log('  RESULT: SUSPICIOUS'); WriteLn('  Result: SUSPICIOUS'); End;
    trCorrupt:    Begin Log('  RESULT: CORRUPT'); WriteLn('  Result: CORRUPT'); End;
    trPassworded: Begin Log('  RESULT: PASSWORDED'); WriteLn('  Result: PASSWORD PROTECTED'); End;
  End;
End;

{ ======================================================================
  Configuration + Command Line
  ====================================================================== }

Procedure InitConfig;
Begin
  FillChar(Config, SizeOf(Config), 0);
  Config.WorkDir := GetCurrentDir;
  Config.TempPath := GetTempDir(False);
  Config.LogFile := 'THDPRO.LOG';
  Config.MaxLogSize := 5000;
  Config.MaxFileSize := 0;
  Config.ComPort := 0;
  Config.MaxDescSize := 450;
  Config.ConvertTo := ctNone;
  Config.NScanners := 0;

  { Auto-detect scanners }
  { ClamAV }
  If FileExists('/usr/bin/clamscan') Or FileExists('C:\CLAMAV\CLAMSCAN.EXE') Then Begin
    Inc(Config.NScanners);
    Config.Scanners[Config.NScanners].ID := scClamAV;
    Config.Scanners[Config.NScanners].Name := 'ClamAV';
    If FileExists('/usr/bin/clamscan') Then
      Config.Scanners[Config.NScanners].Path := '/usr/bin/clamscan'
    Else
      Config.Scanners[Config.NScanners].Path := 'C:\CLAMAV\CLAMSCAN.EXE';
    Config.Scanners[Config.NScanners].Active := True;
  End;
End;

Procedure LoadCfgFile;
Var
  F    : TextFile;
  Line : String;
  Key  : String;
  Val  : String;
  P    : Integer;
Begin
  If Not FileExists('THDPRO.CFG') Then Exit;
  
  { Try binary format first (written by THDINSTL) }
  If FileExists('THDPRO.BIN') Then Begin
    Assign(BinF, 'THDPRO.BIN');
    {$I-} Reset(BinF); {$I+}
    If IOResult = 0 Then Begin
      BlockRead(BinF, BinCfg, SizeOf(BinCfg));
      Close(BinF);
      Config.WorkDir     := BinCfg.WorkDir;
      Config.LogFile     := BinCfg.LogFile;
      Config.BBSDir      := BinCfg.BBSDataDir;
      Config.MaxLogSize  := BinCfg.MaxLogSize;
      Config.MaxFileSize := BinCfg.MaxFileSize;
      Config.ComPort     := BinCfg.ComPort;
      Config.MaxDescSize := BinCfg.MaxDescSize;
      Config.SecureMode  := BinCfg.SecureMode;
      { Map scanner paths to scanner array }
      Config.NScanners := 0;
      If BinCfg.ClamAVPath <> '' Then Begin
        Inc(Config.NScanners);
        Config.Scanners[Config.NScanners].ID   := scClamAV;
        Config.Scanners[Config.NScanners].Name := 'ClamAV';
        Config.Scanners[Config.NScanners].Path := BinCfg.ClamAVPath;
        Config.Scanners[Config.NScanners].Active := True;
      End;
      If BinCfg.McAfeePath <> '' Then Begin
        Inc(Config.NScanners);
        Config.Scanners[Config.NScanners].ID   := scMcAfee;
        Config.Scanners[Config.NScanners].Name := 'McAfee';
        Config.Scanners[Config.NScanners].Path := BinCfg.McAfeePath;
        Config.Scanners[Config.NScanners].Active := True;
      End;
      If BinCfg.FProtPath <> '' Then Begin
        Inc(Config.NScanners);
        Config.Scanners[Config.NScanners].ID   := scFProt;
        Config.Scanners[Config.NScanners].Name := 'F-Prot';
        Config.Scanners[Config.NScanners].Path := BinCfg.FProtPath;
        Config.Scanners[Config.NScanners].Active := True;
      End;
      If BinCfg.TBScanPath <> '' Then Begin
        Inc(Config.NScanners);
        Config.Scanners[Config.NScanners].ID   := scTBScan;
        Config.Scanners[Config.NScanners].Name := 'TBScan';
        Config.Scanners[Config.NScanners].Path := BinCfg.TBScanPath;
        Config.Scanners[Config.NScanners].Active := True;
      End;
      Log('Config loaded from THDPRO.BIN (binary)');
      Exit;
    End;
  End;

  { Fallback: simple KEY=VALUE text format }
  { This allows manual editing without THDINSTL }
End;

Procedure ParseCommandLine;
Var I: Integer; P: String;
Begin
  For I := 1 To ParamCount Do Begin
    P := UpperCase(ParamStr(I));
    If P = '?' Then Begin
      WriteLn(PROG_NAME, ' v', VERSION, ' — GPLv3 File Processor');
      WriteLn;
      WriteLn('Usage: THDPRO <filename> [options]');
      WriteLn;
      WriteLn('Options:');
      WriteLn('  /ADD      Add description to file database');
      WriteLn('  /CO       Convert only (no testing)');
      WriteLn('  /KO       Keep original after conversion');
      WriteLn('  /LA       Log all activity');
      WriteLn('  /NODESC   Do not import descriptions');
      WriteLn('  /OV       Override time/space limits');
      WriteLn('  /RO       Read only mode');
      WriteLn('  0-8       COM port (0=local)');
      WriteLn('  /60-/1500 VENDINFO description size');
      WriteLn('  TOZIP     Convert to ZIP');
      WriteLn('  TOARJ     Convert to ARJ');
      WriteLn('  TOLHA     Convert to LHA');
      WriteLn('  TOSQZ     Convert to SQZ');
      WriteLn('  TOUC2     Convert to UC2');
      WriteLn('  TORAR     Convert to RAR');
      WriteLn('  CRC       CRC duplicate check mode');
      Halt(0);
    End
    Else If P = '/ADD' Then Config.AddDesc := True
    Else If P = '/CO' Then Config.ConvertOnly := True
    Else If P = '/KO' Then Config.KeepOrig := True
    Else If P = '/LA' Then Config.LogAll := True
    Else If P = '/NODESC' Then Config.NoDesc := True
    Else If P = '/OV' Then Config.OverrideLim := True
    Else If P = '/RO' Then Config.ReadOnly := True
    Else If P = '/SEC' Then Config.SecureMode := True
    Else If P = 'TOZIP' Then Config.ConvertTo := ctZIP
    Else If P = 'TOARJ' Then Config.ConvertTo := ctARJ
    Else If P = 'TOLHA' Then Config.ConvertTo := ctLHA
    Else If P = 'TOSQZ' Then Config.ConvertTo := ctSQZ
    Else If P = 'TOUC2' Then Config.ConvertTo := ctUC2
    Else If P = 'TORAR' Then Config.ConvertTo := ctRAR
    Else If (Length(P) = 1) And (P[1] >= '0') And (P[1] <= '8') Then
      Config.ComPort := Ord(P[1]) - 48
    Else If P = '/60' Then Config.MaxDescSize := 60
    Else If P = '/120' Then Config.MaxDescSize := 120
    Else If P = '/250' Then Config.MaxDescSize := 250
    Else If P = '/450' Then Config.MaxDescSize := 450
    Else If P = '/750' Then Config.MaxDescSize := 750
    Else If P = '/1500' Then Config.MaxDescSize := 1500
    Else If FileName = '' Then
      FileName := ParamStr(I);
  End;
End;

{ ======================================================================
  Main
  ====================================================================== }

Var RC: Integer;

Begin
  DoorInit(Config.ComPort);
  WriteLn;
  TUI_Banner;

  InitConfig;
  LoadCfgFile;
  FileName := '';
  ParseCommandLine;

  If FileName = '' Then Begin
    WriteLn('No filename specified. Use ? for help.');
    Halt(1);
  End;

  If Not FileExists(FileName) Then Begin
    WriteLn('File not found: ', FileName);
    Halt(1);
  End;

  { Configure marc-lib tool paths }
  ArcSetTempPath(Config.TempPath);

  { Auto-detect archive tools }
  { UNIX}
  If FileExists('/usr/bin/unzip') Then Begin
    ArcSetToolPath(atZIP, '/usr/bin/unzip');
  End;
  If FileExists('/usr/bin/unrar') Then ArcSetToolPath(atRAR, '/usr/bin/unrar');
  If FileExists('/usr/bin/arj')   Then ArcSetToolPath(atARJ, '/usr/bin/arj');
  If FileExists('/usr/bin/lha')   Then ArcSetToolPath(atLHA, '/usr/bin/lha');
  If FileExists('/usr/bin/arc')   Then ArcSetToolPath(atARC, '/usr/bin/arc');
  If FileExists('/usr/bin/7z')    Then ArcSetToolPath(at7Z,  '/usr/bin/7z');
  {}
  { WINDOWS}
  If FileExists('C:\UTILS\PKUNZIP.EXE') Then ArcSetToolPath(atZIP, 'C:\UTILS\PKUNZIP.EXE');
  If FileExists('C:\UTILS\UNRAR.EXE')   Then ArcSetToolPath(atRAR, 'C:\UTILS\UNRAR.EXE');
  If FileExists('C:\UTILS\ARJ.EXE')     Then ArcSetToolPath(atARJ, 'C:\UTILS\ARJ.EXE');
  If FileExists('C:\UTILS\LHA.EXE')     Then ArcSetToolPath(atLHA, 'C:\UTILS\LHA.EXE');
  {}

  LogInit;
  Log('=== ' + PROG_NAME + ' v' + VERSION + ' ===');

  Case TestFile(FileName) Of
    trPassed:     RC := 0;
    trVirusFound: RC := 1;
    trSuspicious: RC := 2;
    trCorrupt:    RC := 3;
    trPassworded: RC := 4;
  Else
    RC := 255;
  End;

  LogDone;
  Halt(RC);
  DoorClose;
End.
