{$mode objfpc}{$H+}
unit fpg_mig_ac;
{ MigLayout axis constraint — interface-compatible stub }
interface
uses fpg_mig_unitvalue, fpg_mig_boundsize, fpg_mig_constraintparser;
type
  TfpgMigAC = class
  private
    FSize: TfpgMigBoundSize;
    FAlign: TfpgMigUnitValue;
    FGrow: Single;
    FShrink: Integer;
    FNoGrid: Boolean;
    FFill: Boolean;
    FSizeGroup: String;
    FEndGroup: String;
    FGap: TfpgMigBoundSize;
    FGapPush: Boolean;
  public
    constructor Create;
    destructor Destroy; override;
    function Size(const S: String): TfpgMigAC; overload;
    function Size(ABS: TfpgMigBoundSize): TfpgMigAC; overload;
    function Grow: TfpgMigAC; overload;
    function Grow(AWeight: Single): TfpgMigAC; overload;
    function Shrink(APrio: Integer): TfpgMigAC;
    function Align(const S: String): TfpgMigAC;
    function Fill: TfpgMigAC;
    function NoGrid: TfpgMigAC;
    function Gap(const S: String): TfpgMigAC; overload;
    function Gap(ABS: TfpgMigBoundSize): TfpgMigAC; overload;
    function GapPush: TfpgMigAC;
    function SizeGroup(const S: String): TfpgMigAC;
    function EndGroup(const S: String): TfpgMigAC;
    property BoundSize: TfpgMigBoundSize read FSize;
    property AlignValue: TfpgMigUnitValue read FAlign;
    property GrowWeight: Single read FGrow;
    property ShrinkPriority: Integer read FShrink;
    property IsFill: Boolean read FFill;
    property IsNoGrid: Boolean read FNoGrid;
    property GapValue: TfpgMigBoundSize read FGap;
  end;
implementation
constructor TfpgMigAC.Create; begin inherited; FGrow := 0; FShrink := 100; end;
destructor TfpgMigAC.Destroy; begin FSize.Free; FGap.Free; inherited; end;
function TfpgMigAC.Size(const S: String): TfpgMigAC; begin FSize := ParseBoundSize(S, False, True); Result := Self; end;
function TfpgMigAC.Size(ABS: TfpgMigBoundSize): TfpgMigAC; begin FSize := ABS; Result := Self; end;
function TfpgMigAC.Grow: TfpgMigAC; begin FGrow := 100; Result := Self; end;
function TfpgMigAC.Grow(AWeight: Single): TfpgMigAC; begin FGrow := AWeight; Result := Self; end;
function TfpgMigAC.Shrink(APrio: Integer): TfpgMigAC; begin FShrink := APrio; Result := Self; end;
function TfpgMigAC.Align(const S: String): TfpgMigAC; begin FAlign := ParseAlignKeywords(S, True); Result := Self; end;
function TfpgMigAC.Fill: TfpgMigAC; begin FFill := True; Result := Self; end;
function TfpgMigAC.NoGrid: TfpgMigAC; begin FNoGrid := True; Result := Self; end;
function TfpgMigAC.Gap(const S: String): TfpgMigAC; begin FGap := ParseBoundSize(S, True, True); Result := Self; end;
function TfpgMigAC.Gap(ABS: TfpgMigBoundSize): TfpgMigAC; begin FGap := ABS; Result := Self; end;
function TfpgMigAC.GapPush: TfpgMigAC; begin FGapPush := True; Result := Self; end;
function TfpgMigAC.SizeGroup(const S: String): TfpgMigAC; begin FSizeGroup := S; Result := Self; end;
function TfpgMigAC.EndGroup(const S: String): TfpgMigAC; begin FEndGroup := S; Result := Self; end;
end.
