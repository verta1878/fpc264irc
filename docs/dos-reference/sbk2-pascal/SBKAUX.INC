{*==========================================================================*}
{*  SBKAUX.INC (revision 1.1)                                               *}
{*       API for AUXDRV.DRV, the DOS Auxiliary Driver                       *}
{*                                                                          *}
{* -------------------------------------------------------------------------*}
{*             Copyright (c) Creative Technology Ltd, 1991-1995.            *}
{*                           All Rights Reserved.                           *}
{*==========================================================================*}

const
{---------------------------------------------------------------------------}
{ Mixer Switches.                                                           }
{---------------------------------------------------------------------------}
 MIXERSWI_MIC       = $0003;
 MIXERSWI_CD_R      = $0004;
 MIXERSWI_CD_L      = $0008;
 MIXERSWI_LINE_R    = $0010;
 MIXERSWI_LINE_L    = $0020;
 MIXERSWI_MIDI_R    = $0040;
 MIXERSWI_MIDI_L    = $0080;

{---------------------------------------------------------------------------}
{ Volume Sources.                                                           }
{---------------------------------------------------------------------------}
 MIXERVOL_MASTER    = 0;
 MIXERVOL_VOICE     = 1;
 MIXERVOL_MIDI      = 2;
 MIXERVOL_CD        = 3;
 MIXERVOL_LINE      = 4;
 MIXERVOL_MIC       = 5;
 MIXERVOL_PCSPEAKER = 6;

{---------------------------------------------------------------------------}
{ Query Mixer Functions                                                     }
{---------------------------------------------------------------------------}
 QUERY_ADDINFO      = $0000;
 QUERY_LRECSRC      = $0001;
 QUERY_RRECSRC      = $0002;
 QUERY_LMUTE        = $0003;
 QUERY_RMUTE        = $0004;
 QUERY_VOLSRC       = $0005;
 QUERY_TONECTRL     = $0006;
 QUERY_GAINCTRL     = $0007;
 QUERY_AGC          = $0008;
 QUERY_FILTER       = $0009;

{---------------------------------------------------------------------------}
{ Miscellaneous Controls.                                                   }
{---------------------------------------------------------------------------}
 FADE               = 0;          { For ctadClrSource() }
 PAN                = 1;

 INPUT              = 0;          { Select INPUT or OUTPUT Mixer }
 OUTPUT             = 1;

 TREBLE             = 0;          { Tone control }
 BASS               = 1;

 OFF                = 0;          { For ctadSetAGC() }
 ON                 = 1;

IN_FILTER_LOW       = 0;
IN_FILTER_HIGH      = 1;
IN_FILTER_OFF       = 2;
OUT_FILTER_OFF      = 0;
OUT_FILTER_ON       = 1;
{ End of file }
