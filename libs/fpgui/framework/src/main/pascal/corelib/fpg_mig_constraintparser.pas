{$mode objfpc}{$H+}
unit fpg_mig_constraintparser;
{ MigLayout constraint parser — stub for FPC 2.6.4.
  String constraint parsing requires FPC 3.0+ features.
  Use the fluent API (TfpgMigCC/TfpgMigLC) instead. }
interface
uses fpg_mig_unitvalue, fpg_mig_boundsize;

type
  TfpgMigOperation = (opStatic, opAdd, opSub, opMul, opDiv, opMin, opMax, opMid);

function ParseBoundSize(const S: String; AIsGap: Boolean; AIsHor: Boolean): TfpgMigBoundSize;
function ParseAlignKeywords(const S: String; AIsHor: Boolean): TfpgMigUnitValue;
function ParseUnitValue(const S: String; AIsHor: Boolean): TfpgMigUnitValue;

var
  UnitValueLabel: TfpgMigUnitValue;
  UnitValueInf: TfpgMigUnitValue;

implementation

function ParseBoundSize(const S: String; AIsGap: Boolean; AIsHor: Boolean): TfpgMigBoundSize;
begin Result := nil; end;

function ParseAlignKeywords(const S: String; AIsHor: Boolean): TfpgMigUnitValue;
begin Result := nil; end;

function ParseUnitValue(const S: String; AIsHor: Boolean): TfpgMigUnitValue;
begin Result := nil; end;

initialization
  UnitValueLabel := TfpgMigUnitValue.Create(0, utLABEL_ALIGN);
  UnitValueInf := TfpgMigUnitValue.Create(32767, utPIXEL);
finalization
  UnitValueLabel.Free;
  UnitValueInf.Free;
end.
