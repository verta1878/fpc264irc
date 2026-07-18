{ msmouse.pp — MS Mouse unit (alias for mouse unit on i8086-msdos) }
unit msmouse;
{$mode objfpc}
interface
uses mouse;
{ Re-export everything from mouse unit }
procedure InitMouse;
procedure DoneMouse;
function  DetectMouse: Boolean;
procedure ShowMouse;
procedure HideMouse;
procedure GetMouseXY(var x, y: Word);
function  GetMouseButtons: Word;
implementation
procedure InitMouse; begin mouse.InitMouse; end;
procedure DoneMouse; begin mouse.DoneMouse; end;
function  DetectMouse: Boolean; begin DetectMouse := mouse.DetectMouse; end;
procedure ShowMouse; begin mouse.ShowMouse; end;
procedure HideMouse; begin mouse.HideMouse; end;
procedure GetMouseXY(var x, y: Word); begin mouse.GetMouseXY(x, y); end;
function  GetMouseButtons: Word; begin GetMouseButtons := mouse.GetMouseButtons; end;
end.
