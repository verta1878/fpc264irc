{$mode objfpc}{$H+}
unit fpg_mig_lc;
interface
type
  TfpgMigLC = class
  public
    function Fill: TfpgMigLC;
    function FillX: TfpgMigLC;
    function FillY: TfpgMigLC;
    function Wrap: TfpgMigLC;
    function NoGrid: TfpgMigLC;
    function FlowY: TfpgMigLC;
    function FlowX: TfpgMigLC;
    function Insets(const S: String): TfpgMigLC;
    function Gap(const S: String): TfpgMigLC;
    function GapX(const S: String): TfpgMigLC;
    function GapY(const S: String): TfpgMigLC;
    function AlignX(const S: String): TfpgMigLC;
    function AlignY(const S: String): TfpgMigLC;
    function Debug: TfpgMigLC;
    function HideMode(AMode: Integer): TfpgMigLC;
  end;
implementation
function TfpgMigLC.Fill: TfpgMigLC; begin Result := Self; end;
function TfpgMigLC.FillX: TfpgMigLC; begin Result := Self; end;
function TfpgMigLC.FillY: TfpgMigLC; begin Result := Self; end;
function TfpgMigLC.Wrap: TfpgMigLC; begin Result := Self; end;
function TfpgMigLC.NoGrid: TfpgMigLC; begin Result := Self; end;
function TfpgMigLC.FlowY: TfpgMigLC; begin Result := Self; end;
function TfpgMigLC.FlowX: TfpgMigLC; begin Result := Self; end;
function TfpgMigLC.Insets(const S: String): TfpgMigLC; begin Result := Self; end;
function TfpgMigLC.Gap(const S: String): TfpgMigLC; begin Result := Self; end;
function TfpgMigLC.GapX(const S: String): TfpgMigLC; begin Result := Self; end;
function TfpgMigLC.GapY(const S: String): TfpgMigLC; begin Result := Self; end;
function TfpgMigLC.AlignX(const S: String): TfpgMigLC; begin Result := Self; end;
function TfpgMigLC.AlignY(const S: String): TfpgMigLC; begin Result := Self; end;
function TfpgMigLC.Debug: TfpgMigLC; begin Result := Self; end;
function TfpgMigLC.HideMode(AMode: Integer): TfpgMigLC; begin Result := Self; end;
end.
