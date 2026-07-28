{$mode objfpc}{$H+}
unit fpg_mig_layoututil;
{ MigLayout layout utility — stub for FPC 2.6.4 }
interface
uses fpg_base, fpg_mig_unitvalue, fpg_mig_boundsize;

function GetPixels(AUV: TfpgMigUnitValue; ARefSize: Single): Integer;
function GetPixelSizes(ABS: TfpgMigBoundSize; ARefSize: Single): TfpgMigBoundSize;

implementation

function GetPixels(AUV: TfpgMigUnitValue; ARefSize: Single): Integer;
begin if AUV <> nil then Result := Round(AUV.GetPixels(ARefSize)) else Result := 0; end;

function GetPixelSizes(ABS: TfpgMigBoundSize; ARefSize: Single): TfpgMigBoundSize;
begin Result := ABS; end;

end.
