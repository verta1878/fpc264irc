(* ------------------------------------------------------------------------ *)
(*  @@ Source Documentation                     *** PASCAL Version ***      *)
(*                                                                          *)
(*  TITLE : DEMOVMR.PAS                                                     *)
(*                                                                          *)
(*  DESCRIPTION :                                                           *)
(*      This program demostrates how to perform voice recording using the   *)
(*      CT-VOICE.DRV driver. The voice recording is using the Conventional  *)
(*      memory method. The recording can be terminated by pressing ESC.     *)
(*      This program will also release the 8k embedded DMA buffer from      *)
(*      the driver and set up its own 16k DMA buffer. The input sources     *)
(*      are CD and MIC.                                                     *)
(*                                                                          *)
(*      The program retrieves BLASTER environment for the Card settings     *)
(*      and passes it to the driver.                                        *)
(*                                                                          *)
(*      Note that the program included the module LOADDRV.PAS to load       *)
(*      the loadable CT-VOICE.DRV into memory.                              *)
(*      The VOC file size to be recorded is set by VOICE_SIZE.              *)
(*                                                                          *)
(*  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

{$M $1000,0,102400}

program demovmr;

{ Include the SBK Unit, and any other units needed }
uses dos, crt,
{$IFDEF VER70}
sbktp7,tp7sbkx;
{$ELSE}
sbktp6,tp6sbkx;
{$ENDIF}

{ Include type-defined for VOC constants and header }
{$I sbkaux.inc }
{$I sbkvoice.inc }

type
    PtrRec = record
        lo, hi : word
    end;

const
    VOICE_SIZE:longint	= $4B000;

    TWO_KBYTES:longint	= 2048;
    PARA_ADJ:word       = 15;     { 15 bytes for paragraph adjustment }

{*
## DMA_UNIT is unit of half embedded DMA in size of 2 kbytes .
## Change this value (from 1 - 16) if allocating own DMA buffer.
## This value effect the smoothy of sound output proportionally.
*}
    DMA_UNIT:word	= 4;


var
    DMA_SIZE : longint;
    ct_voice_status : word;	  { IO voice status }


{ ------------------------------------------------------------------------ }
{  @@ Usage                                                                }
{                                                                          }
{   function WriteToFile(var F: file; lpBuf: pointer;                      }
{                        lSize: longint) : Boolean                         }
{                                                                          }
{   DESCRIPTION:                                                           }
{       Write data from buffer to file.                                    }
{                                                                          }
{   ENTRY:                                                                 }
{       F :- File where data to be written to.                             }
{       lpBuf :- buffer to be written to file.                             }
{       lSize :- Size to be written to file.                               }
{                                                                          }
{   EXIT:                                                                  }
{       Return True if successful, else return False.                      }
{                                                                          }
{ ------------------------------------------------------------------------ }

function WriteToFile (var F: file; lpBuf: pointer; lSize: longint) : Boolean;
var
    wByteToWrite, wByteWritten, wTemp : word;

begin
    WriteToFile := True;
    wTemp := 0;

    repeat
        wByteToWrite := $8000;

        if lSize < $8000 then
            wByteToWrite := Word(lSize);

        BlockWrite(F,lpBuf^,wByteToWrite,wByteWritten);

        if wByteWritten <> wByteToWrite then begin
            writeln('Disk Full ...');
            WriteToFile := False;
            lSize := 0;
        end else begin
            wTemp := wTemp + wByteWritten;

            { advance pointer }
            PtrRec(lpBuf).lo := PtrRec(lpBuf).lo + wByteWritten;

            { adjust when cross segment }
            if not Boolean(Hi(wTemp)) then
                PtrRec(lpBuf).hi := PtrRec(lpBuf).hi + $1000;

            lSize := lSize - wByteWritten;
        end;
    until lSize = 0;
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   function SetInputParam() : integer                                      }
{                                                                           }
{   DESCRIPTION:                                                            }
{       Start recording voice.                                              }
{                                                                           }
{   ENTRY:                                                                  }
{       none.                                                               }
{                                                                           }
{   EXIT:                                                                   }
{       i/o voice handle if successful, otherwise return -1.                }
{                                                                           }
{ ------------------------------------------------------------------------- }

function SetInputParam : integer;
var
    retVal      : integer;
    dwValue     : longint;
    wIOHandle   : word;
    lpDmaBuffer : pointer;

