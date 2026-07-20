{*==========================================================================*}
{*  SBKWAVE.INC (revision 1.0)                                              *}
{*       API for CTWMEM.DRV and CTWSDK.DRV                                  *}
{*                                                                          *}
{*--------------------------------------------------------------------------*}
{*              Copyright (c) Creative Technology Ltd, 1992-1993.           *}
{*                            All Rights Reserved.                          *}
{*==========================================================================*}

Const
{--------------------------------------------------------------------------}
{ Manifest constants for the wParamType argument of                        }
{         ctwmGetParam()                                                   }
{      and ctwdGetParam()                                                  }
{--------------------------------------------------------------------------}
 CTWAV_DRIVERVERSION          = $0001;
 CTWAV_CARDTYPE               = $0002;
 CTWAV_LPCARDNAME             = $0003;
 CTWAV_INPUTCHANNELS          = $0004;
 CTWAV_OUTPUTCHANNELS         = $0005;
 CTWAV_IOHANDLES              = $0007;
 CTWAV_DRIVERBUILD            = $0008;
 CTWAV_SAMPLINGRANGE          = $000A;
 CTWAV_INPUTHANDLES           = $000B;
 CTWAV_OUTPUTHANDLES          = $000C;
 CTWAV_NEEDDMABUFFER          = $000D;


{--------------------------------------------------------------------------}
{ Manifest constants for the wParamType argument of                        }
{         ctwmSetIOParam(), ctwmGetIOParam()                               }
{      and ctwdSetIOParam(), ctwdGetIOParam()                              }
{--------------------------------------------------------------------------}
 CTWAV_IO_LPSTATUSWORD        = $0001;
 CTWAV_IN_SAMPLESPERSEC       = $0003;
 CTWAV_IN_NCHANNELS           = $0004;
 CTWAV_IN_LEFTINPUTS          = $0005;
 CTWAV_IN_RIGHTINPUTS         = $0006;
 CTWAV_IN_FORMAT              = $0007;
 CTWAV_IN_BITSPERSAMPLE       = $0008;
 CTWAV_IN_FILTER              = $0009;
 CTWAV_OUT_FILTER             = $000A;



{----------------------------------------------------------------------}
{ Manifest constants for the dwParam argument of                       }
{         ctwmSetIOParam(), ctwmGetIOParam()                           }
{      and ctwdSetIOParam(), ctwdGetIOParam()                          }
{ when wParamType == CTWAV_IN_FORMAT                                   }
{----------------------------------------------------------------------}
 WAVE_FORMAT_PCM              = $0001;
 WAVE_FORMAT_ALAW             = $0006;
 WAVE_FORMAT_MULAW            = $0007;
 WAVE_FORMAT_CREATIVE_ADPCM   = $0200;


{---------------------------------------------------------------------------}
{ Manifest constants for the (dwParam) argument of                          }
{          ctwmSetIOParam(), ctwmGetIOParam()                               }
{      and ctwdSetIOParam(), ctwdGetIOParam()                               }
{ when wParamType == CTWAV_IN_FILTER or CTWAV_OUT_FILTER                    }
{---------------------------------------------------------------------------}
 FILTER_OFF     = 0;
 FILTER_LOW     = $0000FFFF;
 FILTER_HIGH    = $FFFF0000;
 FILTER_ON      = $FFFFFFFF;

{ end of file }
