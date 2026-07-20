(* ------------------------------------------------------------------------ *)
(*  @@ Source Documentation                     *** PASCAL Version ***      *)
(*                                                                          *)
(*  TITLE : DEMOVXP.PAS                                                     *)
(*                                                                          *)
(*  DESCRIPTION :                                                           *)
(*      This program demostrates how to perform voice recording using       *)
(*      CT-VOICE.DRV driver. The record is done using the Extended          *)
(*      memory method.It also demonstrates how to set up its own DMA        *)
(*      buffer (e.g DMA buffer needed is larger than 8 kilobytes) and       *)
(*      making use of the 8k bytes DMA buffer embedded in the               *)
(*      driver.                                                             *)
(*                                                                          *)
(*      Data moving from extended memory is done by invoking XMS            *)
(*      driver.                                                             *)
(*                                                                          *)
(*      The program retrieves BLASTER environment for the Card settings     *)
(*      and passes it to the driver.                                        *)
(*      The input VOC file size is limited by size of extended memory       *)
(*      availble.                                                           *)
(*                                                                          *)
(*  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

{$M $1000,0,102400}

program demovxp;

{ Include the SBK Unit, and any other units needed }
uses dos, crt,
{$IFDEF VER70}
sbktp7,tp7sbkx;
{$ELSE}
sbktp6,tp6sbkx;
{$ENDIF}

{ Include type-defined for VOC constants and header }
{$I sbkvoice.inc }

Type
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
    DMA_SIZE : longint;
    ct_voice_status : word;	  { I\O voice status }


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   function SetOutputParam() : integer                                     }
{                                                                           }
{   DESCRIPTION:                                                            }
{       Set the necessary Output parameters.                                }
{                                                                           }
{   ENTRY:                                                                  }
{       none.                                                               }
{                                                                           }
{   EXIT:                                                                   }
{       i/o voice handle if successful, otherwise return -1.                }
{                                                                           }
{ ------------------------------------------------------------------------- }

function SetOutputParam : integer;
var
    dwValue     : longint;
    wIOHandle   : word;
    lpDmaBuffer : pointer;

begin
    { Retrieves the total I\O voice handles }
    if ctvmGetParam(CTVOC_IOHANDLES,dwValue) = 0 then begin
        if dwValue <> 0 then begin
            { wIOHandle - I\O voice handle to be used }
            wIOHandle := word(dwValue) - 1;

            { Set the I\O voice status - ct_voice_status }
            if ctvmSetIOParam(wIOHandle,CTVOC_IO_LPSTATUSWORD,
                    longint(@ct_voice_status)) = 0 then begin
                { allocate two DMA buffers }
                lpDmaBuffer := ptr(sbkAllocMem(word((DMA_SIZE * 2 + 15) div 16)), 0);

                if lpDmaBuffer <> nil then begin
                    { convert the pointer to 32-bit linear address }
                    dwValue := longint(PtrRec(lpDmaBuffer).hi) shl 4 +
                                PtrRec(lpDmaBuffer).lo;
                    { call driver to set DMA buffer }
                    if ctvmSetDMABuffer(wIOHandle,dwValue,DMA_UNIT) <> 0 then begin
                        { the 1st DMA might have crossed segment }
                        { try with the 2nd DMA buffer }
                        dwValue := dwValue + DMA_SIZE;

                        if ctvmSetDMABuffer(wIOHandle,dwValue,DMA_UNIT) <> 0 then begin
                            writeln('Driver : Error setting DMA buffer.');
                            SetOutputParam := -1;
                            exit;
                        end;
                    end;

                    SetOutputParam := wIOHandle;
                    exit;
                end else
                    writeln('Dos : Error allocating DMA buffer.');
            end else
                writeln('Error setting ct_voice_status.');
        end else
            writeln('I\O voice handle not available.');
    end else
        writeln('Error retrieving I\O voice handles.');

    SetOutputParam := -1
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   function  Load2Xms(szFilename:string) : word                            }
{                                                                           }
{   DESCRIPTION:                                                            }
{       Load a voice file into extended memory.                             }
{                                                                           }
{   ENTRY:                                                                  }
{       szFilename - voice file to be loaded.                               }
{                                                                           }
{   EXIT:                                                                   }
{       extended memory handle if successful else return 0.                 }
{                                                                           }
{ ------------------------------------------------------------------------- }

function Load2Xms (szFilename:string) : word;

var
    retVal, xmshd       : word;
    wTemp, wByteRead    : word;
    lpTransfBuf         : pointer;
    F                   : file;
    HeaderPtr           : ^VOCHDR;
    lFSize, lCurXmsOff, DrvSize, EmbdDmaSize : longint;

