(* ------------------------------------------------------------------------ *)
(*  @@ Source Documentation                     *** PASCAL Version ***      *)
(*                                                                          *)
(*  TITLE : DEMOVXR.PAS                                                     *)
(*                                                                          *)
(*  DESCRIPTION :                                                           *)
(*      This program demostrates how to perform voice recording using       *)
(*      CT-VOICE.DRV driver. The record is done using the Extended          *)
(*      memory method.                                                      *)
(*                                                                          *)
(*      Data moving from extended memory is done by invoking XMS            *)
(*      driver. The input sources are CD and MIC.                           *)
(*                                                                          *)
(*      The program retrieves BLASTER environment for the Card settings     *)
(*      and passes it to the driver.                                        *)
(*      The VOC file size to be recorded is set by XMS_SIZE.                *)
(*                                                                          *)
(*  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

{$M $1000,0,102400}

program demovxr;

{ Include the SBK Unit, and any other units needed }
uses dos, crt,
{$IFDEF VER70}
sbktp7, tp7sbkx;
{$ELSE}
sbktp6, tp6sbkx;
{$ENDIF}

{ Include type-defined for VOC constants and header }
{$I sbkaux.inc }
{$I sbkvoice.inc }

const
    XMS_SIZE:word       = 300;    { in unit of kilobytes }

    TWO_KBYTES:longint	= 2048;
    PARA_ADJ:word       = 15;     {* 15 bytes for paragraph adjustment *}

{*
## DMA_UNIT is unit of half embedded DMA in size of 2 kbytes .
## Change this value (from 1 - 16) if allocating own DMA buffer.
## This value effect the smoothy of sound output proportionally.
## Since this program uses default DMA buffer, increase DMA_UNIT
## will cause no effect.
*}
    DMA_UNIT:word	= 4;


var
    DMA_SIZE        : longint;
    ct_voice_status : word;	 { I\O voice status }


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   function SetInputParam() : integer                                      }
{                                                                           }
{   DESCRIPTION:                                                            }
{       Set the necessary input parameters.                                 }
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
    retVal    : integer;
    dwValue   : longint;
    wIOHandle : word;

begin
    { Retrieves the total I\O voice handles }
    if ctvmGetParam(CTVOC_IOHANDLES,dwValue) = 0 then begin
        if dwValue <> 0 then begin
            { wIOHandle - I\O voice handle to be used }
            wIOHandle := word(dwValue) - 1;

            { Set the I\O voice status - ct_voice_status }
            if ctvmSetIOParam(wIOHandle,CTVOC_IO_LPSTATUSWORD,
                    longint(@ct_voice_status)) = 0 then begin
                { Set stereo mode input }
                retVal := ctvmSetIOParam(wIOHandle,CTVOC_IN_NCHANNELS,2);

                { Set CD and MIC as input source }
                retVal := ctvmSetIOParam(wIOHandle,CTVOC_IN_LEFTINPUTS,
                                    MIXERSWI_CD_L or MIXERSWI_MIC);
                retVal := ctvmSetIOParam(wIOHandle,CTVOC_IN_RIGHTINPUTS,
                                    MIXERSWI_CD_R or MIXERSWI_MIC);

                { sample rate 22050 }
                retVal := ctvmSetIOParam(wIOHandle,CTVOC_IN_SAMPLESPERSEC,22050);

                { By defaults : sampling rate   : 11025 Hz  }
                {               voice format   : 8 bits PCM }
                {               bit per sample : 8 bits     }

                SetInputParam := wIOHandle;
                exit;
            end else
                writeln('Error setting ct_voice_status.');
        end else
            writeln('I\O voice handle not available.');
    end else
        writeln('Error retrieving I\O voice handles.');

    SetInputParam := -1;
end;


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
type
    PtrRec = record
        lo, hi : word
    end;

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
{   procedure SaveVoiceFile(szFilename: string; xmshd: integer)             }
{                                                                           }
{   DESCRIPTION:                                                            }
{       Save recorded voice from memory to file.                            }
{                                                                           }
{   ENTRY:                                                                  }
{       szFilename  - file name to be saved to.                             }
{       xmshd  - handle of the allocated extended memory.                   }
{                                                                           }
{   EXIT:                                                                   }
{       None                                                                }
{                                                                           }
{ ------------------------------------------------------------------------- }

procedure SaveVoiceFile (szFilename: string; xmshd: integer);
const
    wTempBufSize : word = 8192;

