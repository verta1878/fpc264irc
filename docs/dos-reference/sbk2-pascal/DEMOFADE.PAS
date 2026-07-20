(* ------------------------------------------------------------------------ *)
(*  @@ Source Documentation                     *** PASCAL Version ***      *)
(*                                                                          *)
(*  TITLE : DEMOFADE.PAS                                                    *)
(*                                                                          *)
(*  DESCRIPTION :                                                           *)
(*      This program demostrates how to use the AUXDRV.DRV driver to        *)
(*      perform fading effect and volume control on the playing midi        *)
(*      file.                                                               *)
(*                                                                          *)
(*      Note that the BLASTER environment has to be set before executing    *)
(*      this program.                                                       *)
(*                                                                          *)
(*  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

program demofade;

{ Include the SBK unit and any other units needed }
uses DOS,CRT,
{$IFDEF VER70}
sbktp7,tp7sbkx;
{$ELSE}
sbktp6,tp6sbkx;
{$ENDIF}

{$I sbkaux.inc}
{$I sbkmidi.inc}

var
    wMidiStatus : word;             { Midi music output status }
    wFadeStatus : word;             { Fading effect output status }

{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   function LoadFile (szFilename : string) : pointer                       }
{                                                                           }
{   DESCRIPTION:                                                            }
{       Load file into memory. The Global variable lpMusicBuf is used to    }
{       point to the loaded buffer.                                         }
{                                                                           }
{   ENTRY:                                                                  }
{       szFileName :- File to be loaded.                                    }
{                                                                           }
{   EXIT:                                                                   }
{        pointer to the loaded file if successful,                          }
{        els return nil.                                                    }
{                                                                           }
{ ------------------------------------------------------------------------- }

function LoadFile (szFilename : string) : pointer;
type
    PtrRec = record
        lo, hi : word
    end;

var
    wTemp, wByteRead    : word;
    lpTmpPtr            : pointer;
    lFSize              : longint;
    F                   : file;

begin
    {$I-}
    Assign(F, szFilename);
    Reset(F,1);
    {$I+}

    LoadFile := nil;

    if IOResult = 0 then begin
        lFSize := FileSize(F);

        repeat
            wTemp := $8000;

            if lFSize < $8000 then
                wTemp := word(lFSize);

            GetMem(lpTmpPtr,wTemp);
            if lpTmpPtr = nil then begin
                writeln('Music file allocation memory error.');
                exit;
            end;

            lFSize := lFSize - wTemp;
        until lFSize = 0;

        LoadFile := lpTmpPtr;
        wByteRead := 0;

        { Read data from file to buffer }
        repeat
            BlockRead(F,lpTmpPtr^,$8000,wTemp);
            wByteRead := wByteRead + wTemp;

            { advance pointer }
            PtrRec(lpTmpPtr).lo := PtrRec(lpTmpPtr).lo + wTemp;

            { adjust when cross segment }
            if not Boolean(Hi(wByteRead)) then
                PtrRec(lpTmpPtr).hi := PtrRec(lpTmpPtr).hi + $1000;

        until wTemp <> $8000;

        close(F);
    end else
        writeln('Open ',szFilename,' error ...');
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   function PlayMidi (szFilename:string) : word                            }
{                                                                           }
{   DESCRIPTION:                                                            }
{        Play a Midi file in the background and return.                     }
{                                                                           }
{   ENTRY:                                                                  }
{       szFileName :- Music file to be played.                              }
{                                                                           }
{   EXIT:                                                                   }
{        zero if successful, else return no-zero.                           }
{                                                                           }
{ ------------------------------------------------------------------------- }

function PlayMidi (szFilename:string) : word;
var
    lpChannelMapper : pointer;
    lpMusicBuf      : pointer;
    retVal          : word;

begin
    lpMusicBuf := LoadFile(szFilename);

    if lpMusicBuf <> nil then begin
        if ctmdResetMidiDriver = 0 then begin
            if ctmdSetOutputStatusAddx(wMidiStatus) = 0 then begin
                if ctmdPrepareMidiStart(lpMusicBuf) = 0 then begin
                    if ctmdPlayMidiMusic = 0 then begin
                        PlayMidi := 0;
                        exit;
                    end else
                        writeln('Error outputing MIDI.');
                end else
                    writeln('Error preparing MIDI output.');
            end else
                writeln('Error setting MIDI output status.');
        end else
            writeln('Error resetting MIDI driver.');
    end;

    PlayMidi := 1;
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   procedure WaitEffectEnd                                                 }
{                                                                           }
{   DESCRIPTION:                                                            }
{        Control Panning effect of the digitized sound.                     }
{                                                                           }
{   ENTRY:                                                                  }
{       None                                                                }
{                                                                           }
{   EXIT:                                                                   }
{       None                                                                }
{                                                                           }
{ ------------------------------------------------------------------------- }

procedure WaitEffectEnd;
const
    ESC     = 27;
    big_P   = 80;
    small_p = 112;
    big_C   = 67;
    small_c = 99;

var
    key     : char;
    keyVal  : word;
    retVal  : word;
    Pause   : word;

