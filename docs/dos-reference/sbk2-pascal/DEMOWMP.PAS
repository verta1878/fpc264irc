(* ------------------------------------------------------------------------ *)
(*  @@ Source Documentation                     *** PASCAL Version ***      *)
(*                                                                          *)
(*  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       *)
(*                                                                          *)
(*  TITLE : DEMOWMP.PAS                                                     *)
(*                                                                          *)
(*  DESCRIPTION :                                                           *)
(*      This program demostrates how to perform wave out using the          *)
(*      CTWMEM.DRV driver. The wave  out is using the Conventional          *)
(*      memory method.                                                      *)
(*                                                                          *)
(*      The program retrieves BLASTER environment for the Card settings     *)
(*      and passes it to the driver.                                        *)
(*                                                                          *)
(*      Note that the program included the module LOADDRV.PAS to load       *)
(*      the loadable CTWMEM.DRV into memory.                                *)
(*      The input file size is limited by conventional memory available.    *)
(*                                                                          *)
(*  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

{$M $1000,0,102400}

program demovmp;

{ Include the SBK Unit, and any other units needed }
uses dos, crt,
{$IFDEF VER70}
sbktp7, tp7sbkx;
{$ELSE}
sbktp6, tp6sbkx;
{$ENDIF}

{ Include constants }
{$I sbkwave.inc }

type
    PtrRec = record
        lo, hi : word
    end;

const
    TWO_KBYTES:longint	= 2048;
    PARA_ADJ:word       = 15;     { 15 bytes for paragraph adjustment }

{*
## DMA_UNIT is unit of half embedded DMA in size of 2 kbytes .
## Change this value (from 1 - 16) if allocating own DMA buffer.
## This value effect the smoothy of sound output proportionally.
*}
    DMA_UNIT:word	= 4;


var
    DMA_SIZE       : longint;
    ct_wave_status : word;  { wave output status }


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   function LoadFile (szFilename : string) : pointer                       }
{                                                                           }
{   DESCRIPTION:                                                            }
{       Load file into memory.                                              }
{                                                                           }
{   ENTRY:                                                                  }
{       szFileName :- File to be loaded.                                    }
{                                                                           }
{   EXIT:                                                                   }
{ pointer to the wave buffer if successful else return nil.                 }
{                                                                           }
{ ------------------------------------------------------------------------- }

function LoadFile (szFilename : string) : pointer;
var

    lpTmpPtr, lpWaveBuffer : pointer;
    wTemp, wByteRead : word;
    lFSize           : longint;
    F                : file;

begin
    lpWaveBuffer := nil;

    {$I-}
    Assign(F, szFilename);
    Reset(F,1);
    {$I+}

    if IOResult = 0 then begin
        lFSize := FileSize(F);

        { allocate memory }
        lpWaveBuffer := ptr(sbkAllocMem(word((lFSize + 15) div 16)), 0);

        if (lpWaveBuffer <> nil) then begin
            lpTmpPtr := lpWaveBuffer;
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

        end else begin
            writeln('Memory allocation error ...');
            lpWaveBuffer := nil;
        end;

        close(F);
    end else
        writeln('Open ',szFilename,' error ...');

    LoadFile := lpWaveBuffer;
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   procedure OutputWave(wIOHandle : word; WaveFile: string)                }
{                                                                           }
{   DESCRIPTION:                                                            }
{       Output wave  from a memory buffer.                                  }
{                                                                           }
{   ENTRY:                                                                  }
{       wIOHandle   :- wave i/o handle.                                     }
{       WaveFile    :- wave file name.                                      }
{                                                                           }
{   EXIT:                                                                   }
{       None                                                                }
{                                                                           }
{ ------------------------------------------------------------------------- }

procedure OutputWave(wIOHandle: word; WaveFile: string);
const
    ESC     = 27;
    up_P    = 80;
    lo_p    = 112;
    up_C    = 67;
    lo_c    = 99;
    up_S    = 83;
    lo_s    = 115;
    EXT     = 256;

var
    keyval, retVal  : integer;
    pause , fExit   : word;
    lpWaveBuffer    : pointer;
    key             : char;

