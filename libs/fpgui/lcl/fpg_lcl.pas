{$MODE OBJFPC}
{$H+}
unit fpg_lcl;
{ fpGUI → Lazarus LCL Compatibility Layer
  
  Maps fpGUI types and methods to LCL equivalents.
  Include this unit instead of fpg_base/fpg_main to compile
  fpGUI applications against LCL.
  
  Usage:
    Replace: uses fpg_base, fpg_main, fpg_form, fpg_button;
    With:    uses fpg_lcl;
  
  Or add fpg_lcl to uses and let the type aliases resolve. }

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls,
  ComCtrls, Grids, Menus, Dialogs, Graphics, Buttons;

type
  { String type }
  TfpgString = String;
  
  { Color type — fpGUI uses TfpgColor (32-bit ARGB), LCL uses TColor }
  TfpgColor = TColor;

  { Coordinate types }
  TfpgCoord = Integer;
  TfpgRect = TRect;

  { Widget base → TControl }
  TfpgWidget = TControl;
  TfpgWidgetBase = TControl;

  { Form }
  TfpgForm = TForm;

  { Buttons }
  TfpgButton = TButton;

  { Labels }
  TfpgLabel = TLabel;

  { Text input }
  TfpgEdit = TEdit;
  TfpgMemo = TMemo;

  { Selection controls }
  TfpgCheckBox = TCheckBox;
  TfpgRadioButton = TRadioButton;
  TfpgComboBox = TComboBox;
  TfpgListBox = TListBox;

  { Containers }
  TfpgPanel = TPanel;
  TfpgGroupBox = TGroupBox;
  TfpgTabControl = TPageControl;
  TfpgTabSheet = TTabSheet;

  { Grid }
  TfpgStringGrid = TStringGrid;
  TfpgCustomGrid = TCustomStringGrid;

  { Tree }
  TfpgTreeView = TTreeView;
  TfpgTreeNode = TTreeNode;

  { Menu }
  TfpgMenuBar = TMainMenu;
  TfpgMenuItem = TMenuItem;
  TfpgPopupMenu = TPopupMenu;

  { Progress/Track }
  TfpgProgressBar = TProgressBar;
  TfpgTrackBar = TTrackBar;

  { Scrolling }
  TfpgScrollBar = TScrollBar;
  TfpgSplitter = TSplitter;
  TfpgScrollBox = TScrollBox;

  { Dialogs }
  TfpgOpenDialog = TOpenDialog;
  TfpgSaveDialog = TSaveDialog;
  TfpgColorDialog = TColorDialog;
  TfpgFontDialog = TFontDialog;

  { Image }
  TfpgImage = TBitmap;
  TfpgCanvas = TCanvas;

  { Application }
  TfpgApplication = TApplication;

const
  { fpGUI color constants → LCL }
  clWindowBackground = clWindow;
  clButtonFace       = clBtnFace;
  clSelection        = clHighlight;
  clSelectionText    = clHighlightText;
  clText1            = clWindowText;
  clBoxColor         = clWindow;
  clGridLines        = clSilver;
  clGridHeader       = clBtnFace;

  { fpGUI alignment → LCL }
  taLeftJustify  = Classes.taLeftJustify;
  taRightJustify = Classes.taRightJustify;
  taCenter       = Classes.taCenter;

{ Helper functions — map fpGUI API to LCL }
function fpgColorToLCL(C: TfpgColor): TColor; inline;
function lclColorToFpg(C: TColor): TfpgColor; inline;
function fpgRect(ALeft, ATop, AWidth, AHeight: Integer): TRect;

{ Application helpers }
procedure fpgApplication_Initialize;
procedure fpgApplication_Run;
function  fpgApplication_CreateForm(FormClass: TFormClass): TForm;

{ Message/Dialog helpers — match fpGUI names }
procedure ShowMessage(const AMsg: String);
function  fpgInputQuery(const ACaption, APrompt: String; var Value: String): Boolean;

implementation

function fpgColorToLCL(C: TfpgColor): TColor;
begin
  Result := C;
end;

function lclColorToFpg(C: TColor): TfpgColor;
begin
  Result := C;
end;

function fpgRect(ALeft, ATop, AWidth, AHeight: Integer): TRect;
begin
  Result.Left := ALeft;
  Result.Top := ATop;
  Result.Right := ALeft + AWidth;
  Result.Bottom := ATop + AHeight;
end;

procedure fpgApplication_Initialize;
begin
  Application.Initialize;
end;

procedure fpgApplication_Run;
begin
  Application.Run;
end;

function fpgApplication_CreateForm(FormClass: TFormClass): TForm;
begin
  Application.CreateForm(FormClass, Result);
end;

procedure ShowMessage(const AMsg: String);
begin
  Dialogs.ShowMessage(AMsg);
end;

function fpgInputQuery(const ACaption, APrompt: String; var Value: String): Boolean;
begin
  Result := InputQuery(ACaption, APrompt, Value);
end;

end.
