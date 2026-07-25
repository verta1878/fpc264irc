{$MODE DELPHI}
{$H-}
Unit m_FileIO;
{ Shim — provides FileExist etc }
Interface
Function FileExist(const S: String): Boolean;
Procedure DirCreate(const S: String);
Function JustFileExt(const S: String): String;
Function JustFileName(const S: String): String;
Implementation
Uses thd_shim;
Function FileExist(const S: String): Boolean; Begin Result := thd_shim.FileExist(S); End;
Procedure DirCreate(const S: String); Begin thd_shim.DirCreate(S); End;
Function JustFileExt(const S: String): String; Begin Result := thd_shim.JustFileExt(S); End;
Function JustFileName(const S: String): String; Begin Result := thd_shim.JustFileName(S); End;
End.
