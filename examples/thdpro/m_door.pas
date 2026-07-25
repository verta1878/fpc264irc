{$MODE DELPHI}
{$H-}
Unit m_door;
{
  m_door — FOSSIL/COM door I/O for THD ScanPro
  GPLv3 — The Crew: verta1878, sysop/0, evga, kiddo, wrench

  FOSSIL INT 14h routines derived from EleCom by Maarten Bekers
  (BSD license) via FreeDoor 1.71 by Mike Hodgson (BSD license).

  Hooks the system Output file so ALL WriteLn calls automatically
  send to both local console AND remote FOSSIL. No source changes
  needed in the calling program — just call DoorInit(ComPort).

  DOS go32v2: FOSSIL INT 14h via DPMI real-mode interrupt
  Win32/Linux/OS2: local mode only (future: COM API / /dev/ttyS)
}

Interface

Var
  DoorPort   : Byte;
  DoorLocal  : Boolean;
  DoorActive : Boolean;

Function  DoorInit(Port: Byte): Boolean;
Procedure DoorClose;
Function  DoorCarrier: Boolean;
Function  DoorCharAvail: Boolean;
Function  DoorGetChar: Char;

Implementation

Uses
  Crt,
  {$IFDEF GO32V2}
  Go32,
  {$ENDIF}
  Dos;

{ ======================================================================
  FOSSIL INT 14h — go32v2 DPMI
  Derived from EleCom fos_com.pas (Maarten Bekers, BSD license)
  ====================================================================== }

{$IFDEF GO32V2}
Var
  FosPort : Byte;

Procedure FossilIntr(Var R: Registers);
Begin
  RealIntr($14, R);
End;

Function FossilInit(Port: Byte): Boolean;
Var R: Registers;
Begin
  FosPort := Port - 1;
  FillChar(R, SizeOf(R), 0);
  R.AH := $04;
  R.DX := FosPort;
  R.BX := $4F50;
  FossilIntr(R);
  Result := (R.AX = $1954);
End;

Procedure FossilDeinit;
Var R: Registers;
Begin
  FillChar(R, SizeOf(R), 0);
  R.AH := $05;
  R.DX := FosPort;
  FossilIntr(R);
End;

Procedure FossilSendChar(Ch: Char);
Var R: Registers;
Begin
  FillChar(R, SizeOf(R), 0);
  R.AH := $01;
  R.AL := Ord(Ch);
  R.DX := FosPort;
  FossilIntr(R);
End;

Function FossilCharAvail: Boolean;
Var R: Registers;
Begin
  FillChar(R, SizeOf(R), 0);
  R.AH := $03;
  R.DX := FosPort;
  FossilIntr(R);
  Result := (R.AH And $01) <> 0;
End;

Function FossilReadChar: Char;
Var R: Registers;
Begin
  FillChar(R, SizeOf(R), 0);
  R.AH := $02;
  R.DX := FosPort;
  FossilIntr(R);
  Result := Chr(R.AL);
End;

Function FossilCarrier: Boolean;
Var R: Registers;
Begin
  FillChar(R, SizeOf(R), 0);
  R.AH := $03;
  R.DX := FosPort;
  FossilIntr(R);
  Result := (R.AL And $80) <> 0;
End;
{$ENDIF}

{ ======================================================================
  Console output hook — tee WriteLn to FOSSIL
  All WriteLn/Write calls go through this when COM > 0
  ====================================================================== }

Var
  OldOutput    : TextRec;
  OrigFlush    : Pointer;
  OrigOutput   : Pointer;
  HookInstalled: Boolean;

{$IFDEF GO32V2}
Procedure DoorFlush(Var T: TextRec);
Var I: Integer;
Begin
  { Send buffer contents to FOSSIL }
  If DoorActive Then
    For I := 0 To T.BufPos - 1 Do
      FossilSendChar(Chr(T.BufPtr^[I]));
End;

Function DoorOutput(Var F: TextRec): Integer; Far;
Var I: Integer;
Begin
  { Send to FOSSIL }
  If DoorActive Then
    For I := 0 To F.BufPos - 1 Do
      FossilSendChar(Chr(F.BufPtr^[I]));

  { Call original CRT output to display locally }
  { Reset buffer position so original handler processes it }
  Result := 0;
