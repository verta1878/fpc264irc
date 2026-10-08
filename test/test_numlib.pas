program test_numlib;
{ fpc264irc i386-win32 numlib test (2026-10-08): solve a 3x3 linear system (sle) and fit a cubic spline (spl) }
uses typ, sle, spl;
var a: array[1..3,1..3] of ArbFloat; b, x: array[1..3] of ArbFloat; ca: ArbFloat; term: ArbInt;
    xyc: array[1..5] of record x, y, w: ArbFloat end; i: integer;
begin
  a[1,1]:=2; a[1,2]:=1; a[1,3]:=1;  b[1]:=5;
  a[2,1]:=1; a[2,2]:=3; a[2,3]:=2;  b[2]:=10;
  a[3,1]:=1; a[3,2]:=0; a[3,3]:=0;  b[3]:=1;
  slegen(3, 3, a[1,1], b[1], x[1], ca, term);
  writeln('slegen term=', term, '  x = ', x[1]:0:4, ' ', x[2]:0:4, ' ', x[3]:0:4, '   (expected 1 3 0)');
  for i:=1 to 5 do begin xyc[i].x:=i-1; xyc[i].y:=sqr(i-1); end;
  spl1nati(5, xyc[1].x, term);
  writeln('spl1nati term=', term, '  spline(2.5) = ', spl1pprv(5, xyc[1].x, 2.5, term):0:4, '   (x^2 -> about 6.25)');
end.
