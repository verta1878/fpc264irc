{*==========================================================================*}
{*  SBKVOICE.INC (revision 1.0)                                             *}
{*       API for CT-VOICE.DRV and CTVSDK.DRV                                *}
{*                                                                          *}
{*--------------------------------------------------------------------------*}
{*              Copyright (c) Creative Technology Ltd, 1991-1993.           *}
{*                            All Rights Reserved.                          *}
{*==========================================================================*}

Const

{---------------------------------------------------------------------------}
{  Manifest constants for the (wParamType) argument of                      }
{           ctvmGetParam()                                                  }
{       and ctvdGetParam()                                                  }
{---------------------------------------------------------------------------}
 CTVOC_DRIVERVERSION    = $0001;
 CTVOC_CARDTYPE         = $0002;
 CTVOC_LPCARDNAME       = $0003;
 CTVOC_INPUTCHANNELS    = $0004;
 CTVOC_OUTPUTCHANNELS   = $0005;
 CTVOC_DRIVERSIZE       = $0006;      { units: bytes }
 CTVOC_IOHANDLES        = $0007;
 CTVOC_DRIVERBUILD      = $0008;
 CTVOC_EMBDDMABUFSIZE   = $0009;      { units: 2kB per HalfBuffer }
 CTVOC_SAMPLINGRANGE    = $000A;
 CTVOC_INPUTHANDLES     = $000B;
 CTVOC_OUTPUTHANDLES    = $000C;
 CTVOC_NEEDDMABUFFER    = $000D;


{---------------------------------------------------------------------------}
{  Manifest constants for the (wParamType) argument of                      }
{          ctvmSetIOParam(), ctvmGetIOParam()                               }
{       and ctvdSetIOParam(), ctvdGetIOParam()                              }
{---------------------------------------------------------------------------}
 CTVOC_IO_LPSTATUSWORD   = $0001;
 CTVOC_IN_SAMPLESPERSEC  = $0003;
 CTVOC_IN_NCHANNELS      = $0004;
 CTVOC_IN_LEFTINPUTS     = $0005;
 CTVOC_IN_RIGHTINPUTS    = $0006;
 CTVOC_IN_FORMAT         = $0007;
 CTVOC_IN_BITSPERSAMPLE  = $0008;
 CTVOC_IN_FILTER         = $0009;
 CTVOC_OUT_FILTER        = $000A;


{---------------------------------------------------------------------------}
{ Manifest constants for the (dwParam) argument of                          }
{           ctvmSetIOParam(), ctvmGetIOParam()                              }
{       and ctvdSetIOParam(), ctvdGetIOParam()                              }
{ when wParamType == CTVOC_IN_VOCFMT                                        }
{---------------------------------------------------------------------------}
 VOC_FORMAT_08_PCM         = $0000;
 VOC_FORMAT_CT4_ADPCM      = $0001; { Not for recording }
 VOC_FORMAT_CT3_ADPCM      = $0002; { Not for recording }
 VOC_FORMAT_CT2_ADPCM      = $0003; { Not for recording }
 VOC_FORMAT_16_PCM         = $0004;
 VOC_FORMAT_ALAW           = $0006;
 VOC_FORMAT_MULAW          = $0007;
 VOC_FORMAT_CREATIVE_ADPCM = $0200;


{---------------------------------------------------------------------------}
{ Manifest constants for the (dwParam) argument of                          }
{          ctvmSetIOParam(), ctvmGetIOParam()                               }
{      and ctvdSetIOParam(), ctvdGetIOParam()                               }
{ when wParamType == CTVOC_IN_FILTER or CTVOC_OUT_FILTER                    }
{---------------------------------------------------------------------------}
 FILTER_OFF     = 0;
 FILTER_LOW     = $0000FFFF;
 FILTER_HIGH    = $FFFF0000;
 FILTER_ON      = $FFFFFFFF;

{ end of constants }


Type

{---------------------------------------------------------------------------}
{ Creative Voice file (.VOC) header structure                               }
{---------------------------------------------------------------------------}

{ VOC file header }
  VOCHDR  = record
    id              : array[0..19] of char; { VOC file ID           }
    voice_offset    : word;                 { offset of voice block }
    version         : word;                 { version               }
    check_code      : word;                 { verifier              }
  end;


{ New Voice block type 9 }
  VOCBLKTYPE9 = record
    bBlockID        : byte;                 (* == 9 *)
    nBlockLen       : array[0..2] of byte;  (* block length from dwSamplesPerSec *)
    dwSamplesPerSec : longint;              (* number of samples per second *)
    bBitsPerSample  : byte;                 (* sample length in bit *)
    bChannels       : byte;                 (* number of channel - stereo or mono *)
    wFormat         : word;                 (* compression format *)
    reserved        : array[0..3] of byte;  (* reserved 4 bytes for future enhancement *)
  end;

  LPVOCBLKTYPE9 = ^VOCBLKTYPE9;

{ end of file }
