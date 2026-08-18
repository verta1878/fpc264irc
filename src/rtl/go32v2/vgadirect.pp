{
  vgadirect.pp — Direct VGA framebuffer access for DOS

  Mode 13h (320x200, 256 colors). Direct memory writes via go32.
  For mterm, ansiedit, RIPscrip on real DOS hardware.

  GPLv3 — the crew 4free — sysop/0, wrench
}
unit VGADirect;

{$mode objfpc}{$H+}

interface

uses
  go32;

const
  VGA_WIDTH  = 320;
  VGA_HEIGHT = 200;
  VGA_SEGMENT = $A000;

type
  TVGAPalette = array[0..255] of record
    Red, Green, Blue: Byte;
  end;

procedure VGA_SetMode13h;
procedure VGA_SetTextMode;
procedure VGA_PutPixel(AX, AY: Integer; AColor: Byte);
function VGA_GetPixel(AX, AY: Integer): Byte;
procedure VGA_Clear(AColor: Byte);
procedure VGA_FillRect(AX, AY, AW, AH: Integer; AColor: Byte);
procedure VGA_HLine(AX, AY, ALen: Integer; AColor: Byte);
procedure VGA_SetPalette(AIndex, ARed, AGreen, ABlue: Byte);
procedure VGA_SetFullPalette(const APal: TVGAPalette);
procedure VGA_WaitRetrace;

implementation

procedure VGA_SetMode13h;
var
  modeRegs: trealregs;
begin
  FillChar(modeRegs, SizeOf(modeRegs), 0);
  modeRegs.realeax := $0013;
  realintr($10, modeRegs);
end;

procedure VGA_SetTextMode;
var
  modeRegs: trealregs;
begin
  FillChar(modeRegs, SizeOf(modeRegs), 0);
  modeRegs.realeax := $0003;
  realintr($10, modeRegs);
end;

procedure VGA_PutPixel(AX, AY: Integer; AColor: Byte);
var
  colorByte: Byte;
begin
  if (AX >= 0) and (AX < VGA_WIDTH) and
     (AY >= 0) and (AY < VGA_HEIGHT) then
  begin
    colorByte := AColor;
    dosmemput(VGA_SEGMENT, AY * VGA_WIDTH + AX, colorByte, 1);
  end;
end;

function VGA_GetPixel(AX, AY: Integer): Byte;
var
  colorByte: Byte;
begin
  colorByte := 0;
  if (AX >= 0) and (AX < VGA_WIDTH) and
     (AY >= 0) and (AY < VGA_HEIGHT) then
    dosmemget(VGA_SEGMENT, AY * VGA_WIDTH + AX, colorByte, 1);
  Result := colorByte;
end;

procedure VGA_Clear(AColor: Byte);
begin
  dosmemfillchar(VGA_SEGMENT, 0, VGA_WIDTH * VGA_HEIGHT, Char(AColor));
end;

procedure VGA_FillRect(AX, AY, AW, AH: Integer; AColor: Byte);
var
  row, startX, endX, startY, endY: Integer;
begin
  startX := AX; startY := AY;
  endX := AX + AW; endY := AY + AH;
  if startX < 0 then startX := 0;
  if startY < 0 then startY := 0;
  if endX > VGA_WIDTH then endX := VGA_WIDTH;
  if endY > VGA_HEIGHT then endY := VGA_HEIGHT;
  for row := startY to endY - 1 do
    dosmemfillchar(VGA_SEGMENT, row * VGA_WIDTH + startX,
      endX - startX, Char(AColor));
end;

procedure VGA_HLine(AX, AY, ALen: Integer; AColor: Byte);
begin
  if (AY < 0) or (AY >= VGA_HEIGHT) then Exit;
  if AX < 0 then begin ALen := ALen + AX; AX := 0; end;
  if AX + ALen > VGA_WIDTH then ALen := VGA_WIDTH - AX;
  if ALen <= 0 then Exit;
  dosmemfillchar(VGA_SEGMENT, AY * VGA_WIDTH + AX, ALen, Char(AColor));
end;

procedure VGA_SetPalette(AIndex, ARed, AGreen, ABlue: Byte);
begin
  outportb($3C8, AIndex);
  outportb($3C9, ARed shr 2);
  outportb($3C9, AGreen shr 2);
  outportb($3C9, ABlue shr 2);
end;

procedure VGA_SetFullPalette(const APal: TVGAPalette);
var
  palIndex: Integer;
begin
  outportb($3C8, 0);
  for palIndex := 0 to 255 do
  begin
    outportb($3C9, APal[palIndex].Red shr 2);
    outportb($3C9, APal[palIndex].Green shr 2);
    outportb($3C9, APal[palIndex].Blue shr 2);
  end;
end;

procedure VGA_WaitRetrace;
begin
  while (inportb($3DA) and $08) <> 0 do ;
  while (inportb($3DA) and $08) = 0 do ;
end;

end.
