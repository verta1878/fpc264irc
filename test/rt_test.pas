{$MODE DELPHI}
program rt_test;
uses SysUtils;
var 
  S, S2: AnsiString;
  SS: String[20];
  I, OK: Integer;
  P: Pointer;
  F: TextFile;
begin
  OK := 0;
  WriteLn('=== fpc264irc Runtime Test Suite ===');
  WriteLn;
  
  { 1: Basic I/O }
  WriteLn('TEST 01: Basic I/O              PASS'); Inc(OK);
  
  { 2: AnsiString length }
  S := 'Hello World';
  Write('TEST 02: AnsiString length      ');
  if Length(S) = 11 then begin WriteLn('PASS'); Inc(OK); end else WriteLn('FAIL');
  
  { 3: Multi-concat (BUG-029) }
  S := 'ABC' + 'DEF' + 'GHI';
  Write('TEST 03: String concat          ');
  if S = 'ABCDEFGHI' then begin WriteLn('PASS'); Inc(OK); end else WriteLn('FAIL');
  
  { 4: Ref counting }
  S := 'RefTest'; S2 := S; S := '';
  Write('TEST 04: Ref counting           ');
  if S2 = 'RefTest' then begin WriteLn('PASS'); Inc(OK); end else WriteLn('FAIL');
  
  { 5: GetMem 64KB }
  GetMem(P, 65536); FillChar(P^, 65536, $AA);
  Write('TEST 05: GetMem 64KB            ');
  if PByte(P)^ = $AA then begin WriteLn('PASS'); Inc(OK); end else WriteLn('FAIL');
  FreeMem(P);
  
  { 6: MaxInt }
  Write('TEST 06: MaxInt                 ');
  if MaxInt = 2147483647 then begin WriteLn('PASS'); Inc(OK); end else WriteLn('FAIL');
  
  { 7: ShortString }
  SS := 'Short';
  Write('TEST 07: ShortString            ');
  if Length(SS) = 5 then begin WriteLn('PASS'); Inc(OK); end else WriteLn('FAIL');
  
  { 8: ShortStr multi-concat }
  SS := 'A' + 'B' + 'C' + 'D';
  Write('TEST 08: ShortStr concat        ');
  if SS = 'ABCD' then begin WriteLn('PASS'); Inc(OK); end else WriteLn('FAIL');
  
  { 9: 100K string stress }
  S := ''; for I := 1 to 100000 do S := S + 'X';
  Write('TEST 09: 100K string build      ');
  if Length(S) = 100000 then begin WriteLn('PASS'); Inc(OK); end else WriteLn('FAIL');
  S := '';
  
  { 10: 10K alloc/free }
  for I := 1 to 10000 do begin GetMem(P, 64); FreeMem(P); end;
  WriteLn('TEST 10: 10K alloc/free         PASS'); Inc(OK);
  
  { 11: IntToStr + concat }
  S2 := '';
  for I := 0 to 99 do S2 := S2 + IntToStr(I) + ',';
  Write('TEST 11: IntToStr loop          ');
  if Pos('99,', S2) > 0 then begin WriteLn('PASS'); Inc(OK); end else WriteLn('FAIL');
  
  { 12: File I/O }
  AssignFile(F, '/tmp/fpcirc_test.tmp');
  Rewrite(F); WriteLn(F, 'test123'); CloseFile(F);
  Reset(F); ReadLn(F, S); CloseFile(F);
  Write('TEST 12: File I/O               ');
  if S = 'test123' then begin WriteLn('PASS'); Inc(OK); end else WriteLn('FAIL');
  DeleteFile('/tmp/fpcirc_test.tmp');
  
  { 13: Large alloc 1MB }
  GetMem(P, 1048576); FillChar(P^, 1048576, $55);
  Write('TEST 13: GetMem 1MB             ');
  if PByte(P)^ = $55 then begin WriteLn('PASS'); Inc(OK); end else WriteLn('FAIL');
  FreeMem(P);
  
  { 14: Deep string copy }
  S := 'BASE';
  for I := 1 to 1000 do begin S2 := S; S := S2 + 'x'; end;
  Write('TEST 14: Deep string copy       ');
  if Length(S) = 1004 then begin WriteLn('PASS'); Inc(OK); end else WriteLn('FAIL len=', Length(S));
  
  { 15: Exception handling }
  Write('TEST 15: Exception handling     ');
  try
    I := 0;
    I := 100 div I;
    WriteLn('FAIL (no exception)');
  except
    WriteLn('PASS'); Inc(OK);
  end;
  
  WriteLn;
  WriteLn('PASSED: ', OK, '/15');
  if OK = 15 then WriteLn('ALL TESTS PASSED')
  else begin WriteLn('SOME TESTS FAILED'); Halt(1); end;
end.
