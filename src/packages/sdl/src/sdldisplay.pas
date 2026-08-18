{
  sdldisplay.pas — SDL 1.2 framebuffer display

  Cross-platform framebuffer using SDL 1.2.
  Works on Win32, Linux, OS/2 (via SDL 1.2 port), DOS (via SDL port).
  No LCL dependency — standalone unit for console/BBS apps.

  GPLv3 — the crew 4free — sysop/0, evga
}
unit SDLDisplay;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, sdl;

type
  TPixelFormat = (pfRGB565, pfRGB888, pfARGB8888);

  { TSDLDisplay }
  TSDLDisplay = class
  private
    FSurface: PSDL_Surface;
    FWidth: Integer;
    FHeight: Integer;
    FBitsPerPixel: Integer;
    FFullScreen: Boolean;
    FTitle: string;
    FInitialized: Boolean;
  public
    constructor Create;
    destructor Destroy; override;

    { Initialize SDL and create display window }
    function Open(AWidth, AHeight: Integer; ABpp: Integer = 32;
      AFullScreen: Boolean = False): Boolean;

    { Close display and clean up }
    procedure Close;

    { Put a pixel at (x,y) with color }
    procedure PutPixel(AX, AY: Integer; ARed, AGreen, ABlue: Byte);

    { Fill a rectangle with color }
    procedure FillRect(AX, AY, AWidth, AHeight: Integer;
      ARed, AGreen, ABlue: Byte);

    { Clear screen to color }
    procedure Clear(ARed, AGreen, ABlue: Byte);

    { Copy a buffer to the display surface }
    procedure Blit(ASource: Pointer; ASrcWidth, ASrcHeight, ASrcPitch: Integer;
      ADestX, ADestY: Integer);

    { Flip display (double buffer) }
    procedure Flip;

    { Lock surface for direct pixel access }
    function Lock: Boolean;
    procedure Unlock;

    { Get direct pixel buffer pointer (after Lock) }
    function Pixels: Pointer;
    function Pitch: Integer;

    { Poll events — call in main loop. Returns False on quit. }
    function PollEvents: Boolean;

    { Wait for a keypress. Returns SDL scancode. }
    function WaitKey: Integer;

    property Width: Integer read FWidth;
    property Height: Integer read FHeight;
    property BitsPerPixel: Integer read FBitsPerPixel;
    property FullScreen: Boolean read FFullScreen;
    property Title: string read FTitle write FTitle;
    property Initialized: Boolean read FInitialized;
  end;

implementation

constructor TSDLDisplay.Create;
begin
  inherited Create;
  FSurface := nil;
  FWidth := 0;
  FHeight := 0;
  FBitsPerPixel := 32;
  FFullScreen := False;
  FTitle := 'SDLDisplay';
  FInitialized := False;
end;

destructor TSDLDisplay.Destroy;
begin
  Close;
  inherited Destroy;
end;

function TSDLDisplay.Open(AWidth, AHeight: Integer; ABpp: Integer;
  AFullScreen: Boolean): Boolean;
var
  flags: UInt32;
begin
  Result := False;

  if SDL_Init(SDL_INIT_VIDEO) < 0 then
    Exit;

  FWidth := AWidth;
  FHeight := AHeight;
  FBitsPerPixel := ABpp;
  FFullScreen := AFullScreen;

  flags := SDL_SWSURFACE or SDL_DOUBLEBUF;
  if AFullScreen then
    flags := flags or SDL_FULLSCREEN;

  FSurface := SDL_SetVideoMode(AWidth, AHeight, ABpp, flags);
  if FSurface = nil then
  begin
    SDL_Quit;
    Exit;
  end;

  SDL_WM_SetCaption(PChar(FTitle), nil);
  FInitialized := True;
  Result := True;
end;

procedure TSDLDisplay.Close;
begin
  if FInitialized then
  begin
    SDL_Quit;
    FSurface := nil;
    FInitialized := False;
  end;
end;

procedure TSDLDisplay.PutPixel(AX, AY: Integer; ARed, AGreen, ABlue: Byte);
var
  color: UInt32;
  pixelAddr: PByte;
