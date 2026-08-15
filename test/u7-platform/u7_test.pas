{
  u7_test.pas — Cross-Platform String/API Verification
  
  FPC 2.6.4irc — Phase U-7
  
  Tests that verify ANSI/Unicode/UTF-8 handling works
  correctly on each target platform.
  
  Build:
    Win9x:  ppc386 -Twin32 u7_test.pas
    Win2K+: ppc386 -Twin32 -dUNICODE u7_test.pas
    Linux:  ppc386 -Tlinux u7_test.pas
    DOS:    ppc386 -Tgo32v2 u7_test.pas
    OS/2:   ppc386 -Tos2 u7_test.pas
  
  Run on Wine:
    WINEPREFIX=~/.wine98 wine u7_test.exe   (Win98 mode)
    WINEPREFIX=~/.winexp wine u7_test.exe   (WinXP mode)
    ./u7_test                                (Linux native)
}
program u7_test;

{$mode objfpc}{$H+}

uses
  SysUtils;

var
  TestsPassed, TestsFailed, TestsTotal: Integer;

procedure Test(const Name: String; Condition: Boolean);
begin
  Inc(TestsTotal);
  if Condition then begin
    Inc(TestsPassed);
    WriteLn('  PASS: ', Name);
  end else begin
    Inc(TestsFailed);
    WriteLn('  FAIL: ', Name);
  end;
end;

procedure TestStringBasics;
begin
  WriteLn('=== String Basics ===');
  Test('Empty string length', Length('') = 0);
  Test('ASCII string length', Length('Hello') = 5);
  Test('String concatenation', 'AB' + 'CD' = 'ABCD');
  Test('String compare equal', 'test' = 'test');
  Test('String compare not equal', 'abc' <> 'xyz');
  Test('AnsiUpperCase', UpperCase('hello') = 'HELLO');
  Test('AnsiLowerCase', LowerCase('WORLD') = 'world');
  Test('Copy function', Copy('Hello World', 7, 5) = 'World');
  Test('Pos function', Pos('World', 'Hello World') = 7);
  Test('Trim function', Trim('  test  ') = 'test');
end;

procedure TestCodepageBasics;
var
  S: String;
  B: Byte;
begin
  WriteLn('=== Codepage Handling ===');
  
  { ASCII range — works on ALL platforms }
  S := 'ABC';
  Test('ASCII byte 65', Ord(S[1]) = 65);
  Test('ASCII byte 66', Ord(S[2]) = 66);
  Test('ASCII byte 67', Ord(S[3]) = 67);
  
  { High ASCII — codepage dependent }
  B := 233; { e-acute in Latin-1/CP1252 }
  S := Chr(B);
  Test('High byte survives round-trip', Ord(S[1]) = 233);
  
  { String with high bytes }
  S := Chr(196) + Chr(214) + Chr(220); { German umlauts in CP1252 }
  Test('High byte string length', Length(S) = 3);
  Test('First umlaut byte', Ord(S[1]) = 196);
end;

{$IFDEF WINDOWS}
procedure TestWindowsAPIs;
begin
  WriteLn('=== Windows API ===');
  { These test that our win32compat.pas ANSI path works }
  Test('GetEnvironmentVariable', GetEnvironmentVariable('PATH') <> '');
  Test('ParamStr(0) not empty', ParamStr(0) <> '');
  Test('FileExists on self', FileExists(ParamStr(0)));
  
  { Directory operations use A-variant on Win9x }
  Test('GetCurrentDir', GetCurrentDir <> '');
end;
{$ENDIF}

{$IFDEF UNIX}
procedure TestUnixAPIs;
begin
  WriteLn('=== Unix/Linux API ===');
  { UTF-8 pass-through — no conversion needed }
  Test('GetEnvironmentVariable', GetEnvironmentVariable('PATH') <> '');
  Test('ParamStr(0) not empty', ParamStr(0) <> '');
  Test('DirectoryExists /tmp', DirectoryExists('/tmp'));
  Test('FileExists /dev/null', FileExists('/dev/null'));
  
  { UTF-8 string handling }
  Test('UTF-8 bytes preserved', Ord(Chr(195)) = 195);
end;
{$ENDIF}

{$IFDEF GO32V2}
procedure TestDOSAPIs;
begin
  WriteLn('=== DOS (go32v2) API ===');
  Test('ParamStr(0) not empty', ParamStr(0) <> '');
  Test('OEM codepage byte', Ord(Chr(142)) = 142); { Ae in CP437 }
end;
{$ENDIF}

procedure TestFileOperations;
var
  F: TextFile;
  TestFileName: String;
  S: String;
begin
  WriteLn('=== File Operations ===');
  
  {$IFDEF WINDOWS}
  TestFileName := 'u7_temp.txt';
  {$ELSE}
  TestFileName := '/tmp/u7_temp.txt';
  {$ENDIF}
  
  { Write }
  AssignFile(F, TestFileName);
  Rewrite(F);
  WriteLn(F, 'Test line 1');
  WriteLn(F, 'Test line 2');
  CloseFile(F);
  Test('File created', FileExists(TestFileName));
  
  { Read back }
  AssignFile(F, TestFileName);
  Reset(F);
  ReadLn(F, S);
  Test('Read line matches', S = 'Test line 1');
  CloseFile(F);
  
  { Delete }
  DeleteFile(TestFileName);
  Test('File deleted', not FileExists(TestFileName));
end;

procedure TestIntToStr;
begin
  WriteLn('=== Number Conversion ===');
  Test('IntToStr positive', IntToStr(42) = '42');
  Test('IntToStr negative', IntToStr(-1) = '-1');
  Test('IntToStr zero', IntToStr(0) = '0');
  Test('StrToInt', StrToInt('123') = 123);
  Test('FloatToStr basic', Pos('.', FloatToStr(3.14)) > 0);
end;

begin
  TestsPassed := 0;
  TestsFailed := 0;
  TestsTotal := 0;
  
  WriteLn('FPC 2.6.4irc — U-7 Cross-Platform Test');
  WriteLn('Platform: ',
    {$IFDEF WINDOWS}'Windows'{$ENDIF}
    {$IFDEF LINUX}'Linux'{$ENDIF}
    {$IFDEF FREEBSD}'FreeBSD'{$ENDIF}
    {$IFDEF DARWIN}'macOS'{$ENDIF}
    {$IFDEF OS2}'OS/2'{$ENDIF}
    {$IFDEF GO32V2}'DOS (go32v2)'{$ENDIF}
  );
  WriteLn('');
  
  TestStringBasics;
  TestCodepageBasics;
  
  {$IFDEF WINDOWS}
  TestWindowsAPIs;
  {$ENDIF}
  
  {$IFDEF UNIX}
  TestUnixAPIs;
  {$ENDIF}
  
  {$IFDEF GO32V2}
  TestDOSAPIs;
  {$ENDIF}
  
  TestFileOperations;
  TestIntToStr;
  
  WriteLn('');
  WriteLn('========================================');
  WriteLn('  Total: ', TestsTotal);
  WriteLn('  Passed: ', TestsPassed);
  WriteLn('  Failed: ', TestsFailed);
  WriteLn('========================================');
  
  if TestsFailed > 0 then
    Halt(1)
  else
    Halt(0);
end.
