{$mode objfpc}{$H+}
unit fpg_mig_cc;
interface
type
  TfpgMigCC = class
  public
    function GrowX: TfpgMigCC;
    function GrowY: TfpgMigCC;
    function Grow: TfpgMigCC;
    function PushX: TfpgMigCC;
    function PushY: TfpgMigCC;
    function Push: TfpgMigCC;
    function MinWidth(const S: String): TfpgMigCC;
    function MaxWidth(const S: String): TfpgMigCC;
    function MinHeight(const S: String): TfpgMigCC;
    function MaxHeight(const S: String): TfpgMigCC;
    function Span(ASpan: Integer): TfpgMigCC; overload;
    function Span(ACols, ARows: Integer): TfpgMigCC; overload;
    function SpanX(ASpan: Integer): TfpgMigCC;
    function SpanY(ASpan: Integer): TfpgMigCC;
    function Wrap: TfpgMigCC;
    function NewLine: TfpgMigCC;
    function Skip: TfpgMigCC;
    function Split: TfpgMigCC;
    function Gap(const S: String): TfpgMigCC;
    function GapX(const S: String): TfpgMigCC;
    function GapY(const S: String): TfpgMigCC;
    function Pos(const S: String): TfpgMigCC;
    function Cell(ACol, ARow: Integer): TfpgMigCC;
    function AlignX(const S: String): TfpgMigCC;
    function AlignY(const S: String): TfpgMigCC;
    function Dock(const S: String): TfpgMigCC;
    function Pad(const S: String): TfpgMigCC;
    function Tag(const S: String): TfpgMigCC;
    function SizeGroupX(const S: String): TfpgMigCC;
    function SizeGroupY(const S: String): TfpgMigCC;
    function EndGroupX(const S: String): TfpgMigCC;
    function EndGroupY(const S: String): TfpgMigCC;
    function Width(const S: String): TfpgMigCC;
    function Height(const S: String): TfpgMigCC;
    class function Create: TfpgMigCC; overload;
  end;
implementation
function TfpgMigCC.GrowX: TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.GrowY: TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.Grow: TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.PushX: TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.PushY: TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.Push: TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.MinWidth(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.MaxWidth(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.MinHeight(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.MaxHeight(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.Span(ASpan: Integer): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.Span(ACols, ARows: Integer): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.SpanX(ASpan: Integer): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.SpanY(ASpan: Integer): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.Wrap: TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.NewLine: TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.Skip: TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.Split: TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.Gap(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.GapX(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.GapY(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.Pos(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.Cell(ACol, ARow: Integer): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.AlignX(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.AlignY(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.Dock(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.Pad(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.Tag(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.SizeGroupX(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.SizeGroupY(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.EndGroupX(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.EndGroupY(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.Width(const S: String): TfpgMigCC; begin Result := Self; end;
function TfpgMigCC.Height(const S: String): TfpgMigCC; begin Result := Self; end;
class function TfpgMigCC.Create: TfpgMigCC; begin Result := TfpgMigCC(inherited Create); end;
end.
