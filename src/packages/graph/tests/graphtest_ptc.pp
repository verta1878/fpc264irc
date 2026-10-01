{ fpc264irc ptcgraph compile test — byte, 2026-10-01
  Use with: ptcgraph unit (x86_64-linux only)
  Compile: ppcx64 -Tlinux -n -s -Fu<units dir> graphtest_ptc.pp }
program graphtest_ptc;
uses ptcgraph;
var
  gd, gm: SmallInt;
begin
  gd := Detect;
  InitGraph(gd, gm, '');
  if GraphResult <> grOk then
  begin
    WriteLn('InitGraph failed: ', GraphErrorMsg(GraphResult));
    Halt(1);
  end;
  SetColor(White);
  Line(0, 0, GetMaxX, GetMaxY);
  Line(0, GetMaxY, GetMaxX, 0);
  Rectangle(10, 10, GetMaxX - 10, GetMaxY - 10);
  PutPixel(GetMaxX div 2, GetMaxY div 2, LightRed);
  SetColor(Yellow);
  OutTextXY(20, 20, 'fpc264irc ptcgraph test');
  CloseGraph;
  WriteLn('Graph test OK');
end.
