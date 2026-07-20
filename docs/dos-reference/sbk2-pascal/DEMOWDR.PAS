(* ------------------------------------------------------------------------ *)
(*  @@ Source Documentation                     *** PASCAL Version ***      *)
(*                                                                          *)
(*  TITLE  : DEMOWDR.PAS                                                    *)
(*                                                                          *)
(*  DESCRIPTION :                                                           *)
(*      This program demostrates how to perform wave recording using        *)
(*      the CTWDSK.DRV driver. The wave  recording is using the Disk        *)
(*      Double Buffering method. The input sources are CD and MIC.          *)
(*                                                                          *)
(*      The program retrieves BLASTER environment for the Card settings     *)
(*      and passes it to the driver.                                        *)
(*                                                                          *)
(*      Note that the program included the module LOADDRV.PAS to load       *)
(*      the loadable CTWDSK.DRV into memory.                                *)
(*                                                                          *)
(*  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

{$M $1000,0,102400}

program demowdr;

{ Include the SBK Unit, and any other units needed }
uses dos, crt,
{$IFDEF VER70}
sbktp7, tp7sbkx;
{$ELSE}
sbktp6, tp6sbkx;
{$ENDIF}

{ Include constants }
{$I sbkwave.inc }
{$I sbkaux.inc }

type
    PtrRec = record
        lo,hi : word;
    end;

const
    TWO_KBYTES:longint	= 2048;
    PARA_ADJ:word       = 15;   {* 15 bytes for paragraph adjustment *}

{*
## DMA_UNIT is unit of half embedded DMA in size of 2 kbytes .
## Change this value (from 1 - 16) if allocating own DMA buffer.
## This value effect the smoothy of sound output proportionally.
## Increase this value will be more efficient compare to DD_UNIT.
*}
    DMA_UNIT:word	= 4;

{*
## DD_UNIT is unit of half double disk buffer in size of 2 kbytes.
## Change this value (from 2 - 32) to allocate dd buffer.
## It is recommended that this unit is at least double the DMA_UNIT.
## This value effect the smoothy of sound output proportionally.
*}
    DD_UNIT:word	= 16;


var
    DMA_SIZE, DD_SIZE   : longint;
    ct_wave_status      : word;   { wave i/o status }
    dwWaveFormat        : longint;


{ ------------------------------------------------------------------------ }
{  @@ Usage                                                                }
{                                                                          }
{   procedure ShowError                                                    }
{                                                                          }
{   DESCRIPTION:                                                           }
{       Display error occurred during the process of wave I/O.             }
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
    Err := ctwdGetDrvError;
    writeln('Driver error = ',Err);

    Err := ctwdGetExtError;
    if (Err <> 0) then
        writeln('DOS error = ',Err);
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   procedure RecordFile (wIOHandle:word; szFilename : string)              }
{                                                                           }
{   DESCRIPTION:                                                            }
{       Record wave  with the filename specified.                           }
{                                                                           }
{   ENTRY:                                                                  }
{       szFilename - filename to be output.                                 }
{       wIOHandle  - i/o wave handle.                                       }
{                                                                           }
{   EXIT:                                                                   }
{       None.                                                               }
{                                                                           }
{ ------------------------------------------------------------------------- }

procedure RecordFile (wIOHandle:word; szFilename:string);
var
    Handle : integer;
    Error  : Boolean;
    retVal : word;
    szTemp : string;

begin
    szTemp := szFilename;
    Handle := sbkDosCreate(sbkMakeAsciizString(szTemp));

    if Handle <> -1 then begin
        ctwdSetSpeaker(0);

        if ctwdInput(wIOHandle,Handle) = 0 then begin
            writeln('Start recording....Press [ESC] to stop...');

            repeat
                if keypressed then
                    if Readkey = #27 then
                        retVal := ctwdStop(wIOHandle);
            until ct_wave_status = 0;

            writeln('Wave record ended.');
        end else
            ShowError;
        sbkDosClose(Handle);
    end else
        writeln('Create ',szFilename,' file error ...');
end;


