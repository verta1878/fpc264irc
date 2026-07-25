{$MODE DELPHI}
{$H-}
Program THDPlus;
{
  THD ScanPro — THDPLUS Database Update Utility
  Phase 25-J — GPLv3 Clean-Room Rebuild
  
  Reads TESTINFO.DAT records written by THDPRO and updates
  BBS file databases (FILES.BBS, RA, Renegade, PCBoard, Mystic).
  
  The Crew: verta1878, sysop/0, evga, kiddo, wrench
}

Uses SysUtils;

Const
  VERSION = '1.0.0';
  ESC = #27;
  clReset  = ESC + '[0m';
  clBCyan  = ESC + '[1;36m';
  clBWhite = ESC + '[1;37m';
  clBGreen = ESC + '[1;32m';
  clYellow = ESC + '[33m';

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
    RES_bool        : Array[1..8] Of Boolean;
    Check_count     : Byte;
    BBS_type        : Byte;
    COM_port        : Byte;
    EXIT_level      : Byte;
    TESTINFO_REV    : Byte;
    RES_byte        : Array[1..10] Of Byte;
    TEST_DT         : LongInt;
    RES_li          : Array[1..10] Of LongInt;
    CMD_options     : String[60];
    BBS_data_dir    : String[60];
    Creator         : String[60];
    Log_path        : String[60];
    RES_str60       : Array[1..3] Of String[60];
    Ver_major       : String[2];
    Ver_minor       : String[2];
    VAR_ext         : String[3];
    Desc_filename   : String[12];
    RES_str12       : Array[1..3] Of String[12];
    ORIGINAL_F_info : TTestInfoFileRec;
    FINISHED_F_info : TTestInfoFileRec;
    RES_int         : Array[1..5] Of SmallInt;
    Descr_Length    : SmallInt;
    DIZ_Description : Array[1..1500] Of Char;
  End;

Var
  DoAll    : Boolean;
  DoRemove : Boolean;

Procedure ShowBanner;
Begin
  WriteLn;
  WriteLn(clBCyan, 'THDPLUS v', VERSION, ' — BBS Database Update Utility', clReset);
  WriteLn(clYellow, 'GPLv3 — verta1878, sysop/0, evga, kiddo, wrench', clReset);
  WriteLn;
End;

Procedure ProcessRecord(Var Rec: TTestInfoRec; Index: Integer);
Var
  Desc : String;
  I    : Integer;
Begin
  If Rec.Processed And (Not DoRemove) Then Exit;

  { Build description string }
  Desc := '';
  For I := 1 To Rec.Descr_Length Do
    Desc := Desc + Rec.DIZ_Description[I];

  WriteLn(clBWhite, '  [', Index, '] ', Rec.ORIGINAL_F_info.FILE_NAME,
    '.', Rec.ORIGINAL_F_info.FILE_EXT, clReset);

  If Desc <> '' Then
    WriteLn('      Desc: ', Copy(Desc, 1, 60));

  WriteLn('      Exit: ', Rec.EXIT_level,
    '  Creator: ', Rec.Creator);

  { TODO: Write to FILES.BBS / RA / Renegade / PCBoard / Mystic }
  { For now, just mark as processed }
  Rec.Processed := True;
  Rec.BBS_Processed := True;

  WriteLn(clBGreen, '      Processed ✓', clReset);
End;

Procedure ProcessTestInfo;
Var
  F     : File Of TTestInfoRec;
  Rec   : TTestInfoRec;
  Count : Integer;
  Total : Integer;
  Start : Integer;
Begin
  If Not FileExists('TESTINFO.DAT') Then Begin
    WriteLn('TESTINFO.DAT not found.');
    Halt(1);
  End;

  Assign(F, 'TESTINFO.DAT');
  {$I-} Reset(F); {$I+}
  If IOResult <> 0 Then Begin
    WriteLn('Cannot open TESTINFO.DAT');
    Halt(1);
  End;

  Total := FileSize(F);
  WriteLn('Records: ', Total);
  WriteLn;

  { Process last 5 or all }
  If DoAll Or DoRemove Then
    Start := 0
  Else Begin
    Start := Total - 5;
    If Start < 0 Then Start := 0;
  End;

  Seek(F, Start);
  Count := 0;

  While Not EOF(F) Do Begin
    Read(F, Rec);
    Inc(Count);
    ProcessRecord(Rec, Start + Count);

    { Write back if processed }
    Seek(F, FilePos(F) - 1);
    Write(F, Rec);
  End;

  Close(F);
  WriteLn;
  WriteLn('Processed ', Count, ' of ', Total, ' records.');
End;

Var I: Integer; P: String;
Begin
  ShowBanner;

  DoAll := False;
  DoRemove := False;

  For I := 1 To ParamCount Do Begin
    P := UpperCase(ParamStr(I));
    If P = '?' Then Begin
      WriteLn('Usage: THDPLUS [/ALL] [/REMOVE]');
      WriteLn;
      WriteLn('  /ALL     Process all TESTINFO.DAT entries');
      WriteLn('  /REMOVE  Process all and mark as processed');
      WriteLn('  (default: process last 5 unprocessed entries)');
      Halt(0);
    End
    Else If P = '/ALL' Then DoAll := True
    Else If P = '/REMOVE' Then DoRemove := True;
  End;

  ProcessTestInfo;
End.
