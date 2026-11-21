program rec2s;
{ fpc264irc BUG-053 (OPEN) repro, i8086 far data: copying a record with two AnsiString fields corrupts memory.
  medium (near data): all 5 lines. large / huge / the default folder (huge): only "1 set", then it hangs.
  ppcross8086 -Tmsdos -Wmlarge -XX -Fubin/units/i8086-msdos-large rec2s.pas; run in DOSBox; read REC2S.TXT
  (written line by line with Close, so it survives a hang).  byte, 2026-11-21 }
{$mode objfpc}{$H+}
type TR = record A, D: String; end;
procedure Mark(const m: string);
var f: text;
begin Assign(f, 'REC2S.TXT'); Append(f); writeln(f, m); Close(f); end;
var f: text; u, v: TR; h: string;
begin
  Assign(f, 'REC2S.TXT'); Rewrite(f); Close(f);
  v.A := 'x'; v.D := 'host'; Mark('1 set');
  u := v; Mark('2 copied');
  h := u.D; Mark('3 ' + h);
  writeln(h); Mark('4 writeln ok');
  Finalize(u); Mark('5 finalized');
end.