begin
  if (FSurface = nil) or (AX < 0) or (AY < 0) or
     (AX >= FWidth) or (AY >= FHeight) then
    Exit;

  color := SDL_MapRGB(FSurface^.format, ARed, AGreen, ABlue);

  if SDL_MUSTLOCK(FSurface) then
    SDL_LockSurface(FSurface);

  pixelAddr := PByte(FSurface^.pixels) +
    AY * FSurface^.pitch +
    AX * FSurface^.format^.BytesPerPixel;

  case FSurface^.format^.BytesPerPixel of
    1: pixelAddr^ := color;
    2: PUInt16(pixelAddr)^ := color;
    4: PUInt32(pixelAddr)^ := color;
  end;

  if SDL_MUSTLOCK(FSurface) then
    SDL_UnlockSurface(FSurface);
end;

procedure TSDLDisplay.FillRect(AX, AY, AWidth, AHeight: Integer;
  ARed, AGreen, ABlue: Byte);
var
  rect: TSDL_Rect;
  color: UInt32;
begin
  if FSurface = nil then Exit;
  rect.x := AX;
  rect.y := AY;
  rect.w := AWidth;
  rect.h := AHeight;
  color := SDL_MapRGB(FSurface^.format, ARed, AGreen, ABlue);
  SDL_FillRect(FSurface, @rect, color);
end;

procedure TSDLDisplay.Clear(ARed, AGreen, ABlue: Byte);
begin
  FillRect(0, 0, FWidth, FHeight, ARed, AGreen, ABlue);
end;

procedure TSDLDisplay.Blit(ASource: Pointer;
  ASrcWidth, ASrcHeight, ASrcPitch: Integer;
  ADestX, ADestY: Integer);
var
  srcSurface: PSDL_Surface;
  destRect: TSDL_Rect;
begin
  if FSurface = nil then Exit;
  srcSurface := SDL_CreateRGBSurfaceFrom(ASource,
    ASrcWidth, ASrcHeight, FBitsPerPixel, ASrcPitch,
    $00FF0000, $0000FF00, $000000FF, $FF000000);
  if srcSurface = nil then Exit;
  destRect.x := ADestX;
  destRect.y := ADestY;
  SDL_BlitSurface(srcSurface, nil, FSurface, @destRect);
  SDL_FreeSurface(srcSurface);
end;

procedure TSDLDisplay.Flip;
begin
  if FSurface <> nil then
    SDL_Flip(FSurface);
end;

function TSDLDisplay.Lock: Boolean;
begin
  Result := False;
  if FSurface = nil then Exit;
  if SDL_MUSTLOCK(FSurface) then
    Result := SDL_LockSurface(FSurface) = 0
  else
    Result := True;
end;

procedure TSDLDisplay.Unlock;
begin
  if (FSurface <> nil) and SDL_MUSTLOCK(FSurface) then
    SDL_UnlockSurface(FSurface);
end;

function TSDLDisplay.Pixels: Pointer;
begin
  if FSurface <> nil then
    Result := FSurface^.pixels
  else
    Result := nil;
end;

function TSDLDisplay.Pitch: Integer;
begin
  if FSurface <> nil then
    Result := FSurface^.pitch
  else
    Result := 0;
end;

function TSDLDisplay.PollEvents: Boolean;
var
  event: TSDL_Event;
begin
  Result := True;
  while SDL_PollEvent(@event) > 0 do
  begin
    if event.type_ = SDL_QUITEV then
    begin
      Result := False;
      Exit;
    end;
  end;
end;

function TSDLDisplay.WaitKey: Integer;
var
  event: TSDL_Event;
begin
  Result := 0;
  repeat
    if SDL_WaitEvent(@event) > 0 then
    begin
      if event.type_ = SDL_KEYDOWN then
      begin
        Result := event.key.keysym.sym;
        Exit;
      end;
      if event.type_ = SDL_QUITEV then
        Exit;
    end;
  until False;
end;

end.
