program graphdemo;
{ fpc264irc Mac test 10: graph unit, Mac (Carbon / Quartz) backend - lines, circles, text in a window for 10 s.
  Results also go to graphdemo.log next to the program. }
uses graph, sysutils;
var gd, gm: smallint; i: integer; t: text;
begin
  Assign(t, 'graphdemo.log'); Rewrite(t);
  gd := Detect; gm := 0;
  InitGraph(gd, gm, '');
  writeln(t, 'InitGraph result ', GraphResult, ' (0 = ok)'); writeln('InitGraph result ', GraphResult, ' (0 = ok)');
  if GraphResult = grOk then
  begin
    writeln(t, 'mode ', GetMaxX + 1, 'x', GetMaxY + 1, ', ', GetMaxColor + 1, ' colours');
    for i := 0 to 15 do
    begin
      SetColor(i);
      Line(0, i * 10, GetMaxX, GetMaxY - i * 10);
      Circle(GetMaxX div 2, GetMaxY div 2, 20 + i * 8);
    end;
    SetColor(14); Rectangle(10, 10, GetMaxX - 10, GetMaxY - 10);
    SetColor(15); OutTextXY(30, 30, 'fpc264irc Mac graph test');
    Sleep(10000);
    CloseGraph;
  end;
  writeln(t, 'done'); Close(t);
end.
