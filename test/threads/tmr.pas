program tmr;
{ fptimer test (BUG-051) - byte, 2026-11-20 }
{$mode objfpc}{$H+}
uses {$ifdef unix}cthreads,{$endif} classes, sysutils, fptimer;
type TH = class procedure Tick(Sender: TObject); end;
var n: integer = 0; t: TFPTimer; h: TH; st: TDateTime;
procedure TH.Tick(Sender: TObject); begin inc(n); end;
begin
  h := TH.Create; t := TFPTimer.Create(nil); t.Interval := 50; t.OnTimer := @h.Tick; t.Enabled := true;
  st := Now; while (Now - st) * 86400000 < 600 do begin CheckSynchronize(10); end;
  t.Enabled := false; t.Free; h.Free;
  if n >= 3 then writeln('ticks ', n, ' ALL OK') else writeln('ticks ', n, ' FAILED');
end.
