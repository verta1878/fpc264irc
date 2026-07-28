{$mode objfpc}{$H+}
unit fpg_miglayout;
{ MigLayout — interface-compatible stub for FPC 2.6.4.
  Full implementation requires FPC 3.0+ generics.
  This stub provides the TfpgMigLayoutManager class so 
  dialogs and other units can reference it. Layout is 
  delegated to manual positioning. }
interface
uses fpg_base, fpg_layoutmanager, fpg_layouttypes, fpg_mig_cc, fpg_mig_lc;

type
  TfpgMigLayoutManager = class(TfpgBaseLayoutManager)
  private
    FLC: TfpgMigLC;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure AddLayoutComponent(AWidget: TfpgWidgetBase; AConstraint: TObject); override;
    procedure DoLayout; override;
    property LC: TfpgMigLC read FLC;
  end;

implementation

constructor TfpgMigLayoutManager.Create;
begin
  inherited;
  FLC := TfpgMigLC.Create;
end;

destructor TfpgMigLayoutManager.Destroy;
begin
  FLC.Free;
  inherited;
end;

procedure TfpgMigLayoutManager.AddLayoutComponent(AWidget: TfpgWidgetBase; AConstraint: TObject);
begin
  { MigLayout stub — widget positions are set manually }
end;

procedure TfpgMigLayoutManager.DoLayout;
begin
  { MigLayout stub — no automatic layout }
end;

end.