begin
    lpWaveBuffer := LoadFile(WaveFile);

    if lpWaveBuffer = nil then
       exit;

    ctwmSetSpeaker(1);

    if ctwmOutputCM(wIOHandle,lpWaveBuffer) = 0 then begin
        writeln('Output wave...');
        writeln('   [Esc] to stop');
        writeln('   [P  ] to pause');
        writeln('   [C  ] to continue');

        pause := 0;
        fExit  := 0;

        repeat
            if ct_wave_status = 0 then
               retVal := ctwmOutputCM(wIOHandle,lpWaveBuffer);

            if keyPressed then begin
                key := ReadKey;
                keyval := ord(key);

                if ((key = #0) and keypressed) then begin
                    key := ReadKey;
                    keyval := ord(key)+EXT;
                end;

                case (keyval) of
                    up_S,lo_s,ESC :
                        begin
                            fExit := 1;
                            retVal := ctwmStop(wIOHandle);
                        end;

                    up_P,lo_p :
                        if pause = 0 then begin
                            writeln('Wave pause...');
                            retVal := ctwmPause(wIOHandle);
                            pause := 1;
                        end;

                    up_C,lo_c :
                        if pause <> 0 then begin
                            writeln('Wave continue...');
                            retVal := ctwmContinue(wIOHandle);
                            pause := 0;
                        end;
                end;
            end;
        until boolean(fExit);

        writeln('Wave end.');
    end else begin
        retVal := ctwmGetDrvError;
        writeln('Error output Wave - ',retVal);
    end;

    ctwmSetSpeaker(0);
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{  function SetOutputParam() : integer                                      }
{                                                                           }
{  Description :                                                            }
{       Set up the neccessary wave output parameters.                       }
{                                                                           }
{  Entry :                                                                  }
{       none.                                                               }
{                                                                           }
{  Exit :                                                                   }
{       i/o wave handle if successful otherwise return -1.                  }
{                                                                           }
{ ------------------------------------------------------------------------- }

function SetOutputParam : integer;
var
    dwValue     : longint;
    wIOHandle	: word;
    lpDmaBuffer : pointer;

begin
    { Allocate two DMA buffers. The 2nd is used when }
    { the 1st buffer crosses the 64k boundary        }
    lpDmaBuffer := ptr(sbkAllocMem(word((DMA_SIZE * 2 + 15) div 16)), 0);

    if lpDmaBuffer <> nil then begin
        { retrieving i/o wave handles }
        if ctwmGetParam(CTWAV_IOHANDLES,dwValue) = 0 then begin
            if dwValue <> 0 then begin
                { wIOHandle :- i/o wave handle used }
                wIOHandle := word(dwValue) - 1;

                { Set up ct_wave_status }
                if ctwmSetIOParam(wIOHandle,CTWAV_IO_LPSTATUSWORD,
                        longint(@ct_wave_status)) = 0 then begin
                    { convert the DMA buffer pointer to 32 bits }
                    { linear address                            }
                    dwValue := longint(PtrRec(lpDmaBuffer).hi) shl 4 +
                                    PtrRec(lpDmaBuffer).lo;

                    { Set up DMA buffer. If failed, the DMA buffer may have  }
                    { crossed the 64 k boundary, thus use the 2nd Dma buffer }
                    if ctwmSetDMABuffer(wIOHandle,dwValue,DMA_UNIT) <> 0 then begin
                        dwValue := dwValue + DMA_SIZE;

                        { Set up DMA buffer again }
                        if ctwmSetDMABuffer(wIOHandle,dwValue,DMA_UNIT) <> 0 then begin
                            writeln('Driver : Error setting DMA buffer.');
                            SetOutputParam := -1;
                            exit;
                        end;
                    end;

                    SetOutputParam := wIOHandle;
                    exit;
                end else
                    writeln('Error setting ct_wave_status.');
            end else
                writeln('I/O wave handle unavailable.');
        end else
            writeln('Error retrieving I/O wave handles.');
    end else
        writeln('DOS : Error allocating memory for DMA buffer.');

    SetOutputParam := -1;
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{  function PrepareCTWMEMDrv(BlasterEnv:string) : integer                   }
{                                                                           }
{  Description :                                                            }
{       Load and endorse CTWMEM.DRV.                                        }
{                                                                           }
{  Entry :                                                                  }
{       BlasterEnv - BLASTER environment setting.                           }
{                                                                           }
{  Exit :                                                                   }
{       zero if sucessful, non-zero otherwise.                              }
{                                                                           }
{ ------------------------------------------------------------------------- }

function PrepareCTWMEMDrv(BlasterEnv:string) : integer;
var
    dwVersion : longint;
    len       : word;
    pBlaster  : pointer;

begin
    { Load driver into memory }
    CTwmemDrv := sbkLoadDriver('CTWMEM.DRV',UNUSED);

    if CTwmemDrv <> nil then begin
        { Retrieves CTWMEM.DRV version }
        if ctwmGetParam(CTWAV_DRIVERVERSION,dwVersion) = 0 then begin
            if word(dwVersion) >= $0305 then begin
                { make a C style string with null terminated }
                pBlaster := sbkMakeAsciizString(BlasterEnv);

                { Passes BLASTER environment settings to driver }
                if ctwmGetEnvSettings(pBlaster) = 0 then begin
                    PrepareCTWMEMDrv := 0;
                    exit;
                end else
                    writeln('Driver : BLASTER environment is not valid');
            end else begin
                write('Invalid CTWMEM.DRV - ');
                writeln('I need CTWMEM.DRV version 3.05 or higher.');
            end;
        end else
            writeln('Unrecognized CTWMEM.DRV');
    end else
        writeln('Error loading CTWMEM.DRV or CTWMEM.DRV not found');

    PrepareCTWMEMDrv := 1;
end;


{ ------------------------------------------------------------------------ }

{ main function }
var
    BlasterEnv : string[64];
    lpMarkPtr  : pointer;
    wIOHandle  : word;
    retVal     : word;
    WaveFile   : string;

begin  { program body }
    DMA_SIZE := (DMA_UNIT * TWO_KBYTES * 2) + PARA_ADJ;

    if ParamCount < 1 then begin
        writeln('Usage : DEMOWMP wav_filename');
        halt;
    end;

    WaveFile := ParamStr(1);
    writeln('Playback ',WaveFile,' through conventional memory.') ;

    { Retrieve the BLASTER environment settings }
    BlasterEnv := GetEnv('BLASTER');

    if BlasterEnv <> '' then begin
        Mark(lpMarkPtr);

        { Loads CTWMEM.DRV into memory }
        if PrepareCTWMEMDrv(BlasterEnv) = 0 then begin
            if ctwmInit = 0 then begin
                ctwmSetSpeaker(0);

                { Set up wave i/o parameters }
                wIOHandle := SetOutputParam;

                if integer(wIOHandle) >= 0 then
                    OutputWave(wIOHandle,WaveFile);

                ctwmTerminate;
            end;
        end;

        Release(lpMarkPtr);
    end else
        writeln('BLASTER environment not set or incomplete or invalid.');
end.
{ End of file }
