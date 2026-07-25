{$MODE OBJFPC}
unit netbios;
{ NetBIOS interface for i8086 real-mode DOS.
  INT 5Ch with ES:BX pointing to NCB (Network Control Block).

  Copyright (c) 2024 FPC264IRC Project — GPLv3

  Used by MS LAN Manager, Windows for Workgroups 3.11,
  and any DOS LAN client using NetBEUI or NetBIOS over TCP/IP.
}

interface

uses Dos;

const
  { NetBIOS commands }
  NB_CALL           = $10;  { Open session }
  NB_LISTEN         = $11;  { Wait for session }
  NB_HANG_UP        = $12;  { Close session }
  NB_SEND           = $14;  { Send data }
  NB_RECEIVE        = $15;  { Receive data }
  NB_RECEIVE_ANY    = $16;  { Receive from any session }
  NB_CHAIN_SEND     = $17;  { Chain send }
  NB_SEND_DATAGRAM  = $20;  { Send datagram }
  NB_RECV_DATAGRAM  = $21;  { Receive datagram }
  NB_SEND_BROADCAST = $22;  { Send broadcast datagram }
  NB_RECV_BROADCAST = $23;  { Receive broadcast datagram }
  NB_ADD_NAME       = $30;  { Add unique name }
  NB_ADD_GROUP      = $36;  { Add group name }
  NB_DELETE_NAME    = $31;  { Delete name }
  NB_RESET          = $32;  { Reset adapter }
  NB_STATUS         = $33;  { Adapter status }
  NB_SESSION_STATUS = $34;  { Session status }
  NB_CANCEL         = $35;  { Cancel command }
  NB_ENUM_LANA      = $37;  { Enumerate LANA numbers }

  NB_NO_WAIT        = $80;  { OR with command for async }

  { Return codes }
  NB_OK             = $00;
  NB_PENDING        = $FF;
  NB_ERR_TIMEOUT    = $05;
  NB_ERR_NO_RESOURCE= $09;
  NB_ERR_SESSION_CLOSED = $0A;
  NB_ERR_DUPLICATE  = $0D;
  NB_ERR_NAME_NOT_FOUND = $0E;

type
  TNetBIOSName = array[0..15] of Char;

  PNCB = ^TNCB;
  TNCB = packed record
    Command    : Byte;                { command code }
    RetCode    : Byte;                { return code }
    LSN        : Byte;                { local session number }
    Num        : Byte;                { name number }
    Buffer     : Pointer;          { data buffer pointer }
    Length     : Word;                { buffer length }
    CallName   : TNetBIOSName;        { remote name }
    Name       : TNetBIOSName;        { local name }
    RTO        : Byte;                { receive timeout (500ms units) }
    STO        : Byte;                { send timeout (500ms units) }
    PostAddr   : FarPointer;          { POST routine address }
    LanaNum    : Byte;                { LANA number }
    CmdCplt    : Byte;                { command completion code }
    Reserved   : array[0..9] of Byte; { reserved }
  end;

var
  NBError: Byte;

function  NBInit: Boolean;
function  NBSubmit(var NCB: TNCB): Byte;
procedure NBReset(LanaNum: Byte; MaxSessions, MaxNames: Byte);
function  NBAddName(var NCB: TNCB; const AName: TNetBIOSName): Boolean;
function  NBDeleteName(var NCB: TNCB; const AName: TNetBIOSName): Boolean;
function  NBCall(var NCB: TNCB; const LocalName, RemoteName: TNetBIOSName): Boolean;
function  NBListen(var NCB: TNCB; const LocalName, RemoteName: TNetBIOSName): Boolean;
function  NBSend(var NCB: TNCB; Buffer: Pointer; Length: Word): Boolean;
function  NBReceive(var NCB: TNCB; Buffer: Pointer; var Length: Word): Boolean;
procedure NBHangUp(var NCB: TNCB);
procedure NBMakeName(var Dest: TNetBIOSName; const Src: String);

implementation

var
  Regs: Registers;

function NBInit: Boolean;
{ Check if NetBIOS is loaded by issuing a reset }
var NCB: TNCB;
begin
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.Command := NB_STATUS;
  NBSubmit(NCB);
  NBInit := (NCB.RetCode <> $FF) and (NCB.RetCode <> $03);
end;

function NBSubmit(var NCB: TNCB): Byte;
begin
  Regs.ES := Seg(NCB);
  Regs.BX := Ofs(NCB);
  Intr($5C, Regs);
  NBError := NCB.RetCode;
  NBSubmit := NCB.RetCode;
end;

procedure NBReset(LanaNum: Byte; MaxSessions, MaxNames: Byte);
var NCB: TNCB;
begin
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.Command := NB_RESET;
  NCB.LanaNum := LanaNum;
  NCB.LSN := MaxSessions;
  NCB.Num := MaxNames;
  NBSubmit(NCB);
end;

procedure NBMakeName(var Dest: TNetBIOSName; const Src: String);
var I: Integer;
begin
  FillChar(Dest, 16, ' ');
  for I := 1 to Length(Src) do
    if I <= 16 then Dest[I-1] := Src[I];
end;

function NBAddName(var NCB: TNCB; const AName: TNetBIOSName): Boolean;
begin
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.Command := NB_ADD_NAME;
  NCB.Name := AName;
  NBSubmit(NCB);
  NBAddName := (NCB.RetCode = NB_OK);
end;

function NBDeleteName(var NCB: TNCB; const AName: TNetBIOSName): Boolean;
begin
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.Command := NB_DELETE_NAME;
  NCB.Name := AName;
  NBSubmit(NCB);
  NBDeleteName := (NCB.RetCode = NB_OK);
end;

function NBCall(var NCB: TNCB; const LocalName, RemoteName: TNetBIOSName): Boolean;
begin
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.Command := NB_CALL;
  NCB.Name := LocalName;
  NCB.CallName := RemoteName;
  NCB.RTO := 60;  { 30 second timeout }
  NCB.STO := 60;
  NBSubmit(NCB);
  NBCall := (NCB.RetCode = NB_OK);
end;

function NBListen(var NCB: TNCB; const LocalName, RemoteName: TNetBIOSName): Boolean;
begin
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.Command := NB_LISTEN;
  NCB.Name := LocalName;
  NCB.CallName := RemoteName;
  NCB.RTO := 0;  { no timeout — wait forever }
  NCB.STO := 0;
  NBSubmit(NCB);
  NBListen := (NCB.RetCode = NB_OK);
end;

function NBSend(var NCB: TNCB; Buffer: Pointer; Length: Word): Boolean;
begin
  NCB.Command := NB_SEND;
  NCB.Buffer := Buffer;
  NCB.Length := Length;
  NBSubmit(NCB);
  NBSend := (NCB.RetCode = NB_OK);
end;

function NBReceive(var NCB: TNCB; Buffer: Pointer; var Length: Word): Boolean;
begin
  NCB.Command := NB_RECEIVE;
  NCB.Buffer := Buffer;
  NCB.Length := Length;
  NBSubmit(NCB);
  Length := NCB.Length;
  NBReceive := (NCB.RetCode = NB_OK);
end;

procedure NBHangUp(var NCB: TNCB);
begin
  NCB.Command := NB_HANG_UP;
  NBSubmit(NCB);
end;

end.
