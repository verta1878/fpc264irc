{
  test_binary_protocol_safety.pas — Raw wire protocol protection test

  THIS TEST MUST PASS AT ALL TIMES. If it fails, automatic codepage
  conversion is corrupting binary protocol data.

  Context: BBS software (Mystic, etc.) sends and receives raw bytes
  over sockets — telnet IAC sequences, BinkP frames, QWK packets,
  Zmodem blocks, ANSI escape codes with high bytes. These are NOT
  text. They are binary protocol data that happens to live in
  AnsiString variables because that's what Pascal socket APIs use.

  If the codepage system ever silently converts bytes in these
  strings (e.g., treating $C0 as a Latin-1 character and converting
  it to UTF-8 multi-byte), the wire protocol breaks. The connection
  drops. Data corrupts. This test catches that.

  Tests:
    1. Telnet IAC sequences survive string operations
    2. BinkP frame headers survive string operations
    3. High-byte ANSI (CP437 box-drawing) survives
    4. Null bytes in binary data survive
    5. RawByteString never converts
    6. PChar/pointer casts preserve bytes
    7. Copy/concat/insert/delete preserve binary
    8. SetLength preserves binary content
    9. Assignment between AnsiString vars preserves binary
   10. String-to-PChar-to-String round-trip preserves binary

  Build:
    ppc386 test_binary_protocol_safety.pas
    ppcx64 test_binary_protocol_safety.pas
}
program test_binary_protocol_safety;
{$mode objfpc}{$H+}

var
  Passed, Failed : Integer;

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

{ Helper: build a string from raw bytes }
function BytesToStr(const Bytes: array of Byte): AnsiString;
var
  I: Integer;
begin
  SetLength(Result, Length(Bytes));
  for I := 0 to High(Bytes) do
    Result[I + 1] := Chr(Bytes[I]);
end;

{ Helper: verify string matches expected bytes }
function VerifyBytes(const S: AnsiString; const Expected: array of Byte): Boolean;
var
  I: Integer;
begin
  Result := False;
  if Length(S) <> Length(Expected) then
    Exit;
  for I := 0 to High(Expected) do
    if Ord(S[I + 1]) <> Expected[I] then
      Exit;
  Result := True;
end;

var
  S1, S2, S3 : AnsiString;
  R          : RawByteString;
  P          : PChar;
  Buf        : array[0..255] of Byte;
  I          : Integer;

