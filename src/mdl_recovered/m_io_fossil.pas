// ====================================================================
// m_io_Fossil — TIOBase implementation over a FOSSIL driver (INT 14h)
// ====================================================================
//
// TIOFossil is the FOSSIL-backed TIOBase used by mystic.pas when the
// user launches with `-COMn` or `-FOSSIL` under a real-mode DOS target
// (GO32V2 / MSDOS).  It is a THIN adapter: all serial work is delegated
// to the m_fossil unit which owns the actual INT 14h calls.
//
// On non-DOS targets the class still compiles but every method is a
// safe no-op — mystic.pas only instantiates TIOFossil inside a
// {$IFDEF GO32V2} block, so this file being present doesn't drag DOS
// code onto Windows/Linux/OSX builds.
//
// Constructor takes a FOSSIL port NUMBER (Word), not a device name:
//   0 = COM1, 1 = COM2, 2 = COM3, 3 = COM4, ...
// This matches how mystic.pas parses `-COM<n>` and passes the value
// straight through to `TIOFossil.Create(Session.SerialPort, Baud)`.
// ====================================================================

{$I M_OPS.PAS}

Unit m_io_Fossil;

Interface

Uses
  m_io_Base
  {$IFDEF DOS}, m_fossil{$ENDIF};

Type
  TIOFossil = Class(TIOBase)
  Private
    FPort      : Word;
    FBaud      : LongInt;
    FConnected : Boolean;
  Public
    Constructor Create (Port: Word; Baud: LongInt);
    Destructor  Destroy; Override;

    Function    DataWaiting: Boolean;                         Override;
    Function    WriteBuf(Var Data; Len: LongInt): LongInt;    Override;
    Procedure   BufFlush;                                     Override;
    Procedure   BufWriteChar(C: Char);                        Override;
    Procedure   BufWriteStr(Const S: ShortString);            Override;
    Function    ReadChar: Char;                               Override;
    Function    ReadBuf(Var Data; Max: LongInt): LongInt;     Override;
    Function    WriteStr(Const S: ShortString): LongInt;      Override;
    Function    WriteLine(Const S: ShortString): LongInt;     Override;
    Function    WaitForData(TimeoutMs: LongInt): LongInt;     Override;

    Property    Connected : Boolean Read FConnected;
    Property    Port      : Word    Read FPort;
    Property    Baud      : LongInt Read FBaud;
  End;

Implementation

Constructor TIOFossil.Create (Port: Word; Baud: LongInt);
Begin
  Inherited Create;
  FPort      := Port;
  FBaud      := Baud;
  FConnected := False;

  {$IFDEF DOS}
  // Function 04h: Fossil_Init returns True iff the FOSSIL driver
  // (X00 / BNU / NetFoss) is present and the port opened.
  If Fossil_Init(FPort) Then Begin
    FConnected := True;
    // Baud rate is set as a separate step: caller passes the FOSSIL
    // baud-init byte in the low bits of Baud.  We leave the driver
    // default alone if Baud <= 0 (typical for already-connected lines).
    If FBaud > 0 Then
      Fossil_SetBaud(FPort, Byte(FBaud and $FF));
    Fossil_SetDTR(FPort, True);
  End;
  {$ENDIF}
End;

Destructor TIOFossil.Destroy;
Begin
  {$IFDEF DOS}
  If FConnected Then Begin
    Fossil_Flush(FPort);
    Fossil_SetDTR(FPort, False);
    Fossil_Deinit(FPort);
  End;
  {$ENDIF}
  FConnected := False;
  Inherited Destroy;
End;

Function TIOFossil.DataWaiting: Boolean;
Begin
  {$IFDEF DOS}
    DataWaiting := FConnected and Fossil_RxReady(FPort);
  {$ELSE}
    DataWaiting := False;
  {$ENDIF}
End;

Function TIOFossil.WriteBuf(Var Data; Len: LongInt): LongInt;
{$IFDEF DOS}
Var
  P : PByte;
  I : LongInt;
{$ENDIF}
Begin
  WriteBuf := 0;
  If Not FConnected Then Exit;
  {$IFDEF DOS}
  P := PByte(@Data);
  For I := 0 to Len - 1 Do Begin
    Fossil_SendByte(FPort, (P + I)^);
    Inc(WriteBuf);
  End;
  {$ENDIF}
End;

Procedure TIOFossil.BufFlush;
Begin
  {$IFDEF DOS}
  If FConnected Then Fossil_Flush(FPort);
  {$ENDIF}
End;

Procedure TIOFossil.BufWriteChar(C: Char);
Begin
  {$IFDEF DOS}
  If FConnected Then Fossil_SendByte(FPort, Byte(C));
  {$ENDIF}
End;

Procedure TIOFossil.BufWriteStr(Const S: ShortString);
Begin
  {$IFDEF DOS}
  If FConnected Then Fossil_SendStr(FPort, S);
  {$ENDIF}
End;

Function TIOFossil.ReadChar: Char;
{$IFDEF DOS}
Var B : Byte;
{$ENDIF}
Begin
  ReadChar := #0;
  {$IFDEF DOS}
  If FConnected Then
    While True Do
      If Fossil_RecvByte(FPort, B) Then Begin
        ReadChar := Chr(B);
        Break;
      End;
  {$ENDIF}
End;

Function TIOFossil.ReadBuf(Var Data; Max: LongInt): LongInt;
{$IFDEF DOS}
Var
  P : PByte;
  B : Byte;
{$ENDIF}
Begin
  ReadBuf := 0;
  If Not FConnected Then Exit;
  {$IFDEF DOS}
  P := PByte(@Data);
  While (ReadBuf < Max) and Fossil_RxReady(FPort) Do
    If Fossil_RecvByte(FPort, B) Then Begin
      (P + ReadBuf)^ := B;
      Inc(ReadBuf);
    End
    Else
      Break;
  {$ENDIF}
End;

Function TIOFossil.WriteStr(Const S: ShortString): LongInt;
Begin
  WriteStr := 0;
  If Not FConnected Then Exit;
  {$IFDEF DOS}
  WriteStr := Fossil_SendStr(FPort, S);
  {$ENDIF}
End;

Function TIOFossil.WriteLine(Const S: ShortString): LongInt;
Begin
  WriteLine := WriteStr(S) + WriteStr(#13#10);
End;

Function TIOFossil.WaitForData(TimeoutMs: LongInt): LongInt;
{$IFDEF DOS}
Var
  Deadline : LongInt;
  T        : LongInt;
{$ENDIF}
Begin
  WaitForData := 0;
  If Not FConnected Then Exit;
  {$IFDEF DOS}
  // Coarse busy-wait: FOSSIL has no blocking read, and pulling in a
  // real timer here would drag more of the MDL DateTime layer into a
  // DOS-only unit.  55 ms is the standard DOS tick.
  Deadline := TimeoutMs;
  T        := 0;
  While (T < Deadline) and Not Fossil_RxReady(FPort) Do Begin
    // ~55ms sleep via idle loop; acceptable on a real-mode DOS target.
    Inc(T, 55);
  End;
  If Fossil_RxReady(FPort) Then WaitForData := 1;
  {$ENDIF}
End;

End.
