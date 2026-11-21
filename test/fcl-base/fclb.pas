program fclb;
{ test/fcl-base/fclb.pas - fcl-base units added for BUG-051 Part B - byte, 2026-11-21 }
{$mode objfpc}{$H+}
uses sysutils, classes, contnrs, inifiles, base64, fpexprpars, avl_tree, streamex, ascii85, idea, maskutils, fptemplate,
     custapp, wformat, inicol, nullstream, pooledmm, streamio, cachecls, uriparser, iostream;
var bad: integer = 0;
procedure chk(ok: boolean; const s: string);
begin if ok then writeln('OK   ', s) else begin writeln('BAD  ', s); inc(bad); end; end;
var h: TFPHashList; ini: TMemIniFile; sl: TStringList; p: TFPExpressionParser; t: TAVLTree; u: TURI; ns: TNullStream;
    i: integer;
begin
  h := TFPHashList.Create; h.Add('abc', pointer(7)); chk(PtrInt(h.Find('abc')) = 7, 'contnrs TFPHashList'); h.Free;
  chk(EncodeStringBase64('hello') = 'aGVsbG8=', 'base64 encode'); chk(DecodeStringBase64('aGVsbG8=') = 'hello', 'base64 decode');
  sl := TStringList.Create; sl.Add('[s]'); sl.Add('k=v');
  ini := TMemIniFile.Create(''); ini.SetStrings(sl); chk(ini.ReadString('s', 'k', '') = 'v', 'inifiles TMemIniFile'); ini.Free; sl.Free;
  p := TFPExpressionParser.Create(nil); p.Expression := '1+2*3'; chk(p.Evaluate.ResInteger = 7, 'fpexprpars 1+2*3'); p.Free;
  t := TAVLTree.Create; for i := 1 to 20 do t.Add(pointer(PtrInt(i))); chk(t.Count = 20, 'avl_tree'); t.Free;
  u := ParseURI('http://host:81/p/q.txt?x=1'); chk((u.Host = 'host') and (u.Port = 81), 'uriparser');
  ns := TNullStream.Create; ns.Write(i, 4); chk(ns.Size = 4, 'nullstream'); ns.Free;
  chk(FormatMaskText('000-00;0;_', '12345') = '123-45', 'maskutils');
  if bad = 0 then writeln('ALL OK') else writeln('FAILED ', bad);
end.
