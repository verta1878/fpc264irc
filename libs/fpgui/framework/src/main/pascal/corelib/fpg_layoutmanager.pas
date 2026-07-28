{$mode objfpc}{$H+}
unit fpg_layoutmanager;
{ Layout manager base — rewritten without generics for FPC 2.6.4 }
interface
uses Classes, fpg_base, fpg_layouttypes;

type
  ILayoutManager = interface
    procedure AddLayoutComponent(AWidget: TfpgWidgetBase; AConstraint: TObject);
    procedure RemoveLayoutComponent(AWidget: TfpgWidgetBase);
    procedure DoLayout;
  end;

  TfpgBaseLayoutManager = class(TInterfacedObject, ILayoutManager)
  public
    procedure AddLayoutComponent(AWidget: TfpgWidgetBase; AConstraint: TObject); virtual;
    procedure RemoveLayoutComponent(AWidget: TfpgWidgetBase); virtual;
    procedure DoLayout; virtual; overload;
    procedure DoLayout(AWidget: TfpgWidgetBase); virtual; overload;
    function DoGetPreferredSize(AWidget: TfpgWidgetBase): TfpgSize; virtual;
    function DoGetMinimumSize(AWidget: TfpgWidgetBase): TfpgSize; virtual;
    function CreateDefaultConstraint(AWidget: TfpgWidgetBase): TfpgLayoutConstraint; virtual;
    constructor Create; virtual;
    function GetIterator(AContainer: TfpgWidgetBase): ILayoutIterator;
    function GetConstraintOrDefault(AWidget: TfpgWidgetBase): TfpgLayoutConstraint;
  end;

  TfpgLayoutManagerBase = class(TfpgBaseLayoutManager)
  public
    procedure AddLayoutComponent(AWidget: TfpgWidgetBase; AConstraint: TObject); virtual;
    procedure RemoveLayoutComponent(AWidget: TfpgWidgetBase); virtual;
    procedure DoLayout; virtual;
  end;

  TLayoutConstraints = class
  private
    FList: TList;
    FKeys: TList;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Add(AKey: TfpgWidgetBase; AValue: TObject);
    function Get(AKey: TfpgWidgetBase): TObject;
    procedure Remove(AKey: TfpgWidgetBase);
    function Count: Integer;
  end;

implementation

procedure TfpgLayoutManagerBase.AddLayoutComponent(AWidget: TfpgWidgetBase; AConstraint: TObject); begin end;
procedure TfpgLayoutManagerBase.RemoveLayoutComponent(AWidget: TfpgWidgetBase); begin end;
procedure TfpgBaseLayoutManager.AddLayoutComponent(AWidget: TfpgWidgetBase; AConstraint: TObject); begin end;
procedure TfpgBaseLayoutManager.RemoveLayoutComponent(AWidget: TfpgWidgetBase); begin end;
procedure TfpgBaseLayoutManager.DoLayout; begin end;
procedure TfpgBaseLayoutManager.DoLayout(AWidget: TfpgWidgetBase); begin end;
function TfpgBaseLayoutManager.DoGetPreferredSize(AWidget: TfpgWidgetBase): TfpgSize; begin Result.W:=0; Result.H:=0; end;
function TfpgBaseLayoutManager.DoGetMinimumSize(AWidget: TfpgWidgetBase): TfpgSize; begin Result.W:=0; Result.H:=0; end;
function TfpgBaseLayoutManager.CreateDefaultConstraint(AWidget: TfpgWidgetBase): TfpgLayoutConstraint; begin Result:=TfpgLayoutConstraint.Create; end;
constructor TfpgBaseLayoutManager.Create; begin inherited Create; end;

function TfpgBaseLayoutManager.GetIterator(AContainer: TfpgWidgetBase): ILayoutIterator;
begin
  Result := nil; { Iterator over child widgets — stub }
end;

function TfpgBaseLayoutManager.GetConstraintOrDefault(AWidget: TfpgWidgetBase): TfpgLayoutConstraint;
begin
  Result := CreateDefaultConstraint(AWidget);
end;

procedure TfpgLayoutManagerBase.DoLayout; begin inherited; end;

constructor TLayoutConstraints.Create;
begin inherited; FList := TList.Create; FKeys := TList.Create; end;
destructor TLayoutConstraints.Destroy;
begin FList.Free; FKeys.Free; inherited; end;
procedure TLayoutConstraints.Add(AKey: TfpgWidgetBase; AValue: TObject);
begin FKeys.Add(AKey); FList.Add(AValue); end;
function TLayoutConstraints.Get(AKey: TfpgWidgetBase): TObject;
var I: Integer;
begin for I := 0 to FKeys.Count-1 do if FKeys[I]=Pointer(AKey) then begin Result:=TObject(FList[I]); Exit; end; Result:=nil; end;
procedure TLayoutConstraints.Remove(AKey: TfpgWidgetBase);
var I: Integer;
begin for I := 0 to FKeys.Count-1 do if FKeys[I]=Pointer(AKey) then begin FKeys.Delete(I); FList.Delete(I); Exit; end; end;
function TLayoutConstraints.Count: Integer;
begin Result := FKeys.Count; end;

end.