begin
    { Retrieves the total IO voice handles }
    if ctvmGetParam(CTVOC_IOHANDLES,dwValue) = 0 then begin
        if dwValue <> 0 then begin
            { wIOHandle - IO voice handle to be used }
            wIOHandle := word(dwValue) - 1;

            { Set the IO voice status - ct_voice_status }
            if ctvmSetIOParam(wIOHandle,CTVOC_IO_LPSTATUSWORD,
                longint(@ct_voice_status)) = 0 then begin
                { allocate two DMA buffers }
                lpDmaBuffer := ptr(sbkAllocMem(word((DMA_SIZE * 2 + 15) div 16)), 0);

                if lpDmaBuffer <> nil then begin
                    { convert to 32-bits linear address }
                    dwValue := longint(PtrRec(lpDmaBuffer).hi) shl 4 +
                                       PtrRec(lpDmaBuffer).lo;

                    { set DMA buffer, if failed, the 1st DMA buffer might
                      have crossed segment, try again with 2nd buffer }
                    if ctvmSetDMABuffer(wIOHandle,dwValue,DMA_UNIT) <> 0 then begin
                        dwValue := dwValue + DMA_SIZE;

                        if ctvmSetDMABuffer(wIOHandle,dwValue,DMA_UNIT) <> 0 then begin
                            writeln('Error setting DMA buffer');
                            SetInputParam := -1;
                            exit;
                        end;
                    end;

                    { Set stereo mode input }
                    retVal := ctvmSetIOParam(wIOHandle,CTVOC_IN_NCHANNELS,2);

                    { Set CD and MIC as input source }
                    retVal := ctvmSetIOParam(wIOHandle,CTVOC_IN_LEFTINPUTS,
                                        MIXERSWI_CD_L or MIXERSWI_MIC);
                    retVal := ctvmSetIOParam(wIOHandle,CTVOC_IN_RIGHTINPUTS,
                                        MIXERSWI_CD_R or MIXERSWI_MIC);

                    (* sample rate 22050 *)
                    retVal := ctvmSetIOParam(wIOHandle,CTVOC_IN_SAMPLESPERSEC,22050);

                    { By defaults : sampling rate   : 11025 Hz
                                     voice format   : 8 bits PCM
                                     bit per sample : 8 bits  }

                    SetInputParam := wIOHandle;
                    exit;
                end else
                    writeln('Error allocating DMA buffer.');
            end else
                writeln('Error setting ct_voice_status.');
        end else
            writeln('IO voice handle not available.');
    end else
        writeln('Error retrieving IO voice handles.');

    SetInputParam := -1;
end;


{ ------------------------------------------------------------------------ }
{  @@ Usage                                                                }
{                                                                          }
{   procedure SaveVoiceFile(szFilename: string; lpBuf: pointer)            }
{                                                                          }
{   DESCRIPTION:                                                           }
{       Save recorded voice from memory to file.                           }
{                                                                          }
{   ENTRY:                                                                 }
{       szFilename :- file name to be saved to.                            }
{       lpBuf :- recorded voice buffer.                                    }
{                                                                          }
{   EXIT:                                                                  }
{       None                                                               }
{                                                                          }
{ ------------------------------------------------------------------------ }

procedure SaveVoiceFile (szFilename: string; lpBuf: pointer);
var
    lVoiceSize, lTemp : longint;
    F       : file;
    header  : VOCHDR;
    dummy   : boolean;
    S       : String[20];

begin
    { Voice file header }
    S := 'Creative Voice File';
    move( S[1], header.id, 20 );
    header.id[19] := #0026;
    header.voice_offset := word(SizeOf(VOCHDR));
    header.version := word($0114);
    header.check_code := word($111F);

    {$I-}
    Assign(F, szFilename);
    Rewrite(F,1);
    {$I+}

    if IOResult = 0 then begin
        if WriteToFile(F,@header,longint(SizeOf(VOCHDR))) then begin
            lVoiceSize := longint( pointer(longint(lpBuf)+1)^ );
            lVoiceSize := lVoiceSize and $00ffffff;

            { add 5 bytes for the bloack header and terminating block }
            lVoiceSize := lVoiceSize + 5;

            dummy := WriteToFile(F,lpBuf,lVoiceSize);
        end;

        Close(F);
    end else
        writeln('Create ',szFilename,' error.');
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   procedure RecordVoice (wIOHandle: word; szFilename: string)             }
{                                                                           }
{   DESCRIPTION:                                                            }
{       Record voice into a file with filename specified. 256 KB            }
{       memory is allocated for voice recording.                            }
{                                                                           }
{   ENTRY:                                                                  }
{       szFileName - File to be recorded.                                   }
{       wIOHandle  - IO voice handle.                                       }
{                                                                           }
{   EXIT:                                                                   }
{       None                                                                }
{                                                                           }
{ ------------------------------------------------------------------------- }

