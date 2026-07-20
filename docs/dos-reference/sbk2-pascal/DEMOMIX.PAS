(* ------------------------------------------------------------------------ *)
(*  @@ Source Documentation                     *** PASCAL Version ***      *)
(*                                                                          *)
(*  TITLE : DEMOMIX.PAS                                                     *)
(*                                                                          *)
(*  DESCRIPTION :                                                           *)
(*      This program demostrates how to use the AUXDRV.DRV driver to        *)
(*      get and set the mixer setting.                                      *)
(*      file.                                                               *)
(*                                                                          *)
(*      Note that the BLASTER environment has to be set before executing    *)
(*      this program.                                                       *)
(*                                                                          *)
(*  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

program demomix;

{ Include the SBK unit and any other units needed }
uses dos, crt,
{$IFDEF VER70}
sbktp7,tp7sbkx;
{$ELSE}
sbktp6,tp6sbkx;
{$ENDIF}

{ driver constants }
{$I sbkaux.inc}
{$I sbkvoice.inc}

type

    Mixer = ^structMIXER;
    structMIXER = Record
        inpSwitch   : Longint; {  Input source switches }
        outSwitch   : Longint; {  Output source switches }
        stAGC       : Word;    {  AGC status - on oR off }
        inpGain     : Word;    {  Input gain - Range (0 - 3) }
        outGain     : Word;    {  Output gain - Range (0 - 3) }
        Bass        : Word;    {  Bass level - Range (0 - 255) }
        Treble      : Word;    {  Treble level - Range (0 - 255) }
        volMaster   : Word;    {  Master volume level - Range (0 - 255) }
        volVoice    : Word;    {  Voice volume level - Range (0 -255) }
        volMidi     : Word;    {  Midi volume level - Range (0 -255) }
        volCD       : Word;    {  CD volume level - Range (0 -255) }
        volLine     : Word;    {  Line in volume level - Range (0 -255) }
        volMic      : Word;    {  Mic volume level - Range (0 -255) }
        volPcSpker  : Word;    {  PC speaker volume level - Range (0 -255) }
    end;


{ ------------------------------------------------------------------------- }
{   @@ Usage                                                                }
{                                                                           }
{   procedure GetMixer(ptrMixer:Mixer)                                      }
{                                                                           }
{   Description :                                                           }
{       Retrieves and stores the mixer setting.                             }
{                                                                           }
{   Entry :                                                                 }
{       ptrMixer - pointer of the mixer structure where the mixer           }
{       setting is to be stored.                                            }
{                                                                           }
{   Exit :                                                                  }
{       none.                                                               }
{                                                                           }
{ ------------------------------------------------------------------------- }

procedure GetMixer(ptrMixer:Mixer);
begin
    { Gets input sources switch }
    ptrMixer^.inpSwitch := ctadGetMixerSwitch(0);
    { Gets output sources switch }
    ptrMixer^.outSwitch := ctadGetMixerSwitch(1);

    { Gets AGC status }
    ptrMixer^.stAGC := ctadGetAGC;

    { Get mixer input gain }
    ptrMixer^.inpGain := ctadGetMixerGain(0);
    { Get mixer output gain }
    ptrMixer^.outGain := ctadGetMixerGain(1);

    { Gets mixer bass level }
    ptrMixer^.Bass := ctadGetToneLevel(1);
    { Gets mixer treble level }
    ptrMixer^.Treble := ctadGetToneLevel(0);

    { Gets master, voice, CD, line-in, mic and PC speaker volume level }
    ptrMixer^.volMaster := ctadGetVolume(MIXERVOL_MASTER);
    ptrMixer^.volVoice := ctadGetVolume(MIXERVOL_VOICE);
    ptrMixer^.volMidi := ctadGetVolume(MIXERVOL_MIDI);
    ptrMixer^.volCD := ctadGetVolume(MIXERVOL_CD);
    ptrMixer^.volLine := ctadGetVolume(MIXERVOL_LINE);
    ptrMixer^.volMic := ctadGetVolume(MIXERVOL_MIC);
    ptrMixer^.volPcSpker := ctadGetVolume(MIXERVOL_PCSPEAKER);

end;


{ ------------------------------------------------------------------------- }
{   @@ Usage                                                                }
{                                                                           }
{   procedure SetMixer(ptrMixer:Mixer)                                      }
{                                                                           }
{   Description :                                                           }
{       Sets mixer.                                                         }
{                                                                           }
{   Entry :                                                                 }
{       ptrMixer - pointer of the mixer structure which specifies           }
{                the mixer setting.                                         }
{                                                                           }
{   Exit :                                                                  }
{       none.                                                               }
{                                                                           }
{ ------------------------------------------------------------------------- }

procedure SetMixer(ptrMixer:Mixer);
var
    retVal : word;

begin
    { Sets input sources switch }
    retVal := ctadSetMixerSwitch(0,ptrMixer^.inpSwitch);
    { Sets output sources switch }
    retVal := ctadSetMixerSwitch(1,ptrMixer^.outSwitch);

    { Sets AGC status }
    retVal := ctadSetAGC(ptrMixer^.stAGC);

    { Set mixer input gain }
    retVal := ctadSetMixerGain(0,ptrMixer^.inpGain);
    { Set mixer output gain }
    retVal := ctadSetMixerGain(1,ptrMixer^.outGain);

    { Sets mixer bass level }
    retVal := ctadSetToneLevel(1,ptrMixer^.Bass);
    { Sets mixer treble level }
    retVal := ctadSetToneLevel(0,ptrMixer^.Treble);

    { Sets master, voice, CD, line-in, mic and PC speaker volume level }
    retVal := ctadSetVolume(MIXERVOL_MASTER,ptrMixer^.volMaster);
    retVal := ctadSetVolume(MIXERVOL_VOICE,ptrMixer^.volVoice);
    retVal := ctadSetVolume(MIXERVOL_MIDI,ptrMixer^.volMidi);
    retVal := ctadSetVolume(MIXERVOL_CD,ptrMixer^.volCD);
    retVal := ctadSetVolume(MIXERVOL_LINE,ptrMixer^.volLine);
    retVal := ctadSetVolume(MIXERVOL_MIC,ptrMixer^.volMic);
    retVal := ctadSetVolume(MIXERVOL_PCSPEAKER,ptrMixer^.volPcSpker);
end;


{ ------------------------------------------------------------------------- }
{   @@ Usage                                                                }
{                                                                           }
{   procedure PrepareMixerSetting(ptrMixer:Mixer)                           }
{                                                                           }
{   Description :                                                           }
{       Fills in the mixer structure correspondingly.                       }
{                                                                           }
{   Entry :                                                                 }
{       ptrMixer - pointer of the mixer structure.                          }
{                                                                           }
{   Exit :                                                                  }
{       none.                                                               }
{                                                                           }
{                                                                           }
{ ------------------------------------------------------------------------  }

procedure PrepareMixerSetting(ptrMixer:Mixer);
var
    dwValue : longint;

begin
    { initialises to zero }
    FillChar(ptrMixer^.inpSwitch,SizeOf(structMIXER),0);

    { sets MIDI as stereo input source }
    dwValue := MIXERSWI_MIDI_R;
    dwValue := dwValue or MIXERSWI_MIDI_L;
    ptrMixer^.inpSwitch := dwValue;
    ptrMixer^.inpSwitch := (ptrMixer^.inpSwitch) shl 16 or dwValue;

    { sets both the left and right input gain to 2 }
    ptrMixer^.inpGain := 2;
    ptrMixer^.inpGain := (ptrMixer^.inpGain shl 8) or 2;

    { sets CD as ouput source }
    ptrMixer^.outSwitch := MIXERSWI_CD_R;
    ptrMixer^.outSwitch := ptrMixer^.outSwitch or MIXERSWI_CD_L;

    { sets both the left and right output gain to 2 }
    ptrMixer^.outGain := 2;
    ptrMixer^.outGain := (ptrMixer^.outGain shl 8) or 2;

    { sets both the right and left treble level to maximum }
    ptrMixer^.Treble := $ffff;
    { sets both the right and left bass level to maximum }
    ptrMixer^.Bass := $ffff;

    { sets both the right and left Master volume to 3/4 }
    { of the maximum level                              }
    ptrMixer^.volMaster := word(($ff * 3) div 4);
    ptrMixer^.volMaster := ptrMixer^.volMaster shl 8;
    ptrMixer^.volMaster := ptrMixer^.volMaster or word(($FF * 3) div 4);

    { sets both the right and left CD volume to 3/4 }
    { of the maximum level                          }
    ptrMixer^.volCD := word(($ff * 3) div 4);
    ptrMixer^.volCD := ptrMixer^.volCD shl 8;
    ptrMixer^.volCD := ptrMixer^.volCD or word(($ff * 3) div 4);
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{  procedure DisplayMixer(ptrMixer:Mixer)                                   }
{                                                                           }
{  Description :                                                            }
{       Displays mixer setting.                                             }
{                                                                           }
{  Entry :                                                                  }
{       ptrMixer - pointer of the mixer structure which the mixer           }
{                  setting is to be displayed.                              }
{                                                                           }
{  Exit :                                                                   }
{       none.                                                               }
{ ------------------------------------------------------------------------- }

procedure DisplayMixer(ptrMixer:Mixer);

type
    str4 = string[4];

var
    OnOrOff : Array[0..1] of str4;

begin
    OnOrOff[0] := 'OFF';
    OnOrOff[1] := 'ON ';

    writeln('        -------------- Mixer Settings ---------------');

    writeln('Input sources','Left Channel':24,'Right Channel':24);

    write('   Mic             :');
    write(OnOrOff[((ptrMixer^.inpSwitch shr 16) and MIXERSWI_MIC)
                    div MIXERSWI_MIC] : 8);
    writeln(OnOrOff[(ptrMixer^.inpSwitch and MIXERSWI_MIC)
                    div MIXERSWI_MIC] : 23);

    write('   CD              :');
    write('L:':7,OnOrOff[((ptrMixer^.inpSwitch shr 16) and MIXERSWI_CD_L)
                    div MIXERSWI_CD_L]);
    write('  R:',OnOrOff[((ptrMixer^.inpSwitch shr 16) and MIXERSWI_CD_R)
                    div MIXERSWI_CD_R]);
    write('L:':13,OnOrOff[(ptrMixer^.inpSwitch and MIXERSWI_CD_L)
                    div MIXERSWI_CD_L]);
    writeln('  R:',OnOrOff[(ptrMixer^.inpSwitch and MIXERSWI_CD_R)
                    div MIXERSWI_CD_R]);

    write('   Line            :');
    write('L:':7,OnOrOff[((ptrMixer^.inpSwitch shr 16) and MIXERSWI_LINE_L)
                    div MIXERSWI_LINE_L]);
    write('  R:',OnOrOff[((ptrMixer^.inpSwitch shr 16) and MIXERSWI_LINE_R)
                    div MIXERSWI_LINE_R]);
    write('L:':13,OnOrOff[(ptrMixer^.inpSwitch and MIXERSWI_LINE_L)
                    div MIXERSWI_LINE_L]);
    writeln('  R:',OnOrOff[(ptrMixer^.inpSwitch and MIXERSWI_LINE_R)
                    div MIXERSWI_LINE_R]);

    write('   Midi            :');
    write('L:':7,OnOrOff[((ptrMixer^.inpSwitch shr 16) and MIXERSWI_MIDI_L)
                    div MIXERSWI_MIDI_L]);
    write('  R:',OnOrOff[((ptrMixer^.inpSwitch shr 16) and MIXERSWI_MIDI_R)
                    div MIXERSWI_MIDI_R]);
    write('L:':13,OnOrOff[(ptrMixer^.inpSwitch and MIXERSWI_MIDI_L)
                    div MIXERSWI_MIDI_L]);
    writeln('  R:',OnOrOff[(ptrMixer^.inpSwitch and MIXERSWI_MIDI_R)
                    div MIXERSWI_MIDI_R]);

    writeln('Output sources');

    write('   Mic             :');
    writeln(OnOrOff[(ptrMixer^.outSwitch and MIXERSWI_MIC)
                    div MIXERSWI_MIC] : 8);

    write('   CD              :');
    write('L:':7,OnOrOff[(ptrMixer^.outSwitch and MIXERSWI_CD_L)
                    div MIXERSWI_CD_L]);
    writeln('  R:',OnOrOff[(ptrMixer^.outSwitch and MIXERSWI_CD_R)
                    div MIXERSWI_CD_R]);

    write('   Line            :');
    write('L:':7,OnOrOff[(ptrMixer^.outSwitch and MIXERSWI_LINE_L)
                    div MIXERSWI_LINE_L]);
    writeln('  R:',OnOrOff[(ptrMixer^.outSwitch and MIXERSWI_LINE_R)
                    div MIXERSWI_LINE_R]);

    write('AGC status         :');
    writeln(OnOrOff[ptrMixer^.stAGC]:8);

    writeln('Input gain         :',
        'L:':7,(ptrMixer^.inpGain shr 8),'  R:',
        (ptrMixer^.inpGain and $00ff));

    writeln('Output gain        :',
        'L:':7,(ptrMixer^.outGain shr 8),'  R:',
        (ptrMixer^.outGain and $00ff));

    writeln('Bass level         :',
        'L:':7,(ptrMixer^.Bass shr 8),'  R:',
        (ptrMixer^.Bass and $00ff));

    writeln('Treble level       :',
        'L:':7,(ptrMixer^.Treble shr 8),'  R:',
        (ptrMixer^.Treble and $00ff));

    writeln('Master volume      :',
        'L:':7,(ptrMixer^.volMaster shr 8),'  R:',
        (ptrMixer^.volMaster and $00ff));

    writeln('Voice volume       :',
        'L:':7,(ptrMixer^.volVoice shr 8),'  R:',
        (ptrMixer^.volVoice and $00ff));

    writeln('Midi volume        :',
        'L:':7,(ptrMixer^.volMidi shr 8),'  R:',
        (ptrMixer^.volMidi and $00ff));

    writeln('CD volume          :',
        'L:':7,(ptrMixer^.volCD shr 8),'  R:',
        (ptrMixer^.volCD and $00ff));

    writeln('Line volume        :',
        'L:':7,(ptrMixer^.volLine shr 8),'  R:',
        (ptrMixer^.volLine and $00ff));

    writeln('Mic volume         :',ptrMixer^.volMic:8);

    writeln('PC speaker volume  :',ptrMixer^.volPcSpker:8);

end;


{ ------------------------------------------------------------------------- }
{   @@ Usage                                                                }
{                                                                           }
{   function PrepareCTAUXDrv(BlasterEnv:pointer) : integer                  }
{                                                                           }
{   Description :                                                           }
{       Load and endorse AUXDRV.DRV.                                        }
{                                                                           }
{   Entry :                                                                 }
{       BlasterEnv - pointer to the BLASTER environment string.             }
{                                                                           }
{   Exit :                                                                  }
{       zero if sucessful, non-zero otherwise.                              }
{                                                                           }
{ ------------------------------------------------------------------------- }

function PrepareCTAUXDrv(BlasterEnv:string) : integer;
var
   len      : word;
   pBlaster : pointer;

begin
    { load driver into memory }
    CTAuxDrv := sbkLoadDriver('AUXDRV.DRV',UNUSED);

    if CTAuxDrv <> nil then begin
        { Retrieves AUXDRV.DRV version }
        if ctadGetDrvVer >= $302 then begin
            { make a C style string with null terminated }
            pBlaster := sbkMakeAsciizString(BlasterEnv) ;

            { Passes BLASTER environment settings to the driver }
            if ctadGetEnvSettings(pBlaster) = 0 then begin
                PrepareCTAUXDrv := 0;
                Exit;
            end else
                writeln('BLASTER environment is not valid');
        end else begin
            write('Invalid AUXDRV.DRV - ');
            writeln('I need AUXDRV.DRV version 3.02 or higher.');
        end;
    end else
        writeln('Error loading AUXDRV.DRV or AUXDRV.DRV not found.');

    PrepareCTAUXDrv := 1;
end;

{ ------------------------------------------------------------------------- }
Var
    currSetting : structMIXER;
    prevSetting : structMIXER;
    BlasterEnv  : string[64];
    lpMarkPtr   : pointer;
    retVal      : word;

{ main function }
begin
    { Retrieve the BLASTER environment settings }
    BlasterEnv := GetEnv('BLASTER');

    if Length(BlasterEnv) <> 0 then begin
        Mark(lpMarkPtr);
        { Loads AUXDRV.DRV into memory }
        if PrepareCTAUXdrv(BlasterEnv) = 0 then begin
            { Initialises AUXDRV.DRV }
            ctadInit;

            { Stores mixer setting }
            writeln('');
            writeln('Saving current mixer settings...');
            GetMixer(@prevSetting) ;

            { Displays mixer setting }
            writeln('Press a key to display current mixer settings...');
            retVal:= word(ReadKey);
            DisplayMixer(@prevSetting);

            { Fills in the mixer structure }
            PrepareMixerSetting(@currSetting);

            { Sets mixer }
            writeln('Changing the mixer settings...');
            SetMixer(@currSetting);
            writeln('Press a key to view the changes on mixer settings...');
            retVal := word(ReadKey);

            { Displays mixer setting }
            DisplayMixer(@currSetting);

            { Restores previous mixer setting }
            writeln('Restoring back the previous mixer settings...');
            SetMixer(@prevSetting);
            writeln('Press a key to display current mixer settings...');
            retVal := word(ReadKey);

            { Display mixer settings }
            DisplayMixer(@prevSetting);

            { Terminates AUXDRV.DRV }
            ctadTerminate;

            writeln('End...');
        end;

        Release(lpMarkPtr);
    end else
        writeln('BLASTER environment not set.');
end.
{ End Of File }
