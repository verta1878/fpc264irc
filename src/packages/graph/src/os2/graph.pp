{
    fpc264irc — OS/2 Presentation Manager graph backend (EMX target)
    2026-10-01 — byte
}
unit Graph;
interface
{$i graphh.inc}
implementation
uses
  os2def, DosCalls, pmwin, pmgpi, pmbitmap, pmdev;
const
  InternalDriverName = 'OS/2 PM';
{$i graph.inc}
var
  hab, hmq, hwndFrame, hwndClient, hpsMem, hdcMem, hbmMem: Cardinal;
  BitmapW, BitmapH: LongInt; GraphTID: Cardinal;
  GraphOK: Boolean;
  PalRGB: array[0..255] of record R, G, B: SmallInt end;

function PalToRGB(C: SmallInt): LongInt;
begin PalToRGB:=(LongInt(PalRGB[C].R) shl 16) or (LongInt(PalRGB[C].G) shl 8) or LongInt(PalRGB[C].B) end;
function FlipY(Y: SmallInt): LongInt;
begin FlipY:=LongInt(MaxY)-LongInt(Y) end;

procedure Inval;
var r: TRectL;
begin if hwndClient<>0 then begin WinQueryWindowRect(hwndClient,r); WinInvalidateRect(hwndClient,r,false) end end;

function GrWndProc(Window,Msg: Cardinal; mp1,mp2: Pointer): Pointer; cdecl;
var r: TRectL; a: array[0..3] of PointL; hpsW: Cardinal;
begin
  if Msg=$0023 then begin
    hpsW:=WinBeginPaint(Window,0,r);
    if hpsMem<>0 then begin
      a[0].x:=r.xLeft; a[0].y:=r.yBottom; a[1].x:=r.xRight; a[1].y:=r.yTop;
      a[2].x:=r.xLeft; a[2].y:=r.yBottom; a[3].x:=r.xRight; a[3].y:=r.yTop;
      GpiBitBlt(hpsW,hpsMem,4,a[0],$00CC,0) end;
    WinEndPaint(hpsW); GrWndProc:=nil
  end else GrWndProc:=WinDefWindowProc(Window,Msg,mp1,mp2);
end;

function GrMsgThread(p: Pointer): LongInt;
var qm: QMSG; fl: Cardinal; pqm: PQMSG; cn,tt: PChar;
begin
  cn:='FPCGraphWindow'; tt:='FPC Graph';
  hab:=WinInitialize(0); hmq:=WinCreateMsgQueue(hab,0);
  WinRegisterClass(hab,cn,@GrWndProc,$20,0);
  fl:=$00000001 or $00000004 or $00000010 or $00001000 or $00000040;
  hwndFrame:=WinCreateStdWindow(1,$80000000,fl,cn,tt,0,0,0,hwndClient);
  if hwndFrame<>0 then WinSetWindowPos(hwndFrame,0,50,50,BitmapW+8,BitmapH+30,$0001 or $0002 or $0008);
  GraphOK:=true; pqm:=@qm;
  while WinGetMsg(hab,pqm,0,0,0) do WinDispatchMsg(hab,pqm);
  WinDestroyWindow(hwndFrame); WinDestroyMsgQueue(hmq); WinTerminate(hab);
  GrMsgThread:=0;
end;

procedure CreateBmp;
var bmi: TBitmapInfoHeader2; bmi2: TBitmapInfo2; sz: SizeL; dop: DevOpenStruc;
    lc: LongInt; dummy: Byte; tok: PChar;
begin
  FillChar(dop,SizeOf(dop),0); lc:=0; tok:='*';
  hdcMem:=DevOpenDC(hab,8,tok,lc,dop,0);
  sz.cx:=BitmapW; sz.cy:=BitmapH;
  hpsMem:=GpiCreatePS(hab,hdcMem,sz,$00000001 or $00002000 or $00000400 or $00000100);
  FillChar(bmi,SizeOf(bmi),0);
  bmi.cbFix:=SizeOf(bmi); bmi.cx:=BitmapW; bmi.cy:=BitmapH; bmi.cPlanes:=1; bmi.cBitCount:=24;
  dummy:=0; FillChar(bmi2,SizeOf(bmi2),0);
  hbmMem:=GpiCreateBitmap(hpsMem,bmi,0,dummy,bmi2);
  GpiSetBitmap(hpsMem,hbmMem);
end;

procedure DestroyBmp;
begin
  if hbmMem<>0 then begin GpiSetBitmap(hpsMem,0); GpiDeleteBitmap(hbmMem); hbmMem:=0 end;
  if hpsMem<>0 then begin GpiDestroyPS(hpsMem); hpsMem:=0 end;
  if hdcMem<>0 then begin DevCloseDC(hdcMem); hdcMem:=0 end;
end;

procedure pm_dp(X,Y: SmallInt);
var c: Word; pt: PointL;
begin
  case CurrentWriteMode of
    XORPut: c:=GetPixel(X-StartXViewPort,Y-StartYViewPort) xor CurrentColor;
    OrPut:  c:=GetPixel(X-StartXViewPort,Y-StartYViewPort) or CurrentColor;
    AndPut: c:=GetPixel(X-StartXViewPort,Y-StartYViewPort) and CurrentColor;
    NotPut: c:=not CurrentColor;
  else c:=CurrentColor end;
  GpiSetColor(hpsMem,PalToRGB(c)); pt.x:=X; pt.y:=FlipY(Y); GpiSetPel(hpsMem,pt);
