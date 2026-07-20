(* ------------------------------------------------------------------------ *)
(*  @@ Source Documentation                     *** PASCAL Version ***      *)
(*                                                                          *)
(*  Title : DEMOCD.PAS                                                      *)
(*                                                                          *)
(*  Description :                                                           *)
(*      Exercises all the features enhanced in the Creative CDROM drive.    *)
(*                                                                          *)
(*  Note :                                                                  *)
(*      Some of the features in this program e.g LOCK, UNLOCK, EJECT        *)
(*      and CLOSE are not applicable to the earlier version of Creative     *)
(*      CDROM drives.                                                       *)
(*                                                                          *)
(*  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

program democd;

{ Include the SBK Unit, and any other units needed }
uses dos, crt,
{$IFDEF VER70}
sbktp7,tp7sbkx;
{$ELSE}
sbktp6,tp6sbkx;
{$ENDIF}

{ Include constants }
{$I sbkcd.inc }


(* ------------------------------------------------------------------------ *)
(*  Conversion from BCD to binary                                           *)
(* ------------------------------------------------------------------------ *)
function BCD2Binary(data: byte) : byte;
var
    retVal : byte;

begin
    retVal := (data shr 4) * 10 + (data and $0f);

    BCD2Binary := retVal;
end;


(* ------------------------------------------------------------------------ *)
(*  Conversion from High Sierra format to Red Book format                   *)
(* ------------------------------------------------------------------------ *)
function HSG2RED(data : longint ) : longint;
var
    v0, v1, v2 : longint;

begin
    v2 := data div 4500;                (* 4500 = 60 * 75 *)
    v1 := (data mod 4500) div 75;
    v0 := (data mod 4500) mod 75;

    HSG2RED := ((v2 shl 16) or (v1 shl 8)  or v0);
end;


(* ------------------------------------------------------------------------ *)
(*  Display drive operation options                                         *)
(* ------------------------------------------------------------------------ *)
procedure Display;
begin
    writeln;
    writeln('Compact Disc Player Demo Program');
    writeln;
    writeln('   P  : Play');
    writeln('   S  : Stop');
    writeln('   A  : Pause');
    writeln('   C  : Continue');
    writeln('   N  : Next Track');
    writeln('   L  : Previous Track');
    writeln('   F  : Fast Forward');
    writeln('   R  : Rewind');
    writeln('   E  : Eject');
    writeln('   D  : Close');
    writeln('   X  : Lock');
    writeln('   Z  : Unlock');
    writeln('   Q  : Quit');
    writeln;
end;


(* ------------------------------------------------------------------------ *)
(*  Show CD info                                                            *)
(* ------------------------------------------------------------------------ *)
procedure ShowInfo;
var
    qch_info    : QCHAN_INFO;
    volume      : longint;
    t           : integer;

begin
    t := sbcdGetLocInfo(qch_info);
    t := sbcdGetVolume(volume);
    volume := HSG2RED(volume);

    write('Disc - ',qch_info.bPMin,':',qch_info.bPSec);
    write('    Track - ',BCD2Binary(qch_info.bTNo));
    write(' ',qch_info.bMin,':',qch_info.bSec);
    write('    Vol - ',Lo(word(volume shr 16)),':',Hi(word(volume)),'    ');
    write(chr(13));
end;


(* ------------------------------------------------------------------------ *)
{ main program }
var
    skip_sec    : byte;
    ch          : char;
    quit        : word;
    drv_num, t  : integer;


begin   (* main function *)

    skip_sec := 16;
    quit := 0;

    (* initialization *)
    if sbcdInit(drv_num ) = 0 then  begin
        (* display drive operation options *)
        Display;

        while (quit = 0) do begin
            (* show CD info *)
            ShowInfo;

            if keypressed then begin
                ch := Readkey;
                ch := UpCase(ch);

                case ch of

                    'P' :                           (* play first track *)
                        t := sbcdPlay(1, 0, $ffff); (* till the end     *)

                    'S' :                           (* stop *)
                        t := sbcdStop;

                    'A' :                           (* pause *)
                        t := sbcdPause;

                    'C' :                           (* continue *)
                        t := sbcdContinue;

                    'N' :                           (* next track *)
                        t := sbcdNextTrack;

                    'L' :                           (* previous track *)
                        t := sbcdPrevTrack;

                    'F' :                           (* fast forward 16 sec *)
                        t := sbcdFastforward(skip_sec);

                    'R' :                           (* rewind 16 sec *)
                        t := sbcdRewind(skip_sec);

                    'E' :
                        t := sbcdEject;             (* open tray *)

                    'D' :
                        t := sbcdCloseTray;         (* close tray *)

                    'X' :
                        t := sbcdLockDoor(1);       (* lock tray *)

                    'Z' :
                        t := sbcdLockDoor(0);       (* unlock tray *)

                    'Q' :                           (* quit *)
                        quit := 1;
                end;
            end;
        end;
    end else
        writeln('Initialization error.');
end.
(* End of file *)
