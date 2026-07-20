(* ------------------------------------------------------------------------ *)
(*  @@ Source Documentation                     *** PASCAL Version ***      *)
(*                                                                          *)
(*  TITLE : MIDIOUT.PAS                                                     *)
(*                                                                          *)
(*  DESCRIPTION :                                                           *)
(*      This program demostrates how to use the CTMIDI.DRV driver           *)
(*      to output MIDI codes to internal or external MIDI synthesizer.      *)
(*                                                                          *)
(*      Note that the BLASTER environment has to be set before executing    *)
(*      this program.                                                       *)
(*                                                                          *)
(*  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

program midiout;

{ Include the SBK unit and any other units needed }
uses DOS,CRT,
{$IFDEF VER70}
sbktp7,tp7sbkx;
{$ELSE}
sbktp6,tp6sbkx;
{$ENDIF}

{$I sbkmidi.inc}

const
    (* C major scale *)
    szNote : array[0..15] of byte = (
                60,62,64,65,67,69,71,72,
                71,69,67,65,64,62,60,0
            ) ;

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
var
    len         : word;
    pBlaster    : pointer;

begin
    CTmidiDrv := sbkLoadDriver('CTMIDI.DRV',UNUSED);
    if CTmidiDrv <> nil then begin
        if ctmdGetDrvVer >= $0100 then begin
            { make a C style string with null terminated }
            pBlaster := sbkMakeAsciizString(BlasterEnv);

            if ctmdGetEnvSettings(pBlaster) = 0 then begin
                PrepareCTMIDIDrv := 0;
                exit;
            end else
                writeln('BLASTER environment is not valid');
        end else begin
            write('Invalid CTMIDI.DRV - ') ;
            writeln('I need CTMIDI.DRV version 1.00 or higher.') ;
        end;
    end else
        writeln('Error loading CTMIDI.DRV or CTMIDI.DRV not found.');

    PrepareCTMIDIDrv := 1;
end;


{---------------------------------------------------------------------------}
{ main function }
var
    EnvStr : string[64];
    x, y, count, retVal : integer;
    lpMarkPtr, lpInstance : pointer;

begin
    writeln('Output MIDI codes to internal or external MIDI synthesizer.');

    EnvStr := getenv('BLASTER');
    if EnvStr = '' then begin
        writeln('BLASTER environment not set.');
        halt;
    end;

    Mark(lpMarkPtr);

    { Load CTMIDI.DRV into memory }
    if PrepareCTMIDIDrv(EnvStr) = 0 then begin
        { Initialize CTMIDI.DRV driver }
        if ctmdInit = 0 then begin
            { set synthesizer accoding to environment setting }
            EnvStr := getenv('MIDI');

            if EnvStr <> '' then begin
                { convert to null terminated string }
                lpInstance := sbkMakeAsciizString(EnvStr);
                retVal := ctmdGetMidiEnvSettings(lpInstance);
            end;

            writeln('Wait...Output MIDI codes...Press a key to stop.');

            count := 0;

            while (szNote[count] <> 0) and (not boolean(KeyPressed)) do begin
                { send status note on, note and velocity }
                retVal := ctmdSendShortMessage($90,word(szNote[count]),$7F);

                for x:=1 to 100 do
                    for y:=1 to 8000 do ;

                (* send status note off, note and velocity *)
                retVal := ctmdSendShortMessage($80,word(szNote[count]),$7F);

                count := count + 1;
            end;

            (* Terminate CTMIDI.DRV driver *)
            retVal := ctmdTerminate;
        end else
            writeln('Error CTMIDI driver initialization.');
    end;

    Release(lpMarkPtr);     { free memory }
end.
{ End of file }
