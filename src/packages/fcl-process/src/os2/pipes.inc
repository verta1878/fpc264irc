{
    This file is part of the Free Pascal run time library.
    Copyright (c) 1999-2000 by Michael Van Canneyt

    OS/2 specific part of pipe stream.

    See the file COPYING.FPC, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

 **********************************************************************}

uses
 DosCalls;

const
 PipeBufSize = 1024;

Function CreatePipeHandles (Var Inhandle,OutHandle : Longint; APipeBufferSize : Cardinal = 1024) : Boolean;

begin
  CreatePipeHandles := DosCreatePipe (InHandle, OutHandle, APipeBufferSize) = 0;
end;

Function TInputPipeStream.GetNumBytesAvailable: DWord;

var
  PeekBuf   : array[0..0] of Byte;
  ReadBytes : Cardinal;
  Avail     : TAvailData;
  State     : Cardinal;

begin
  { DosPeekNPipe reports how many bytes are waiting in the pipe (Avail.cbPipe)
    without consuming them. It works for the anonymous pipes DosCreatePipe
    returns. If the peek fails (e.g. the handle is not a pipe), report 0. }
  ReadBytes := 0;
  Avail.cbPipe := 0;
  Avail.cbMessage := 0;
  State := 0;
  if DosPeekNPipe(Handle, PeekBuf, 0, ReadBytes, Avail, State) = 0 then
    Result := Avail.cbPipe
  else
    Result := 0;
end;

function TInputPipeStream.GetPosition: Int64;
begin
  Result:=FPos;
end;

procedure TInputPipeStream.InvalidSeek;
begin
  Raise EPipeSeek.Create (ENoSeekMsg);
end;

procedure PipeClose (const FHandle: THandle); inline;
begin
  FileClose(FHandle);
end;
