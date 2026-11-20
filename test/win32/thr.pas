{ test/win32/thr.pas - threads + TryEnterCriticalSection (BUG-050) - byte, 2026-11-20 }
program thr;
{$mode objfpc}
uses sysutils;
var cs: TRTLCriticalSection; counter: longint = 0; holding: longint = 0; release: longint = 0; bad: integer = 0;
function worker(p: pointer): ptrint;
var i: integer;
begin
  for i := 1 to 100000 do begin EnterCriticalSection(cs); inc(counter); LeaveCriticalSection(cs); end;
  result := 0;
end;
function holder(p: pointer): ptrint;
begin
  EnterCriticalSection(cs); holding := 1;
  while release = 0 do sleep(1);
  LeaveCriticalSection(cs); holding := 0; result := 0;
end;
var t1, t2, t3: TThreadID; r: longint;
begin
  InitCriticalSection(cs);
  t1 := BeginThread(@worker); t2 := BeginThread(@worker);
  WaitForThreadTerminate(t1, 0); WaitForThreadTerminate(t2, 0);
  if counter = 200000 then writeln('counter OK 200000') else begin writeln('counter BAD ', counter); inc(bad); end;
  r := TryEnterCriticalSection(cs);
  if r <> 0 then begin writeln('try free OK'); LeaveCriticalSection(cs); end else begin writeln('try free BAD'); inc(bad); end;
  t3 := BeginThread(@holder);
  while holding = 0 do sleep(1);
  r := TryEnterCriticalSection(cs);
  if r = 0 then writeln('try held OK (0)') else begin writeln('try held BAD ', r); inc(bad); LeaveCriticalSection(cs); end;
  release := 1; WaitForThreadTerminate(t3, 0);
  r := TryEnterCriticalSection(cs);
  if r <> 0 then begin writeln('try after release OK'); LeaveCriticalSection(cs); end else begin writeln('try after release BAD'); inc(bad); end;
  DoneCriticalSection(cs);
  if bad = 0 then writeln('ALL OK') else writeln('FAILED ', bad);
end.
