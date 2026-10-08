program filetest;
{ fpc264irc Mac test 3: sysutils/classes/dos - files, directory listing, date/time, exceptions }
{$mode objfpc}{$H+}
uses dos, sysutils, classes;
var sl: TStringList; sr: TSearchRec; n: integer;

function FileUtilSize: Int64;
var f: file of byte;
begin
  Assign(f, 'fpctest.txt'); Reset(f); Result := FileSize(f); Close(f);
end;

begin
  writeln('fpc264irc Mac test 3');
  writeln('Now: ', DateTimeToStr(Now));
  writeln('Current dir: ', GetCurrentDir);
  writeln('PATH: ', GetEnvironmentVariable('PATH'));
  sl := TStringList.Create;
  try
    sl.Add('line one'); sl.Add('line two'); sl.Add('line three');
    sl.SaveToFile('fpctest.txt');
    sl.Clear;
    sl.LoadFromFile('fpctest.txt');
    writeln('wrote and read back ', sl.Count, ' lines, file size ', FileUtilSize);
  finally
    sl.Free;
  end;
  n := 0;
  if FindFirst('*.*', faAnyFile, sr) = 0 then
  begin
    repeat
      inc(n);
      if n <= 10 then writeln('  ', sr.Name:30, sr.Size:10);
    until FindNext(sr) <> 0;
    FindClose(sr);
  end;
  writeln(n, ' directory entries');
  DeleteFile('fpctest.txt');
  try
    raise Exception.Create('test exception');
  except
    on E: Exception do writeln('caught: ', E.Message);
  end;
  writeln('test 3 done');
end.
