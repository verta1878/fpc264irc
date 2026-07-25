{
    Copyright (C) 1998-2000 by Florian Klaempfl

    This unit handles the temporary variables stuff for i8086

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

 ****************************************************************************
}
{
  This unit handles the temporary variables stuff for i8086.
}
unit tgcpu;

{$i fpcdefs.inc}

  interface

    uses
      tgobj,globtype,aasmdata,cgutils,symtype;

    type

      { ttgi8086 }

      ttgi8086 = class(ttgobj)
      public
        { i8086 backport: 2.6.4's alloctemp is a function returning an offset,
          not a procedure with out ref. Override gettemp/gettemptyped instead
          (the procedures that build the treference) to mark temps as living in
          the stack segment (SS). }
        procedure gettemp(list: TAsmList; size, alignment : longint;temptype:ttemptype;out ref : treference);override;
        procedure gettemptyped(list: TAsmList; def:tdef;temptype:ttemptype;out ref : treference);override;
      end;

implementation

uses
  cpubase;

{ ttgi8086 }

procedure ttgi8086.gettemp(list: TAsmList; size, alignment: longint; temptype: ttemptype; out ref: treference);
  begin
    inherited gettemp(list,size,alignment,temptype,ref);
    ref.segment:=NR_SS;
  end;


procedure ttgi8086.gettemptyped(list: TAsmList; def: tdef; temptype: ttemptype; out ref: treference);
  begin
    inherited gettemptyped(list,def,temptype,ref);
    ref.segment:=NR_SS;
  end;

begin
  tgobjclass:=ttgi8086;
end.
