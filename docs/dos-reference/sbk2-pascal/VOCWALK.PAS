(* ------------------------------------------------------------------------ *)
(*  @@ Source Documentation                     *** PASCAL Version ***      *)
(*                                                                          *)
(*  TITLE  : VOCWALK.PAS                                                    *)
(*                                                                          *)
(*  DESCRIPTION :                                                           *)
(*      This program demonstrates how to process and interprete             *)
(*      Creative Voice file. It processes an input VOC file and             *)
(*      shows the VOC file's blocks information.                            *)
(*                                                                          *)
(*      The process will be terminated once an invalid block type is        *)
(*      found.                                                              *)
(*                                                                          *)
(*  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

program vocwalk;

{$A-}
{$N+}

{ Include the SBK Unit, and any other units needed }
uses dos, crt;

{ Include type-defined for VOC constants and header }
const
    { VOC file block types }
    TERMINATOR          = 0;
    VOC_DATA_VER110     = 1;
    VOC_CONTINUE        = 2;
    VOC_SILENCE         = 3;
    MARKER              = 4;
    ASCII_TEXT          = 5;
    REPEAT_LOOP         = 6;
    END_REPEAT          = 7;
    VOC_EXTENDED        = 8;
    VOC_DATA_VER120     = 9;

    { currently supported Creative Voice Format version }
    VER110              = $010A;
    VER120              = $0114;

    { voice file packed format for block type 1 and 8 }
    BIT8p0_UNPACK       = 0;
    BIT4p0_PACK         = 1;
    BIT2p6_PACK         = 2;
    BIT2p0_PACK         = 3;

{$I sbkvoice.inc}

    typeStr7 = record
        Str7 : string[7]
    end;

var
    MonoStereo      : array[1..2] of typeStr7;
    channel         : word;   { input channel : 1 - mono, 2 - stereo }
    BlkType8Exist   : word;   { if block type 8 exists, it will supersede }
                              { block type 1 }
    SampRate        : word;   { sampling rate }


{ ------------------------------------------------------------------------- }
{   @@ Usage                                                                }
{                                                                           }
{   function CheckHeader (var F) : integer                                  }
{                                                                           }
{   Description :                                                           }
{       Retrieve Creative Voice header from the file and check              }
{       if it is a valid voice file.                                        }
{                                                                           }
{   Entry :                                                                 }
{       F - voice file pointer.                                             }
{                                                                           }
{   Exit :                                                                  }
{       zero if successful else return non-zero.                            }
{                                                                           }
{ ------------------------------------------------------------------------- }

function CheckHeader (var F : file) : integer ;
var
    header  : VOCHDR;
    numRead : word;

begin
    { read voice header }
    BlockRead(F,header,SizeOf(VOCHDR),numRead) ;

    if numRead = SizeOf(VOCHDR) then begin
        { check header id }
        if header.id = ('Creative Voice File' + char($1A)) then begin
            { check voice file format version }
            if (header.version = VER110) or (header.version = VER120) then begin
                { check voice file identification code }
                if header.check_code = word((not header.version) + $1234) then begin
                    write('Version       : ',hi(header.version),'.');
                    writeln(lo(header.version));
                    CheckHeader := 0;
                    exit ;
                end;
            end;
        end;
    end;

    writeln('Invalid format - Not Creative Voice file.');

    CheckHeader := 1;
end;


{ ------------------------------------------------------------------------- }
{   @@ Usage                                                                }
{                                                                           }
{   function BlockType??? (var F : file) : integer                          }
{                                                                           }
{   Description :                                                           }
{       The following functions inteprete and display ten kinds of          }
{       Creative Voice block type.                                          }
{                                                                           }
{   Entry :                                                                 }
{       F - voice file pointer.                                             }
{                                                                           }
{   Exit :                                                                  }
{       zero if successful else return non-zero.                            }
{                                                                           }
{ ------------------------------------------------------------------------- }

function BlockTypeOne (var F : file) : integer ;
type
    VOC = record
        BlkLen1 : byte;
        BlkLen2 : word;
        TC : byte;
        Pack : byte;
    end;

var
    Len : longint;
    numRead : word;
    stVoc : VOC;

begin
    { read block type 1 header }
    BlockRead(F,stVoc,SizeOf(VOC),numRead);

    if numRead = SizeOf(VOC) then begin
        { if block type 8 exists, it will supersede block type 1 }
        if BlkType8Exist = 0 then
            { calculate sampling rate }
            SampRate :=  word(1000000 div (256 - stVoc.TC));

        { calculate voice data length excluding block header }
        Len := stVoc.BlkLen2 ;
        Len := (Len shl 8) + stVoc.BlkLen1 - 2;

        write('1 Voice');
        GotoXY(17,WhereY);
        write(Len);
        GotoXY(33,WhereY);
        write(SampRate,' Hz');
        GotoXY(49,WhereY);

        if BlkType8Exist <> 0 then begin
            writeln(MonoStereo[channel].Str7,' 8 bit unsigned');
            BlkType8Exist := 0;
        end else begin

            { display voice pack mode }
            case stVoc.Pack of

                BIT8p0_UNPACK :
                    writeln(MonoStereo[channel].Str7,' 8 bit unsigned');

                BIT4p0_PACK :
                    writeln(MonoStereo[channel].Str7,' 4 bit ADPCM');

                BIT2p6_PACK :
                    writeln(MonoStereo[channel].Str7,' 2.6 bit ADPCM');

                BIT2p0_PACK :
                    writeln(MonoStereo[channel].Str7,' 2 bit ADPCM');

            else
                writeln('Unknown data packed format');
            end;
        end;

        { move file pointer to next block }
        Seek(F,Len + FilePos(F));
        numRead := 0;
    end else begin
        writeln('Block type 1 - Invalid format.');
        numRead := 1 ;
    end;

    BlockTypeOne := numRead;
end;


{ ------------------------------------------------------------------------- }

function BlockTypeTwo(var F : file) : integer ;
var
    BlkLen  : longint;
    numRead : word;

begin
    { read 3 bytes of block length }
    BlockRead(F,BlkLen,3,numRead);

    if numRead = 3 then begin
        BlkLen := BlkLen and longint($ffffff);

        write('2 Continuation');
        GotoXY(17,WhereY);
        writeln(BlkLen);

        { move file pointer to next block }
        Seek(F,BlkLen + FilePos(F));
        numRead := 0
    end else begin
        writeln('Block type 2 - Invalid format.');
        numRead := 1;
    end;

    BlockTypeTwo := numRead;
end;


{ ------------------------------------------------------------------------- }

function BlockTypeThree(var F : file) : integer ;
type
    VOC = record
        BlkLen1 : byte;
        BlkLen2 : word;
        Period : word;
        TC : byte;
    end;

var
    Rate    : word;
    fPeriod : string;
    numRead : word;
    stVoc   : VOC;

begin
    { read block header }
    BlockRead(F,stVoc,SizeOf(VOC),numRead);

    if numRead = SizeOf(VOC) then begin
        { calculate sampling rate }
        Rate := word(1000000 div (256 - stVoc.TC));

        { calculate period of silence }
        str((stVoc.Period / Rate):2:6, fPeriod);

        write('3 Silence');
        GotoXY(33,WhereY);
        write(Rate,' Hz');
        GotoXY(49,WhereY);
        writeln(fPeriod,' Sec');

        numRead := 0;
    end else begin
        writeln('Block type 3 - Invalid format.');
        numRead := 1;
    end;

    BlockTypeThree := numRead;
end;


{ ------------------------------------------------------------------------- }

function BlockTypeFour (var F : file) : integer ;
type
     VOC = record
         BlkLen1 : byte;
         BlkLen2 : word;
         Marker : word;
     end;

var
    stVoc   : VOC;
    numRead : word;

begin
    { read block header }
    BlockRead(F,stVoc,SizeOf(VOC),numRead);

    if numRead = SizeOf(VOC) then begin
        { display marker value }
        write('4 Marker');
        GotoXY(49,WhereY);
        writeln(stVoc.Marker);

        numRead := 0;
    end else begin
        writeln('Block type 4 - Invalid format.');
        numRead := 1;
    end;

    BlockTypeFour := numRead;
end;


{ ------------------------------------------------------------------------- }

function BlockTypeFive (var F : file) : integer ;
var
    numRead : word;
    BlkLen  : longint;

begin
    { read 3 bytes of length of ASCII string }
    BlockRead(F,BlkLen,3,numRead);

    if numRead = 3 then begin
        BlkLen := BlkLen and longint($ffffff);

        write('5 ASCII');
        GotoXY(17,WhereY);
        writeln(BlkLen);

        { move file pointer to next block }
        Seek(F,BlkLen + FilePos(F));
        numRead := 0;
    end else begin
        writeln('Block type 5 - Invalid format.');
        numRead := 1;
    end;

    BlockTypeFive := numRead;
end;


{ ------------------------------------------------------------------------- }

function BlockTypeSix (var F : file) : integer ;
type
     VOC = record
         BlkLen1 : byte;
         BlkLen2 : word;
         Count : word;
     end;

var
    stVoc   : VOC;
    numRead : word;

begin
    { read block header }
    BlockRead(F,stVoc,SizeOf(VOC),numRead);

    if numRead = SizeOf(VOC) then begin
        write('6 Repeat Loop');
        GotoXY(49,WhereY);

        if stVoc.Count = $ffff then
            writeln('Endless (-1)')
        else
            writeln(stVoc.Count);

        numRead := 0;
    end else begin
        writeln('Block type 6 - Invalid format.');
        numRead := 1;
    end;

    BlockTypeSix := numRead;
end;


{ ------------------------------------------------------------------------- }

function BlockTypeSeven (var F : file) : integer ;
var
    numRead : word;
    BlkLen  : longint;

begin
    { read 3 bytes of block length }
    BlockRead(F,BlkLen,3,numRead);

    if numRead = 3 then begin
        writeln('7 Repeat End');
        numRead := 0;
    end else begin
        writeln('Block type 7 - Invalid format.');
        numRead := 1;
    end;

    BlockTypeSeven := numRead;
end;


{ ------------------------------------------------------------------------- }

function BlockTypeEight (var F : file) : integer ;
type
    VOC = record
        BlkLen1 : byte;
        BlkLen2 : word;
        TC : word;
        Pack : byte;
        Mode : byte;
    end;

var
    stVoc   : VOC;
    numRead : word;

begin
    { read block header }
    BlockRead(F,stVoc,SizeOf(VOC),numRead);

    if numRead = SizeOf(VOC) then begin
        if stVoc.Mode <> 0 then begin
            { global variable stereo mode }
            channel := 2;
            { calculate stereo sampling rate }
            SampRate := word(longint(256000000) div
                    ((word(65536) - stVoc.TC) * 2));
        end else begin
            { mono mode }
            channel := 1 ;
            { calculate mono sampling rate }
            SampRate := word(longint(256000000) div
                    (word(65536) - stVoc.TC));
        end;

        write('8 Extended');
        GotoXY(33,WhereY);
        write(SampRate,' Hz');
        GotoXY(49,WhereY);

        case stVoc.Pack of

            BIT8p0_UNPACK :
                writeln(MonoStereo[channel].Str7,' 8 bit unsigned');

            BIT4p0_PACK :
                writeln(MonoStereo[channel].Str7,' 4 bit ADPCM');

            BIT2p6_PACK :
                writeln(MonoStereo[channel].Str7,' 2.6 bit ADPCM');

            BIT2p0_PACK :
                writeln(MonoStereo[channel].Str7,' 2 bit ADPCM');

        else
            writeln('Unknown data packed format.');
        end;

        { Global variable }
        BlkType8Exist := 1;
        numRead := 0;
    end else begin
        writeln('Block type 8 - Invalid format.');
        numRead := 1;
    end;

    BlockTypeEight := numRead;
end;


{ ------------------------------------------------------------------------- }

function BlockTypeNine (var F : file) : integer ;
type
    VOC = record
        BlkLen1 : byte;
        BlkLen2 : word;
        dwSamplesPerRec : longint;
        bBitsPerSample : byte;
        bChannel : byte;
        wFormat : word;
        reserved : array[0..3] of byte;
    end;

var
    numRead : word;
    Len     : longint;
    stVoc   : VOC;
    bits    : byte;

begin
    { read block header }
    BlockRead(F,stVoc,SizeOf(VOC),numRead);

    if numRead = SizeOf(VOC) then begin
        { global variable stereo oR mono }
        channel := word(stVoc.bChannel);
        bits := stVoc.bBitsPerSample;

        { get block length excluding block header }
        Len := stVoc.BlkLen2;
        Len := (Len shl 8) + stVoc.BlkLen1 - 12;

        write('9 Voice');
        GotoXY(17,WhereY);
        write(Len);
        GotoXY(33,WhereY);
        write(stVoc.dwSamplesPerRec,' Hz');
        GotoXY(49,WhereY);

        { show voice pack format }
        case stVoc.wFormat of

            VOC_FORMAT_08_PCM :
                writeln(MonoStereo[channel].Str7,' ',bits,' bit unsigned');

            VOC_FORMAT_CT4_ADPCM,
            VOC_FORMAT_CT3_ADPCM,
            VOC_FORMAT_CT2_ADPCM :
                writeln(MonoStereo[channel].Str7,' ',bits,' bit ADPCM');

            VOC_FORMAT_16_PCM :
                writeln(MonoStereo[channel].Str7,' ',bits,' bit signed');

            VOC_FORMAT_ALAW :
                writeln(MonoStereo[channel].Str7,' ',bits,' bit ALAW');

            VOC_FORMAT_MULAW :
                writeln(MonoStereo[channel].Str7,' ',bits,' bit MULAW');

            VOC_FORMAT_CREATIVE_ADPCM :
                writeln(MonoStereo[channel].Str7,' ',bits,' bit CTADPCM');

        else
            writeln('Unknown data packed format');
        end;

        { move file pointer to next block }
        Seek(F,Len + FilePos(F));
        numRead := 0;
    end else begin
        writeln('Block type 9 - Invalid format.');
        numRead := 1;
    end;

    BlockTypeNine := numRead;
end;


{ ------------------------------------------------------------------------- }
{ main function }

var
    BlockType  : byte; { possible block type is 0 to 9 }
    szFilename : string;
    fExit      : integer;
    line       : char;
    numRead    : word;
    F          : file;

begin
    { initialize global variables }
    MonoStereo[1].Str7 := 'Mono';
    MonoStereo[2].Str7 := 'Stereo';
    channel := 1 ;
    BlkType8Exist := 0;

    writeln('Creative Voice Walker');

    if ParamCount > 0 then begin
        szFilename := ParamStr(1);
        { open voice file }
        {$I-}
        Assign(F,szFilename);
        Reset(F,1);
        {$I+}

        if IOResult = 0 then begin

            writeln('File name     : ',szFilename);
            writeln('File size     : ',FileSize(F));

            { check the voice file format }
            if CheckHeader(F) = 0 then begin
                write('Block Type');
                GotoXY(17,WhereY);
                write('Block Length');
                GotoXY(33,WhereY);
                write('Sampling Rate');
                GotoXY(49,WhereY);
                writeln('Description');

                line := char(205) ;
                for fExit := 0 to 76 do
                    write(line);
                writeln('');

                fExit := 0 ;

                while fExit = 0 do begin
                    { read block id into BlockType }
                    BlockRead(F,BlockType,SizeOf(BlockType),numRead);

                    if numRead = SizeOf(BlockType) then begin
                        case BlockType of

                            VOC_DATA_VER110 :
                                fExit := BlockTypeOne(F);

                            VOC_CONTINUE :
                                fExit := BlockTypeTwo(F);

                            VOC_SILENCE :
                                fExit := BlockTypeThree(F);

                            MARKER :
                                fExit := BlockTypeFour(F);

                            ASCII_TEXT :
                                fExit := BlockTypeFive(F);

                            REPEAT_LOOP :
                                fExit := BlockTypeSix(F);

                            END_REPEAT :
                                fExit := BlockTypeSeven(F);

                            VOC_EXTENDED :
                                fExit := BlockTypeEight(F);

                            VOC_DATA_VER120 :
                                fExit := BlockTypeNine(F);

                            TERMINATOR :
                            begin
                                writeln('0 Terminator');
                                fExit := 1;
                            end;

                        else
                            writeln('Invalid block type : ',BlockType);
                            fExit := 1;
                        end;
                    end;
                end;
            end;

            close(F) ;
        end
        else
            writeln('Error open ',szFilename);
    end else
        writeln('Usage : VOCWALK voc_filename');

    writeln('');
end.
{ End of file }
