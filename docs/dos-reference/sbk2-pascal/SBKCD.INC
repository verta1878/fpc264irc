{*==========================================================================*}
{*  SBKCD.INC (revision 1.0)                                                *}
{*        API for SBCD.SYS                                                  *}
{*                                                                          *}
{* -------------------------------------------------------------------------*}
{*  Copyright (c) Creative Technology Ltd, 1991-1993.                       *}
{*  All Rights Reserved.                                                    *}
{*==========================================================================*}

{ ********  The following TYPE have been defined in the SBKTP6.TPU and
            SBKTP7.TPU units.
type

    QCHAN_INFO = record
          bTNo       : byte;        REM: Current track number in BCD format
          bReserved0 : byte;
          bMin       : byte;        REM: Minute      '
          bSec       : byte;        REM: Second      'running time within a track
          bFrame     : byte;        REM: Frame       '
          bReserved1 : byte;
          bPMin      : byte;        REM: Minute      '
          bPSec      : byte;        REM: Second      ' running time on the disc
          bPFrame    : byte;        REM: Frame       '
    end;

    DISC_INFO = record
          bLoTNo     : byte;        REM: Lowest track number
          bHiTNo     : byte;        REM: Highest track number
          dwLeadOut  : longint;     REM: Lead-out address
    end;
******** }


{
Constants
}
const
    NOT_CDROM_DRIVE   = $22;        { Not a CD-ROM drive               }
    NOT_PLAY_MODE     = $23;        { CD-ROM drive not in play mode    }
    NOT_PAUSE_MODE    = $24;        { CD-ROM drive not in pause mode   }
    MAX_TRACK_NO      = 100;        { Max. no. of tracks on a disc     }
{* End of file *}
