#!/bin/bash
# FPC 2.6.4irc — Regression Test Suite
# the crew 4free — sysop/0

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PPC386="$ROOT/bin/ppc386"
UNITS="$ROOT/bin/units/i386-win32"
PASS=0; FAIL=0; SKIP=0

green()  { echo -e "  \033[32mPASS\033[0m  $1"; PASS=$((PASS+1)); }
red()    { echo -e "  \033[31mFAIL\033[0m  $1"; FAIL=$((FAIL+1)); }
yellow() { echo -e "  \033[33mSKIP\033[0m  $1"; SKIP=$((SKIP+1)); }

echo "============================================"
echo "FPC 2.6.4irc r3.1 — Regression Test Suite"
echo "============================================"

# ---- Compiler sanity ----
echo ""
echo "======== COMPILER ========"
VER=$($PPC386 -iV 2>/dev/null)
[ "$VER" = "2.6.4" ] && green "ppc386 version: $VER" || red "ppc386 version: $VER"

# ---- Phase 1: RTL compilation tests ----
echo ""
echo "======== PHASE 1: RTL (Win32) ========"

compile_test() {
  local name="$1"
  local src="$2"
  local extra="$3"
  rm -f /tmp/fpc_test_${name}.exe /tmp/fpc_test_${name} 2>/dev/null
  $PPC386 -Twin32 -n -FU$UNITS $extra -o/tmp/fpc_test_${name}.exe "$src" 2>/dev/null
  if [ -f "/tmp/fpc_test_${name}.exe" ]; then
    green "$name"
  else
    red "$name"
  fi
}

# IUnknown native const:
cat > /tmp/t_iunknown.pas << 'EOF'
program t_iunknown;
{$mode objfpc}
uses windows, classes, sysutils;
type TMyClass = class(TInterfacedObject, IUnknown) end;
var obj: TMyClass; intf: IUnknown;
begin obj := TMyClass.Create; intf := obj; intf := nil; end.
EOF
compile_test "iunknown_native" "/tmp/t_iunknown.pas"

# fpjson:
cat > /tmp/t_json.pas << 'EOF'
program t_json;
{$mode objfpc}{$H+}
uses sysutils, fpjson, jsonparser;
var json: TJSONData;
begin json := GetJSON('{"key":"value"}'); json.Free; end.
EOF
compile_test "fpjson" "/tmp/t_json.pas"

# XML:
cat > /tmp/t_xml.pas << 'EOF'
program t_xml;
{$mode objfpc}{$H+}
uses sysutils, DOM, XMLRead;
var doc: TXMLDocument;
begin doc := nil; end.
EOF
compile_test "xml_dom" "/tmp/t_xml.pas"

# RTTI:
cat > /tmp/t_rtti.pas << 'EOF'
program t_rtti;
{$mode objfpc}{$H+}
uses sysutils, classes, typinfo;
var info: PTypeInfo;
begin info := TypeInfo(TStringList); end.
EOF
compile_test "rtti" "/tmp/t_rtti.pas"

# Registry:
cat > /tmp/t_reg.pas << 'EOF'
program t_reg;
{$mode objfpc}{$H+}
uses sysutils, registry;
var reg: TRegistry;
begin reg := TRegistry.Create; reg.Free; end.
EOF
compile_test "registry" "/tmp/t_reg.pas"

# HTTP client:
cat > /tmp/t_http.pas << 'EOF'
program t_http;
{$mode objfpc}{$H+}
uses sysutils, fphttpclient;
var client: TFPHTTPClient;
begin client := TFPHTTPClient.Create(nil); client.Free; end.
EOF
compile_test "fphttpclient" "/tmp/t_http.pas"

# ---- Phase 6: Backport tests ----
echo ""
echo "======== PHASE 6: API BACKPORTS ========"

