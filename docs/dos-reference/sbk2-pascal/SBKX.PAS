{ ------------------------------------------------------------------------ }
{  @@ Source Documentation                          *** HELPER ***         }
{                                                                          }
{  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       }
{                                                                          }
{   Title       : SBKX.PAS                                                 }
{                                                                          }
{   Author      : C W Lim                                                  }
{                                                                          }
{   Description :                                                          }
{       This is a helper UNIT supplement to the Developer kit UNIT for     }
{       Turbo Pascal ver 6 and 7.                                          }
{                                                                          }
{   Important Note:                                                        }
{       This source code is only intended as a supplement to the           }
{       existing Turbo Pascal functions to facilitate the use of SBK       }
{       library.                                                           }
{                                                                          }
{       You can use and modify these functions in any way you find         }
{       useful, provided that you agree that Creative Technology Ltd       }
{       has no warranty obligations or liability for any functions         }
{       which are modified.                                                }
{ ------------------------------------------------------------------------ }
{   @@ Log Change                                                          }
{                                                                          }
{     Date      By          Reasons                                        }
{                                                                          }
{     09/03/93  CW Lim      Created.                                       }
{ ------------------------------------------------------------------------ }

{$IFDEF VER70}
unit tp7sbkx;
{$ELSE}
unit tp6sbkx;
{$ENDIF}

{$S-}

interface

{$IFDEF VER60}
    {$IFNDEF PCHAR_TYPEDEF}
        {$DEFINE PCHAR_TYPEDEF}
        type  PChar = ^Char; { pointer to null terminated string for TP6 }
    {$ENDIF}
{$ENDIF}


const
     SEEK_SET   = 0;
     SEEK_CUR   = 1;
     SEEK_END   = 2;

     UNUSED     = 0;

{ xmsrtn.asm }
function sbkGetXMSEntry : word;
function sbkAllocXM (wKiloSize: word) : word;
function sbkFreeXM (wXMHandle: word) : word;
function sbkMoveCMtoXM (lpSrcBuf: pointer; dwMoveLength: longint;
                        wXMHandle: word; dwXMOffset: longint) : word;
function sbkMoveXMtoCM (lpDestBuf: pointer; dwMoveLength: longint;
                        wXMHandle: word; dwXMOffset: longint) : word;


{ fileio.asm }
function  sbkDosOpen (lpFilename: PChar) : integer;
function  sbkDosCreate (lpFilename: PChar) : integer;
procedure sbkDosClose (iFileHandle: integer);
function  DosRead (iFileHandle: integer; wSegment, wOffset, wLength: word) : word;
function  DosWrite (iFileHandle: integer; wSegment, wOffset, wLength: word) : word;
function  sbkDosLSeek (iFileHandle: integer; lOffset: longint; wSeekMode: word) : longint;
function  sbkFileSize (iFileHandle: integer) : longint;
function  sbkFindFile (lpFilename: PChar) : integer;

{ memory.asm }
function  sbkAllocMem (wParaSize: word) : word;
procedure sbkFreeMem (wSegment: word);


{ ------------------------------------------------------------------------ }
{   Description:                                                           }
{       Read/write from/to the file.                                       }
{                                                                          }
{   Entry:                                                                 }
{       iFileHandle :- file handle.                                        }
{       wSegment    :- buffer segment to read from or write to.            }
{       wOffset     :- buffer offset to read from or write to.             }
{       wLength     :- number of bytes to read/write.                      }
{                                                                          }
{   Exit:                                                                  }
{       return number of bytes read/write else return 0 if failed.         }
{                                                                          }
{   Note:                                                                  }
{       In case crossed segment occurs, you need to do segment and         }
{       offset adjustment prior to calling these functions.                }
{ ------------------------------------------------------------------------ }
function sbkDosRead (iFileHandle: integer; wSegment, wOffset, wLength: word) : word;
function sbkDosWrite (iFileHandle: integer; wSegment, wOffset, wLength: word) : word;