procedure RecordVoice (wIOHandle: word; szFilename: string);
var
    lpVoiceBuffer : pointer;
    retVal        : word;

begin
    { allocate voice buffer }
    lpVoiceBuffer := ptr(sbkAllocMem(word((VOICE_SIZE + 15) div 16)), 0);

    if lpVoiceBuffer <> nil then begin
        ctvmSetSpeaker(0);

        { Input voice to conventional memory }
        if ctvmInputCM(wIOHandle,lpVoiceBuffer,VOICE_SIZE) = 0 then begin
            writeln('Start recording....Press ESC key to terminate...');
            repeat
                if KeyPressed then
                    if ReadKey = #27 then
                        retVal := ctvmStop(wIOHandle);

            until not Boolean(ct_voice_status);

            SaveVoiceFile(szFilename,lpVoiceBuffer);
            writeln('Recording end.');
        end else begin
            retVal := ctvmGetDrvError;
            writeln('Driver : Error input voice - ',retVal);
        end;
    end else
        writeln('Memory allocation error ...');
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{  function PrepareCTVOICEDrv(BlasterEnv:string) : integer                  }
{                                                                           }
{  Description :                                                            }
{       Load and endorse CT-VOICE.DRV.                                      }
{                                                                           }
{  Entry :                                                                  }
{       BlasterEnv - BLASTER environment setting.                           }
{                                                                           }
{  Exit :                                                                   }
{       zero if sucessful, non-zero otherwise.                              }
{                                                                           }
{ ------------------------------------------------------------------------- }

function PrepareCTVOICEDrv(BlasterEnv:string) : integer;
var
    dwVersion : longint;
    len       : word;
    pBlaster  : pointer;

begin
    { load driver without embedded DMA buffer }
    voice_drv := sbkLoadDriver('CT-VOICE.DRV',UNUSED);

    if voice_drv <> nil then begin
        { Retrieves CT-VOICE.DRV version }
        if ctvmGetParam(CTVOC_DRIVERVERSION,dwVersion) = 0 then begin
            if word(dwVersion) >= $0305 then begin
                { make a C style string with null terminated }
                pBlaster := sbkMakeAsciizString(BlasterEnv);

                { Passes BLASTER environment settings to driver }
                if ctvmGetEnvSettings(pBlaster) = 0 then begin
                    PrepareCTVOICEDrv := 0;
                    exit;
                end else
                    writeln('BLASTER environment is not valid');
            end else begin
                write('Invalid CT-VOICE.DRV - ');
                writeln('I need CT-VOICE.DRV version 3.05 or higher.');
            end;
        end else
            writeln('Unrecognized CT-VOICE.DRV');
    end else
        writeln('Error loading CT-VOICE.DRV or CT-VOICE.DRV not found');

    PrepareCTVOICEDrv := 1;
end;


{ ------------------------------------------------------------------------ }

{ main function }
var
    BlasterEnv : string[64];
    lpMarkPtr  : pointer;
    wIOHandle  : word;
    VocFile    : string;

begin
    DMA_SIZE := (DMA_UNIT * TWO_KBYTES * 2) + PARA_ADJ;

    if ParamCount < 1 then begin
        writeln('Usage : DEMOVMR voc_filename');
        exit;
    end;

    VocFile := ParamStr(1);
    writeln('Record ',VocFile,' at conventional memory.');

    { Retrieve the BLASTER environment settings }
    BlasterEnv := GetEnv('BLASTER');

    if BlasterEnv <> '' then begin
        Mark(lpMarkPtr);
        { Loads CT-VOICE.DRV into memory }
        if PrepareCTVOICEDrv(BlasterEnv) = 0 then begin
            if ctvmInit = 0 then begin
                wIOHandle := SetInputParam;

                if integer(wIOHandle) >= 0 then
                    RecordVoice(wIOHandle,VocFile);
                ctvmTerminate;
            end;
        end;

        Release(lpMarkPtr);
    end else
        writeln('BLASTER environment not set or incomplete or invalid.');
end.
{ End of file }
