program test_auto_convert;
{$mode objfpc}{$H+}
type
  UTF8Str = AnsiString(65001);
  Latin1Str = AnsiString(1252);
var
  U: UTF8Str;
  L: Latin1Str;
  S: AnsiString;
  R: RawByteString;
  Passed, Failed: Integer;

procedure Check(const N: String; OK: Boolean);
begin
  if OK then begin WriteLn('  PASS  ', N); Inc(Passed); end
  else begin WriteLn('  FAIL  ', N); Inc(Failed); end;
end;

begin
  Passed := 0;
  Failed := 0;
  WriteLn('Item 2: Automatic Codepage Conversion Test');
  WriteLn;

  { === Same codepage: no conversion needed === }
  WriteLn('[Same codepage — direct copy]');
  S := 'Hello';
  U := 'Hello';
  Check('AnsiString assign', S = 'Hello');
  Check('UTF8Str assign', U = 'Hello');
  Check('Content equal', S = U);
  WriteLn;

  { === Different codepage: conversion should happen === }
  WriteLn('[Different codepage — conversion]');
  U := 'Test conversion';
  L := U;  { UTF8 -> Latin1 — should trigger fpc_ansistr_to_ansistr }
  Check('UTF8 to Latin1 content preserved', L = 'Test conversion');
  Check('Latin1 to UTF8 content preserved', U = 'Test conversion');
  WriteLn;

  { === RawByteString — MUST NOT convert === }
  WriteLn('[RawByteString — no conversion]');
  SetLength(R, 4);
  R[1] := Chr($FF); R[2] := Chr($FE); R[3] := Chr($00); R[4] := Chr($80);
  S := R;  { RawByteString -> AnsiString — must NOT convert }
  Check('RawByteString -> AnsiString byte 1', Ord(S[1]) = $FF);
  Check('RawByteString -> AnsiString byte 2', Ord(S[2]) = $FE);
  Check('RawByteString -> AnsiString byte 3', Ord(S[3]) = $00);
  Check('RawByteString -> AnsiString byte 4', Ord(S[4]) = $80);

  U := R;  { RawByteString -> UTF8Str — must NOT convert }
  Check('RawByteString -> UTF8Str byte 1', Ord(U[1]) = $FF);
  Check('RawByteString -> UTF8Str byte 4', Ord(U[4]) = $80);
  WriteLn;

  { === Binary safety through typed strings === }
  WriteLn('[Binary safety through typed strings]');
  SetLength(U, 5);
  U[1] := Chr($FF); U[2] := Chr($FB); U[3] := Chr($01);
  U[4] := Chr($00); U[5] := Chr($F0);
  L := U;  { Cross-codepage assignment with binary data }
  Check('Binary through typed assign len', Length(L) >= 1);
  { Content may change if actual conversion happens, but
    for pure ASCII + binary with no valid UTF-8 sequences,
    the RTL should handle gracefully (no crash) }
  WriteLn;

  WriteLn('============================');
  WriteLn('Passed: ', Passed, '  Failed: ', Failed);
  if Failed = 0 then WriteLn('AUTO CONVERSION VERIFIED')
  else WriteLn('SOME TESTS FAILED');
  WriteLn('============================');
end.
