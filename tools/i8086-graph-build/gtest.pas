program gtest;
uses graph;
var f: text;
procedure TryMode(const name: string; gd, gm: smallint);
var r, c1, c2: smallint;
begin
  InitGraph(gd, gm, '');
  r := GraphResult;
  if r <> grOk then begin
    writeln(f, name, ' INIT FAIL ', r, ' ', GraphErrorMsg(r));
    exit;
  end;
  SetColor(14); Line(0, 0, 50, 50);
  PutPixel(10, 20, 5);
  c1 := GetPixel(10, 20);
  c2 := GetPixel(25, 25);
  SetFillStyle(SolidFill, 3); Bar(60, 60, 80, 80);
  writeln(f, name, ' OK ', GetMaxX + 1, 'x', GetMaxY + 1, ' colors=', GetMaxColor + 1,
          ' putpix=', c1, ' line=', c2, ' bar=', GetPixel(70, 70));
  CloseGraph;
end;
begin
  assign(f, 'RESULT.TXT'); rewrite(f);
  TryMode('CGA-C0  ', CGA, CGAC0);
  TryMode('EGA-Hi  ', EGA, EGAHi);
  TryMode('VGA-Hi  ', VGA, VGAHi);
  TryMode('8bit-320', D8bit, m320x200);
  TryMode('8bit-640', D8bit, m640x480);
  TryMode('16bit-640', D16bit, m640x480);
  writeln(f, 'DONE');
  close(f);
end.
