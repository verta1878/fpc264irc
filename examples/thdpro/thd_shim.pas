{$MODE DELPHI}
{$H-}
Unit thd_shim;
{
  Shim unit — provides mdl-compatible functions for marc-lib
  without requiring the full Mystic mdl dependency.
}

Interface

Function  strUpper(S: String): String;
Function  JustFileExt(const S: String): String;
Function  JustFileName(const S: String): String;
Function  JustFilePath(const S: String): String;
Function  FileExist(const S: String): Boolean;
Procedure DirCreate(const S: String);

Implementation

Uses SysUtils;

Function strUpper(S: String): String;
Var I: Integer;
Begin
  For I := 1 To Length(S) Do
    If (S[I] >= 'a') And (S[I] <= 'z') Then
      S[I] := Chr(Ord(S[I]) - 32);
  Result := S;
End;

Function JustFileExt(const S: String): String;
Begin
  Result := ExtractFileExt(S);
End;

Function JustFileName(const S: String): String;
Begin
  Result := ExtractFileName(S);
End;

Function JustFilePath(const S: String): String;
Begin
  Result := ExtractFilePath(S);
End;

Function FileExist(const S: String): Boolean;
Begin
  Result := FileExists(S);
End;

Procedure DirCreate(const S: String);
Begin
  ForceDirectories(S);
End;

End.
