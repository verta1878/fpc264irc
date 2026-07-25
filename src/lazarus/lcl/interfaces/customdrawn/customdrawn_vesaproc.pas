unit customdrawn_vesaproc;

{$mode objfpc}{$H+}

{$I customdrawndefines.inc}

interface

uses
  Types, Classes, SysUtils,
  fpimage, fpcanvas,
  Graph,
  IntfGraphics, lazcanvas,
  GraphType, Controls, LCLMessageGlue, WSControls, LCLType, LCLProc,
  LMessages,
  customdrawnproc;

type
  TVESAWindowInfo = class(TCDForm)
  public
    GraphDriver, GraphMode: SmallInt;
  end;

// VESA initialization wrappers
procedure VESA_InitGraph(Mode: SmallInt);
procedure VESA_CloseGraph;
function VESA_GetMaxX: SmallInt;
function VESA_GetMaxY: SmallInt;
procedure VESA_PutPixel(X, Y: SmallInt; Color: Word);
function VESA_GetPixel(X, Y: SmallInt): Word;

implementation

procedure VESA_InitGraph(Mode: SmallInt);
var
  gd, gm: SmallInt;
begin
  gd := Graph.VESA;
  gm := Mode;
  Graph.InitGraph(gd, gm, '');
end;

procedure VESA_CloseGraph;
begin
  Graph.CloseGraph;
end;

function VESA_GetMaxX: SmallInt;
begin
  Result := Graph.GetMaxX;
end;

function VESA_GetMaxY: SmallInt;
begin
  Result := Graph.GetMaxY;
end;

procedure VESA_PutPixel(X, Y: SmallInt; Color: Word);
begin
  Graph.PutPixel(X, Y, Color);
end;

function VESA_GetPixel(X, Y: SmallInt): Word;
begin
  Result := Graph.GetPixel(X, Y);
end;

end.