{ ------------------------------------------------------------------------- }
{   @@ Usage                                                                }
{                                                                           }
{   function SetInputParam () : integer                                     }
{                                                                           }
{   Description :                                                           }
{       Set up the neccessary wave  input parameters.                       }
{                                                                           }
{   Entry :                                                                 }
{       none.                                                               }
{                                                                           }
{   Exit :                                                                  }
{       i/o wave handle if successful otherwise return -1.                  }
{                                                                           }
{ ------------------------------------------------------------------------- }

function SetInputParam : integer;
var
    dwValue     : longint;
    wIOHandle   : word;
    retVal      : integer;
    lpDiskBuffer, lpDmaBuffer : pointer;

begin
    { Allocate two DMA buffers. The 2nd is used when }
    { the 1st buffer crosses the 64k boundary        }
    lpDmaBuffer := ptr(sbkAllocMem(word(((DMA_SIZE * 2) + 15) div 16)), 0);

    if lpDmaBuffer = nil then begin
        writeln('Dos : Error allocating memory for DMA buffer.');
        SetInputParam := -1;
        Exit;
    end;

    { Allocate double disk buffer }
    lpDiskBuffer := ptr(sbkAllocMem(word((DD_SIZE + 15) div 16)), 0);

    if lpDiskBuffer = nil then begin
        writeln('Dos : Error allocating memory for double disk buffer.');
        SetInputParam := -1;
        Exit;
    end;

    { retrieving i/o wave handles }
    if ctwdGetParam(CTWAV_IOHANDLES,dwValue) = 0 then begin
        if dwValue <> 0 then begin
            { wIOHandle :- i/o wave handle used }
            wIOHandle := word(dwValue) - 1;

            { Set up ct_wave_status }
            if ctwdSetIOParam(wIOHandle,CTWAV_IO_LPSTATUSWORD,
                longint(@ct_wave_status)) = 0 then begin
                if ctwdSetDiskBuffer(wIOHandle,lpDiskBuffer,DD_UNIT) = 0 then begin
                    { convert the DMA buffer pointer to 32 bits linear address }
                    dwValue := longint(PtrRec(lpDmaBuffer).hi) shl 4 +
                                    PtrRec(lpDmaBuffer).lo;

                    { Set up DMA buffer. If failed, the DMA buffer may have  }
                    { crossed the 64 k boundary, thus use the 2nd Dma buffer }
                    if ctwdSetDMABuffer(wIOHandle,dwValue,DMA_UNIT) <> 0 then begin
                        dwValue := dwValue + DMA_SIZE;

                        { Set up DMA buffer again }
                        if ctwdSetDMABuffer(wIOHandle,dwValue,DMA_UNIT) <> 0 then begin
                            writeln('Driver : Error setting DMA buffer.');
                            SetInputParam := -1;
                            exit;
                        end;
                    end;

                    { Set stereo mode input }
                    retVal := ctwdSetIOParam(wIOHandle,CTWAV_IN_NCHANNELS,2);

                    { Set CD and MIC  as stereo input source }
                    retVal := ctwdSetIOParam(wIOHandle,CTWAV_IN_LEFTINPUTS,
                                MIXERSWI_CD_L or MIXERSWI_MIC);

                    retVal := ctwdSetIOParam(wIOHandle,CTWAV_IN_RIGHTINPUTS,
                                MIXERSWI_CD_R or MIXERSWI_MIC);

                    (* sample rate 22050 *)
                    retVal := ctwdSetIOParam(wIOHandle,CTWAV_IN_SAMPLESPERSEC,22050);

                    (* Wave format *)
                    retVal := ctwdSetIOParam(wIOHandle,CTWAV_IN_FORMAT,dwWaveFormat);

                    { By defaults    : sampling rate  : 11025 Hz }
                    { wave format    : 8 bits PCM                }
                    { bit per sample : 8 bits                    }

                    SetInputParam := wIOHandle;
                    Exit;
                end else
                    writeln('Driver : Error setting double disk buffer.');
            end else
                writeln('Error setting ct_wave_status.');
        end else
            writeln('I/O wave handle unavailable.');
    end else
        writeln('Error retrieving i/o wave handles.');

    SetInputParam := -1;
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{  function PrepareCTWDSKDrv(BlasterEnv:string) : integer                   }
{                                                                           }
{  Description :                                                            }
{       Load and endorse CTWDSK.DRV.                                        }
{                                                                           }
{  Entry :                                                                  }
{       BlasterEnv - BLASTER environment setting.                           }
{                                                                           }
{  Exit :                                                                   }
{       zero if sucessful, non-zero otherwise.                              }
{                                                                           }
{ ------------------------------------------------------------------------- }

