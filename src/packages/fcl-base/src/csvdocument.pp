{
  csvdocument.pp — CSV document parser

  Backported from FPC 3.x fcl-base for FPC 2.6.4irc.
  Simple CSV reader/writer with configurable delimiter.

  GPLv3 — the crew 4free — sysop/0
}
unit CSVDocument;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TCSVChar = Char;

  { TCSVDocument }
  TCSVDocument = class
  private
    FDelimiter: TCSVChar;
    FQuoteChar: TCSVChar;
    FLineEnding: string;
    FCells: TList;     { list of TStringList (one per row) }
    function GetRowCount: Integer;
    function GetColumnCount(ARow: Integer): Integer;
    function GetCell(ACol, ARow: Integer): string;
    procedure SetCell(ACol, ARow: Integer; const AValue: string);
    function GetMaxColCount: Integer;
    procedure EnsureRow(ARow: Integer);
    procedure EnsureCell(ACol, ARow: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Clear;
    procedure LoadFromFile(const AFileName: string);
    procedure LoadFromStream(AStream: TStream);
    procedure SaveToFile(const AFileName: string);
    procedure SaveToStream(AStream: TStream);
    procedure AddRow;
    procedure AddCell(ARow: Integer; const AValue: string);
    procedure InsertRow(ARow: Integer);
    procedure RemoveRow(ARow: Integer);
    property Delimiter: TCSVChar read FDelimiter write FDelimiter;
    property QuoteChar: TCSVChar read FQuoteChar write FQuoteChar;
    property LineEnding: string read FLineEnding write FLineEnding;
    property RowCount: Integer read GetRowCount;
    property ColumnCount[ARow: Integer]: Integer read GetColumnCount;
    property MaxColCount: Integer read GetMaxColCount;
    property Cells[ACol, ARow: Integer]: string read GetCell write SetCell; default;
  end;

implementation

{ TCSVDocument }

constructor TCSVDocument.Create;
begin
  inherited Create;
  FCells := TList.Create;
  FDelimiter := ',';
  FQuoteChar := '"';
  FLineEnding := sLineBreak;
end;

destructor TCSVDocument.Destroy;
begin
  Clear;
  FCells.Free;
  inherited Destroy;
end;

procedure TCSVDocument.Clear;
var
  rowIndex: Integer;
begin
  for rowIndex := 0 to FCells.Count - 1 do
    TStringList(FCells[rowIndex]).Free;
  FCells.Clear;
end;

function TCSVDocument.GetRowCount: Integer;
begin
  Result := FCells.Count;
end;

function TCSVDocument.GetColumnCount(ARow: Integer): Integer;
begin
  if (ARow >= 0) and (ARow < FCells.Count) then
    Result := TStringList(FCells[ARow]).Count
  else
    Result := 0;
end;

function TCSVDocument.GetMaxColCount: Integer;
var
  rowIndex, currentColCount: Integer;
begin
  Result := 0;
  for rowIndex := 0 to FCells.Count - 1 do
  begin
    currentColCount := TStringList(FCells[rowIndex]).Count;
    if currentColCount > Result then
      Result := currentColCount;
  end;
end;

procedure TCSVDocument.EnsureRow(ARow: Integer);
begin
  while FCells.Count <= ARow do
    FCells.Add(TStringList.Create);
end;

procedure TCSVDocument.EnsureCell(ACol, ARow: Integer);
var
  row: TStringList;
begin
  EnsureRow(ARow);
  row := TStringList(FCells[ARow]);
  while row.Count <= ACol do
    row.Add('');
end;

function TCSVDocument.GetCell(ACol, ARow: Integer): string;
begin
  if (ARow >= 0) and (ARow < FCells.Count) and
     (ACol >= 0) and (ACol < TStringList(FCells[ARow]).Count) then
    Result := TStringList(FCells[ARow])[ACol]
  else
    Result := '';
end;

procedure TCSVDocument.SetCell(ACol, ARow: Integer; const AValue: string);
begin
  EnsureCell(ACol, ARow);
  TStringList(FCells[ARow])[ACol] := AValue;
end;

procedure TCSVDocument.AddRow;
begin
  FCells.Add(TStringList.Create);
end;

procedure TCSVDocument.AddCell(ARow: Integer; const AValue: string);
begin
  EnsureRow(ARow);
  TStringList(FCells[ARow]).Add(AValue);
end;

procedure TCSVDocument.InsertRow(ARow: Integer);
begin
  if ARow >= FCells.Count then
    EnsureRow(ARow)
  else
    FCells.Insert(ARow, TStringList.Create);
end;

procedure TCSVDocument.RemoveRow(ARow: Integer);
begin
  if (ARow >= 0) and (ARow < FCells.Count) then
  begin
    TStringList(FCells[ARow]).Free;
    FCells.Delete(ARow);
  end;
end;

procedure TCSVDocument.LoadFromStream(AStream: TStream);
var
  content: TStringList;
  line: string;
  lineIndex, cellStart, charIndex: Integer;
  inQuote: Boolean;
  cellValue: string;
  currentRow: Integer;
begin
  Clear;
  content := TStringList.Create;
  try
    content.LoadFromStream(AStream);
    for lineIndex := 0 to content.Count - 1 do
    begin
      line := content[lineIndex];
      currentRow := FCells.Count;
      AddRow;
      inQuote := False;
      cellStart := 1;
      cellValue := '';
      for charIndex := 1 to Length(line) do
      begin
        if line[charIndex] = FQuoteChar then
          inQuote := not inQuote
        else if (line[charIndex] = FDelimiter) and (not inQuote) then
        begin
          { Strip surrounding quotes }
          if (Length(cellValue) >= 2) and
             (cellValue[1] = FQuoteChar) and
             (cellValue[Length(cellValue)] = FQuoteChar) then
            cellValue := Copy(cellValue, 2, Length(cellValue) - 2);
          AddCell(currentRow, cellValue);
          cellValue := '';
          cellStart := charIndex + 1;
        end
        else
          cellValue := cellValue + line[charIndex];
      end;
      { Last cell on line }
      if (Length(cellValue) >= 2) and
         (cellValue[1] = FQuoteChar) and
         (cellValue[Length(cellValue)] = FQuoteChar) then
        cellValue := Copy(cellValue, 2, Length(cellValue) - 2);
      AddCell(currentRow, cellValue);
    end;
  finally
    content.Free;
  end;
end;

procedure TCSVDocument.LoadFromFile(const AFileName: string);
var
  fileStream: TFileStream;
begin
  fileStream := TFileStream.Create(AFileName, fmOpenRead or fmShareDenyWrite);
  try
    LoadFromStream(fileStream);
  finally
    fileStream.Free;
  end;
end;

procedure TCSVDocument.SaveToStream(AStream: TStream);
var
  rowIndex, colIndex: Integer;
  row: TStringList;
  cellValue, line: string;
  needQuote: Boolean;
begin
  for rowIndex := 0 to FCells.Count - 1 do
  begin
    row := TStringList(FCells[rowIndex]);
    line := '';
    for colIndex := 0 to row.Count - 1 do
    begin
      if colIndex > 0 then
        line := line + FDelimiter;
      cellValue := row[colIndex];
      needQuote := (Pos(FDelimiter, cellValue) > 0) or
                   (Pos(FQuoteChar, cellValue) > 0) or
                   (Pos(#10, cellValue) > 0) or
                   (Pos(#13, cellValue) > 0);
      if needQuote then
        line := line + FQuoteChar +
                StringReplace(cellValue, FQuoteChar,
                  FQuoteChar + FQuoteChar, [rfReplaceAll]) +
                FQuoteChar
      else
        line := line + cellValue;
    end;
    line := line + FLineEnding;
    AStream.Write(line[1], Length(line));
  end;
end;

procedure TCSVDocument.SaveToFile(const AFileName: string);
var
  fileStream: TFileStream;
begin
  fileStream := TFileStream.Create(AFileName, fmCreate);
  try
    SaveToStream(fileStream);
  finally
    fileStream.Free;
  end;
end;

end.
