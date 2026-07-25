{
  test_string_baseline.pas — AnsiString behavior baseline

  Run BEFORE the codepage backport to capture current behavior.
  Run AFTER to detect regressions.

  Tests:
    - Basic assignment and comparison
    - Concatenation
    - Copy/Insert/Delete/Pos
    - SetLength and length
    - Reference counting (unique)
    - ShortString <-> AnsiString conversion
    - PChar <-> AnsiString conversion
    - Binary data in strings (raw bytes)
    - Val/Str numeric conversion
    - Case conversion

  Build:
    ppc386 test_string_baseline.pas
    or
    ppcx64 test_string_baseline.pas
}
program test_string_baseline;

var
  S1, S2, S3 : AnsiString;
  SS         : ShortString;
  P          : PChar;
  C          : Char;
  I          : Integer;
  Code       : Integer;
  D          : Double;
  Buf        : array[0..255] of Char;
  Passed     : Integer;
  Failed     : Integer;

procedure Check(const Name: String; OK: Boolean);
begin
  if OK then
  begin
    WriteLn('  PASS  ', Name);
    Inc(Passed);
  end
  else
  begin
    WriteLn('  FAIL  ', Name);
    Inc(Failed);
  end;
end;

begin
  Passed := 0;
  Failed := 0;

  WriteLn('FPC 2.6.4irc String Baseline Test');
  WriteLn;

  { === Basic assignment and comparison === }
  WriteLn('[Assignment & Comparison]');
  S1 := 'Hello';
  S2 := 'Hello';
  S3 := 'World';
  Check('assign works', S1 = 'Hello');
  Check('equal strings compare equal', S1 = S2);
  Check('different strings compare not equal', S1 <> S3);
  Check('less than', S1 < S3);
  Check('empty string', '' = '');
  S1 := '';
  Check('assign empty', S1 = '');
  Check('empty length = 0', Length(S1) = 0);
  WriteLn;

  { === Length and SetLength === }
  WriteLn('[Length & SetLength]');
  S1 := 'Test';
  Check('Length(Test) = 4', Length(S1) = 4);
  SetLength(S1, 10);
  Check('SetLength(10) -> Length = 10', Length(S1) = 10);
  Check('SetLength preserves content', (S1[1] = 'T') and (S1[4] = 't'));
  SetLength(S1, 2);
  Check('SetLength(2) truncates', Length(S1) = 2);
  Check('truncated content correct', S1 = 'Te');
  SetLength(S1, 0);
  Check('SetLength(0) = empty', S1 = '');
  WriteLn;

  { === Concatenation === }
  WriteLn('[Concatenation]');
  S1 := 'Hello';
  S2 := ' World';
  S3 := S1 + S2;
  Check('concat two strings', S3 = 'Hello World');
  S3 := S1 + ' ' + S2;
  Check('concat three parts', S3 = 'Hello  World');
  S1 := '';
  S2 := 'Test';
  Check('empty + string', S1 + S2 = 'Test');
  Check('string + empty', S2 + S1 = 'Test');
  Check('empty + empty', S1 + S1 = '');
  WriteLn;

  { === Copy === }
  WriteLn('[Copy]');
  S1 := 'Hello World';
  S2 := Copy(S1, 1, 5);
  Check('Copy(1,5) = Hello', S2 = 'Hello');
  S2 := Copy(S1, 7, 5);
  Check('Copy(7,5) = World', S2 = 'World');
  S2 := Copy(S1, 1, 100);
  Check('Copy past end = full string', S2 = 'Hello World');
  S2 := Copy(S1, 50, 5);
  Check('Copy past length = empty', S2 = '');
  WriteLn;

  { === Pos === }
  WriteLn('[Pos]');
  S1 := 'Hello World Hello';
  Check('Pos(World) = 7', Pos('World', S1) = 7);
  Check('Pos(Hello) = 1', Pos('Hello', S1) = 1);
  Check('Pos(xyz) = 0', Pos('xyz', S1) = 0);
  Check('Pos(char) works', Pos('W', S1) = 7);
  Check('Pos in empty = 0', Pos('x', '') = 0);
  WriteLn;

  { === Insert === }
  WriteLn('[Insert]');
  S1 := 'HelloWorld';
  Insert(' ', S1, 6);
  Check('Insert space at 6', S1 = 'Hello World');
  S1 := 'World';
  Insert('Hello ', S1, 1);
  Check('Insert at beginning', S1 = 'Hello World');
  S1 := 'Hello';
  Insert(' World', S1, 6);
  Check('Insert at end', S1 = 'Hello World');
  WriteLn;

  { === Delete === }
  WriteLn('[Delete]');
  S1 := 'Hello World';
  Delete(S1, 6, 6);
  Check('Delete(6,6) = Hello', S1 = 'Hello');
  S1 := 'Hello World';
  Delete(S1, 1, 6);
  Check('Delete(1,6) = World', S1 = 'World');
  S1 := 'Hello';
  Delete(S1, 1, 5);
  Check('Delete all = empty', S1 = '');
  WriteLn;

  { === ShortString conversion === }
  WriteLn('[ShortString Conversion]');
  SS := 'ShortTest';
  S1 := SS;
  Check('ShortString -> AnsiString', S1 = 'ShortTest');
  S1 := 'AnsiTest';
  SS := S1;
  Check('AnsiString -> ShortString', SS = 'AnsiTest');
  Check('round-trip preserves', S1 = SS);
  WriteLn;

  { === PChar conversion === }
  WriteLn('[PChar Conversion]');
  S1 := 'PCharTest';
  P := PChar(S1);
  Check('PChar(AnsiString) not nil', P <> nil);
  Check('PChar content correct', P[0] = 'P');
  S2 := P;
  Check('PChar -> AnsiString', S2 = 'PCharTest');
  Check('null-terminated', P[9] = #0);
  WriteLn;

  { === Binary data (raw bytes) === }
  WriteLn('[Binary Data]');
  SetLength(S1, 4);
  S1[1] := #0;
  S1[2] := #1;
  S1[3] := #255;
  S1[4] := #128;
  Check('binary length preserved', Length(S1) = 4);
  Check('null byte preserved', Ord(S1[1]) = 0);
  Check('byte 255 preserved', Ord(S1[3]) = 255);
  Check('byte 128 preserved', Ord(S1[4]) = 128);
  S2 := S1;
  Check('binary copy preserves bytes', (Ord(S2[1]) = 0) and (Ord(S2[3]) = 255));
  S3 := S1 + S2;
  Check('binary concat length', Length(S3) = 8);
  Check('binary concat content', (Ord(S3[5]) = 0) and (Ord(S3[7]) = 255));
  WriteLn;

  { === High bytes (ANSI range) === }
  WriteLn('[High Bytes / ANSI]');
  SetLength(S1, 3);
  S1[1] := #$C0;
  S1[2] := #$E9;  { e-acute in Latin-1 }
  S1[3] := #$FC;  { u-umlaut in Latin-1 }
  Check('high bytes preserved', (Ord(S1[1]) = $C0) and (Ord(S1[2]) = $E9));
  S2 := Copy(S1, 2, 1);
  Check('copy high byte', Ord(S2[1]) = $E9);
  Check('high byte length after copy', Length(S2) = 1);
  WriteLn;

  { === Val / Str numeric === }
  WriteLn('[Val / Str]');
  Val('12345', I, Code);
  Check('Val integer', (I = 12345) and (Code = 0));
  Val('3.14', D, Code);
  Check('Val real', (Code = 0));
  Str(42, S1);
  Check('Str integer', S1 = '42');
  Str(3.14:0:2, S1);
  Check('Str real', S1 = '3.14');
  Val('notanumber', I, Code);
  Check('Val invalid -> code <> 0', Code <> 0);
  WriteLn;

  { === Case conversion === }
  WriteLn('[Case Conversion]');
  S1 := 'Hello World';
  Check('lowercase', LowerCase(S1) = 'hello world');
  S2 := S1;
  for I := 1 to Length(S2) do
    if (S2[I] >= 'a') and (S2[I] <= 'z') then
      S2[I] := Chr(Ord(S2[I]) - 32);
  Check('uppercase manual', S2 = 'HELLO WORLD');
  Check('empty lowercase', LowerCase('') = '');
  WriteLn;

  { === StringOfChar === }
  WriteLn('[StringOfChar]');
  S1 := StringOfChar('A', 5);
  Check('StringOfChar(A,5)', S1 = 'AAAAA');
  Check('StringOfChar length', Length(S1) = 5);
  S1 := StringOfChar(#0, 3);
  Check('StringOfChar(#0,3) length', Length(S1) = 3);
  Check('StringOfChar(#0,3) content', Ord(S1[1]) = 0);
  WriteLn;

  { === Unique === }
  WriteLn('[UniqueString]');
  S1 := 'SharedString';
  S2 := S1;  { S2 shares reference with S1 }
  UniqueString(S1);
  S1[1] := 'X';
  Check('UniqueString isolates', S1 <> S2);
  Check('S1 modified', S1[1] = 'X');
  Check('S2 unchanged', S2[1] = 'S');
  WriteLn;

  { === Summary === }
  WriteLn('=============================');
  WriteLn('Passed: ', Passed, '  Failed: ', Failed);
  if Failed = 0 then
    WriteLn('ALL TESTS PASSED')
  else
    WriteLn('SOME TESTS FAILED');
  WriteLn('=============================');

  if Failed > 0 then
    Halt(1);
end.
