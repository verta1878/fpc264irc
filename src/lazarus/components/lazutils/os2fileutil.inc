{%MainUnit fileutil.pas}
{ OS/2 implementation of fileutil platform functions }

function ReadAllLinks(const Filename: string;
  ExceptionOnError: boolean): string;
begin
  Result := Filename; // OS/2 doesn't have symlinks
end;

function ExtractShortPathNameUTF8(const FileName: String): String;
begin
  Result := FileName; // OS/2 doesn't have short path names
end;