{ ------------------------------------------------------------------------ }
{   Description:                                                           }
{       Converts a null terminated string to a Pascal-style string.        }
{                                                                          }
{   Entry:                                                                 }
{       lpCString :- points to a null terminated string to be converted.   }
{                                                                          }
{   Exit:                                                                  }
{       returns converted pascal string.                                   }
{ ------------------------------------------------------------------------ }
function  sbkMakePascalString (lpCString: PChar) : String;


{ ------------------------------------------------------------------------ }
{   Description:                                                           }
{       Converts a Pascal-style string into a null terminated string.      }
{                                                                          }
{   Entry:                                                                 }
{       PasString :- pascal-style string to copy.                          }
{                                                                          }
{   Exit:                                                                  }
{       returns pointer to the null-terminated string.                     }
{ ------------------------------------------------------------------------ }
function  sbkMakeAsciizString (PasString: String) : PChar;


{ ------------------------------------------------------------------------ }
{   Description:                                                           }
{       Heap error function. It gets called whenever GetMem() fails.       }
{       When GetMem() fails, this function returns 1 which causes          }
{       GetMem() to return nil.                                            }
{                                                                          }
{       It is used to avoid run-time error when memory allocation fails.   }
{                                                                          }
{   Entry:                                                                 }
{       Size :- This is the size of memory requested but could not be      }
{               allocated.                                                 }
{                                                                          }
{   Exit:                                                                  }
{       returns 1 when GetMem() fails.                                     }
{ ------------------------------------------------------------------------ }
function sbkHeapFunc (Size: Word): Integer;


{ ------------------------------------------------------------------------ }
{   Description:                                                           }
{       Loads driver into memory with the driver name specified. Upon      }
{       return, the return pointer is pointed to the driver memory.        }
{       The pointer is always adjusted to offset 0 to conform with the     }
{       driver requirement. All the loadable drivers must be loaded to     }
{       offset 0 of a segment.                                             }
{                                                                          }
{       The heap manager is used to check the status of memory allocation  }
{       to avoid run-time error when memory allocation fails.              }
{                                                                          }
{   Entry:                                                                 }
{       DrvName      :- Driver name to be loaded.                          }
{       wEmbedBuffer :- Set to zero if unused or to load the driver        }
{                       without embedded DMA buffer. Else set to non-zero  }
{                       to load the driver with embedded buffer.           }
{                       Note that this argument only applicable to         }
{                       Creative Voice drivers CTVDSK.DRV and              }
{                       CT-VOICE.DRV.                                      }
{                                                                          }
{   Exit:                                                                  }
{       Pointer to the loaded driver if successful else return nil.        }
{                                                                          }
{ ------------------------------------------------------------------------ }
function sbkLoadDriver (DrvName: string; wEmbedBuffer: word) : pointer;


implementation

uses
  Dos,
{$IFDEF VER70}
  sbktp7;
{$ELSE}
  sbktp6;
{$ENDIF}

{$I sbkvoice.inc}


{$L xmsrtn.obj }
function  sbkGetXMSEntry;  external;
function  sbkAllocXM;      external;
function  sbkFreeXM;       external;
function  sbkMoveCMtoXM;   external;
function  sbkMoveXMtoCM;   external;



{$L fileio.obj }
function  sbkDosOpen;     external;
function  sbkDosCreate;   external;
procedure sbkDosClose;    external;
function  DosRead;        external;
function  DosWrite;       external;
function  sbkDosLSeek;    external;
function  sbkFileSize;    external;
function  sbkFindFile;    external;


{$L memory.obj }
function  sbkAllocMem;    external;
procedure sbkFreeMem;     external;


function sbkDosRead (iFileHandle: integer; wSegment,wOffset,wLength: word) : word;
begin
    sbkDosRead := DosRead(iFileHandle,wSegment,wOffset,wLength);
end;


function sbkDosWrite (iFileHandle: integer; wSegment,wOffset,wLength: word) : word;
begin
    sbkDosWrite := DosWrite(iFileHandle,wSegment,wOffset,wLength);
end;