End;
{$ENDIF}

Procedure InstallHook;
{$IFDEF GO32V2}
Var
  P: ^TextRec;
Begin
  P := @Output;
  { Save original output function }
  OldOutput := P^;
  { Install our tee: intercept InOutFunc }
  { We use the Flush handler to send to FOSSIL before CRT flushes }
  HookInstalled := True;
End;
{$ELSE}
Begin
  HookInstalled := False;
End;
{$ENDIF}

Procedure RemoveHook;
Begin
  If HookInstalled Then Begin
    { Restore would go here }
    HookInstalled := False;
  End;
End;

{ ======================================================================
  Simpler approach: custom Assign-based output
  Override system output with a TextFile driver that tees
  ====================================================================== }

{$IFDEF GO32V2}
Var
  DoorBuf : Array[0..1023] Of Char;

Function DoorTeeOpen(Var F: TextRec): Integer; Far;
Begin
  Result := 0;
End;

Function DoorTeeClose(Var F: TextRec): Integer; Far;
Begin
  Result := 0;
End;

Function DoorTeeFlush(Var F: TextRec): Integer; Far;
Var I: Integer;
Begin
  { Send to FOSSIL }
  If DoorActive Then
    For I := 0 To F.BufPos - 1 Do
      FossilSendChar(Chr(F.BufPtr^[I]));

  { Now send to real console via CRT }
  For I := 0 To F.BufPos - 1 Do
    Write(StdOut, Chr(F.BufPtr^[I]));

  F.BufPos := 0;
  Result := 0;
End;

Function DoorTeeWrite(Var F: TextRec): Integer; Far;
Begin
  Result := DoorTeeFlush(F);
End;
{$ENDIF}

Procedure InstallTee;
{$IFDEF GO32V2}
Var P: ^TextRec;
Begin
  { Redirect Output to our tee driver }
  P := @Output;
  P^.OpenFunc := @DoorTeeOpen;
  P^.CloseFunc := @DoorTeeClose;
  P^.InOutFunc := @DoorTeeWrite;
  P^.FlushFunc := @DoorTeeFlush;
  P^.BufPtr := @DoorBuf;
  P^.BufSize := SizeOf(DoorBuf);
  P^.BufPos := 0;
  HookInstalled := True;
End;
{$ELSE}
Begin
  HookInstalled := False;
End;
{$ENDIF}

{ ======================================================================
  Public API
  ====================================================================== }

Function DoorInit(Port: Byte): Boolean;
Begin
  DoorPort := Port;
  DoorLocal := (Port = 0);
  DoorActive := False;
  HookInstalled := False;
  Result := True;

  If DoorLocal Then Exit;

  {$IFDEF GO32V2}
  Result := FossilInit(Port);
  DoorActive := Result;
  If Not Result Then Begin
    System.WriteLn('FOSSIL driver not found on COM', Port);
    System.WriteLn('Running in local mode.');
    DoorLocal := True;
    Exit;
  End;
  { Hook console output to tee through FOSSIL }
  InstallTee;
  {$ELSE}
  { Non-DOS platforms: local mode for now }
  DoorLocal := True;
  {$ENDIF}
End;

Procedure DoorClose;
Begin
  If HookInstalled Then RemoveHook;
  If Not DoorActive Then Exit;
  {$IFDEF GO32V2}
  FossilDeinit;
  {$ENDIF}
  DoorActive := False;
End;

Function DoorCarrier: Boolean;
Begin
  If DoorLocal Then Result := True
  Else Begin
    {$IFDEF GO32V2}
    Result := FossilCarrier;
    {$ELSE}
    Result := True;
    {$ENDIF}
  End;
End;

Function DoorCharAvail: Boolean;
Begin
  Result := KeyPressed;
  {$IFDEF GO32V2}
  If DoorActive And (Not Result) Then
    Result := FossilCharAvail;
  {$ENDIF}
End;

Function DoorGetChar: Char;
Begin
  {$IFDEF GO32V2}
  If DoorActive And FossilCharAvail Then
    Result := FossilReadChar
  Else
  {$ENDIF}
    Result := ReadKey;
End;

End.
