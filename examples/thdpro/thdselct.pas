{$MODE DELPHI}
{$H-}
Program THDSelct;
{
  THD ScanPro — THDSELCT File Selection Utility
  Phase 25-J — GPLv3 Clean-Room Rebuild
  
  Interactive file selector for batch testing with THDPRO.
  Displays files in a directory and lets the user select
  which ones to test.
  
  The Crew: verta1878, sysop/0, evga, kiddo, wrench
}

Uses SysUtils;

Const
  VERSION = '1.0.0';
  MAX_FILES = 500;
  ESC = #27;
  clReset  = ESC + '[0m';
  clBCyan  = ESC + '[1;36m';
  clBWhite = ESC + '[1;37m';
  clBGreen = ESC + '[1;32m';
  clYellow = ESC + '[33m';
  clCyan   = ESC + '[36m';

Type
  TFileEntry = Record
    Name     : String[12];
    Size     : LongInt;
    Selected : Boolean;
  End;

Var
  Files    : Array[1..MAX_FILES] Of TFileEntry;
  NFiles   : Integer;
  SourceDir: String;

Procedure ShowBanner;
Begin
  WriteLn;
  WriteLn(clBCyan, 'THDSELCT v', VERSION, ' — File Selection Utility', clReset);
  WriteLn(clYellow, 'GPLv3 — verta1878, sysop/0, evga, kiddo, wrench', clReset);
  WriteLn;
End;

Procedure LoadFiles;
Var SR: TSearchRec;
Begin
  NFiles := 0;
  If FindFirst(SourceDir + DirectorySeparator + '*.*', faAnyFile, SR) = 0 Then Begin
    Repeat
      If (SR.Name = '.') Or (SR.Name = '..') Then Continue;
      If (SR.Attr And faDirectory) <> 0 Then Continue;
      If NFiles >= MAX_FILES Then Break;
      Inc(NFiles);
      Files[NFiles].Name := SR.Name;
      Files[NFiles].Size := SR.Size;
      Files[NFiles].Selected := False;
    Until FindNext(SR) <> 0;
    FindClose(SR);
  End;
End;

Procedure ShowFiles;
Var I: Integer;
Begin
  WriteLn(clBWhite, '  #   Sel  Name            Size', clReset);
  WriteLn('  ──  ───  ────────────    ──────────');
  For I := 1 To NFiles Do Begin
    Write('  ', I:2, '  ');
    If Files[I].Selected Then
      Write(clBGreen, ' [X] ', clReset)
    Else
      Write(' [ ] ');
    Write(Files[I].Name);
    Write('' : 16 - Length(Files[I].Name));
    WriteLn(Files[I].Size:10);
  End;
  WriteLn;
End;

Procedure RunSelected;
Var
  I, RC : Integer;
  FName : String;
Begin
  For I := 1 To NFiles Do Begin
    If Not Files[I].Selected Then Continue;
    FName := SourceDir + DirectorySeparator + Files[I].Name;
    WriteLn(clBWhite, 'Testing: ', Files[I].Name, clReset);
    {$IFDEF UNIX}
    RC := ExecuteProcess('./thdpro', FName + ' 0 /RO');
    {$ELSE}
    RC := ExecuteProcess('THDPRO.EXE', FName + ' 0 /RO');
    {$ENDIF}
    If RC = 0 Then
      WriteLn(clBGreen, '  PASSED', clReset)
    Else
      WriteLn(ESC, '[1;31m', '  FAILED (exit ', RC, ')', clReset);
    WriteLn;
  End;
End;

Var
  Cmd    : String;
  Num    : Integer;
  Code   : Integer;
Begin
  ShowBanner;

  If ParamCount > 0 Then
    SourceDir := ParamStr(1)
  Else
    SourceDir := '.';

  If (ParamCount > 0) And (ParamStr(1) = '?') Then Begin
    WriteLn('Usage: THDSELCT [directory]');
    WriteLn;
    WriteLn('Interactive file selector for THDPRO testing.');
    WriteLn('Commands: number to toggle, A=all, N=none, G=go, Q=quit');
    Halt(0);
  End;

  LoadFiles;
  If NFiles = 0 Then Begin
    WriteLn('No files found in ', SourceDir);
    Halt(1);
  End;

  Repeat
    ShowFiles;
    WriteLn(clCyan, 'Commands: [#] toggle  [A]ll  [N]one  [G]o test  [Q]uit', clReset);
    Write('> ');
    ReadLn(Cmd);
    Cmd := UpperCase(Trim(Cmd));

    If Cmd = 'A' Then Begin
      For Num := 1 To NFiles Do Files[Num].Selected := True;
    End
    Else If Cmd = 'N' Then Begin
      For Num := 1 To NFiles Do Files[Num].Selected := False;
    End
    Else If Cmd = 'G' Then Begin
      RunSelected;
      Break;
    End
    Else If Cmd = 'Q' Then Break
    Else Begin
      Val(Cmd, Num, Code);
      If (Code = 0) And (Num >= 1) And (Num <= NFiles) Then
        Files[Num].Selected := Not Files[Num].Selected;
    End;
  Until False;

  WriteLn;
  WriteLn('THDSELCT complete.');
End.