function PrepareCTWDSKDrv(BlasterEnv:string) : integer;
var
    dwVersion : longint;
    len       : word;
    pBlaster  : pointer;

begin
    { load driver into memory }
    CTwdskDrv := sbkLoadDriver('CTWDSK.DRV',UNUSED);

    if CTwdskDrv <> nil then begin
        { Retrieves CTWDSK.DRV version }
        if ctwdGetParam(CTWAV_DRIVERVERSION,dwVersion) = 0 then begin
            if word(dwVersion) >= $0304 then begin
                { make a C style string with null terminated }
                pBlaster := sbkMakeAsciizString(BlasterEnv);

                { Passes BLASTER environment settings to driver }
                if ctwdGetEnvSettings(pBlaster) = 0 then begin
                    PrepareCTWDSKDrv := 0;
                    exit;
                end else
                    writeln('Driver : BLASTER environment is not valid');
            end else begin
                write('Invalid CTWDSK.DRV - ');
                writeln('I need CTWDSK.DRV version 3.05 or higher.');
            end;
        end else
            writeln('Unrecognized CTWDSK.DRV');
    end else
        writeln('Error loading CTWDSK.DRV or CTWDSK.DRV not found');

    PrepareCTWDSKDrv := 1;
end;


{ ------------------------------------------------------------------------ }
{ main function }
var
    BlasterEnv : string[64];
    wIOHandle  : word;
    lpMarkPtr  : pointer;
    WaveFile   : string;

begin  { program body }
    DMA_SIZE := (DMA_UNIT * TWO_KBYTES * 2) + PARA_ADJ;
    DD_SIZE :=  (DD_UNIT * TWO_KBYTES * 2) + PARA_ADJ;

    dwWaveFormat := 0;

    if ParamCount < 1 then begin
        writeln('Usage : DEMOWDR wav_filename [compress_method]');
        writeln('where compress_method = ALAW, MULAW or CT');
        exit;
    end;

    if ParamCount > 1 then begin
        if (ParamStr(2) = 'CT') or (ParamStr(2) = 'ct') then begin
            dwWaveFormat := WAVE_FORMAT_CREATIVE_ADPCM;
        end else if (ParamStr(2) = 'ALAW') or (ParamStr(2) = 'alaw') then begin
                dwWaveFormat := WAVE_FORMAT_ALAW;
        end else if (ParamStr(2) = 'MULAW') or (ParamStr(2) = 'mulaw') then begin
            dwWaveFormat := WAVE_FORMAT_MULAW;
        end else begin
            writeln('Unknown ',ParamStr(2),' compression method.');
            Halt;
        end;
    end;

    WaveFile := ParamStr(1);
    writeln('Record ',WaveFile,' through double disk buffer.');

    { Retrieve the BLASTER environment settings }
    BlasterEnv := GetEnv('BLASTER');

    if BlasterEnv <> '' then begin
        Mark(lpMarkPtr);

        { Loads CTWDSK.DRV into memory }
        if PrepareCTWDSKDrv(BlasterEnv) = 0 then begin
            if ctwdInit = 0 then begin
                wIOHandle := SetInputParam;

                if integer(wIOHandle) >= 0 then
                    RecordFile(wIOHandle,WaveFile);

                ctwdTerminate;
            end else
                ShowError;
        end;

        Release(lpMarkPtr);
    end else
        writeln('BLASTER environment not set or incomplete or invalid.');
end.
{ End of file }
