{ Version Information reader — Delphi VCL compatibility unit }
unit VerInfo;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils
  {$IFDEF WINDOWS}, Windows{$ENDIF};

type
  TFileVersionInfo = class
  private
    FFileName: string;
    FFileVersion: string;
    FProductVersion: string;
    FCompanyName: string;
    FFileDescription: string;
    FProductName: string;
    FInternalName: string;
    FOriginalFilename: string;
    FLegalCopyright: string;
    FValid: Boolean;
    procedure ReadVersionInfo;
  public
    constructor Create(const AFileName: string);
    property FileName: string read FFileName;
    property FileVersion: string read FFileVersion;
    property ProductVersion: string read FProductVersion;
    property CompanyName: string read FCompanyName;
    property FileDescription: string read FFileDescription;
    property ProductName: string read FProductName;
    property InternalName: string read FInternalName;
    property OriginalFilename: string read FOriginalFilename;
    property LegalCopyright: string read FLegalCopyright;
    property Valid: Boolean read FValid;
  end;

implementation

constructor TFileVersionInfo.Create(const AFileName: string);
begin
  inherited Create;
  FFileName := AFileName;
  FValid := False;
  ReadVersionInfo;
end;

procedure TFileVersionInfo.ReadVersionInfo;
{$IFDEF WINDOWS}
var
  VerSize, Handle: DWORD;
  VerBuf: Pointer;
  VerData: Pointer;
  VerLen: UINT;

  function QueryValue(const Name: string): string;
  var
    P: PChar;
    Len: UINT;
  begin
    Result := '';
    if VerQueryValueA(VerBuf, PChar('\StringFileInfo\040904E4\' + Name), @P, @Len) then
      Result := P;
  end;

begin
  VerSize := GetFileVersionInfoSizeA(PChar(FFileName), Handle);
  if VerSize = 0 then Exit;
  GetMem(VerBuf, VerSize);
  try
    if not GetFileVersionInfoA(PChar(FFileName), Handle, VerSize, VerBuf) then Exit;
    FCompanyName := QueryValue('CompanyName');
    FFileDescription := QueryValue('FileDescription');
    FFileVersion := QueryValue('FileVersion');
    FProductName := QueryValue('ProductName');
    FProductVersion := QueryValue('ProductVersion');
    FInternalName := QueryValue('InternalName');
    FOriginalFilename := QueryValue('OriginalFilename');
    FLegalCopyright := QueryValue('LegalCopyright');
    FValid := True;
  finally
    FreeMem(VerBuf);
  end;
end;
{$ELSE}
begin
  // Version info only available on Windows
end;
{$ENDIF}

end.
