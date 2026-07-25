{ Dummy syncobjs for single-threaded DOS }
unit syncobjs;
{$mode objfpc}{$H+}
interface
type
  TCriticalSection = class
    procedure Enter;
    procedure Leave;
    procedure Acquire;
    procedure Release;
  end;
implementation
procedure TCriticalSection.Enter; begin end;
procedure TCriticalSection.Leave; begin end;
procedure TCriticalSection.Acquire; begin end;
procedure TCriticalSection.Release; begin end;
end.
