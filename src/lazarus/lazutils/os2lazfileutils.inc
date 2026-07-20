{%MainUnit lazfileutils.pas}
{ OS/2 implementation of LazFileUtils - delegates to SysUtils }

function FilenameIsAbsolute(const TheFilename: string):boolean;
begin
  Result := (Length(TheFilename) > 0) and
            ((TheFilename[1] in ['/', '\']) or
             ((Length(TheFilename) > 2) and (TheFilename[2] = ':')));
end;

function FileOpenUTF8(Const FileName : string; Mode : Integer) : THandle;
begin
  Result := SysUtils.FileOpen(UTF8ToSys(FileName), Mode);
end;

function FileCreateUTF8(Const FileName : string) : THandle;
begin
  Result := SysUtils.FileCreate(UTF8ToSys(FileName));
end;

function FileCreateUTF8(Const FileName : string; Rights: Cardinal) : THandle;
begin
  Result := SysUtils.FileCreate(UTF8ToSys(FileName), Rights);
end;

Function FileCreateUtf8(Const FileName : String; ShareMode : Integer; Rights : Cardinal) : THandle;
begin
  Result := SysUtils.FileCreate(UTF8ToSys(FileName), ShareMode, Rights);
end;

function FileGetAttrUTF8(const FileName: String): Longint;
begin
  Result := SysUtils.FileGetAttr(UTF8ToSys(Filename));
end;

function FileSetAttrUTF8(const Filename: String; Attr: longint): Longint;
begin
  Result := SysUtils.FileSetAttr(UTF8ToSys(Filename), Attr);
  InvalidateFileStateCache(Filename);
end;

function FileExistsUTF8(const Filename: string): boolean;
begin
  Result := SysUtils.FileExists(UTF8ToSys(Filename));
end;

function DirectoryExistsUTF8(const Directory: string): Boolean;
begin
  Result := SysUtils.DirectoryExists(UTF8ToSys(Directory));
end;

function FileAgeUTF8(const FileName: String): Longint;
begin
  Result := SysUtils.FileAge(UTF8ToSys(Filename));
end;

function FileSetDateUTF8(const FileName: String; Age: Longint): Longint;
begin
  Result := SysUtils.FileSetDate(UTF8ToSys(Filename), Age);
  InvalidateFileStateCache(Filename);
end;

function FileSizeUtf8(const Filename: string): int64;
var
  SR: TSearchRec;
begin
  if SysUtils.FindFirst(UTF8ToSys(Filename), faAnyFile, SR) = 0 then
  begin
    Result := SR.Size;
    SysUtils.FindClose(SR);
  end
  else
    Result := -1;
end;

function CreateDirUTF8(const NewDir: String): Boolean;
begin
  Result := SysUtils.CreateDir(UTF8ToSys(NewDir));
end;

function RemoveDirUTF8(const Dir: String): Boolean;
begin
  Result := SysUtils.RemoveDir(UTF8ToSys(Dir));
end;

function DeleteFileUTF8(const FileName: String): Boolean;
begin
  Result := SysUtils.DeleteFile(UTF8ToSys(FileName));
  if Result then
    InvalidateFileStateCache(Filename);
end;

function RenameFileUTF8(const OldName, NewName: String): Boolean;
begin
  Result := SysUtils.RenameFile(UTF8ToSys(OldName), UTF8ToSys(NewName));
  if Result then begin
    InvalidateFileStateCache(OldName);
    InvalidateFileStateCache(NewName);
  end;
end;

function SetCurrentDirUTF8(const NewDir: String): Boolean;
begin
  Result := SysUtils.SetCurrentDir(UTF8ToSys(NewDir));
end;

function FindFirstUTF8(const Path: string; Attr: Longint; out Rslt: TSearchRec
  ): Longint;
begin
  Result := SysUtils.FindFirst(UTF8ToSys(Path), Attr, Rslt);
  Rslt.Name := SysToUTF8(Rslt.Name);
end;

function FindNextUTF8(var Rslt: TSearchRec): Longint;
begin
  Rslt.Name := UTF8ToSys(Rslt.Name);
  Result := SysUtils.FindNext(Rslt);
  Rslt.Name := SysToUTF8(Rslt.Name);
end;

function ExpandFileNameUtf8(const FileName: string; {const} BaseDir: String = ''): String;
begin
  if BaseDir = '' then
    Result := SysToUTF8(SysUtils.ExpandFileName(UTF8ToSys(FileName)))
  else
    Result := SysToUTF8(SysUtils.ExpandFileName(
      UTF8ToSys(IncludeTrailingPathDelimiter(BaseDir) + FileName)));
end;

function GetCurrentDirUTF8: String;
begin
  Result := SysToUTF8(SysUtils.GetCurrentDir);
end;

procedure GetDirUtf8(DriveNr: Byte; var Dir: String);
begin
  GetDir(DriveNr, Dir);
  Dir := SysToUTF8(Dir);
end;

function FileIsExecutable(const AFilename: string): boolean;
var
  Ext: String;
begin
  // OS/2: check extension
  Ext := LowerCase(ExtractFileExt(AFilename));
  Result := (Ext = '.exe') or (Ext = '.cmd') or (Ext = '.com') or (Ext = '.bat');
end;

procedure CheckIfFileIsExecutable(const AFilename: string);
begin
  // no-op on OS/2
end;

function FileIsSymlink(const AFilename: string): boolean;
begin
  Result := False; // OS/2 doesn't have symlinks
end;

procedure CheckIfFileIsSymlink(const AFilename: string);
begin
  // no-op on OS/2
end;

function FileIsHardLink(const AFilename: string): boolean;
begin
  Result := False;
end;

function FileIsReadable(const AFilename: string): boolean;
begin
  Result := FileExistsUTF8(AFilename);
end;

function FileIsWritable(const AFilename: string): boolean;
begin
  Result := FileExistsUTF8(AFilename) and
            ((FileGetAttrUTF8(AFilename) and faReadOnly) = 0);
end;

function IsUNCPath(const Path: String): Boolean;
begin
  Result := (Length(Path) > 2) and (Path[1] = '\') and (Path[2] = '\');
end;

function ExtractUNCVolume(const Path: String): String;
var
  I, Len: Integer;
begin
  Result := '';
  if not IsUNCPath(Path) then exit;
  I := 3;
  Len := Length(Path);
  while (I <= Len) and (Path[I] <> '\') do Inc(I);
  Inc(I);
  while (I <= Len) and (Path[I] <> '\') do Inc(I);
  Result := Copy(Path, 1, I);
end;

function GetFileDescription(const AFilename: string): string;
begin
  Result := '';
end;

function GetAppConfigDirUTF8(Global: Boolean; Create: boolean = false): string;
begin
  Result := SysToUTF8(SysUtils.GetAppConfigDir(Global));
  if Create and not DirectoryExistsUTF8(Result) then
    CreateDirUTF8(Result);
end;

function GetAppConfigFileUTF8(Global: Boolean; SubDir: boolean;
  CreateDir: boolean): string;
begin
  Result := GetAppConfigDirUTF8(Global, CreateDir);
  if SubDir then
    Result := Result + ExtractFileNameOnly(ParamStr(0)) + PathDelim;
  Result := Result + ExtractFileNameOnly(ParamStr(0)) + '.cfg';
end;

function GetCurrentDirAnsi: String;
begin
  Result := SysUtils.GetCurrentDir;
end;

procedure InitLazFileUtils;
begin
  // Nothing special needed on OS/2
end;

procedure FinalizeLazFileUtils;
begin
  // Nothing to finalize on OS/2
end;
