(* ------------------------------------------------------------------------ *)
(*  @@ Source Documentation                     *** PASCAL Version ***      *)
(*                                                                          *)
(*  TITLE : DEMOPAN.PAS                                                     *)
(*                                                                          *)
(*  DESCRIPTION :                                                           *)
(*      This program demostrates how to use the AUXDRV.DRV driver to        *)
(*      perform panning effect and volume control on the playing voice      *)
(*      file.                                                               *)
(*                                                                          *)
(*      Note that the BLASTER environment has to be set before executing    *)
(*      this program.                                                       *)
(*                                                                          *)
(*  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

{$M $1000,0,102400}

program demovpv;

{ Include the SBK unit and any other units needed }
uses DOS,CRT,
{$IFDEF VER70}
sbktp7,tp7sbkx;
{$ELSE}
sbktp6,tp6sbkx;
{$ENDIF}

{$I sbkaux.inc }
{$I sbkvoice.inc }


const
    TWO_KBYTES:longint	= 2048;
    PARA_ADJ:word       = 15;   {* 15 bytes for paragraph adjustment *}

{*
## DMA_UNIT is unit of half embedded DMA in size of 2 kbytes .
## Change this value (from 1 - 16) if allocating own DMA buffer.
## This value effect the smoothy of sound output proportionally.
## Increase this value will be more efficient compare to DD_UNIT.
## Since this program use default DMA, increse DMA_UNIT cause no effect.
*}
    DMA_UNIT:word	= 1;

{*
## DD_UNIT is unit of half double disk buffer in size of 2 kbytes.
## Change this value (from 2 - 32) to allocate dd buffer.
## It is recommended that this unit is at least double the DMA_UNIT.
## This value effect the smoothy of sound output proportionally.
*}
    DD_UNIT:word	= 32;


var
    DMA_SIZE, DD_SIZE	: longint;
    wIOHandle           : word;     { Voice I/O handle }
    ct_voice_status     : word;     { Voice output status }
    wPanStatus          : word;     { Panning effect status }


{ ------------------------------------------------------------------------ }
{  @@ Usage                                                                }
{                                                                          }
{   procedure ShowError                                                    }
{                                                                          }
{   DESCRIPTION:                                                           }
{       Display error occurred during the process of voice I/O.            }
{                                                                          }
{   ENTRY:                                                                 }
{       None.                                                              }
{                                                                          }
{   EXIT:                                                                  }
{       None.                                                              }
{                                                                          }
{ ------------------------------------------------------------------------ }

procedure ShowError;
var
    Err : integer;

begin
    Err := ctvdGetDrvError;
    writeln('Driver error = ',Err);

    Err := ctvdGetExtError;
    if (Err <> 0) then
        writeln('DOS error = ',Err);
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
    key : char;
    keyVal : word;
    retVal : word;
    Pause : word;

begin
    writeln('Panning effect....');
    writeln('   [Esc] - to stop');
    writeln('   [P  ] - to pause');
    writeln('   [C  ] - to continue');

    Pause := 0;

    { End of sound effect process ? }
    while wPanStatus <> 0 do begin
        { Stop effect if no voice process }
        if ct_voice_status = 0 then begin
            retVal := ctadStopCtrl;
        end;

        if KeyPressed then begin
            key := ReadKey;
            keyVal := Ord(key);

            case keyVal of
                ESC :
                    begin
                        retVal := ctadStopCtrl;
                        retVal := ctvdStop(wIOHandle);
                        writeln('Voice Stops ....');
                    end;

                big_P, small_p :
                    begin
                        writeln('Pause ....');
                        retVal := ctadPauseCtrl;
                        retVal := ctvdPause(wIOHandle);
                        Pause := 1;
                    end;

                big_C, small_c :
                    begin
                        if Pause = 1 then
                        begin
                            writeln('Voice continues ....');
                            retVal := ctadStartCtrl;
                            retVal := ctvdContinue(wIOHandle);
                            Pause := 0;
                        end;
                    end;
            end;
        end;
    end;

    writeln('End of panning effect.');
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   procedure SoundEffect                                                   }
{                                                                           }
{   DESCRIPTION:                                                            }
{        Add panning effect on the playback digitized sound.                }
{                                                                           }
{   ENTRY:                                                                  }
{       None                                                                }
{                                                                           }
{   EXIT:                                                                   }
{       None                                                                }
{                                                                           }
{ ------------------------------------------------------------------------- }

procedure SoundEffect;
var
    wPrevVol : word;
    retVal   : word;

begin
    { initialize ddriver }
    ctadInit;

    { preserve the previous voice volume settings }
    wPrevVol := ctadGetVolume(MIXERVOL_VOICE);

    { set voice left/right volume to 0 }
    retVal := ctadSetVolume(MIXERVOL_VOICE,$0000) ;

    { set address of the pan status }
    ctadSetPanStAddx(wPanStatus);

    { Setup digitized sound for panning in mode 1  }
    { repeat for 5 times                           }
    retVal := ctadPan(MIXERVOL_VOICE, 0, 255, 2000, 1, 10);
    retVal := ctadStartCtrl;
    WaitEffectEnd;

    { set voice left/right volume back to previous status }
    retVal := ctadSetVolume(MIXERVOL_VOICE, wPrevVol);

    ctadTerminate;
    ctvdSetSpeaker(0);

