program thr2;
{ test/threads/thr2.pas - threads on every target (BUG-051): 4 TThreads x 100,000 under TCriticalSection, RTL critical
  section, InterLockedIncrement; threadvar; TryEnterCriticalSection; TEvent; RTLEvent - byte, 2026-11-20 }
{$mode objfpc}{$H+}
uses {$ifdef unix}cthreads,{$endif} classes, sysutils, syncobjs;
const N = 4; LOOPS = 100000;
var cs: TCriticalSection; rcs: TRTLCriticalSection; ev: TEvent; rtlev: PRTLEvent;
    cnt1, cnt2, cnt3: longint; bad: integer = 0;
threadvar tv: longint;
type TW = class(TThread) id: integer; tvok: boolean; procedure Execute; override; end;
procedure TW.Execute;
var i: integer;
begin
  tv := id * 1000;
  for i := 1 to LOOPS do begin
    cs.Enter; inc(cnt1); cs.Leave;
    EnterCriticalSection(rcs); inc(cnt2); LeaveCriticalSection(rcs);
    InterLockedIncrement(cnt3);
  end;
  tvok := tv = id * 1000;
end;
procedure chk(ok: boolean; const s: string); begin if ok then writeln('OK   ', s) else begin writeln('BAD  ', s); inc(bad); end; end;
var t: array[1..N] of TW; i: integer; s: string; r: TWaitResult;
begin
  cs := TCriticalSection.Create; InitCriticalSection(rcs);
  for i := 1 to N do begin t[i] := TW.Create(true); t[i].id := i; t[i].FreeOnTerminate := false; end;
  tv := 7;
  for i := 1 to N do t[i].Start;
  for i := 1 to N do t[i].WaitFor;
  chk(cnt1 = N*LOOPS, 'TCriticalSection ' + IntToStr(cnt1));
  chk(cnt2 = N*LOOPS, 'RTL critical section ' + IntToStr(cnt2));
  chk(cnt3 = N*LOOPS, 'InterLockedIncrement ' + IntToStr(cnt3));
  for i := 1 to N do chk(t[i].tvok, 'threadvar thread ' + IntToStr(i));
  chk(tv = 7, 'threadvar main');
  chk(TryEnterCriticalSection(rcs) <> 0, 'TryEnter free'); LeaveCriticalSection(rcs);
  ev := TEvent.Create(nil, true, false, '');
  r := ev.WaitFor(50); chk(r = wrTimeout, 'TEvent timeout');
  ev.SetEvent; r := ev.WaitFor(1000); chk(r = wrSignaled, 'TEvent signaled');
  rtlev := RTLEventCreate; RTLEventSetEvent(rtlev); RTLEventWaitFor(rtlev, 1000); RTLEventDestroy(rtlev); chk(true, 'RTLEvent');
  for i := 1 to N do t[i].Free;
  ev.Free; cs.Free; DoneCriticalSection(rcs);
  if bad = 0 then writeln('ALL OK') else writeln('FAILED ', bad);
end.
