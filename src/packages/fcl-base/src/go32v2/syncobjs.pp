{
    syncobjs for single-threaded DOS (go32v2, i8086-msdos) - byte, 2026-11-20 (fpc264irc BUG-051)

    Same interface as src/packages/fcl-base/src/syncobjs.pp, so code that uses TCriticalSection, TEvent or
    TSimpleEvent compiles on DOS unchanged. DOS has no threads: the RTL's "no thread manager" stops the program
    (runtime error 232) or does nothing when the real unit calls it, so this unit keeps its own state instead:
    - TCriticalSection: counts Enter/Leave (recursive, as on Windows/Unix); TryEnter is always True.
    - TEvent / TSimpleEvent: a flag. WaitFor returns wrSignaled at once when it is set (and clears it for an
      auto-reset event). When it is not set, no other thread can ever set it: WaitFor(INFINITE) returns wrError
      (instead of hanging for ever), WaitFor(n) waits n ms (SysUtils.Sleep) and returns wrTimeout.
    Replaces the 2026 stub (TCriticalSection only, no TEvent). See docs/bugsfixed.md BUG-051.
}
{$mode objfpc}
{$h+}
unit syncobjs;

interface

uses
  sysutils;

type
  PSecurityAttributes = Pointer;
  TEventHandle = Pointer;

const
  INFINITE = Cardinal(-1);

type
   TWaitResult = (wrSignaled, wrTimeout, wrAbandoned, wrError);

   TSynchroObject = class(TObject)
      procedure Acquire;virtual;
      procedure Release;virtual;
   end;

   TCriticalSection = class(TSynchroObject)
   private
      CriticalSection : TRTLCriticalSection;
      FCount : Longint;
   public
      procedure Acquire;override;
      procedure Release;override;
      procedure Enter;
      function  TryEnter:boolean;
      procedure Leave;
      constructor Create;
      destructor Destroy;override;
   end;

   THandleObject = class(TSynchroObject)
   protected
      FHandle : TEventHandle;
      FLastError : Integer;
   public
      destructor destroy;override;
      property Handle : TEventHandle read FHandle;
      property LastError : Integer read FLastError;
   end;

   TEventObject = class(THandleObject)
   private
      FManualReset: Boolean;
      FState: Boolean;
   public
      constructor Create(EventAttributes : PSecurityAttributes;
        AManualReset,InitialState : Boolean;const Name : string);
      destructor destroy; override;
      procedure ResetEvent;
      procedure SetEvent;
      function WaitFor(Timeout : Cardinal) : TWaitResult;
      Property ManualReset : Boolean read FManualReset;
   end;

   TEvent = TEventObject;

   TSimpleEvent = class(TEventObject)
      constructor Create;
   end;

implementation

procedure TSynchroObject.Acquire;
begin
end;

procedure TSynchroObject.Release;
begin
end;

procedure TCriticalSection.Enter;
begin
  Inc(FCount);
end;

procedure TCriticalSection.Leave;
begin
  if FCount > 0 then
    Dec(FCount);
end;

function TCriticalSection.TryEnter:boolean;
begin
  Inc(FCount);
  Result := True;
end;

procedure TCriticalSection.Acquire;
begin
  Enter;
end;

procedure TCriticalSection.Release;
begin
  Leave;
end;

constructor TCriticalSection.Create;
begin
  inherited Create;
  FCount := 0;
end;

destructor TCriticalSection.Destroy;
begin
  inherited Destroy;
end;

destructor THandleObject.destroy;
begin
  inherited destroy;
end;

constructor TEventObject.Create(EventAttributes : PSecurityAttributes;
  AManualReset,InitialState : Boolean;const Name : string);
begin
  inherited Create;
  FHandle := TEventHandle(Self);
  FManualReset := AManualReset;
  FState := InitialState;
end;

destructor TEventObject.destroy;
begin
  inherited destroy;
end;

procedure TEventObject.ResetEvent;
begin
  FState := False;
end;

procedure TEventObject.SetEvent;
begin
  FState := True;
end;

function TEventObject.WaitFor(Timeout : Cardinal) : TWaitResult;
begin
  FLastError := 0;
  if FState then
    begin
      if not FManualReset then
        FState := False;
      Result := wrSignaled;
    end
  else if Timeout = INFINITE then
    Result := wrError           { single-threaded: nothing can set it - do not hang }
  else
    begin
      if Timeout > 0 then
        Sleep(Timeout);
      Result := wrTimeout;
    end;
end;

constructor TSimpleEvent.Create;
begin
  inherited Create(nil, True, False, '');
end;

end.