begin
    writeln('Loading ',szFilename,' into extended memory...');

    Load2Xms := 0;

    { Retrieving embedded buffer size (in unit of 2k bytes   }
    { per half buffer) from the driver and this will be used }
    { as CMM to XMM data transfer buffer                     }
    if ctvmGetParam(CTVOC_EMBDDMABUFSIZE,EmbdDmaSize) <> 0 then begin
        writeln('Driver : Error retrieving size of embedded DMA buffer.');
        exit ;
    end;

    EmbdDmaSize := EmbdDmaSize * (2048 * 4);

    { Retrieve driver size }
    if ctvmGetParam(CTVOC_DRIVERSIZE,DrvSize) <> 0 then begin
        writeln('Driver : Error retrieving size of driver.');
        exit;
    end;

    { making use of embedded buffer as CMM to XMM data transfer area }
    lpTransfBuf := voice_drv;
    PtrRec(lpTransfBuf).hi := PtrRec(lpTransfBuf).hi +
             word(longint(PtrRec(voice_drv).lo + word(DrvSize)) div $10000 );
    PtrRec(lpTransfBuf).lo := word(PtrRec(lpTransfBuf).lo + word(DrvSize));

    {$I-}
    Assign(F, szFilename);
    Reset(F,1);
    {$I+}

    if IOResult = 0 then begin
        { get file size }
        lFSize := FileSize(F);
        { allocate extended memory in unit of kilo bytes }
        xmshd := sbkAllocXM(word((lFSize + 1024) div 1024));

        if xmshd <> 0 then begin
            lCurXmsOff := 0;
            Load2Xms := xmshd;
            HeaderPtr := lpTransfBuf;

            { Read voice header into the buffer }
            BlockRead(F,HeaderPtr^,SizeOf(VOCHDR),wByteRead);

            if wByteRead < SizeOf(VOCHDR) then
                writeln(szFilename,' - Invalid format.')
            else begin
                { get the offset of the voice raw data and move the
                  file pointer to the start of the voice raw data   }
                wTemp := HeaderPtr^.voice_offset - SizeOf(VOCHDR);
                BlockRead(F,lpTransfBuf^,wTemp,wByteRead);

                if wTemp = wByteRead then begin
                    lFSize := lFSize - HeaderPtr^.voice_offset;

                    { Read voice raw data from file to buffer }
                    repeat
                        BlockRead(F,lpTransfBuf^,word(EmbdDmaSize),wByteRead);
                        { move data from data transfer buffer to XMM }
                        if sbkMoveCMtoXM(lpTransfBuf,longint(wByteRead),
                            xmshd,longint(lCurXmsOff)) <> 0 then
                            lCurXmsOff := lCurXmsOff + wByteRead
                        else begin
                            writeln('Error moving data to extended memory.');
                            wByteRead := 0;
                        end;
                    until wByteRead <> word(EmbdDmaSize);
                end else
                    writeln(szFilename,' - Invalid format.');
            end;

            if lCurXmsOff <> lFSize then begin
                { free extended memory }
                retVal := sbkFreeXM(xmshd);
                Load2Xms := 0;
            end;
        end else
            writeln('Error allocating extended memory.');

        Close(F);
    end else
        writeln('Open ',szFilename,' error ...');
end;


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{   procedure PlayVoiceXM (xmshd:word)                                      }
{                                                                           }
{   DESCRIPTION:                                                            }
{       Playback voice at extended memory.                                  }
{                                                                           }
{   ENTRY:                                                                  }
{       xmshd - extended memory handle (containing voice raw data).         }
{                                                                           }
{   EXIT:                                                                   }
{       None.                                                               }
{                                                                           }
{ ------------------------------------------------------------------------- }

procedure PlayVoiceXM (xmshd:word);
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
    retVal,fExit : word;
    pause,keyval : integer;
    wIOHandle    : word;
    key          : char;

begin
    { set output parameters }
    wIOHandle := SetOutputParam;

    if integer(wIOHandle) >= 0 then begin
        ctvmSetSpeaker(1);

        { start output from extended memory }
        if ctvmOutputXM(wIOHandle,xmshd,0) = 0 then begin
            writeln('Output voice...');
            writeln('   [Esc] to stop');
            writeln('   [P  ] to pause');
            writeln('   [C  ] to continue');

            pause := 0;
            fExit := 0;

            repeat
                { repeat if voice end }
                if ct_voice_status = 0 then
                    if ctvmOutputXM(wIOHandle,xmshd,longint(0)) <> 0 then
                        fExit := 1;

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
                                    retVal := ctvmStop(wIOHandle);
                                    fExit := 1;
                                end;

                        up_P,lo_p :
                            if pause = 0 then begin
                                writeln('Voice pause...');
                                retVal := ctvmPause(wIOHandle);
                                pause := 1;
                            end;

                        up_C,lo_c :
                            if pause <> 0 then begin
                                writeln('Voice continue...');
                                retVal := ctvmContinue(wIOHandle);
                                pause := 0;
                            end;
                    end;
                end;
            until fExit = 1 ;

            writeln('voice stop.');
        end else begin
            retVal := ctvmGetDrvError;
            writeln('Driver : Error ouput voice - ',retVal);
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
    dwVersion   : longint;
    len         : word;
    pBlaster    : pointer;

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
    BlasterEnv      : string[64];
    lpMarkPtr       : pointer;
    xmshd, retVal   : integer;
    VocFile         : string;

begin  { program body }
    DMA_SIZE := (DMA_UNIT * TWO_KBYTES * 2) + PARA_ADJ;

    if ParamCount < 1 then begin
        writeln('Usage : DEMOVXP voc_filename');
        exit;
    end;

    VocFile := ParamStr(1);
    writeln('Playback ',VocFile,' at extended memory.');

    { Retrieve the BLASTER environment settings }
    BlasterEnv := GetEnv('BLASTER');

    if BlasterEnv <> '' then begin
        Mark(lpMarkPtr);

        { Loads CT-VOICE.DRV into memory }
        if PrepareCTVOICEDrv(BlasterEnv) = 0 then begin
            { Himem.sys loaded ? }
            if sbkGetXMSEntry <> 0 then begin
                { initialize driver and SB card }
                if ctvmInit = 0 then begin
                    xmshd := Load2Xms(VocFile);

                    if xmshd <> 0 then begin
                        { start voice output }
                        PlayVoiceXM(word(xmshd));
                        { free the extended memory to the system }
                        retVal := sbkFreeXM(xmshd);
                    end;

                    { terminate the driver }
                    ctvmTerminate;
                end else
                    writeln('Driver : Error initialization.');
            end else
                writeln('Himem.sys not loaded.');
        end;

        { free all allocated memory to the system }
        Release(lpMarkPtr);
    end else
        writeln('BLASTER environment not set or incomplete or invalid.');
end.
{ end of file }
