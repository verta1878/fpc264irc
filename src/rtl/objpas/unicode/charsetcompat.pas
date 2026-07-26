unit charsetcompat;
{$mode objfpc}{$H+}
interface
uses charset;

function getmap_cp(cp: Word): punicodemap;
function getascii_buf(c: tunicodechar; p: punicodemap; 
  ABuffer: PAnsiChar; ABufferLen: LongInt): LongInt;
function getunicode_buf(source: PAnsiChar; len: SizeInt; 
  p: punicodemap; dest: pointer): SizeInt;

implementation

function getmap_cp(cp: Word): punicodemap;
var s: string;
begin
  Str(cp, s);
  Result := getmap('cp' + s);
  if Result = nil then
    Result := getmap(s);
end;

function getascii_buf(c: tunicodechar; p: punicodemap;
  ABuffer: PAnsiChar; ABufferLen: LongInt): LongInt;
var s: string;
begin
  s := getascii(c, p);
  if Length(s) = 0 then begin
    if ABufferLen > 0 then ABuffer^ := '?';
    Result := 1;
  end else begin
    if Length(s) > ABufferLen then
      Result := -1
    else begin
      Move(s[1], ABuffer^, Length(s));
      Result := Length(s);
    end;
  end;
end;

function getunicode_buf(source: PAnsiChar; len: SizeInt;
  p: punicodemap; dest: pointer): SizeInt;
var 
  i: SizeInt;
  uc: tunicodechar;
  dp: PWord;
begin
  if dest = nil then begin
    Result := len;  { estimate: 1 unicode char per source char }
    Exit;
  end;
  dp := PWord(dest);
  Result := 0;
  for i := 0 to len - 1 do begin
    uc := getunicode(source[i], p);
    dp^ := Word(uc);
    Inc(dp);
    Inc(Result);
  end;
end;

end.