begin
  Passed := 0;
  Failed := 0;

  WriteLn('FPC 2.6.4irc Binary Protocol Safety Test');
  WriteLn('=========================================');
  WriteLn;

  { === Telnet IAC sequences === }
  { IAC = $FF, IAC DO ECHO = $FF $FD $01 }
  WriteLn('[Telnet IAC Sequences]');
  S1 := BytesToStr([$FF, $FD, $01]);  { IAC DO ECHO }
  Check('IAC DO ECHO preserved',
    VerifyBytes(S1, [$FF, $FD, $01]));
  Check('IAC byte = $FF', Ord(S1[1]) = $FF);

  S2 := BytesToStr([$FF, $FB, $03]);  { IAC WILL SGA }
  S3 := S1 + S2;
  Check('IAC concat preserves', Length(S3) = 6);
  Check('IAC concat byte 1 = $FF', Ord(S3[1]) = $FF);
  Check('IAC concat byte 4 = $FF', Ord(S3[4]) = $FF);
  Check('IAC concat byte 5 = $FB', Ord(S3[5]) = $FB);

  { IAC SE (end of subnegotiation) }
  S1 := BytesToStr([$FF, $FA, $18, $01, $41, $4E, $53, $49, $FF, $F0]);
  Check('IAC subneg full sequence', Length(S1) = 10);
  Check('IAC subneg start $FF $FA', (Ord(S1[1]) = $FF) and (Ord(S1[2]) = $FA));
  Check('IAC subneg end $FF $F0', (Ord(S1[9]) = $FF) and (Ord(S1[10]) = $F0));
  WriteLn;

  { === BinkP frame header === }
  { BinkP: 2-byte length header + data, MSB is command flag }
  WriteLn('[BinkP Frame Headers]');
  S1 := BytesToStr([$80, $0D]);  { Command frame, 13 bytes }
  S1 := S1 + 'M_NUL Hello';    { Payload }
  Check('BinkP header preserved', Ord(S1[1]) = $80);
  Check('BinkP length byte', Ord(S1[2]) = $0D);
  Check('BinkP payload starts at 3', S1[3] = 'M');
  Check('BinkP total length', Length(S1) = 13);

  { Data frame with high bytes }
  S2 := BytesToStr([$00, $04, $FE, $ED, $FA, $CE]);
  Check('BinkP data frame preserved',
    VerifyBytes(S2, [$00, $04, $FE, $ED, $FA, $CE]));
  WriteLn;

  { === ANSI with CP437 box-drawing === }
  { CP437 box chars: $C4=─ $B3=│ $DA=┌ $BF=┐ $C0=└ $D9=┘ }
  WriteLn('[CP437 Box Drawing / High Bytes]');
  S1 := BytesToStr([$DA, $C4, $C4, $C4, $BF]);  { ┌───┐ }
  Check('CP437 top border preserved',
    VerifyBytes(S1, [$DA, $C4, $C4, $C4, $BF]));

  S2 := BytesToStr([$B3, $20, $20, $20, $B3]);  { │   │ }
  Check('CP437 side border preserved',
    VerifyBytes(S2, [$B3, $20, $20, $20, $B3]));

  { Full high-byte range }
  SetLength(S1, 128);
  for I := 0 to 127 do
    S1[I + 1] := Chr(128 + I);
  Check('All high bytes $80-$FF preserved (128 bytes)',
    (Ord(S1[1]) = 128) and (Ord(S1[64]) = 191) and (Ord(S1[128]) = 255));
  WriteLn;

  { === Null bytes === }
  WriteLn('[Null Bytes in Binary Data]');
  S1 := BytesToStr([$00, $00, $00, $00]);
  Check('4 null bytes length', Length(S1) = 4);
  Check('null bytes are zero', (Ord(S1[1]) = 0) and (Ord(S1[4]) = 0));

  S2 := BytesToStr([$41, $00, $42, $00, $43]);
  Check('interleaved nulls length', Length(S2) = 5);
  Check('interleaved nulls content',
    (S2[1] = 'A') and (Ord(S2[2]) = 0) and
    (S2[3] = 'B') and (Ord(S2[4]) = 0) and (S2[5] = 'C'));

  S3 := S1 + S2;
  Check('concat with nulls length', Length(S3) = 9);
  Check('concat with nulls content', (Ord(S3[1]) = 0) and (S3[5] = 'A'));
  WriteLn;

  { === RawByteString never converts === }
  WriteLn('[RawByteString Protection]');
  R := BytesToStr([$FF, $FE, $FD, $FC, $00, $01, $80, $7F]);
  Check('RawByteString preserves all bytes',
    VerifyBytes(AnsiString(R), [$FF, $FE, $FD, $FC, $00, $01, $80, $7F]));

  S1 := R;  { RawByteString -> AnsiString }
  Check('RawByteString -> AnsiString preserves',
    VerifyBytes(S1, [$FF, $FE, $FD, $FC, $00, $01, $80, $7F]));

  R := S1;  { AnsiString -> RawByteString }
  Check('AnsiString -> RawByteString preserves',
    VerifyBytes(AnsiString(R), [$FF, $FE, $FD, $FC, $00, $01, $80, $7F]));
  WriteLn;

  { === PChar / pointer casts === }
  WriteLn('[PChar / Pointer Casts]');
  S1 := BytesToStr([$48, $FF, $00, $FE, $65]);
  P := PChar(S1);
  Check('PChar cast byte 0', Ord(P[0]) = $48);
  Check('PChar cast byte 1 ($FF)', Ord(P[1]) = $FF);
  { Note: PChar stops at null, but pointer access works }
  Check('Pointer access past null', Ord(PByte(Pointer(S1))[2]) = $00);
  Check('Pointer access byte 3', Ord(PByte(Pointer(S1))[3]) = $FE);

  { Simulate socket recv: write to buffer, then to string }
  for I := 0 to 7 do
    Buf[I] := $F0 + I;
  SetLength(S2, 8);
  Move(Buf[0], S2[1], 8);
  Check('Buffer->String preserves',
    VerifyBytes(S2, [$F0, $F1, $F2, $F3, $F4, $F5, $F6, $F7]));

  { Simulate socket send: string to buffer }
  FillChar(Buf, SizeOf(Buf), 0);
  Move(S2[1], Buf[0], Length(S2));
  Check('String->Buffer preserves',
    (Buf[0] = $F0) and (Buf[7] = $F7));
  WriteLn;

  { === Copy/Insert/Delete on binary === }
  WriteLn('[Copy/Insert/Delete on Binary]');
  S1 := BytesToStr([$FF, $FE, $FD, $FC, $FB, $FA]);
  S2 := Copy(S1, 2, 3);
  Check('Copy binary', VerifyBytes(S2, [$FE, $FD, $FC]));

  S1 := BytesToStr([$AA, $BB, $CC]);
  Insert(BytesToStr([$DD, $EE]), S1, 2);
  Check('Insert binary', VerifyBytes(S1, [$AA, $DD, $EE, $BB, $CC]));

  S1 := BytesToStr([$AA, $BB, $CC, $DD, $EE]);
  Delete(S1, 2, 2);
  Check('Delete binary', VerifyBytes(S1, [$AA, $DD, $EE]));
  WriteLn;

  { === SetLength preserves binary === }
  WriteLn('[SetLength on Binary]');
  S1 := BytesToStr([$DE, $AD, $BE, $EF]);
  SetLength(S1, 6);
  Check('SetLength extend preserves', (Ord(S1[1]) = $DE) and (Ord(S1[4]) = $EF));
  SetLength(S1, 2);
  Check('SetLength truncate preserves', (Ord(S1[1]) = $DE) and (Ord(S1[2]) = $AD));
  WriteLn;

  { === Assignment between variables === }
  WriteLn('[Assignment Between Variables]');
  S1 := BytesToStr([$CA, $FE, $BA, $BE]);
  S2 := S1;
  Check('Assignment preserves', VerifyBytes(S2, [$CA, $FE, $BA, $BE]));
  S1[1] := Chr($00);  { Modify S1 after UniqueString }
  Check('Original modified', Ord(S1[1]) = $00);
  Check('Copy unchanged', Ord(S2[1]) = $CA);
  WriteLn;

  { === String-to-PChar-to-String round-trip === }
  WriteLn('[PChar Round-Trip]');
  S1 := BytesToStr([$48, $65, $6C, $6C, $6F]);  { "Hello" }
  P := PChar(S1);
  S2 := P;  { PChar -> AnsiString }
  Check('PChar round-trip', S2 = 'Hello');
  Check('PChar round-trip length', Length(S2) = 5);
  WriteLn;

  { === Zmodem-style block === }
  WriteLn('[Zmodem-Style Binary Block]');
  { ZDLE (CAN) = $18, ZPAD = $2A, ZDLE-encoded data }
  S1 := BytesToStr([$2A, $2A, $18, $42,   { ZPAD ZPAD ZDLE 'B' }
                    $30, $30, $30, $30,   { type bytes }
                    $30, $30, $30, $30,   { CRC }
                    $0D, $0A, $11]);      { CR LF XON }
  Check('Zmodem block length', Length(S1) = 15);
  Check('Zmodem ZPAD preserved', Ord(S1[1]) = $2A);
  Check('Zmodem ZDLE preserved', Ord(S1[3]) = $18);
  Check('Zmodem CR preserved', Ord(S1[13]) = $0D);
  Check('Zmodem XON preserved', Ord(S1[15]) = $11);
  WriteLn;

  { === Summary === }
  WriteLn('=============================================');
  WriteLn('Passed: ', Passed, '  Failed: ', Failed);
  if Failed = 0 then
    WriteLn('ALL TESTS PASSED — BINARY PROTOCOL DATA SAFE')
  else
    WriteLn('*** FAILED — BINARY PROTOCOL DATA AT RISK ***');
  WriteLn('=============================================');

  if Failed > 0 then
    Halt(1);
end.
