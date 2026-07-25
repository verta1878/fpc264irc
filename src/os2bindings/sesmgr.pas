{$MODE DELPHI}
Unit SesMgr;
{
  OS/2 Session Manager Pascal Bindings — Phase 12.5
  Wraps SESMGR.DLL
  GPLv3 — The Crew
}

Interface

Type
  APIRET  = Cardinal;
  ULONG   = Cardinal;
  USHORT  = Word;
  LONG    = LongInt;
  BOOL32  = Cardinal;
  PID     = Cardinal;
  PPID    = ^PID;
  PULONG  = ^ULONG;
  PUSHORT = ^USHORT;
  PSHORT  = ^SmallInt;
  PBYTE   = ^Byte;
  HEV     = ULONG;
  HSEM    = ULONG;



Type
  STARTDATA = Record
    Length        : USHORT;
    Related       : USHORT;
    FgBg          : USHORT;
    TraceOpt      : USHORT;
    PgmTitle      : PChar;
    PgmName       : PChar;
    PgmInputs     : PChar;
    TermQ         : PChar;
    Environment   : PChar;
    InheritOpt    : USHORT;
    SessionType   : USHORT;
    IconFile      : PChar;
    PgmHandle     : ULONG;
    PgmControl    : USHORT;
    InitXPos      : USHORT;
    InitYPos      : USHORT;
    InitXSize     : USHORT;
    InitYSize     : USHORT;
    Reserved      : USHORT;
    ObjectBuffer  : PChar;
    ObjectBuffLen : ULONG;
  End;
  PSTARTDATA = ^STARTDATA;

  STATUSDATA = Record
    Length   : USHORT;
    SelectInd : USHORT;
    BondInd   : USHORT;
  End;
  PSTATUSDATA = ^STATUSDATA;

Function DosStartSession(psd: PSTARTDATA; pidSession: PULONG; ppid: PPID): APIRET;
Function DosSetSession(idSession: ULONG; psd: PSTATUSDATA): APIRET;
Function DosSelectSession(idSession: ULONG): APIRET;
Function DosStopSession(scope: ULONG; idSession: ULONG): APIRET;

Const
  SSF_RELATED_INDEPENDENT = 0;
  SSF_RELATED_CHILD       = 1;
  SSF_FGBG_FORE           = 0;
  SSF_FGBG_BACK           = 1;
  SSF_TYPE_DEFAULT        = 0;
  SSF_TYPE_FULLSCREEN     = 1;
  SSF_TYPE_WINDOWABLEVIO  = 2;
  SSF_TYPE_PM             = 3;
  SSF_TYPE_VDM            = 4;
  SSF_TYPE_WINDOWEDVDM    = 7;

Implementation

Function DosStartSession(psd: PSTARTDATA; pidSession: PULONG; ppid: PPID): APIRET;
  external 'SESMGR' index 37;
Function DosSetSession(idSession: ULONG; psd: PSTATUSDATA): APIRET;
  external 'SESMGR' index 39;
Function DosSelectSession(idSession: ULONG): APIRET;
  external 'SESMGR' index 38;
Function DosStopSession(scope: ULONG; idSession: ULONG): APIRET;
  external 'SESMGR' index 40;

End.