function sbkMakeAsciizString(PasString: String) : PChar; assembler;
asm
      PUSH  DS
      CLD

      LES   DI,PasString                  { destination }
      LDS   SI,PasString                  { source                }
      MOV   DX,ES                         { Address of lpCString, }
      MOV   BX,DI                         {  for return value     }
      XOR   AX,AX
      LODSB                               { PasString length      }

      XCHG  AX,CX
      REP   MOVSB                         { copy string           }
      XOR   AL,AL
      STOSB                               { pad end with null     }

      XCHG  AX,BX
      POP   DS
end;

function sbkMakePascalString(lpCString: PChar) : String; assembler;
asm
      PUSH  DS
      CLD

      LES   DI,lpCString
      MOV   CX,0FFFFH                     { determine string length }
      XOR   AL,AL
      REPNE SCASB
      NOT   CX
      DEC   CX

      LDS   SI,lpCString
      LES   DI,@Result                    { string return pointer   }
      MOV   AL,CL
      STOSB                               { string length           }
      REP   MOVSB                         { string copy             }
      POP   DS
end;


function sbkHeapFunc(Size: Word): Integer;
begin
    { if Size is 0, the return value will be ignored }
    if Size > 0 then
        sbkHeapFunc := 1;
end;


function sbkLoadDriver (DrvName: string; wEmbedBuffer: word) : pointer;
type
    PtrRec = record
        lo, hi : word
    end;

var
    wTemp, wDrvSize, fExit : word;
    dwDrvSize              : longint;
    lpPtr, lpMarkPtr       : pointer;
    F                      : file;
    DrvFile                : string;
    sDrvInfo               : SearchRec;

begin
    { Install HeapError function }
    HeapError := @sbkHeapFunc;

    sbkLoadDriver := nil;

    DrvFile := GetEnv('SOUND');

    { search SOUND environment for driver }
    if DrvFile <> '' then begin
        DrvFile := DrvFile + '\DRV\' + DrvName;
        FindFirst(DrvFile, AnyFile, sDrvInfo);
    end;

    { not found, search current directory for driver }
    if (DosError <> 0) or (DrvFile = '') then begin
        DrvFile := DrvName;
        FindFirst(DrvFile, AnyFile, sDrvInfo);
    end;

    if DosError = 0 then begin
       {$I-}
        Assign(F, DrvFile);
        Reset(F,1);
        {$I+}

        if IOResult = 0 then begin
            wDrvSize := word(FileSize(F));

            Mark(lpMarkPtr);

            repeat
                Release(lpMarkPtr);
                Reset(F,1);

                { allocate memory for driver + 15 bytes more for }
                { boundary adjust                                }
                GetMem(lpPtr, wDrvSize + 15);

                { If successfully allocated memory }
                if lpPtr <> nil then begin
                    { boundary adjust as driver need to be loaded at offset 0 }
                    wTemp := PtrRec(lpPtr).hi + ((PtrRec(lpPtr).lo + 15) shr 4);
                    lpPtr := pointer(Longint(wTemp) shl 16);

                    sbkLoadDriver := lpPtr;
                    BlockRead(F,lpPtr^,wDrvSize,wTemp);

                    if wDrvSize <> wTemp then begin
                        sbkLoadDriver := nil;
                        wEmbedBuffer := UNUSED;
                    end;
                end else
                    wEmbedBuffer := UNUSED;

                fExit := 1;

                if wEmbedBuffer <> UNUSED then begin

                    { convert to upper case }
                    for wTemp := 1 to word(DrvName[0]) do
                        DrvName[wTemp] := upcase(DrvName[wTemp]);

                    if DrvName = 'CT-VOICE.DRV' then begin
                        voice_drv := lpPtr;
                        if ctvmGetParam(CTVOC_DRIVERSIZE,dwDrvSize) = 0 then
                            fExit := 0;
                        sbkLoadDriver := nil;
                    end
                    else if DrvName = 'CTVDSK.DRV' then begin
                        ctvdsk_drv := lpPtr;
                        if ctvdGetParam(CTVOC_DRIVERSIZE,dwDrvSize) = 0 then
                            fExit := 0;
                        sbkLoadDriver := nil;
                    end;
                end;

                wDrvSize := word(dwDrvSize);
                wEmbedBuffer := UNUSED;

            until fExit = 1;

            close(F);
        end;
    end;
end;


begin
end.
