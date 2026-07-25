{$MODE DELPHI}
Unit NmPipes;
{
  OS/2 Named Pipes Pascal Bindings — Phase 12.5
  Wraps DOSCALLS.DLL named pipe ordinals
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
  HPIPE = ULONG;
  PHPIPE = ^HPIPE;

  AVAILDATA = Record
    cbpipe   : USHORT;
    cbmessage : USHORT;
  End;

  PIPEINFO = Record
    cbOut    : USHORT;
    cbIn     : USHORT;
    cbMaxInst : BYTE;
    cbCurInst : BYTE;
    cbName   : BYTE;
    szName   : Array[0..0] Of Char;
  End;
  PPIPEINFO = ^PIPEINFO;

Function DosCreateNPipe(pszName: PChar; phpipe: PHPIPE;
  openmode: ULONG; pipemode: ULONG; cbInBuf: ULONG;
  cbOutBuf: ULONG; msTimeout: ULONG): APIRET;
Function DosConnectNPipe(hpipe: HPIPE): APIRET;
Function DosDisConnectNPipe(hpipe: HPIPE): APIRET;
Function DosCallNPipe(pszName: PChar; pInBuf: Pointer; cbIn: ULONG;
  pOutBuf: Pointer; cbOut: ULONG; pcbActual: PULONG;
  msTimeout: ULONG): APIRET;
Function DosWaitNPipe(pszName: PChar; msTimeout: ULONG): APIRET;
Function DosTransactNPipe(hpipe: HPIPE; pInBuf: Pointer; cbIn: ULONG;
  pOutBuf: Pointer; cbOut: ULONG; pcbRead: PULONG): APIRET;
Function DosQueryNPHState(hpipe: HPIPE; pState: PULONG): APIRET;
Function DosSetNPHState(hpipe: HPIPE; state: ULONG): APIRET;
Function DosQueryNPipeInfo(hpipe: HPIPE; infoLevel: ULONG;
  pBuf: Pointer; cbBuf: ULONG): APIRET;
Function DosSetNPipeSem(hpipe: HPIPE; hsem: HSEM; key: ULONG): APIRET;
Function DosPeekNPipe(hpipe: HPIPE; pBuf: Pointer; cbBuf: ULONG;
  pcbActual: PULONG; pAvail: Pointer; pState: PULONG): APIRET;

Const
  NP_ACCESS_INBOUND  = $0000;
  NP_ACCESS_OUTBOUND = $0001;
  NP_ACCESS_DUPLEX   = $0002;
  NP_INHERIT         = $0000;
  NP_NOINHERIT       = $0080;
  NP_WRITEBEHIND     = $0000;
  NP_NOWRITEBEHIND   = $4000;
  NP_WAIT            = $0000;
  NP_NOWAIT          = $8000;
  NP_TYPE_BYTE       = $0000;
  NP_TYPE_MESSAGE    = $0400;
  NP_UNLIMITED_INSTANCES = $00FF;

Implementation

Function DosCreateNPipe; external 'DOSCALLS' index 243;
Function DosConnectNPipe; external 'DOSCALLS' index 240;
Function DosDisConnectNPipe; external 'DOSCALLS' index 241;
Function DosCallNPipe; external 'DOSCALLS' index 240;
Function DosWaitNPipe; external 'DOSCALLS' index 245;
Function DosTransactNPipe; external 'DOSCALLS' index 244;
Function DosQueryNPHState; external 'DOSCALLS' index 249;
Function DosSetNPHState; external 'DOSCALLS' index 250;
Function DosQueryNPipeInfo; external 'DOSCALLS' index 248;
Function DosSetNPipeSem; external 'DOSCALLS' index 251;
Function DosPeekNPipe; external 'DOSCALLS' index 252;

End.
