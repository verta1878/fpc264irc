{
  threadqueue.pp — TThread.Queue backport

  In FPC 3.x, TThread.Queue posts a method to the main thread
  without waiting (unlike Synchronize which blocks).
  
  This backport uses a critical section + method list that
  gets processed by CheckSynchronize in the main thread.

  GPLv3 — the crew 4free — sysop/0
}
unit ThreadQueue;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SyncObjs;

type
  TQueuedMethod = record
    Method: TThreadMethod;
    Thread: TThread;
  end;
  PQueuedMethod = ^TQueuedMethod;

{ Queue a method for execution on the main thread.
  Unlike Synchronize, this returns immediately — the method
  executes when the main thread calls ProcessThreadQueue. }
procedure QueueMethod(AThread: TThread; AMethod: TThreadMethod);

{ Call this periodically from the main thread (e.g. in Application.Idle)
  to process queued methods. Returns the number of methods processed. }
function ProcessThreadQueue: Integer;

implementation

var
  QueueLock: TCriticalSection;
  QueueList: TList;

procedure QueueMethod(AThread: TThread; AMethod: TThreadMethod);
var
  entry: PQueuedMethod;
begin
  New(entry);
  entry^.Method := AMethod;
  entry^.Thread := AThread;
  QueueLock.Enter;
  try
    QueueList.Add(entry);
  finally
    QueueLock.Leave;
  end;
end;

function ProcessThreadQueue: Integer;
var
  localList: TList;
  entryIndex: Integer;
  entry: PQueuedMethod;
begin
  Result := 0;
  localList := TList.Create;
  try
    { Move queued items to local list under lock }
    QueueLock.Enter;
    try
      for entryIndex := 0 to QueueList.Count - 1 do
        localList.Add(QueueList[entryIndex]);
      QueueList.Clear;
    finally
      QueueLock.Leave;
    end;
    { Execute outside lock }
    for entryIndex := 0 to localList.Count - 1 do
    begin
      entry := PQueuedMethod(localList[entryIndex]);
      try
        entry^.Method;
      except
        { Swallow — queued methods should not crash the main thread }
      end;
      Dispose(entry);
      Inc(Result);
    end;
  finally
    localList.Free;
  end;
end;

initialization
  QueueLock := TCriticalSection.Create;
  QueueList := TList.Create;

finalization
  QueueList.Free;
  QueueLock.Free;

end.
