{%MainUnit ../lclintf.pas}
{ OS/2 implementation of system environment APIs }

function OpenURL(AURL: String): Boolean;
begin
  if Assigned(OpenURLWidgetsetImplementation) then
    Result := OpenURLWidgetsetImplementation(AURL)
  else
    Result := False;
end;

function OpenDocument(APath: String): Boolean;
begin
  if Assigned(OpenDocumentWidgetsetImplementation) then
    Result := OpenDocumentWidgetsetImplementation(APath)
  else
    Result := False;
end;
