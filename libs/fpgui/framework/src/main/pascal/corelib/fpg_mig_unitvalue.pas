{$mode objfpc}{$H+}
unit fpg_mig_unitvalue;
{ MigLayout unit value — rewritten without generics for FPC 2.6.4 }
interface

uses fpg_base;

type
  TfpgMigUnitValue = class
  private
    FValue: Single;
    FUnit: Integer;
  public
    constructor Create(AValue: Single; AUnit: Integer); overload;
    constructor Create(AValue: Single; AUnit: Integer; const AName: String); overload;
    constructor Create(AValue: Single; AUnit: Integer; ASubValues: array of TfpgMigUnitValue); overload;
    function GetPixels(ARefSize: Single): Single;
    function Clone: TfpgMigUnitValue;
    function IsLinked: Boolean;
    function IsAbsolute: Boolean;
    property Value: Single read FValue;
    property UnitType: Integer read FUnit;
  end;

  TfpgMigUnitValueArray = array of TfpgMigUnitValue;

const
  NOT_SET = -2147483647;

  UV_PIXEL   = 0;
  UV_LP      = 1;
  UV_PERCENT = 2;
  UV_CM      = 3;
  UV_MM      = 4;
  UV_INCH    = 5;
  UV_PT      = 6;

  utLPX      = 1;
  utLPY      = 2;
  utPERCENT  = 3;
  utPIXEL    = 0;
  utCM       = 4;
  utMM       = 5;
  utINCH     = 6;
  utPT       = 7;
  utSPX      = 8;
  utSPY      = 9;
  utALIGN    = 12;
  utMIN_SIZE = 13;
  utPREF_SIZE = 14;
  utMAX_SIZE = 15;
  utBUTTON   = 16;
  utLINK_X   = 17;
  utLINK_Y   = 18;
  utLINK_X2  = 19;
  utLINK_Y2  = 20;
  utLOOKUP   = 21;
  utLABEL_ALIGN = 22;

var
  UnitValueZero: TfpgMigUnitValue;
  UnitValueLeading: TfpgMigUnitValue;
  UnitValueCenter: TfpgMigUnitValue;
  UnitValueTrailing: TfpgMigUnitValue;
  UnitValueBaselineIdentity: TfpgMigUnitValue;
  UnitValueTop: TfpgMigUnitValue;
  UnitValueBottom: TfpgMigUnitValue;
  UnitValueLeft: TfpgMigUnitValue;
  UnitValueRight: TfpgMigUnitValue;

implementation

constructor TfpgMigUnitValue.Create(AValue: Single; AUnit: Integer);
begin inherited Create; FValue := AValue; FUnit := AUnit; end;

constructor TfpgMigUnitValue.Create(AValue: Single; AUnit: Integer; const AName: String);
begin inherited Create; FValue := AValue; FUnit := AUnit; end;

constructor TfpgMigUnitValue.Create(AValue: Single; AUnit: Integer; ASubValues: array of TfpgMigUnitValue);
begin inherited Create; FValue := AValue; FUnit := AUnit; end;

function TfpgMigUnitValue.GetPixels(ARefSize: Single): Single;
begin
  case FUnit of
    utPIXEL: Result := FValue;
    utLPX, utLPY: Result := FValue;
    utPERCENT: Result := FValue * ARefSize / 100;
    utCM: Result := FValue * 96 / 2.54;
    utMM: Result := FValue * 96 / 25.4;
    utINCH: Result := FValue * 96;
    utPT: Result := FValue * 96 / 72;
  else Result := FValue;
  end;
end;

function TfpgMigUnitValue.Clone: TfpgMigUnitValue;
begin Result := TfpgMigUnitValue.Create(FValue, FUnit); end;

function TfpgMigUnitValue.IsLinked: Boolean;
begin Result := FUnit in [utLINK_X, utLINK_Y, utLINK_X2, utLINK_Y2]; end;

function TfpgMigUnitValue.IsAbsolute: Boolean;
begin Result := FUnit in [utPIXEL, utLPX, utLPY, utCM, utMM, utINCH, utPT]; end;

initialization
  UnitValueZero := TfpgMigUnitValue.Create(0, utPIXEL);
  UnitValueLeading := TfpgMigUnitValue.Create(0, utALIGN);
  UnitValueCenter := TfpgMigUnitValue.Create(0.5, utALIGN);
  UnitValueTrailing := TfpgMigUnitValue.Create(1, utALIGN);
  UnitValueBaselineIdentity := TfpgMigUnitValue.Create(0, utALIGN);
  UnitValueTop := TfpgMigUnitValue.Create(0, utALIGN);
  UnitValueBottom := TfpgMigUnitValue.Create(1, utALIGN);
  UnitValueLeft := TfpgMigUnitValue.Create(0, utALIGN);
  UnitValueRight := TfpgMigUnitValue.Create(1, utALIGN);

finalization
  UnitValueZero.Free; UnitValueLeading.Free; UnitValueCenter.Free;
  UnitValueTrailing.Free; UnitValueBaselineIdentity.Free;
  UnitValueTop.Free; UnitValueBottom.Free;
  UnitValueLeft.Free; UnitValueRight.Free;

end.
