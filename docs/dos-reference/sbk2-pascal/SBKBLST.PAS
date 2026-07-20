(* ------------------------------------------------------------------------ *)
(*  @@ Source Documentation                     *** PASCAL Version ***      *)
(*                                                                          *)
(*  TITLE : SBKBLST.PAS                                                     *)
(*                                                                          *)
(*  DESCRIPTION :                                                           *)
(*      The program checks the BLASTER environment variable for the Card    *)
(*      settings. It does not performs any test on the hardware setting     *)
(*      on the card.                                                        *)
(*                                                                          *)
(*  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

program sbkblst;

Uses DOS,CRT;

type
  { BLASTER environment record }
  CTBLASTER = record
    cardid        : word; { card type }
    sbioaddx      : word; { i/o address }
    sbintr        : word; { interrupt }
    dma           : word; { dma channel }
    hdma          : word; { high dma channel }
    midi          : word; { midi port }
    mixer         : word; { mixer port }
    pbioaddx      : word; { printer port (used only by Port Blaster) }
    pbintr        : word; { printer port interrupt }
  end;

  str4 = string[4];
  str3 = string[3];

const
    CardType: array[0..6] of string[22] = (
    '- Creative Sound Blaster Series -',
    'Sound Blaster',
    'Sound Blaster Pro',
    'Sound Blaster 2.0',
    'Sound Blaster Pro 2.0',
    'Sound Blaster Pro MCV',
    'Sound Blaster 16'
    );


{---------------------------------------------------------------------------}
{   @@ Usage                                                                }
{                                                                           }
{   function GetSetting(Blaster:string;Off,Radix:integer) : word            }
{                                                                           }
{   Description :                                                           }
{       Extracts individual parameter from the BLASTER environment.         }
{                                                                           }
{   Entry :                                                                 }
{       Blaster - the string of BLASTER environment                         }
{       Radix   - hexadecimal or decimal value                              }
{       Off     - offset of the parameter                                   }
{                                                                           }
{   Exit :                                                                  }
{       param   - parameter value                                           }
{                                                                           }
{---------------------------------------------------------------------------}

function GetSetting(Blaster:string; Off,Radix:integer) : word;
const
    SPACE = 32;     { space character }
    HEXA  = 16;     { hexadecimal value }
    DECI  = 10;     { decimal value }
    NUM   = 48;     { base ASCII value of the numeric characters (0 - 9) }
    UCASE = 65-10;  { base ASCII value of the UCASE characters (A - F) }
    GO    = 1;
    STOP  = 0;

var
    Param,Value,BlstLen,Digit : integer;
    NumOfDigit,Status,Count   : integer;

begin
    Param := 0;
    Digit := 0;
    NumOfDigit := 0;
    Status := GO;

    { length of the BLASTER string }
    BlstLen := length(Blaster);

    { Determines the number of digit for each value }
    repeat
        if (BlstLen-Off-NumOfDigit) >= 0 then begin
            Value := ord(Blaster[Off+NumOfDigit]);
            if Value <> SPACE then
                NumOfDigit := NumOfDigit + 1
            else
                Status := STOP;
        end else
            Status := STOP;
    until Status = STOP;

    while Digit < NumOfDigit do begin
        { Returns the ASCII value of each character }
        Value := ord(UpCase(Blaster[Off+Digit]));

        if Value < 58 then          { numeric character (0 - 9) }
            Value := Value - NUM
        else                        { upper case alphabet (A - F) }
            Value := Value - UCASE;

        inc(digit);

        if Radix = HEXA then        { converts to hexadecimal value }
            for Count:=1 to (NumOfDigit-digit) do
                Value := Value * 16
        else if Radix = DECI then   { converts to decimal value }
            for Count:=1 to (NumOfDigit-digit) do
                Value := Value * 10;

        Param := Param + Value;
    end;

    GetSetting := Param;
end;


{ ------------------------------------------------------------------------- }
{   @@ Usage                                                                }
{                                                                           }
{   Function HexString(IntVal : word) : str4                                }
{                                                                           }
{   Description :                                                           }
{       Converts integer value to hexadecimal in ASCII string format.       }
{                                                                           }
{   Entry :                                                                 }
{       IntVal - integer value to be converted.                             }
{                                                                           }
{   Exit :                                                                  }
{       str4 - a four character hexadecmal string.                          }
{                                                                           }
{ ------------------------------------------------------------------------- }

function HexString(IntVal : word) : str4;
var
   HexStr : string[8];
   b      : array [1..2] of byte absolute IntVal;

function Traduire(b : byte) : char;
begin
    if b < 10 then
       Traduire := chr(b+48)
    else
       Traduire := chr(b+55);
end;

begin
    HexStr := '';
    HexStr := HexStr + Traduire(b[2] shr 4);  { Starts from 4th character }
    HexStr := HexStr + Traduire(b[2] and 15);
    HexStr := HexStr + Traduire(b[1] shr 4);
    HexStr := HexStr + Traduire(b[1] and 15); { down to 1st character }
    HexString := HexStr;
end;


{ ------------------------------------------------------------------------- }
{   @@ Usage                                                                }
{                                                                           }
{   procedure DisplaySetting(StBlst:CTBLASTER)                              }
{                                                                           }
{   Description :                                                           }
{       Displays the BLASTER enviroment accordingly.                        }
{                                                                           }
{   Entry :                                                                 }
{       StBlst - Record of the BLASTER environnment.                        }
{                                                                           }
{   Exit  : none                                                            }
{                                                                           }
{ ------------------------------------------------------------------------- }

procedure DisplaySetting(StBlst:CTBLASTER);

function ShiftStr(Sstr : str4) : str3;
var
   Dstr    : string[3];
   x       : integer;
begin
     x := 1;
     Dstr[0] := char(3);

     while  x < 4 do begin
        Dstr[x] :=  Sstr[x+1];
        x := x + 1;
     end;

     ShiftStr := Dstr;
end;

begin
    if StBlst.cardid <> 0 then begin
        writeln;
        if (StBlst.cardid < 7) and (StBlst.cardid > 0) then
            writeln(CardType[StBlst.cardid],' card installed at')
        else
            writeln('Unknown card installed at');

        write('    I/O port             : ',ShiftStr(HexString(StBlst.sbioaddx)));
        writeln(' hex');

        writeln('    Interrupt            : ',StBlst.sbintr);

        writeln('    DMA channel          : ',StBlst.dma);

        if StBlst.hdma <> 0 then
            writeln('    High DMA channel     : ',StBlst.hdma);

        if StBlst.midi <> 0 then begin
            write('    Midi port            : ',ShiftStr(HexString(StBlst.midi)));
            writeln(' hex');
        end;

        if StBlst.mixer <> 0 then begin
            write('    Mixer port           : ',ShiftStr(HexString(StBlst.mixer)));
            writeln(' hex');
        end;
    end;

    if StBlst.pbioaddx <> 0 then begin
        writeln;
        writeln('Port Blaster card installed at');
        writeln('    Printer port         : LPT',StBlst.pbioaddx);
        writeln('    Interrupt            : ',StBlst.pbintr);
    end;
end;


{ ------------------------------------------------------------------------- }

{ main function }
var
   Blaster     : ^byte;
   BlstEnv     : string[128];
   StBlst      : CTBLASTER;
   Long, Off   : integer;

begin
    { Initializes the BLASTER struct to null }
    Long := SizeOf(StBlst);
    Blaster := ptr(seg(StBlst.cardid),ofs(StBlst.cardid));

    for Off:=1 to Long do begin
        Blaster^ := 0;
        inc(Blaster);
    end;

    BlstEnv := GetEnv('BLASTER');
    Long := length(BlstEnv);

    if Long <> 0 then begin
        Off := 0;
        while Off <= Long do begin
            inc(Off);

            case BlstEnv[Off] of
                'A' : { Sound Blaster i/o address }
                begin
                    { Extracts the value set for each parameter in the }
                    { BLASTER environment }
                    inc(Off);
                    StBlst.sbioaddx := GetSetting(BlstEnv,Off,16);
                end;

                'I' : { Sound Blaster interrupt }
                begin
                    inc(Off);
                    StBlst.sbintr := GetSetting(BlstEnv,Off,10);
                end;

                'D' : { DMA channel }
                begin
                    inc(Off);
                    StBlst.dma := GetSetting(BlstEnv,Off,10);
                end;

                'T' : { Card type }
                begin
                    inc(Off);
                    StBlst.cardid := GetSetting(BlstEnv,Off,10);
                end;

                'M' : { Mixer port }
                begin
                    inc(Off) ;
                    StBlst.mixer := GetSetting(BlstEnv,Off,16);
                end;

                'P' : { Midi port }
                begin
                    inc(Off);
                    StBlst.midi := GetSetting(BlstEnv,Off,16);
                end;

                'H' : { High DMA channel }
                begin
                    inc(Off);
                    StBlst.hdma := GetSetting(BlstEnv,Off,10);
                end;

                'L' :
                begin
                    inc(Off);
                    if BlstEnv[Off] = 'P' then begin
                        inc(Off);

                        case BlstEnv[Off] of
                            'T' : { Port Blaster i/o address }
                            begin
                                Off := Off + 2;
                                StBlst.pbioaddx := GetSetting(BlstEnv,Off,10);
                            end;

                            'I' : { Port Blaster interrupt }
                            begin
                                Off := Off + 2;
                                StBlst.pbintr := GetSetting(BlstEnv,Off,10);
                            end;
                        end;
                    end;
                end;
            end;
        end;

        { increases the offset to the next parameter }
        while (BlstEnv[Off] <> ' ') and (Off <= Long) do
            inc(Off);

        { Displays the BLASTER environment }
        DisplaySetting(StBlst);
    end else
        writeln('BLASTER environment not set.');
end.
{ End of File }
