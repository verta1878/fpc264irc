{ ------------------------------------------------------------------------ }
{  @@ Source Documentation                           *** TP Version ***    }
{                                                                          }
{  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       }
{                                                                          }
{   TITLE       : SBKVER.PAS                                               }
{                                                                          }
{   DESCRIPTION :                                                          }
{       This program helps to show your Sound Blaster Developer Kit        }
{       version number.                                                    }
{                                                                          }
{       To check your library version compile this program with following  }
{       command:                                                           }
{                                                                          }
{              TPC sbkver                                                  }
{                                                                          }
{ ------------------------------------------------------------------------ }

program sbkver;

{ Include the SBC Unit, and any other units needed }
{$IFDEF VER70}
uses sbktp7;
{$ELSE}
uses sbktp6;
{$ENDIF}


begin

      writeln('Developer Kit for Sound Blaster Series, Second Edition');
      writeln('Turbo Pascal version');
      writeln;
      writeln('Version : ',sbklib_version_major + sbklib_version_minor/100:2:2);
end.
