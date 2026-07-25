{$MODE DELPHI}
{$H-}
Program THDTerm;
{
  THD ScanPro — THDTERM Terminal Extension
  Phase 25-J — GPLv3 Clean-Room Rebuild
  
  Wraps THDPRO for local sysop file testing.
  Watches a source directory, runs THDPRO on new files,
  moves results to pass/fail directories.
  
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
  clBRed   = ESC + '[1;31m';
  clYellow = ESC + '[33m';

Var
  SourceDir : String;
  PassDir   : String;
  FailDir   : String;
  ComPort   : Byte;

Procedure ShowBanner;
Begin
  WriteLn;
  WriteLn(clBCyan, 'THDTERM v', VERSION, ' — Terminal File Testing Extension', clReset);
  WriteLn(clYellow, 'GPLv3 — verta1878, sysop/0, evga, kiddo, wrench', clReset);
  WriteLn;
End;

Function RunTHDPro(const FileName: String): Integer;
Begin
  WriteLn(clBWhite, 'Testing: ', ExtractFileName(FileName), clReset);
  {$IFDEF UNIX}
  Result := ExecuteProcess('./thdpro', FileName + ' 0 /RO');
  {$ELSE}
  Result := ExecuteProcess('THDPRO.EXE', FileName + ' 0 /RO');
  {$ENDIF}
End;

Procedure MoveFile(const Src, Dst: String);
Begin
  If Not RenameFile(Src, Dst) Then
    WriteLn('  Warning: Could not move ', ExtractFileName(Src));
End;

Procedure ScanDirectory;
Var
  SR : TSearchRec;
  RC : Integer;
  FName, DestDir : String;
Begin
  ForceDirectories(PassDir);
  ForceDirectories(FailDir);

  WriteLn('Source:  ', SourceDir);
  WriteLn('Pass:   ', PassDir);
  WriteLn('Fail:   ', FailDir);
  WriteLn;

  If FindFirst(SourceDir + DirectorySeparator + '*.*', faAnyFile, SR) = 0 Then Begin
    Repeat
      If (SR.Name = '.') Or (SR.Name = '..') Then Continue;
      If (SR.Attr And faDirectory) <> 0 Then Continue;

      FName := SourceDir + DirectorySeparator + SR.Name;
      RC := RunTHDPro(FName);

      If RC = 0 Then Begin
        DestDir := PassDir + DirectorySeparator + SR.Name;
        MoveFile(FName, DestDir);
        WriteLn(clBGreen, '  → PASS', clReset);
      End Else Begin
        DestDir := FailDir + DirectorySeparator + SR.Name;
        MoveFile(FName, DestDir);
        WriteLn(clBRed, '  → FAIL (exit ', RC, ')', clReset);
      End;
      WriteLn;
    Until FindNext(SR) <> 0;
    FindClose(SR);
  End Else
    WriteLn('No files found in ', SourceDir);
End;

Var I: Integer; P: String;
Begin
  ShowBanner;

  SourceDir := '.';
  PassDir := 'PASS';
  FailDir := 'FAIL';
  ComPort := 0;

  For I := 1 To ParamCount Do Begin
    P := UpperCase(ParamStr(I));
    If P = '?' Then Begin
      WriteLn('Usage: THDTERM [comport] [/S source_dir]');
      WriteLn;
      WriteLn('  comport   COM port (0=local, default)');
      WriteLn('  /S dir    Source directory to watch');
      WriteLn;
      WriteLn('Pass/Fail directories created automatically.');
      Halt(0);
    End
    Else If P = '/S' Then Begin
      If I < ParamCount Then SourceDir := ParamStr(I + 1);
    End
    Else If (Length(P) = 1) And (P[1] >= '0') And (P[1] <= '8') Then
      ComPort := Ord(P[1]) - 48;
  End;

  ScanDirectory;

  WriteLn;
  WriteLn('THDTERM complete. Exit code 0.');
End.
