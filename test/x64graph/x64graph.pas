program x64graph;
{ fpc264irc test/x64graph: the same graph program on every x86_64 target - byte, 2026-10-16. See README.md.
  "uses graph": compiles on x86_64-win64 and x86_64-freebsd; on x86_64-linux and x86_64-darwin the compiler stops
  with a message that says what to use instead (x64ptcgraph.pas / the i386-darwin build). }
uses graph, sysutils;
var gd, gm: smallint; i: integer;
begin
  gd := Detect; gm := 0;
  InitGraph(gd, gm, '');
  writeln('InitGraph result ', GraphResult, ' (0 = ok)');
  if GraphResult = grOk then
  begin
    writeln('mode ', GetMaxX + 1, 'x', GetMaxY + 1, ', ', GetMaxColor + 1, ' colours');
    for i := 0 to 15 do
    begin
      SetColor(i);
      Line(0, i * 10, GetMaxX, GetMaxY - i * 10);
      Circle(GetMaxX div 2, GetMaxY div 2, 20 + i * 8);
    end;
    SetColor(15); OutTextXY(30, 30, 'fpc264irc x64graph test');
    Sleep(3000);
    CloseGraph;
  end;
  writeln('done');
end.
