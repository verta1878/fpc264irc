{$mode objfpc}{$H+}
unit fpg_mig_linkhandler;
interface
uses Classes, fpg_base, fpg_mig_boundsize;
type
  PfpgMigBoundsArray = ^TfpgMigBoundsArray;
  TfpgMigBoundsArray = array[0..3] of Integer;
  TfpgMigLayoutValues = class
  public
    Values: TList;
    constructor Create;
    destructor Destroy; override;
  end;
  TfpgMigLinkHandler = class
  public
    class procedure ClearWeakReferences;
    class procedure ClearTemporaryBounds;
    class function GetBounds(AKey: String): PfpgMigBoundsArray;
    class procedure SetBounds(const AKey: String; ABounds: TfpgMigBoundsArray);
  end;
implementation
constructor TfpgMigLayoutValues.Create; begin inherited; Values := TList.Create; end;
destructor TfpgMigLayoutValues.Destroy; begin Values.Free; inherited; end;
class procedure TfpgMigLinkHandler.ClearWeakReferences; begin end;
class procedure TfpgMigLinkHandler.ClearTemporaryBounds; begin end;
class function TfpgMigLinkHandler.GetBounds(AKey: String): PfpgMigBoundsArray; begin Result := nil; end;
class procedure TfpgMigLinkHandler.SetBounds(const AKey: String; ABounds: TfpgMigBoundsArray); begin end;
end.
