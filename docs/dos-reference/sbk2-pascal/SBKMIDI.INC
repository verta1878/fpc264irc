{*==========================================================================*}
{*  SBKMIDI.INC (revision 1.0)                                              *}
{*        API for CTMIDI.DRV                                                *}
{*                                                                          *}
{* -------------------------------------------------------------------------*}
{*  Copyright (c) Creative Technology Ltd, 1991-1993.                       *}
{*  All Rights Reserved.                                                    *}
{*==========================================================================*}

Const
    { Time stamp mode }
    DIFFERENTIATE_MODE   = 0;
    ELAPSED_MODE         = 1;

    { Output and input status }
    MUSIC_IDLE           = 0;
    MUSIC_ACTIVE         = 1;
    MUSIC_PAUSED         = 2;

    MIDIREC_IDLE         = 0;
    MIDIREC_ACTIVE       = 1;

    { Mapper type }
    GENERAL_MIDI_MAPPER  = 0;
    EXTENDED_MIDI_MAPPER = 1;
    BASIC_MIDI_MAPPER    = 2;
    USER_DEFINED_MAPPER  = 3;

    { Synthesizer type }
    INTERN_SYNTH         = 1;
    EXTERN_SYNTH         = 2;
{ End of file }
