{
  fphttpclientex.pp — Enhanced HTTP client

  Adds AllowRedirect, ConnectTimeout, and IOTimeout to TFPHTTPClient.
  Backported from FPC 3.x for FPC 2.6.4irc.

  GPLv3 — the crew 4free — sysop/0
}
unit FPHTTPClientEx;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fphttpclient, ssockets;

type
  { TFPHTTPClientEx }
  TFPHTTPClientEx = class(TFPHTTPClient)
  private
    FAllowRedirect: Boolean;
    FMaxRedirects: Integer;
    FConnectTimeout: Integer;
    FIOTimeout: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    { Get with automatic redirect following }
    function GetRedirect(const AURL: string): string;
    property AllowRedirect: Boolean read FAllowRedirect write FAllowRedirect;
    property MaxRedirects: Integer read FMaxRedirects write FMaxRedirects;
    property ConnectTimeout: Integer read FConnectTimeout write FConnectTimeout;
    property IOTimeout: Integer read FIOTimeout write FIOTimeout;
  end;

implementation

constructor TFPHTTPClientEx.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FAllowRedirect := True;
  FMaxRedirects := 5;
  FConnectTimeout := 30000;
  FIOTimeout := 30000;
end;

function TFPHTTPClientEx.GetRedirect(const AURL: string): string;
var
  redirectCount: Integer;
  currentURL, location: string;
  headerIndex: Integer;
begin
  currentURL := AURL;
  redirectCount := 0;
  repeat
    Result := Get(currentURL);
    if FAllowRedirect and (ResponseStatusCode >= 300) and
       (ResponseStatusCode < 400) then
    begin
      location := '';
      for headerIndex := 0 to ResponseHeaders.Count - 1 do
      begin
        if Pos('Location:', ResponseHeaders[headerIndex]) = 1 then
        begin
          location := Trim(Copy(ResponseHeaders[headerIndex], 10, MaxInt));
          Break;
        end;
      end;
      if location = '' then
        Break;
      currentURL := location;
      Inc(redirectCount);
    end
    else
      Break;
  until redirectCount >= FMaxRedirects;
end;

end.
