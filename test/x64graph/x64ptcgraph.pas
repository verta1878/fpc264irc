program x64ptcgraph;
{ fpc264irc test/x64graph: the fix for x86_64-linux - byte, 2026-10-16. See README.md.
  The same program as x64graph.pas with one line changed: "uses ptcgraph" instead of "uses graph".
  ptcgraph has the same routines as graph (X11 through ptc); builds on x86_64-linux and x86_64-win64. }
uses ptcgraph, sysutils;
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
    SetColor(15); OutTextXY(30, 30, 'fpc264irc x64ptcgraph test');
    Sleep(3000);
    CloseGraph;
  end;
  writeln('done');
end.
