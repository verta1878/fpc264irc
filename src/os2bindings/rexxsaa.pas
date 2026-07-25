{$MODE DELPHI}
Unit RexxSAA;
{
  OS/2 REXX SAA Pascal Bindings — Phase 12.5
  Wraps REXX.DLL / REXXAPI.DLL
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
  RXSTRING = Record
    strlength : ULONG;
    strptr    : PChar;
  End;
  PRXSTRING = ^RXSTRING;

  RXSYSEXIT = Record
    sysexit_name : PChar;
    sysexit_code : LONG;
  End;
  PRXSYSEXIT = ^RXSYSEXIT;

  RexxFunctionHandler = Function(name: PChar; argc: ULONG;
    argv: PRXSTRING; queuename: PChar; retstr: PRXSTRING): ULONG;

Function RexxStart(argc: LONG; argv: PRXSTRING; pszName: PChar;
  pInstore: PRXSTRING; pszEnv: PChar; CallType: LONG;
  pExits: PRXSYSEXIT; pReturnCode: PSHORT;
  pResult: PRXSTRING): APIRET;
Function RexxRegisterFunctionExe(pszName: PChar;
  pFn: RexxFunctionHandler): APIRET;
Function RexxDeregisterFunction(pszName: PChar): APIRET;

Const
  RXCOMMAND   = 0;
  RXSUBROUTINE = 1;
  RXFUNCTION  = 2;

  RXEXIT_OK       = 0;
  RXEXIT_NOT_FOUND = 1;

Implementation

Function RexxStart(argc: LONG; argv: PRXSTRING; pszName: PChar;
  pInstore: PRXSTRING; pszEnv: PChar; CallType: LONG;
  pExits: PRXSYSEXIT; pReturnCode: PSHORT;
  pResult: PRXSTRING): APIRET;
  external 'REXX' index 1;
Function RexxRegisterFunctionExe(pszName: PChar;
  pFn: RexxFunctionHandler): APIRET;
  external 'REXXAPI' index 31;
Function RexxDeregisterFunction(pszName: PChar): APIRET;
  external 'REXXAPI' index 33;

End.
