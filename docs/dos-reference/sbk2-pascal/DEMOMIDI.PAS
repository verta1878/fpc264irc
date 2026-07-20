(* ------------------------------------------------------------------------ *)
(*  @@ Source Documentation                     *** PASCAL Version ***      *)
(*                                                                          *)
(*  TITLE : DEMOMIDI.PAS                                                    *)
(*                                                                          *)
(*  DESCRIPTION :                                                           *)
(*      This program demostrates how to use the CTMIDI.DRV driver           *)
(*      to play a midi file.                                                *)
(*                                                                          *)
(*      Note that the BLASTER environment has to be set before executing    *)
(*      this program. Set MIDI=SYNTH:1|2 MAP:G|E|B. If MIDI is not set,     *)
(*      th default SYNTH:1 and MAP:E will be used.                          *)
(*                                                                          *)
(*  Copyright (c) Creative Technology Ltd, 1993. All rights reserved.       *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

{$M $1000, 0, 102400}

program demomidi;

{ Include the SBK unit and any other units needed }
uses DOS,CRT,
{$IFDEF VER70}
sbktp7,tp7sbkx;
{$ELSE}
sbktp6,tp6sbkx;
{$ENDIF}

{$I sbkmidi.inc}

Const
    MAX_FILES       =   100;    (* Maximum files searched *)
    PATH_LEN        =   128;    (* Maximun path length with file name *)
    NAME_LEN        =   13;     (* Length of file name *)

Type
    PtrRec = record
        lo, hi : word
    end;

    FileName        = string[NAME_LEN];
    TwoDim          = array[0..MAX_FILES] of FileName;
    mapperType      = array[0..2] of string[14];

Const
    mapperStr : mapperType = ('General Midi','Extended Midi','Basic Midi');

    CopyRight : string = chr(10)+chr(13)+'Creative MIDI Player Version 4FUN'+
                         chr(10)+chr(13)+'Copyright (c) Creative Technology Ltd 1993. '+
                         'All rights reserved.'+chr(10)+chr(13);


Var
    wMidiStatus     : word;             { Midi music output status        }
    FileList        : TwoDim;           { Midi file list                  }
    sFilePath       : string[PATH_LEN]; { File path                       }
    lpCurrentPlay   : pointer;          { File current being played       }
    iFilePos        : integer;          { current being played file index }
    iTotalFile      : integer;          { Total files in the list         }


{ ------------------------------------------------------------------------- }
{  @@ Usage                                                                 }
{                                                                           }
{  function PrepareCTMIDIDrv(BlasterEnv:string) : word                      }
{                                                                           }
{  Description :                                                            }
{       Load and endorse CTMIDI.DRV.                                        }
{                                                                           }
{  Entry :                                                                  }
{       BlasterEnv - BLASTER environment setting.                           }
{                                                                           }
{  Exit :                                                                   }
{       zero if sucessful, non-zero otherwise.                              }
{                                                                           }
{ ------------------------------------------------------------------------- }

function PrepareCTMIDIDrv(BlasterEnv:string) : word;
var
    szMidiEnv   : string[64];
    wretVal     : word ;
begin
    { load driver }
    CTmidiDrv := sbkLoadDriver('CTMIDI.DRV',UNUSED);

    if CTmidiDrv <> nil then begin
        if ctmdGetDrvVer >= $0100 then begin
            { make a C style string with null terminated }
            { pass BLASTER setting to driver             }
            if ctmdGetEnvSettings(sbkMakeAsciizString(BlasterEnv)) = 0 then begin

                (* get MIDI environment environment setting *)
                szMidiEnv := getenv('MIDI') ;

                if szMidiEnv <> '' then
                    (* set synthesizer type and mapper channel *)
                    wretVal := ctmdGetMidiEnvSettings(sbkMakeAsciizString(szMidiEnv));
                PrepareCTMIDIDrv := 0;
                exit;
            end else
                writeln('BLASTER environment is not valid');
        end else begin
            write('Invalid CTMIDI.DRV - ') ;
            writeln('I need CTMIDI.DRV version 1.00 or higher.') ;
        end;
    end else
        writeln('Error loading CTMIDI.DRV or CTMIDI.DRV not found.');

    PrepareCTMIDIDrv := 1;
end;


(* ------------------------------------------------------------------------ *)
(*  @@ Usage                                                                *)
(*                                                                          *)
(*   SetMidiOutParameters() : integer                                       *)
(*                                                                          *)
(*   DESCRIPTION:                                                           *)
(*       Set necessaey Midi output parameters.                              *)
(*                                                                          *)
(*   ENTRY:                                                                 *)
(*      none.                                                               *)
(*                                                                          *)
(*   EXIT:                                                                  *)
(*       zero if successful else return 1.                                  *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

function SetMidiOutParameters : integer;
begin
    (* Reset MIDI device parameter *)
    if ctmdResetMidiDriver = 0 then begin

        (* Set MIDI output status address *)
        if ctmdSetOutputStatusAddx(wMidiStatus) = 0 then begin
            SetMidiOutParameters := 0;
            exit;
        end else
            writeln('Error setting MIDI status address.');
    end else
        writeln('Error resetting MIDI device.');

    SetMidiOutParameters := 1;
end;


(* ------------------------------------------------------------------------ *)
(*  Display Menu                                                            *)
(* ------------------------------------------------------------------------ *)

procedure DisplayMenu;

begin
    write('Press',chr(10),chr(13));
    write('    Esc      - to exit         T        - to display title',chr(10),chr(13));
    write('    N        - next song       M        - to change mapper',chr(10),chr(13));
    write('    L        - previous song   <- or -> - to transpose',chr(10),chr(13));
    write('    P        - to pause          or   - to change tempo',chr(10),chr(13));
    write('    R        - to resume       S        - DOS Shell',chr(10),chr(10),chr(13));
end;


(* ------------------------------------------------------------------------ *)
(*  @@ Usage                                                                *)
(*                                                                          *)
(*   WaitMusicEnd () : integer                                              *)
(*                                                                          *)
(*   DESCRIPTION:                                                           *)
(*      Control MIDI music output.                                          *)
(*                                                                          *)
(*   ENTRY:                                                                 *)
(*       none                                                               *)
(*                                                                          *)
(*   EXIT:                                                                  *)
(*       0 if sucessful else return non-zero.                               *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

function WaitMusicEnd : integer;
var
    mapper_type, retVal : word;
    transpose, tempo    : integer;
    pause               : boolean;
    inkey               : char;
    sCommandEnv         : string[64];

begin
    pause := false;
    transpose := 0;
    tempo := 0;
    mapper_type := 0;

    ClrEol;
    write('Title : ',string(lpCurrentPlay^),chr(13));

    (* End of music ? *)
    while wMidiStatus <> 0 do begin
        if KeyPressed then begin
            inkey := UpCase(ReadKey);

            case inkey of
                chr($1b) : begin
                    retVal := ctmdStopMidiMusic;
                    WaitMusicEnd := 1;
                    exit;
                end;

                'N' :
                    retVal := ctmdStopMidiMusic;

                'L' : begin
                    retVal := ctmdStopMidiMusic;
                    iFilePos := iFilePos - 1;
                    if iFilePos < 0  then
                        iFilePos := 0;
                    WaitMusicEnd := 0;
                    exit;
                end;

                'P' : begin
                    if not pause then begin
                        ClrEol;
                        write('Music pause...',chr(13));
                        retVal := ctmdPauseMidiMusic;
                        pause := true;
                    end;
                end;

                'R' : begin
                    if pause then begin
                        ClrEol;
                        write('Music continue...',chr(13));
                        retVal := ctmdResumeMidiMusic;
                        pause := false;
                    end;
                end;

                'M' : begin
                    mapper_type := mapper_type + 1;
                    if mapper_type > 2 then
                        mapper_type := 0;
                    retVal := ctmdSetMapperType(mapper_type);
                    ClrEol;
                    write(mapperStr[mapper_type],chr(13));
                end;

                'S' : begin
                    ClrEol;
                    write('Type EXIT to return.',chr(13));
                    sCommandEnv := getenv('COMSPEC');
                    SwapVectors;
                    if sCommandEnv <> '' then
                        Exec(sCommandEnv,'')
                    else
                        Exec('command.com','');
                    SwapVectors;

                    if DosError <> 0 then begin
                        ClrEol;
                        case DosError of
                            2 : write('COMMAMD.COM not found.',chr(13));
                            8 : write('Not enough memory.',chr(13));
                        end;
                    end else begin
                        write(CopyRight);
                        DisplayMenu;
                        write('Title : ',string(lpCurrentPlay^),chr(13));
                    end;
                end;

                'T' : begin
                    ClrEol;
                    write('Title : ', string(lpCurrentPlay^),chr(13));
                end;

                chr(0) : begin
                    inkey := ReadKey;

                    case ord(inkey) of

                        72 : begin
                            if tempo < 20 then
                                tempo := tempo + 1;
                            if ctmdSetMusicTempo(tempo) = 0 then begin
                                ClrEol;
                                write('Tempo : ',tempo,chr(13));
                            end;
                        end;

                        80 : begin
                            if tempo > -20 then
                                tempo := tempo - 1;
                            if ctmdSetMusicTempo(tempo) = 0 then begin
                                ClrEol;
                                write('Tempo : ',tempo,chr(13));
                            end;
                        end;

                        77 : begin
                            if transpose < 12 then
                                transpose := transpose + 1;
                            if ctmdSetMusicTranspose(transpose) = 0 then begin
                                ClrEol;
                                write('Transpose : ',transpose,chr(13));
                            end;
                        end;

                        75 : begin
                            if transpose > -12 then
                                transpose := transpose - 1;
                            if ctmdSetMusicTranspose(transpose) = 0 then begin
                                ClrEol;
                                write('Transpose : ',transpose,chr(13));
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end;

    iFilePos := iFilePos + 1;

    if iFilePos < iTotalFile then
        WaitMusicEnd := 0
    else
        WaitMusicEnd := 1;
end;


(* ------------------------------------------------------------------------ *)
(*  @@ Usage                                                                *)
(*                                                                          *)
(*  PlayMidi(lpMidiBuffer : pointer) : integer                              *)
(*                                                                          *)
(*  Description :                                                           *)
(*      Start sending out MIDI code.                                        *)
(*                                                                          *)
(*  Entry :                                                                 *)
(*      lpMidiBuffer :- Music buffer.                                       *)
(*                                                                          *)
(*  Exit :                                                                  *)
(*      0 if successful else non-zero                                       *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

function PlayMidi (lpMidiBuffer : pointer) : integer;
begin
    if ctmdResetMidiDriver = 0 then begin
        if ctmdPrepareMidiStart(lpMidiBuffer) = 0 then begin
            if ctmdPlayMidiMusic = 0 then begin
                PlayMidi := WaitMusicEnd;
                exit;
            end else
                writeln('Error outputing music.');
        end else
            writeln('Error preparing MIDI output.');
    end else
        writeln('Error resetting MIDI driver.');

    PlayMidi := 1;
end;


(* ------------------------------------------------------------------------ *)
(*  @@ Usage                                                                *)
(*                                                                          *)
(*   LoadFile (sFileName : string) : pointer                                *)
(*                                                                          *)
(*   DESCRIPTION:                                                           *)
(*       Load file into memory.                                             *)
(*                                                                          *)
(*   ENTRY:                                                                 *)
(*       sFileName :- File to be loaded.                                    *)
(*                                                                          *)
(*   EXIT:                                                                  *)
(*       far pointer of the loader music buffer else return nil.            *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

function LoadFile (sFileName : string) : pointer;
var
    wTemp, wByteRead     : word;
    lpTmpPtr, lpMusicBuf : pointer;
    lFSize               : longint;
    F                    : file;

begin
    {$I-}
    Assign(F, sFileName);
    Reset(F,1);
    {$I+}

    LoadFile := nil;

    if IOResult = 0 then begin
        lFSize := FileSize(F);

        { allocate memory }
        Mark(lpMusicBuf);

        repeat
            wTemp := $8000;

            if lFSize < $8000 then
                wTemp := word(lFSize);

            GetMem(lpTmpPtr,wTemp);

            lFSize := lFSize - wTemp;
        until lFSize = 0;

        if (lpTmpPtr <> nil) then begin
            lpTmpPtr := lpMusicBuf;
            LoadFile := lpMusicBuf;
            wByteRead := 0;

            { Read data from file to buffer }
            repeat
                BlockRead(F,lpTmpPtr^,$8000,wTemp);
                wByteRead := wByteRead + wTemp;

                { advance pointer }
                PtrRec(lpTmpPtr).lo := PtrRec(lpTmpPtr).lo + wTemp;

                { adjust when cross segment }
                if not Boolean(Hi(wByteRead)) then
                    PtrRec(lpTmpPtr).hi := PtrRec(lpTmpPtr).hi + $1000;

            until wTemp <> $8000;
        end else
            writeln('Memory allocation error ...');

        close(F);
    end else
        writeln('Open ',sFileName,' error ...');
end;


(* ------------------------------------------------------------------------ *)
(*  SearchFile (sFileName : string) : integer                               *)
(*                                                                          *)
(*  Description :                                                           *)
(*      Search the file specified or wild card and put into global list.    *)
(*                                                                          *)
(*  Entry :                                                                 *)
(*      sFileName :- file to be search.                                     *)
(*                                                                          *)
(*  Exit :                                                                  *)
(*      Total number of files found.                                        *)
(*                                                                          *)
(* ------------------------------------------------------------------------ *)

function SearchFile (sFileName : string) : integer;
var
    x, i, path_loc : integer;
    S : SearchRec;

begin
    x := Length(sFileName);

    if x >= (PATH_LEN + NAME_LEN - 4) then begin
        writeln('Path name too long. Process aborted.');
        SearchFile := 0;
        exit;
    end;

    i := 1;
    path_loc := 0;
    repeat
        if (sFileName[i] = '.') and ((sFileName[i+1] = 'M') or
                                     (sFileName[i+1] = 'm') or
                                     (sFileName[i+1] = '*')) then begin
            path_loc := i;
            i := x;
        end;
        i := i + 1;
    until i > x;

    if path_loc = 0 then
        sFileName := sFileName + '.mid';

    FindFirst(sFileName,ReadOnly,S);

    if DosError = 0 then begin
        path_loc := 0;
        x := Length(sFileName);
        for i := 1 to x do
            if (sFileName[i] = '\') or (sFileName[i] = ':') then
                path_loc := i;

        sFileName[0] := chr(path_loc);
        sFilePath := sFileName;
        i := 0 ;

        repeat
            if i >= MAX_FILES then begin
                SearchFile := i;
                exit;
            end;

            FileList[i] := S.Name ;
            i := i + 1;
            FindNext(S);
        until (DosError <> 0);

        SearchFile := i;
        exit;
    end else
        writeln('< ',sFileName,' > - no file found.');

    SearchFile := 0;
end;


(* ------------------------------------------------------------------------ *)
{ main function }
var
    lpMidiBuffer : pointer;
    iretVal : integer;
    sFileName : string[PATH_LEN+NAME_LEN];
    MemMark1, MemMark2 : pointer;

begin
    write(CopyRight);

    if ParamCount < 1 then begin
        writeln('Usage : DEMOMIDI mid_filename OR *.mid');
        halt;
    end;

    sFileName := ParamStr(1);

    (* find file *)
    iTotalFile := SearchFile(sFileName);
    if iTotalFile = 0 then halt;

    sFileName := getenv('BLASTER');

    if sFileName = '' then begin
        writeln('BLASTER environment not set.');
        halt;
    end;

    Mark(MemMark1) ;

    (* Load CTMIDI.DRV into memory *)
    if PrepareCTMIDIDrv(sFileName) = 0 then begin
        (* Initialize CTMIDI.DRV driver *)
        if ctmdInit = 0 then begin
            (* Set MIDI output parameters *)
            if SetMidiOutParameters = 0 then begin
                DisplayMenu;
                iFilePos := 0;

                repeat
                    lpCurrentPlay :=  @FileList[iFilePos];

                    sFileName := sFilePath;
                    sFileName := sFileName + FileList[iFilePos];

                    Mark(MemMark2);

                    (* Load midi file into memory buffer *)
                    lpMidiBuffer := LoadFile(sFileName);

                    if lpMidiBuffer <> nil then begin
                        iretVal := PlayMidi(lpMidiBuffer);
                        Release(MemMark2);
                    end else
                        iretVal := 1;
                until iretVal <> 0;
            end;
            (* Terminate CTMIDI.DRV driver *)
            iretVal := ctmdTerminate;
        end else
            writeln('Error initialising CTMIDI.DRV driver.');
    end;

    Release(MemMark1) ; { Free memory }
end.
(* End of file *)
