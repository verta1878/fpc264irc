(* ------------------------------------------------------------------------ *)
(*  @@ Source Documentation                     *** PASCAL Version ***      *)
(*                                                                          *)
(*  TITLE  : MIDIIN.PAS                                                     *)
(*                                                                          *)
(*  DESCRIPTION :                                                           *)
(*      This program demostrates how to use the CTMIDI.DRV driver           *)
(*      to input MIDI codes from external MIDI instrunment.                 *)
(*                                                                          *)
(*      Note that the BLASTER environment has to be set before executing    *)
(*      this program.                                                       *)
(*                                                                          *)
(*  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

{$X+}

program midi;

{ Include the SBK unit and any other units needed }
uses DOS,CRT,
{$IFDEF VER70}
sbktp7,tp7sbkx;
{$ELSE}
sbktp6,tp6sbkx;
{$ENDIF}

{$I sbkmidi.inc}

Type
    PtrRec = record
        lo, hi : word
    end;

Const
    MAX_EVENT : longint = 8192;
    NOT_USED  : longint = 0;

Var
    wMidiInStatus : word;     (* External Midi input status *)
    boRecIntoFile : boolean;
    sRecFile      : string;

{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{  function PrepareCTMIDIDrv(BlasterEnv:string) : word                      }
{                                                                           }
{  Description :                                                            }
{       Load and endorse CTMIDI.DRV.                                        }
{                                                                           }
{  Entry :                                                                  }
{       BlasterEnv - BLASTER environment setting.                           }
{                                                                           }
{  Exit :                                                                   }
{       zero if sucessful, non-zero otherwise.                              }
{                                                                           }
{ ------------------------------------------------------------------------- }

function PrepareCTMIDIDrv(BlasterEnv:string) : word;
begin
    { load driver }
    CTmidiDrv := sbkLoadDriver('CTMIDI.DRV',UNUSED);

    if CTmidiDrv <> nil then begin
        if ctmdGetDrvVer >= $0100 then begin
            { make a C style string with null terminated }
            { pass BLASTER setting to driver             }
            if ctmdGetEnvSettings(sbkMakeAsciizString(BlasterEnv)) = 0 then begin
                PrepareCTMIDIDrv := 0;
                exit;
            end else
                writeln('BLASTER environment is not valid');
        end else begin
            write('Invalid CTMIDI.DRV - ') ;
            writeln('I need CTMIDI.DRV version 1.00 or higher.') ;
        end;
    end else
        writeln('Error loading CTMIDI.DRV or CTMIDI.DRV not found.') ;

    PrepareCTMIDIDrv := 1;
end;


(* ------------------------------------------------------------------------ *)
(*  @@ Usage                                                                *)
(*                                                                          *)
(*  SaveFile (lpMidiBuffer : pointer)                                       *)
(*                                                                          *)
(*  DESCRIPTION:                                                            *)
(*      Save MIDI code into file.                                           *)
(*                                                                          *)
(*  ENTRY:                                                                  *)
(*      lpMidiBuffer :- pointer to MIDI code buffer.                        *)
(*                                                                          *)
(*  EXIT:                                                                   *)
(*      none.                                                               *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

procedure SaveFile (lpMidiBuffer: pointer);
var
    wByteToWrite, wByteWritten, wTmp : word;
    lRecordedSize : longint;
    F             : file;

begin
    {$I-}
    Assign(F, sRecFile);
    Rewrite(F,1);
    {$I+}

    if IOResult = 0 then begin
        writeln('Saving file < ',sRecFile,' > ...');
        lRecordedSize := longint(lpMidiBuffer^) * SizeOf(longint);
        longint(lpMidiBuffer) := longint(lpMidiBuffer) + 4;

        wTmp := 0;

        repeat
            wByteToWrite := $8000;

            if lRecordedSize < $8000 then
                wByteToWrite := Word(lRecordedSize);

            BlockWrite(F,lpMidiBuffer^,wByteToWrite,wByteWritten);

            if wByteWritten <> wByteToWrite then begin
                writeln('Disk Full ...');
                lRecordedSize := 0;
            end else begin
                wTmp := wTmp + wByteWritten;

                { advance pointer }
                PtrRec(lpMidiBuffer).lo := PtrRec(lpMidiBuffer).lo + wByteWritten;

                { adjust when cross segment }
                if not Boolean(Hi(wTmp)) then
                    PtrRec(lpMidiBuffer).hi := PtrRec(lpMidiBuffer).hi + $1000;

                lRecordedSize := lRecordedSize - wByteWritten;
            end;
        until lRecordedSize = 0;

        Close(F);
    end else
        writeln('Create < ',sRecFile,' > error.');
end;


(* ------------------------------------------------------------------------ *)
(*  Display Hexadecimal character                                           *)
(* ------------------------------------------------------------------------ *)
{$S-}
procedure DispHexChar (bDispChar : byte);

begin
    asm
        PUSH    AX
        PUSH    BX
        PUSH    DX

        MOV     DH,0
        MOV     DL,bDispChar

        PUSH    DX
        SHR     DX,1                { shift the high nibble to lsb }
        SHR     DX,1
        SHR     DX,1
        SHR     DX,1
        AND     DX,0FH

            clc                     { clear CARRY flag }
            cmp     DL,9
            jg      @DISPH10

            add     DL,'0'
            jmp     @DISPH20

        @DISPH10:
             sub     DL,0ah
             add     DL,'A'

        @DISPH20:
             MOV    AL,DL
             MOV    AH,0EH
             MOV    BL,7
             INT    10H


         POP      DX
         AND      DX,0FH

             clc                    { clear CARRY flag }
             cmp     DL,9
             jg      @DISPH30

             add     DL,'0'
             jmp     @DISPH40

        @DISPH30:
             sub     DL,0ah
             add     DL,'A'

        @DISPH40:
             MOV   AL,DL
             MOV   AH,0EH
             MOV   BL,7
             INT   10H

         POP      DX
         POP      BX
         POP      AX
    end;
end;
{$S+}

(* ------------------------------------------------------------------------ *)
(*  @@ Usage                                                                *)
(*                                                                          *)
(*  CallBack (lpMidiCode : pointer; lToken : longint) : integer             *)
(*                                                                          *)
(*  Description :                                                           *)
(*      Call back function by CTMIDI.DRV driver which displays the MIDI     *)
(*      codes to the screen. The method of displaying is as below:-         *)
(*                                                                          *)
(*          Code-Time_stamp                                                 *)
(*      where                                                               *)
(*          Code       :- Status, data, control number or control value     *)
(*          Time_stamp :- Signifies the time (in milisecond) the Code is    *)
(*                        received. Either in DIFFERENTIATE_MODE or         *)
(*                        ELAPSED_MODE.                                     *)
(*                                                                          *)
(*  Entry :                                                                 *)
(*      lpMidiCode :- far pointer to the MIDI code.                         *)
(*                    lower one byte is the Code and upper three bytes      *)
(*                    are Time_stamp.                                       *)
(*      lToken     :- contains the value which passed to the function       *)
(*                    ctmdSetMidiCallBackFunct through the second           *)
(*                    parameter. For example If default data segment        *)
(*                    need to be accessed, an address of the default        *)
(*                    data segment can be passed as second parameter        *)
(*                    during call to ctmdSetMidiCallBackFunct function.     *)
(*                                                                          *)
(*  Exit :                                                                  *)
(*      none.                                                               *)
(*                                                                          *)
(*  NOTE !!!!                                                               *)
(*      1. Call back function must be in Pascal calling convention.         *)
(*      2. Turn check_stack off.                                            *)
(*      3. Data segment is belong to CTMIDI.DRV driver. You need to swap    *)
(*         to application data segment if you want to access global         *)
(*         variables.                                                       *)
(*      4. Stack segment is belong to CTMIDI.DRV driver.                    *)
(*      5. Cannot call DOS INT 21 function since it is not re-entrance.     *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)
{$S-}
{$F+} function CallBack (lpMidiCode : pointer; lToken : longint) : integer; {$F-}
begin
    DispHexChar(byte(lpMidiCode^)) ;

    asm
        MOV     AH,0EH
        MOV     BL,7
        MOV     AL,'-'
        INT     10H
    end;

    longint(lpMidiCode) := longint(lpMidiCode) + 3;
    DispHexChar( byte(lpMidiCode^));
    dec(longint(lpMidiCode));
    DispHexChar( byte(lpMidiCode^));
    dec(longint(lpMidiCode));
    DispHexChar( byte(lpMidiCode^));

    asm
        MOV     AH,0EH
        MOV     BL,7
        MOV     AL,' '
        INT     10H
    end;

    CallBack := 0;
end;
{$S+}

(* ------------------------------------------------------------------------ *)
(*  @@ Usage                                                                *)
(*                                                                          *)
(*  InputMidi                                                               *)
(*                                                                          *)
(*  DESCRIPTION:                                                            *)
(*      Input Midi code.                                                    *)
(*                                                                          *)
(*  ENTRY:                                                                  *)
(*      none.                                                               *)
(*                                                                          *)
(*  EXIT:                                                                   *)
(*      none.                                                               *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

procedure InputMidi;
var
    lpMidiBuffer,lpTmp : pointer;
    lBufSize           : longint;
    wTmp               : word;

begin
    { reset MIDI driver }
    ctmdResetMidiDriver;

    { Set MIDI input status address }
    if ctmdSetInputStatusAddx(wMidiInStatus) = 0 then begin
        { Set time stamping mode - default is DIFFERENTIATE_MODE }
        { ctmdSetTimeStampMode (ELAPSED_MODE) ;}

        { Input midi to file }
        if boRecIntoFile then begin
            { allocate memory }
            Mark(lpMidiBuffer);
            lBufSize := MAX_EVENT * SizeOf(longint);

            repeat
                wTmp := $8000;

                if lBufSize < $8000 then
                    wTmp := word(lBufSize);

                GetMem(lpTmp,wTmp);

                lBufSize := lBufSize - wTmp;
             until lBufSize = 0;

            if lpTmp = nil then begin
                writeln('Error allocating MIDI input buffer.');
                exit;
            end;

            { set the first DWORD to 0 }
            longint(lpMidiBuffer^) := 0;

            { set input buffer }
            if ctmdSetMidiInputBuffer(lpMidiBuffer,MAX_EVENT) <> 0 then begin
                writeln('Error setting MIDI input buffer.');
                Release(lpMidiBuffer);
                exit;
            end;

            writeln('Number of MIDI events can be stored is ',MAX_EVENT-1);
        end;

        { set MIDI call back function to print out MIDI code }
        if ctmdSetMidiCallBackFunct(@CallBack,NOT_USED) <> 0 then begin
            writeln('Error setting up call back function.');
            exit;
        end;

        { start MIDI input }
        if ctmdStartMidiInput = 0 then begin
            writeln('Press [ESC] to stop...');

            { poll for MIDI input status }
            while wMidiInStatus  <> 0 do begin

                { stop MIDI input }
                if KeyPressed then
                    if ReadKey = chr(27) then
                        ctmdStopMidiInput;
            end;
            writeln('Input end.');
        end else begin
            writeln('Error during MIDI input.');
            exit;
        end;

        { save into file }
        if boRecIntoFile then begin
            SaveFile(lpMidiBuffer);
            Release(lpMidiBuffer);
        end;
    end else
        writeln('Error setting MIDI input status address.');
end;


(* ------------------------------------------------------------------------ *)
{ main function }
var
    lpMarkMem : pointer;

begin
    writeln('Creative Demo External MIDI Instrument Input.');

    sRecFile := getenv('BLASTER');
    if sRecFile = '' then begin
        writeln('BLASTER environment not set.');
        halt;
    end;

    Mark(lpMarkMem);

    (* Load CTMIDI.DRV into memory *)
    if PrepareCTMIDIDrv(sRecFile) = 0 then begin
        if ParamCount < 1 then begin
            boRecIntoFile := false;
            writeln('Usage : MIDIIN [record.raw]');
            writeln('    Where with [record.raw] specified, ',
                    'MIDI codes will be saved.');
        end else begin
            boRecIntoFile := true;
            sRecFile := ParamStr(1) ;
            writeln('Raw MIDI code will be saved into < ',sRecFile,' >');
        end;

        (* Initialize CTMIDI.DRV driver *)
        if ctmdInit = 0 then begin

            (* Get Midi input *)
            InputMidi;

            (* Terminate CTMIDI.DRV driver *)
            ctmdTerminate;
        end;
    end;

    Release(lpMarkMem);
end.
{ End of file }