end;
procedure pm_pp(X,Y: SmallInt; Color: Word);
var pt: PointL;
begin GpiSetColor(hpsMem,PalToRGB(Color)); pt.x:=X; pt.y:=FlipY(Y); GpiSetPel(hpsMem,pt) end;
function pm_gp(X,Y: SmallInt): Word;
var pt: PointL; rgb: LongInt; i: SmallInt; best,d: LongInt; r,g,b: SmallInt;
begin
  pt.x:=X; pt.y:=FlipY(Y); rgb:=GpiQueryPel(hpsMem,pt);
  r:=(rgb shr 16) and $FF; g:=(rgb shr 8) and $FF; b:=rgb and $FF;
  best:=MaxLongInt; pm_gp:=0;
  for i:=0 to MaxColor-1 do begin
    d:=Sqr(LongInt(PalRGB[i].R)-r)+Sqr(LongInt(PalRGB[i].G)-g)+Sqr(LongInt(PalRGB[i].B)-b);
    if d<best then begin best:=d; pm_gp:=i end; if d=0 then Break end;
end;
procedure pm_ln(X1,Y1,X2,Y2: SmallInt);
var pt: PointL;
begin
  if (CurrentWriteMode in [OrPut,AndPut,XorPut]) or (lineinfo.LineStyle<>SolidLn) or
     (lineinfo.Thickness<>NormWidth) then begin LineDefault(X1,Y1,X2,Y2); Exit end;
  X1:=X1+StartXViewPort; X2:=X2+StartXViewPort;
  Y1:=Y1+StartYViewPort; Y2:=Y2+StartYViewPort;
  if CurrentWriteMode=NotPut then GpiSetColor(hpsMem,PalToRGB(not CurrentColor))
  else GpiSetColor(hpsMem,PalToRGB(CurrentColor));
  pt.x:=X1; pt.y:=FlipY(Y1); GpiMove(hpsMem,pt);
  pt.x:=X2; pt.y:=FlipY(Y2); GpiLine(hpsMem,pt);
end;
procedure pm_hl(x,x2,y: SmallInt);
begin if CurrentWriteMode in [OrPut,AndPut,XorPut] then HLineDefault(x,x2,y) else pm_ln(x,y,x2,y) end;
procedure pm_vl(x,y,y2: SmallInt);
begin if CurrentWriteMode in [OrPut,AndPut,XorPut] then VLineDefault(x,y,y2) else pm_ln(x,y,x,y2) end;
procedure pm_cv;
var pt: PointL;
begin
  GpiSetColor(hpsMem,PalToRGB(CurrentBkColor));
  pt.x:=StartXViewPort; pt.y:=FlipY(StartYViewPort+ViewHeight); GpiMove(hpsMem,pt);
  pt.x:=StartXViewPort+ViewWidth+1; pt.y:=FlipY(StartYViewPort)+1; GpiBox(hpsMem,2,pt,0,0);
  Inval; CurrentX:=0; CurrentY:=0;
end;
procedure pm_sr(C,R,G,B: SmallInt);
begin PalRGB[C].R:=(R*255) div 63; PalRGB[C].G:=(G*255) div 63; PalRGB[C].B:=(B*255) div 63 end;
procedure pm_gr(C: SmallInt; var R,G,B: SmallInt);
begin R:=(PalRGB[C].R*63) div 255; G:=(PalRGB[C].G*63) div 255; B:=(PalRGB[C].B*63) div 255 end;
procedure pm_sv; begin end;
procedure pm_rv; begin end;
procedure pm_im;
begin
  BitmapW:=MaxX+1; BitmapH:=MaxY+1; CreateBmp; GraphOK:=false;
  BeginThread(@GrMsgThread,nil,GraphTID,65536);
  while not GraphOK do DosSleep(10);
end;
procedure pm_am(mn,xr,yr,cols: LongInt);
var m: TModeInfo;
begin
  InitMode(m); m.ModeNumber:=mn; m.DriverNumber:=VGA;
  m.MaxX:=xr-1; m.MaxY:=yr-1; m.XAspect:=10000; m.YAspect:=10000;
  m.MaxColor:=cols; m.PaletteSize:=cols; m.DirectColor:=cols>256; m.HardwarePages:=0;
  m.DirectPutPixel:=@pm_dp; m.GetPixel:=@pm_gp; m.PutPixel:=@pm_pp;
  m.HLine:=@pm_hl; m.VLine:=@pm_vl; m.ClearViewPort:=@pm_cv;
  m.SetRGBPalette:=@pm_sr; m.GetRGBPalette:=@pm_gr;
  m.Line:=@pm_ln; m.InitMode:=@pm_im;
  AddMode(m);
end;
function QueryAdapterInfo: PModeInfo;
begin
  QueryAdapterInfo:=ModeList; if Assigned(ModeList) then Exit;
  SaveVideoState:=@pm_sv; RestoreVideoState:=@pm_rv;
  pm_am(5,320,200,256); pm_am(10,640,480,256);
  pm_am(11,800,600,256); pm_am(12,1024,768,256);
  QueryAdapterInfo:=ModeList;
end;
procedure CloseGraph;
begin
  RestoreVideoState; DestroyBmp;
  if hwndClient<>0 then WinPostMsg(hwndClient,$002A,nil,nil);
  IsGraphMode:=false;
end;
initialization
  pm_sr(0,0,0,0); pm_sr(1,0,0,42); pm_sr(2,0,42,0); pm_sr(3,0,42,42);
  pm_sr(4,42,0,0); pm_sr(5,42,0,42); pm_sr(6,42,21,0); pm_sr(7,42,42,42);
  pm_sr(8,21,21,21); pm_sr(9,21,21,63); pm_sr(10,21,63,21); pm_sr(11,21,63,63);
  pm_sr(12,63,21,21); pm_sr(13,63,21,63); pm_sr(14,63,63,21); pm_sr(15,63,63,63);
  InitializeGraph;
end.
