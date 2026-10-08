program test_singleinstance;
{ fpc264irc i386-win32 singleinstance test (2026-10-08): a minimal descendant of TBaseSingleInstance, started and stopped }
{$mode objfpc}{$H+}
uses classes, singleinstance;
type
  TTestInstance = class(TBaseSingleInstance)
  protected
    function GetIsClient: Boolean; override;
    function GetIsServer: Boolean; override;
  public
    function Start: TSingleInstanceStart; override;
    procedure Stop; override;
    procedure ServerCheckMessages; override;
    procedure ClientPostParams; override;
  end;
function TTestInstance.GetIsClient: Boolean; begin Result := StartResult = siClient; end;
function TTestInstance.GetIsServer: Boolean; begin Result := StartResult = siServer; end;
function TTestInstance.Start: TSingleInstanceStart; begin SetStartResult(siServer); Result := StartResult; end;
procedure TTestInstance.Stop; begin end;
procedure TTestInstance.ServerCheckMessages; begin end;
procedure TTestInstance.ClientPostParams; begin end;
var t: TTestInstance;
begin
  DefaultSingleInstanceClass := TTestInstance;
  t := TTestInstance(DefaultSingleInstanceClass.Create(nil));
  t.Start;
  writeln('singleinstance: ', t.ClassName, ' IsServer=', t.IsServer, ' IsClient=', t.IsClient, ' timeout=', t.TimeOutMessages);
  t.Free;
end.
