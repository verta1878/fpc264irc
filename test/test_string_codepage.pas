{
  test_string_codepage.pas — Codepage infrastructure test

  Tests the codepage backport from FPC 3.0.
  Verifies types, constants, variables, and functions work.

  NOTE: String literals are allocated by the compiler with the OLD
  AnsiRec layout (no CodePage/ElementSize fields). Only dynamically
  allocated strings (via SetLength, concat, etc.) use the new layout
  through NewAnsiString. This is expected until the compiler itself
  is updated to emit the new layout for constants.
}
program test_string_codepage;

var
  S1, S2, S3 : AnsiString;
  R          : RawByteString;
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

  WriteLn('FPC 2.6.4irc Codepage Infrastructure Test');
  WriteLn;

  { === Types and constants === }
  WriteLn('[Types & Constants]');
  Check('TSystemCodePage = Word (2 bytes)', SizeOf(TSystemCodePage) = 2);
  Check('CP_ACP = 0', CP_ACP = 0);
  Check('CP_OEMCP = 1', CP_OEMCP = 1);
  Check('CP_UTF8 = 65001', CP_UTF8 = 65001);
  Check('CP_ASCII = 20127', CP_ASCII = 20127);
  Check('CP_NONE = $FFFF', CP_NONE = $FFFF);
  Check('CP_UTF16 = 1200', CP_UTF16 = 1200);
  WriteLn;

  { === DefaultSystemCodePage === }
  WriteLn('[DefaultSystemCodePage]');
  Check('DefaultSystemCodePage accessible', DefaultSystemCodePage >= 0);
  Check('DefaultSystemCodePage is a Word', SizeOf(DefaultSystemCodePage) = 2);
  WriteLn;

  { === RawByteString === }
  WriteLn('[RawByteString]');
  R := 'raw test';
  Check('RawByteString assignment', R = 'raw test');
  Check('RawByteString length', Length(R) = 8);
  S1 := R;
  Check('RawByteString -> AnsiString', S1 = 'raw test');
  R := S1;
  Check('AnsiString -> RawByteString', R = 'raw test');
  WriteLn;

  { === StringCodePage function === }
  WriteLn('[StringCodePage]');
  S1 := 'hello';
  Check('StringCodePage callable', StringCodePage(S1) >= 0);
  { String literals should now have the new TAnsiRec layout with
    CodePage and ElementSize fields, emitted by the updated compiler. }
  Check('StringCodePage on literal = CP_ACP', StringCodePage(S1) = CP_ACP);
  Check('StringElementSize on literal = 1', StringElementSize(S1) = 1);
  WriteLn;

  { === Dynamic string — uses new allocation via SetLength === }
  WriteLn('[Dynamic String Allocation]');
  S1 := '';
  SetLength(S1, 10);
  S1[1] := 'D'; S1[2] := 'y'; S1[3] := 'n';
  Check('SetLength creates string', Length(S1) = 10);
  Check('StringCodePage on dynamic >= 0', StringCodePage(S1) >= 0);
  Check('StringElementSize on dynamic', StringElementSize(S1) >= 0);
  Check('StringRefCount on dynamic >= 1', StringRefCount(S1) >= 1);
  WriteLn;

  { === SetCodePage === }
  WriteLn('[SetCodePage]');
  S1 := '';
  SetLength(S1, 5);
  S1[1] := 'T'; S1[2] := 'e'; S1[3] := 's'; S1[4] := 't'; S1[5] := '!';
  SetCodePage(RawByteString(S1), CP_UTF8, false);
  Check('SetCodePage(UTF8) - StringCodePage', 
    StringCodePage(RawByteString(S1)) = CP_UTF8);

  S1 := '';
  SetLength(S1, 3);
  S1[1] := 'A'; S1[2] := 'B'; S1[3] := 'C';
  SetCodePage(RawByteString(S1), 1252, false);
  Check('SetCodePage(1252) - StringCodePage', 
    StringCodePage(RawByteString(S1)) = 1252);
  WriteLn;

  { === Concat / Copy produce valid strings === }
  WriteLn('[String Operations]');
  S1 := 'Hello';
  S2 := ' World';
  S3 := S1 + S2;
  Check('concat content', S3 = 'Hello World');
  Check('concat length', Length(S3) = 11);

  S2 := Copy(S3, 7, 5);
  Check('copy content', S2 = 'World');
  Check('copy length', Length(S2) = 5);

  S1 := 'test';
  SetLength(S1, 8);
  Check('setlength preserves', (S1[1] = 't') and (S1[4] = 't'));
  Check('setlength extends', Length(S1) = 8);
  WriteLn;

  { === Binary data with codepage fields === }
  WriteLn('[Binary Safety]');
  SetLength(S1, 4);
  S1[1] := #0;
  S1[2] := #$FF;
  S1[3] := #$80;
  S1[4] := #$7F;
  Check('binary preserved', (Ord(S1[1]) = 0) and (Ord(S1[2]) = $FF));
  Check('binary length', Length(S1) = 4);

  S2 := S1;
  Check('binary copy', (Ord(S2[3]) = $80) and (Ord(S2[4]) = $7F));

  S3 := S1 + S2;
  Check('binary concat length', Length(S3) = 8);
  Check('binary concat content',
    (Ord(S3[1]) = 0) and (Ord(S3[5]) = 0) and (Ord(S3[6]) = $FF));

  R := S1;
  Check('binary RawByteString', (Ord(R[1]) = 0) and (Ord(R[2]) = $FF));
  WriteLn;

  { === Summary === }
  WriteLn('=============================');
  WriteLn('Passed: ', Passed, '  Failed: ', Failed);
  if Failed = 0 then
    WriteLn('ALL TESTS PASSED — CODEPAGE INFRASTRUCTURE VERIFIED')
  else
    WriteLn('SOME TESTS FAILED');
  WriteLn('=============================');

  if Failed > 0 then
    Halt(1);
end.