end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   function OutputVoice (Handle:word) : word;                              }
{                                                                           }
{   DESCRIPTION:                                                            }
{       Output voice with the file handle specified.                        }
{                                                                           }
{   ENTRY:                                                                  }
{       Handle : handle of a file to be outputted.                          }
{                                                                           }
{   EXIT:                                                                   }
{       zero if successful, else return non-zero                            }
{                                                                           }
{ ------------------------------------------------------------------------- }

function OutputVoice (Handle:word) : word;
var
    OutOK        : word;
    dwValue      : longint;
    lpDiskBuffer : pointer;
    retVal       : word;

begin
    OutOK := 1;

    { Get voice IO handles supported by the driver }
    if ctvdGetParam(CTVOC_IOHANDLES,dwValue) = 0 then begin
        if dwValue <> 0 then begin
            { i/o voice handle }
            wIOHandle := dwValue - 1 ;

            { allocate memory for double disk buffer }
            lpDiskBuffer := ptr(sbkAllocMem(word((DD_SIZE + 15) div 16)), 0);

            if lpDiskBuffer <> nil then begin
              { set double disk buffer }
                if ctvdSetDiskBuffer(wIOHandle,lpDiskBuffer,DD_UNIT) = 0 then begin
                    { Set voice output status address }
                    if ctvdSetIoParam(wIOHandle,CTVOC_IO_LPSTATUSWORD,
                            longint(@ct_voice_status)) = 0 then begin
                        { turn on speaker }
                        ctvdSetSpeaker(1);

                        { Output voice }
                        if ctvdOutput(wIOHandle,Handle) = 0 then begin
                            OutOK := 0;
                        end else
                            ShowError;
                    end else
                        writeln('Error setting ct_voice_status.');
                end else
                    writeln ('Driver error - assigning Disk buffer.');
            end else
                writeln('Dos error - allocating Disk buffer.');
        end else
            writeln('I/O voice handle unavailable.');
    end else
        writeln('Error getting Voice IO Handles.');

    OutputVoice := OutOK;
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{  function PrepareCTVDSKDrv(BlasterEnv:string) : integer                   }
{                                                                           }
{  Description :                                                            }
{       Load and endorse CTVDSK.DRV.                                        }
{                                                                           }
{  Entry :                                                                  }
{       BlasterEnv - BLASTER environment setting.                           }
{                                                                           }
{  Exit :                                                                   }
{       zero if sucessful, non-zero otherwise.                              }
{                                                                           }
{ ------------------------------------------------------------------------- }

function PrepareCTVDSKDrv(BlasterEnv:string) : integer;
var
    dwVersion   : longint;
    len         : word;
    pBlaster    : pointer;

begin
    { load driver with embedded DMA buffer }
    ctvdsk_drv := sbkLoadDriver('CTVDSK.DRV',UNUSED);

    if ctvdsk_drv <> nil then begin
        { Retrieves CTVDSK.DRV version }
        if ctvdGetParam(CTVOC_DRIVERVERSION,dwVersion) = 0 then begin
            if word(dwVersion) >= $0304 then begin
                { make a C style string with null terminated }
                pBlaster := sbkMakeAsciizString(BlasterEnv) ;

                { Passes BLASTER environment settings to driver }
                if ctvdGetEnvSettings(pBlaster) = 0 then begin
                    PrepareCTVDSKDrv := 0;
                    exit;
                end else
                    writeln('BLASTER environment is not valid');
            end else begin
                write('Invalid CTVDSK.DRV - ');
                writeln('I need CTVDSK.DRV version 3.04 or higher.');
            end;
        end else
            writeln('Unrecognised CTVDSK.DRV.');
    end else
        writeln('Error loading CTVDSK.DRV or CTVDSK.DRV not found.');

    PrepareCTVDSKDrv := 1;
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
var
   len      : word;
   pBlaster : pointer;

begin
    { load drivewr into memory }
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

{ main function }
var
    Handle      : word;
    BlasterEnv  : string[64];
    lpMarkPtr   : pointer;
    VocFile     : string;

begin
    DMA_SIZE := (DMA_UNIT * TWO_KBYTES * 2) + PARA_ADJ;
    DD_SIZE :=  (DD_UNIT * TWO_KBYTES * 2) + PARA_ADJ;

    if ParamCount < 1  then begin
        writeln('Usage : DEMOPAN voc_filename');
        halt ;
    end;

    VocFile := ParamStr(1);

    { Retrieve the BLASTER environment settings }
    BlasterEnv := GetEnv('BLASTER');

     if length(BlasterEnv) <> 0 then begin
        Mark(lpMarkPtr);
        { Loads CTVDSK.DRV into memory }
        if PrepareCTVDSKDrv(BlasterEnv) = 0 then begin
            { Loads AUXDRV.DRV into memory }
            if PrepareCTAUXdrv(BlasterEnv) = 0 then begin
                { Initialises CTVDSK.DRV }
                if ctvdInit = 0 then begin
                    { Open voice file }
                    Handle := sbkDosOpen(sbkMakeAsciizString(VocFile));

                    if Handle <> -1 then begin
                        { Output voice file }
                        if OutputVoice(Handle) = 0 then begin
                            { Adds on sound effect }
                            SoundEffect;
                        end;

                        sbkDosClose(Handle);
                    end;

                    { Terminates CTVDSK.DRV }
                    ctvdTerminate;
                end else
                    ShowError;
            end;
        end;
        Release(lpMarkPtr);
    end else
        writeln('BLASTER environment not set.');
end.
{ End Of File }
