program test_unicode;
{$mode objfpc}{$H+}
var U:UnicodeString; W:WideString; S:AnsiString; P,F:Integer;
procedure Chk(const N:String;OK:Boolean);
begin if OK then begin WriteLn('  PASS  ',N);Inc(P);end else begin WriteLn('  FAIL  ',N);Inc(F);end;end;
begin P:=0;F:=0;
  U:='Hello Unicode';Chk('assign',Length(U)=13);Chk('content',U='Hello Unicode');
  W:='Wide';Chk('WideString',W='Wide');
  S:='Ansi';U:=UnicodeString(S);Chk('Ansi->Unicode',U='Ansi');
  S:=AnsiString(U);Chk('Unicode->Ansi',S='Ansi');
  U:='AB'+'CD';Chk('concat',U='ABCD');
  U:=Copy(U,2,2);Chk('Copy',U='BC');
  SetLength(U,5);Chk('SetLength',Length(U)=5);
  WriteLn;WriteLn('Passed:',P,' Failed:',F);
  if F=0 then WriteLn('UNICODESTRING VERIFIED') else WriteLn('FAILED');
end.