# CSVDocument:
cat > /tmp/t_csv.pas << 'EOF'
program t_csv;
{$mode objfpc}{$H+}
uses SysUtils, CSVDocument;
var doc: TCSVDocument;
begin
  doc := TCSVDocument.Create;
  doc.AddRow; doc.AddCell(0, 'test');
  if doc[0,0] <> 'test' then Halt(1);
  doc.Free;
end.
EOF
compile_test "csvdocument" "/tmp/t_csv.pas"

# HTTPClientEx:
cat > /tmp/t_httpex.pas << 'EOF'
program t_httpex;
{$mode objfpc}{$H+}
uses SysUtils, FPHTTPClientEx;
var client: TFPHTTPClientEx;
begin
  client := TFPHTTPClientEx.Create(nil);
  client.AllowRedirect := True;
  client.Free;
end.
EOF
compile_test "httpclientex" "/tmp/t_httpex.pas"

# ThreadQueue:
cat > /tmp/t_queue.pas << 'EOF'
program t_queue;
{$mode objfpc}{$H+}
uses SysUtils, Classes, ThreadQueue;
begin
  if ProcessThreadQueue <> 0 then Halt(1);
end.
EOF
compile_test "threadqueue" "/tmp/t_queue.pas"

# ---- Cross-platform compilation ----
echo ""
echo "======== PHASE 2: CROSS-PLATFORM ========"

cross_test() {
  local target="$1"
  local flag="$2"
  local units="$ROOT/bin/units/$target"
  cat > /tmp/t_cross.pas << 'XEOF'
program t_cross;
begin writeln('hello'); end.
XEOF
  rm -f /tmp/t_cross_${target}.exe /tmp/t_cross_${target} 2>/dev/null
  $PPC386 $flag -n -FU$units -s /tmp/t_cross.pas 2>/dev/null
  if [ $? -eq 0 ]; then
    green "cross-compile $target"
  else
    red "cross-compile $target"
  fi
}

cross_test "i386-linux" "-Tlinux"
cross_test "i386-go32v2" "-Tgo32v2"
cross_test "i386-freebsd" "-Tfreebsd"

# ---- Tools ----
echo ""
echo "======== TOOLS ========"
for tool in fpc fpcmake fpcres h2pas ppudump ppufiles ppumove ptop rstconv plex pyacc chmcmd; do
  if [ -f "$ROOT/bin/${tool}.exe" ]; then
    green "tool: $tool.exe"
  else
    yellow "tool: $tool.exe (not found)"
  fi
done

# ---- IDE ----
echo ""
echo "======== IDE ========"
if [ -f "$ROOT/bin/lazarus/lazarus.exe" ]; then
  SIZE=$(ls -lh "$ROOT/bin/lazarus/lazarus.exe" | awk '{print $5}')
  green "lazarus.exe ($SIZE)"
else
  red "lazarus.exe"
fi

if [ -f "$ROOT/bin/lazarus/fpc264irc.chm" ] || [ -f "$ROOT/docs/fpc264irc.chm" ]; then
  green "fpc264irc.chm"
else
  red "fpc264irc.chm"
fi

# ---- PPU counts ----
echo ""
echo "======== PPU COUNTS ========"
for target in i386-win32 i386-linux i386-go32v2 i386-freebsd i386-os2; do
  count=$(ls $ROOT/bin/units/$target/*.ppu 2>/dev/null | wc -l)
  if [ $count -gt 0 ]; then
    green "$target: $count PPUs"
  else
    yellow "$target: $count PPUs"
  fi
done

# ---- Summary ----
echo ""
echo "============================================"
echo "  PASS: $PASS  FAIL: $FAIL  SKIP: $SKIP"
echo "  Total: $((PASS + FAIL + SKIP))"
echo "============================================"

# Clean up:
rm -f /tmp/t_*.pas /tmp/t_*.exe /tmp/fpc_test_* /tmp/*.ppu /tmp/*.o 2>/dev/null

exit $FAIL