begin
    Pause := 0;

    { End of sound effect process ? }
    while wFadeStatus <> 0 do begin
        { Stop effect if no MIDI output process }
        if wMidiStatus = 0 then
            retVal := ctadStopCtrl;

        if KeyPressed then begin
            key := ReadKey;
            keyVal := Ord(key);

            case keyVal of
                ESC :
                    begin
                        write('MIDI output stops ....               ',chr(13));
                        retVal := ctadStopCtrl;
                        retVal := ctmdStopMidiMusic;
                    end;

                big_P, small_p :
                    begin
                        write('Pause ....                       ',chr(13));
                        retVal := ctadPauseCtrl;
                        retVal := ctmdPauseMidiMusic;
                        Pause := 1;
                    end;

                big_C, small_c :
                    begin
                        if Pause = 1 then
                        begin
                            write('Continues ....               ',chr(13));
                            retVal := ctadStartCtrl ;
                            retVal := ctmdResumeMidiMusic ;
                            Pause := 0;
                        end;
                    end;
            end;
        end;
    end;
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   procedure SoundEffect                                                   }
{                                                                           }
{   DESCRIPTION:                                                            }
{        Adds fading effect on the playback midi.                           }
{                                                                           }
{   ENTRY:                                                                  }
{       None.                                                               }
{                                                                           }
{   EXIT:                                                                   }
{       None.                                                               }
{                                                                           }
{ ------------------------------------------------------------------------- }

procedure SoundEffect;
var
    wPrevVol    : word;
    retVal      : word;

begin
    writeln('Fading effect....');
    writeln('[Esc] - to stop');
    writeln('[P  ] - to pause');
    writeln('[C  ] - to continue');

    { initialize driver }
    ctadInit;

    { preserve the previous MIDI volume settings }
    wPrevVol := ctadGetVolume(MIXERVOL_MIDI);

    { set address of the pan status }
    ctadSetFadeStAddx(wFadeStatus);

    writeln;

    while wMidiStatus <> 0 do begin
        { set MIDI left/right volume to 0 }
        retVal := ctadSetVolume(MIXERVOL_MIDI, $8080) ;

        { Setup MIDI volume fading in mode 0 }
        write('Fading effect...zoommmmm....in... ',chr(13));
        retVal := ctadFade(MIXERVOL_MIDI, $f0f0, 5000, 0, 0 );
        retVal := ctadStartCtrl;
        WaitEffectEnd;

        { set MIDI left/right volume to $f0f0 }
        retVal := ctadSetVolume(MIXERVOL_MIDI,$f0f0);

        { Setup MIDI volume fading in mode 0 }
        write('Fading effect...zoommmmm....out... ',chr(13));
        retVal := ctadFade(MIXERVOL_MIDI, $8080, 5000, 0, 0);
        retVal := ctadStartCtrl;
        WaitEffectEnd;
    end;

    writeln('End of fading effect.');

    { set MIDI left/right volume back to previous status }
    retVal := ctadSetVolume(MIXERVOL_MIDI, wPrevVol);

    ctadTerminate;
end;


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
    { load driver into memory }
    CTmidiDrv := sbkLoadDriver('CTMIDI.DRV',UNUSED);

    if CTmidiDrv <> nil then begin
        if ctmdGetDrvVer >= $0100 then begin
            { make a C style string with null terminated }
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
        writeln('Error loading CTMIDI.DRV or CTMIDI.DRV not found.');

    PrepareCTMIDIDrv := 1;
end;


{ ------------------------------------------------------------------------- }
{   @@ Usage                                                                }
{                                                                           }
{   function PrepareCTAUXDrv(BlasterEnv:string) : integer                   }
{                                                                           }
{   Description :                                                           }
{       Load and endorse AUXDRV.DRV.                                        }
{                                                                           }
{   Entry :                                                                 }
{       BlasterEnv - BLASTER environment string.                            }
{                                                                           }
{   Exit :                                                                  }
{       zero if sucessful, non-zero otherwise.                              }
{                                                                           }
{ ------------------------------------------------------------------------- }

function PrepareCTAUXDrv(BlasterEnv:string) : integer;
begin
    { load driver into memory }
    CTAuxDrv := sbkLoadDriver('AUXDRV.DRV',UNUSED);

    if CTAuxDrv <> nil then begin
        { Retrieves AUXDRV.DRV version }
        if ctadGetDrvVer >= $302 then begin
            { make a C style string with null terminated        }
            { Passes BLASTER environment settings to the driver }
            if ctadGetEnvSettings(sbkMakeAsciizString(BlasterEnv)) = 0 then begin
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


{---------------------------------------------------------------------------}
{ main function }
var
    BlasterEnv : string[64];
    MidiFile : string;
    lpMarkPtr : pointer;
    retVal : word;

begin
    if ParamCount < 1  then begin
        writeln('Usage : DEMOFADE mid_filename');
        halt ;
    end;

    MidiFile := ParamStr(1);

    { Retrieve the BLASTER environment settings }
    BlasterEnv := getenv('BLASTER');

    if BlasterEnv <> '' then begin
        Mark(lpMarkPtr);

        { Load CTMIDI.DRV into memory }
        if PrepareCTMIDIDrv(BlasterEnv) = 0 then begin
            { Load the AUXDRV.DRV into memory }
            if PrepareCTAUXDrv(BlasterEnv) = 0 then begin
                { Initialize CTMIDI.DRV driver }
                if ctmdInit = 0 then begin
                    { Output midi music }
                    if PlayMidi(MidiFile) = 0 then
                        SoundEffect; { Adds fading effect }

                    { Terminate CTMIDI.DRV driver }
                    retVal := ctmdTerminate;
                end;
            end;
        end;

        Release(lpMarkPtr);     { free memory }
    end
    else
        writeln('BLASTER environment not set.');
end.
{ End of file }
