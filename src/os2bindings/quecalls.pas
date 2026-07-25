{$MODE DELPHI}
Unit QueCalls;
{
  OS/2 Queue API Pascal Bindings — Phase 12.5
  Wraps QUECALLS.DLL (inter-process communication queues)
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
  HQUEUE = ULONG;
  PHQUEUE = ^HQUEUE;

  REQUESTDATA = Record
    pid  : PID;
    ulData : ULONG;
  End;
  PREQUESTDATA = ^REQUESTDATA;

{ Queue functions — QUECALLS.DLL }
Function DosCreateQueue(phq: PHQUEUE; priority: ULONG; pszName: PChar): APIRET;
Function DosOpenQueue(ppid: PPID; phq: PHQUEUE; pszName: PChar): APIRET;
Function DosCloseQueue(hq: HQUEUE): APIRET;
Function DosPurgeQueue(hq: HQUEUE): APIRET;
Function DosQueryQueue(hq: HQUEUE; pcbEntries: PULONG): APIRET;
Function DosPeekQueue(hq: HQUEUE; pRequest: PREQUESTDATA;
  pcbData: PULONG; ppBuf: PPointer; pelement: PULONG;
  fNowait: BOOL32; ppriority: PBYTE; hsem: HEV): APIRET;
Function DosReadQueue(hq: HQUEUE; pRequest: PREQUESTDATA;
  pcbData: PULONG; ppBuf: PPointer; pelement: ULONG;
  fNowait: BOOL32; ppriority: PBYTE; hsem: HEV): APIRET;
Function DosWriteQueue(hq: HQUEUE; ulRequest: ULONG;
  cbData: ULONG; pBuf: Pointer; priority: ULONG): APIRET;

Const
  QUE_FIFO     = 0;
  QUE_LIFO     = 1;
  QUE_PRIORITY = 2;
  QUE_NOCONVERT_ADDRESS = 0;
  QUE_CONVERT_ADDRESS   = 4;

Implementation

Function DosCreateQueue(phq: PHQUEUE; priority: ULONG; pszName: PChar): APIRET;
  external 'QUECALLS' index 100;
Function DosOpenQueue(ppid: PPID; phq: PHQUEUE; pszName: PChar): APIRET;
  external 'QUECALLS' index 101;
Function DosCloseQueue(hq: HQUEUE): APIRET;
  external 'QUECALLS' index 102;
Function DosPurgeQueue(hq: HQUEUE): APIRET;
  external 'QUECALLS' index 103;
Function DosQueryQueue(hq: HQUEUE; pcbEntries: PULONG): APIRET;
  external 'QUECALLS' index 104;
Function DosPeekQueue(hq: HQUEUE; pRequest: PREQUESTDATA;
  pcbData: PULONG; ppBuf: PPointer; pelement: PULONG;
  fNowait: BOOL32; ppriority: PBYTE; hsem: HEV): APIRET;
  external 'QUECALLS' index 105;
Function DosReadQueue(hq: HQUEUE; pRequest: PREQUESTDATA;
  pcbData: PULONG; ppBuf: PPointer; pelement: ULONG;
  fNowait: BOOL32; ppriority: PBYTE; hsem: HEV): APIRET;
  external 'QUECALLS' index 106;
Function DosWriteQueue(hq: HQUEUE; ulRequest: ULONG;
  cbData: ULONG; pBuf: Pointer; priority: ULONG): APIRET;
  external 'QUECALLS' index 107;

End.
