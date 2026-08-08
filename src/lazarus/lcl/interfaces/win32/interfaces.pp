{ 
 /*************************************************************************** 
                         Interfaces.pp  -  determines what interface to use
                             ------------------- 

                   Initial Revision  : Thu July 1st CST 1999 


 ******************** *******************************************************/

 *****************************************************************************
  This file is part of the Lazarus Component Library (LCL)

  See the file COPYING.modifiedLGPL.txt, included in this distribution,
  for details about the license.
 *****************************************************************************
}

unit Interfaces;

{$mode objfpc}{$H+}

interface 

uses
  InterfaceBase;

implementation

uses
  Win32Int, Forms;

initialization
  { LCL_7182_PATCH: Don't create widgetset when loaded as a DLL.
    ISCmplr.dll loaded under Wine headless has no display —
    CreateWidgetset would fail. Same IsLibrary guard as systhrd.inc. }
  if not IsLibrary then
    CreateWidgetset(TWin32WidgetSet);

finalization
  if WidgetSet <> nil then
    FreeWidgetSet;

end.
