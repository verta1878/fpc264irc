{
   System independent system interface for go32v2

   Copyright (c) 2000 by Pierre Muller
   AT&T -> Intel asm conversion for fpc264irc r3.1

   See the file COPYING.FPC, included in this distribution,
   for details about the copyright.

   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Library General Public License for more details.
}

Const
  SystemEventActive : Boolean = false;

procedure InitSystemMsg;
var
  res : word;
begin
  if SystemEventActive then
    exit;
  { enable close }
  asm
    mov eax, $168f
    mov edx, 1
    int $2f
    mov Res, ax
  end;
  SystemEventActive:=(Res=0);
end;

procedure DoneSystemMsg;
begin
  if not SystemEventActive then
    exit;
  { disable close }
  asm
    mov eax, $168f
    mov edx, 0
    int $2f
  end;
  SystemEventActive:=false;
end;

procedure GetSystemEvent(var SystemEvent: TSystemEvent);
begin
  PollSystemEvent(SystemEvent);
end;

function PollSystemEvent(var SystemEvent: TSystemEvent):boolean;
var
  CloseState : word;
begin
  SystemEvent.typ:=SysNothing;
  if not SystemEventActive then
    exit(false);
  { Query close }
  asm
    mov eax, $168f
    mov edx, 100
    int $2f
    mov CloseState, ax
  end;
  if (CloseState = 0) then
    begin
      { acknowledge Close }
      asm
        mov eax, $168f
        mov edx, 200
        int $2f
        mov CloseState, ax
      end;
      if CloseState=0 then
        begin
          PollSystemEvent:=true;
          SystemEvent.typ:=SysClose;
        end;
    end;
end;

