{ serial_irq.inc — Interrupt-driven receive ring buffer for DOS UART
  
  When enabled via SerEnableIRQ, incoming bytes are captured by an ISR
  (Interrupt Service Routine) and stored in a ring buffer. SerRead then
  reads from the ring instead of polling the UART directly.
  
  This is what FOSSIL drivers (X00, BNU, COMM-DRV) do internally.
  Required for: Mystic BBS, netmodem2irc TSR mode, any app that
  can't afford to miss bytes while doing other work.
  
  Uses the 8259 PIC (Programmable Interrupt Controller) to unmask
  the COM port's IRQ line and install our handler. }

const
  RING_SIZE = 4096;  { 4KB ring buffer — plenty for 115200 }
  PIC1_CMD  = $20;
  PIC1_DATA = $21;
  PIC2_CMD  = $A0;
  PIC2_DATA = $A1;
  EOI       = $20;   { End Of Interrupt }

type
  TSerRingBuffer = record
    Data: array[0..RING_SIZE - 1] of Byte;
    Head: Word;    { Write position (ISR writes here) }
    Tail: Word;    { Read position (SerRead reads here) }
    Count: Word;   { Bytes in buffer }
    Overruns: LongInt;  { Overrun counter }
  end;

  TSerIRQState = record
    Active: Boolean;
    ComIdx: Integer;      { 0-3 for COM1-COM4 }
    Base: Word;           { UART base I/O address }
    IRQ: Byte;            { IRQ number (3 or 4) }
    OldHandler: Pointer;  { Saved original ISR }
    OldMask: Byte;        { Saved PIC mask bit }
    Ring: TSerRingBuffer;
  end;

var
  { One IRQ state per COM port }
  IRQState: array[0..3] of TSerIRQState;

{ Forward declarations }
procedure SerISR_COM1; forward;
procedure SerISR_COM2; forward;
procedure SerISR_COM3; forward;
procedure SerISR_COM4; forward;

{ The actual ISR — called by hardware interrupt }
procedure SerISR_Handler(ComIdx: Integer);
var
  Base: Word;
  LSR, Ch: Byte;
begin
  Base := IRQState[ComIdx].Base;
  
  { Read all available bytes (FIFO may have multiple) }
  LSR := Port[Base + UART_LSR];
  while (LSR and LSR_DR) <> 0 do begin
    Ch := Port[Base + UART_RBR];
    
    with IRQState[ComIdx].Ring do begin
      if Count < RING_SIZE then begin
        Data[Head] := Ch;
        Head := (Head + 1) and (RING_SIZE - 1);
        Inc(Count);
      end else
        Inc(Overruns);
    end;
    
    LSR := Port[Base + UART_LSR];
  end;
  
  { Send EOI to PIC }
  if IRQState[ComIdx].IRQ >= 8 then
    Port[PIC2_CMD] := EOI;  { Slave PIC }
  Port[PIC1_CMD] := EOI;    { Master PIC }
end;

{ Per-COM ISR wrappers — interrupt procedures }
{$IFDEF GO32V2}
procedure SerISR_COM1; interrupt;
begin SerISR_Handler(0); end;

procedure SerISR_COM2; interrupt;
begin SerISR_Handler(1); end;

procedure SerISR_COM3; interrupt;
begin SerISR_Handler(2); end;

procedure SerISR_COM4; interrupt;
begin SerISR_Handler(3); end;
{$ENDIF}

{ Enable interrupt-driven receive for a COM port }
procedure SerEnableIRQ(Handle: TSerialHandle);
var
  Base: Word;
  IRQ, IntNo: Byte;
  Mask: Byte;
  {$IFDEF GO32V2}
  OldSeg, OldOfs: Word;
  {$ENDIF}
begin
  if (Handle < 0) or (Handle > 3) then Exit;
  if IRQState[Handle].Active then Exit;  { Already enabled }
  
  Base := GetBase(Handle);
  if Base = 0 then Exit;
  IRQ := COM_IRQ[Handle];
  
  { Initialize ring buffer }
  with IRQState[Handle] do begin
    Active := True;
    ComIdx := Handle;
    Self.Base := Base;
    Self.IRQ := IRQ;
    Ring.Head := 0;
    Ring.Tail := 0;
    Ring.Count := 0;
    Ring.Overruns := 0;
  end;
  
  {$IFDEF GO32V2}
  { Calculate interrupt vector number }
  if IRQ < 8 then
    IntNo := IRQ + $08    { Master PIC: IRQ 0-7 → INT 08h-0Fh }
  else
    IntNo := IRQ + $68;   { Slave PIC: IRQ 8-15 → INT 70h-77h }
  
  { Save old handler }
  Get_pm_interrupt(IntNo, IRQState[Handle].OldHandler);
  
  { Install our handler }
  case Handle of
    0: Set_pm_interrupt(IntNo, @SerISR_COM1);
    1: Set_pm_interrupt(IntNo, @SerISR_COM2);
    2: Set_pm_interrupt(IntNo, @SerISR_COM3);
    3: Set_pm_interrupt(IntNo, @SerISR_COM4);
  end;
  {$ENDIF}
  
  { Enable UART receive interrupt }
  Port[Base + UART_IER] := Port[Base + UART_IER] or $01;  { Enable ERBFI }
  
  { Enable MCR OUT2 — gates IRQ to PIC on most cards }
  Port[Base + UART_MCR] := Port[Base + UART_MCR] or MCR_OUT2;
  
  { Unmask IRQ on PIC }
  if IRQ < 8 then begin
    Mask := Port[PIC1_DATA];
    IRQState[Handle].OldMask := Mask and (1 shl IRQ);
    Port[PIC1_DATA] := Mask and not (1 shl IRQ);
  end else begin
    Mask := Port[PIC2_DATA];
    IRQState[Handle].OldMask := Mask and (1 shl (IRQ - 8));
    Port[PIC2_DATA] := Mask and not (1 shl (IRQ - 8));
  end;
end;

{ Disable interrupt-driven receive }
procedure SerDisableIRQ(Handle: TSerialHandle);
var
  Base: Word;
  IRQ, IntNo: Byte;
  Mask: Byte;
begin
  if (Handle < 0) or (Handle > 3) then Exit;
  if not IRQState[Handle].Active then Exit;
  
  Base := IRQState[Handle].Base;
  IRQ := IRQState[Handle].IRQ;
  
  { Disable UART receive interrupt }
  Port[Base + UART_IER] := Port[Base + UART_IER] and not $01;
  
  { Disable MCR OUT2 }
  Port[Base + UART_MCR] := Port[Base + UART_MCR] and not MCR_OUT2;
  
  { Re-mask IRQ on PIC if it was masked before }
  if IRQState[Handle].OldMask <> 0 then begin
    if IRQ < 8 then begin
      Mask := Port[PIC1_DATA];
      Port[PIC1_DATA] := Mask or (1 shl IRQ);
    end else begin
      Mask := Port[PIC2_DATA];
      Port[PIC2_DATA] := Mask or (1 shl (IRQ - 8));
    end;
  end;
  
  {$IFDEF GO32V2}
  { Restore old handler }
  if IRQ < 8 then IntNo := IRQ + $08 else IntNo := IRQ + $68;
  Set_pm_interrupt(IntNo, IRQState[Handle].OldHandler);
  {$ENDIF}
  
  IRQState[Handle].Active := False;
end;

{ Read from ring buffer (called by SerRead when IRQ is active) }
function SerReadRing(Handle: TSerialHandle; var Buffer; Count: LongInt): LongInt;
var
  P: PByte;
  I: LongInt;
begin
  Result := 0;
  P := @Buffer;
  with IRQState[Handle].Ring do begin
    for I := 0 to Count - 1 do begin
      if Self.Count = 0 then Break;
      P^ := Data[Tail];
      Tail := (Tail + 1) and (RING_SIZE - 1);
      Dec(Self.Count);
      Inc(P);
      Inc(Result);
    end;
  end;
end;

{ Check ring buffer byte count }
function SerRingCount(Handle: TSerialHandle): Word;
begin
  if (Handle >= 0) and (Handle <= 3) and IRQState[Handle].Active then
    Result := IRQState[Handle].Ring.Count
  else
    Result := 0;
end;

{ Check ring buffer overruns }
function SerRingOverruns(Handle: TSerialHandle): LongInt;
begin
  if (Handle >= 0) and (Handle <= 3) and IRQState[Handle].Active then
    Result := IRQState[Handle].Ring.Overruns
  else
    Result := 0;
end;

{ Initialize IRQ state array }
procedure InitIRQState;
var I: Integer;
begin
  for I := 0 to 3 do begin
    IRQState[I].Active := False;
    IRQState[I].ComIdx := I;
  end;
end;