var
    lVoiceSize, lCurXmsOff : longint;
    lpTempBuf   : pointer;
    wByteToMove : word;
    header      : VOCHDR;
    dummy       : boolean;
    S           : String[20];
    F           : file;

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
        writeln('Saving to the disk...');

        { write voice file header }
        if WriteToFile(F,@header,longint(SizeOf(VOCHDR))) then begin
            { allocate temporary buffer for XMM to CMM data transfer }
            GetMem(lpTempBuf,wTempBufSize + 16);

            if lpTempBuf <> nil then begin
                lVoiceSize := longint(0);

                { move the first 4 bytes from extended memory }
                if sbkMoveXMtoCM(lpTempBuf,longint(4),word(xmshd),
                            longint(0)) <> 0 then begin
                    { retrieve the recorded voice size }
                    lVoiceSize := longint( pointer(longint(lpTempBuf)+1)^ );
                    lVoiceSize := lVoiceSize and $00ffffff;

                    { add 5 bytes for the bloack header and }
                    { terminating block                     }
                    lVoiceSize := lVoiceSize + 5;
                end else
                    writeln('Himem.sys : Error moving data from XMM1.');

                lCurXmsOff := 0;

                while lVoiceSize <> 0 do begin
                    wByteToMove := wTempBufSize;

                    if lVoiceSize < longint(wTempBufSize) then
                        wByteToMove := word(lVoiceSize);

                    if sbkMoveXMtoCM(lpTempBuf,longint(wByteToMove),
                            word(xmshd),longint(lCurXmsOff)) <> 0 then begin
                        { write to the file }
                        if not WriteToFile(F,lpTempBuf,longint(wByteToMove)) then begin
                            write('Dos : Error writing ',szFilename);
                            writeln(' file');
                            Close(F);
                            exit;
                        end else begin
                            lVoiceSize := lVoiceSize - wByteToMove;
                            lCurXmsOff := lCurXmsOff + wByteToMove;
                        end;
                    end else begin
                        write('Himem.sys : Error moving data from ');
                        writeln('XMM memory.');
                        Close(F);
                        exit;
                    end;
                end;
            end else begin
                write('Dos : Error allocating buffer for XMM to CMM ');
                writeln('data transfer.');
            end;
        end else
            writeln('Dos : Error writing ',szFilename,' file');

        Close(F);
    end else
        writeln('Create ',szFilename,' error.');
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   function  RecordVoice (xmshd:word; szFilename:string) : integer         }
{                                                                           }
{   DESCRIPTION:                                                            }
{       Record voice into extended memory specified by xmshd and            }
{       the size allocated specified by xmsSize.                            }
{                                                                           }
{   ENTRY:                                                                  }
{       xmsSize - size of the allocated extended memory.                    }
{       xmshd   - extended memory handle.                                   }
{                                                                           }
{   EXIT:                                                                   }
{       zero if successful else return non-zero.                            }
{                                                                           }
{ ------------------------------------------------------------------------- }

function RecordVoice (xmshd : word; xmsSize : word ) : integer;
var
    retVal      : word;
    wIOHandle   : word;

begin
    RecordVoice := 1;

    { set voice input parameters }
    wIOhandle := SetInputParam;

    if integer(wIOHandle) >= 0 then begin
        { turn off DAC speaker }
        ctvmSetSpeaker(0);

        { Input voice to extended memory }
        if ctvmInputXM(wIOHandle,xmshd,longint(0),xmsSize) = 0 then begin
            writeln('Start recording....Press ESC key to terminate...');

            repeat
                if KeyPressed then
                    if ReadKey = #27 then
                        { stop voice input }
                        retVal := ctvmStop(wIOHandle);
            until not Boolean(ct_voice_status);

            RecordVoice := 0;
            writeln('Recording end.');
        end else begin
            retVal := ctvmGetDrvError;
            writeln('Error recording voice - ',retVal);
        end;
    end;
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
    { load driver with embedded DMA buffer }
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
    BlasterEnv    : string[64];
    lpMarkPtr     : pointer;
    xmshd, retVal : integer;
    VocFile       : string;

begin  { program body }
    DMA_SIZE := (DMA_UNIT * TWO_KBYTES * 2) + PARA_ADJ;

    if ParamCount < 1 then begin
        writeln('Usage : DEMOVXR voc_filename');
        exit;
    end;

    VocFile := ParamStr(1);
    writeln('Record ',VocFile,' at extended memory.');

    { Retrieve the BLASTER environment settings }
    BlasterEnv := GetEnv('BLASTER');

    if BlasterEnv <> '' then begin
        Mark(lpMarkPtr);

        { Loads CT-VOICE.DRV into memory }
        if PrepareCTVOICEDrv(BlasterEnv) = 0 then begin
            { Himem.sys loaded ? }
            if sbkGetXMSEntry <> 0 then begin
                { allocate extended memory - kilo bytes per unit }
                xmshd := sbkAllocXM(XMS_SIZE) ;

                if xmshd <> 0 then begin
                    { initialize driver and SB card }
                    if ctvmInit = 0 then begin
                        { start voice input }
                        if RecordVoice(word(xmshd),XMS_SIZE) = 0 then
                            SaveVoiceFile(VocFile,xmshd);

                        { terminate the driver }
                        ctvmTerminate;
                    end else
                        writeln('Driver : Error initialization.');

                    { free the extended memory to the system }
                    retVal := sbkFreeXM(xmshd);
                end else begin
                    write('Himem.sys : Error allocating extended ');
                    writeln('memory');
                end;
            end else
                writeln('Himem.sys not loaded.');
        end;

        { free all allocated memory to the system }
        Release(lpMarkPtr);
    end else
        writeln('BLASTER environment not set or incomplete or invalid.');
end.
{ end of file }
