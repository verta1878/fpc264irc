{ fpc264irc graph runtime test — byte, 2026-10-02 (24-bit true colour for ptcgraph: 2026-10-09, graph 3.2.2)
  Build with -dPTC for ptcgraph, -dSDLG for sdlgraph, otherwise graph. Writes RESULT.TXT.
  No parameter: all modes in one run. Parameter 1/2/3(/4): one mode per run (appends). }
program rtest;
uses {$ifdef PTC}ptcgraph{$else}{$ifdef SDLG}sdlgraph{$else}graph{$endif}{$endif};
var f: text;
procedure TryMode(const name: string; gd, gm: smallint);
var r: smallint; {$ifdef PTC} c: LongWord; {$endif}
begin
  InitGraph(gd, gm, '');
  r := GraphResult;
  if r <> grOk then begin writeln(f, name, ' INIT FAIL ', r, ' ', GraphErrorMsg(r)); exit; end;
  SetColor(14); Line(0, 0, 50, 50);
  PutPixel(10, 20, 5);
  SetFillStyle(SolidFill, 3); Bar(60, 60, 80, 80);
  OutTextXY(100, 100, 'fpc264irc');
  writeln(f, name, ' OK ', GetMaxX + 1, 'x', GetMaxY + 1, ' maxcolor=', GetMaxColor,
          ' putpix=', GetPixel(10, 20), ' line=', GetPixel(25, 25), ' bar=', GetPixel(70, 70));
{$ifdef PTC}
  if gd = D24bit then
  begin                        { a 24-bit RGB colour must come back unchanged }
    PutPixel(30, 40, $00FF8040); c := GetPixel(30, 40);
    writeln(f, name, ' truecolor putpix=$', HexStr(c, 8), ' (expected $00FF8040)');
  end;
{$endif}
  CloseGraph;
end;
begin
  assign(f, 'RESULT.TXT');
  if ParamStr(1) = '' then rewrite(f) else append(f);
  if (ParamStr(1) = '') or (ParamStr(1) = '1') then TryMode('VGA-Hi  ', VGA, VGAHi);
  if (ParamStr(1) = '') or (ParamStr(1) = '2') then TryMode('8bit-640', D8bit, m640x480);
  if (ParamStr(1) = '') or (ParamStr(1) = '3') then TryMode('16bit-640', D16bit, m640x480);
{$ifdef PTC}
  if (ParamStr(1) = '') or (ParamStr(1) = '4') then TryMode('24bit-640', D24bit, m640x480);
  if (ParamStr(1) = '') or (ParamStr(1) = '4') then writeln(f, 'DONE');
{$else}
  if (ParamStr(1) = '') or (ParamStr(1) = '3') then writeln(f, 'DONE');
{$endif}
  close(f);
end.
