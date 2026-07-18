#!/usr/bin/env bash
# test-ide-gui-fallback.sh — verify the 3-tier provisioning for the
# FPC IDE and the Lazarus LCL (GUI). Mirrors test-tool-fallback.sh.
set -uo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PASS=0; FAIL=0; SKIP=0
green() { printf '  \033[32mPASS\033[0m  %s\n' "$1"; PASS=$((PASS+1)); }
red()   { printf '  \033[31mFAIL\033[0m  %s\n' "$1"; FAIL=$((FAIL+1)); }
yellow(){ printf '  \033[33mSKIP\033[0m  %s\n' "$1"; SKIP=$((SKIP+1)); }

echo "============================================"
echo " IDE + GUI 3-tier provisioning test"
echo "============================================"

echo ""
echo "=== FPC IDE (fp) — 3 tiers ==="
# Tier 2: bundled binary present and is the FPC IDE
if [ -x "$ROOT/bin/ide/fp" ] && \
   ("$ROOT/bin/ide/fp" </dev/null 2>&1 || true) | strings 2>/dev/null | grep -qi "Free Pascal IDE"; then
    green "Tier 2 (bundled): bin/ide/fp is the FPC IDE"
else
    red "Tier 2 (bundled): bin/ide/fp missing or not the IDE"
fi
# Tier 2: bundled units present
if [ "$(ls "$ROOT"/bin/ide/units/*/ide/*.ppu 2>/dev/null | wc -l)" -gt 0 ]; then
    green "Tier 2 (units):   IDE units shipped ($(ls "$ROOT"/bin/ide/units/*/ide/*.ppu 2>/dev/null | wc -l) ppu)"
else
    red "Tier 2 (units):   no bundled IDE units"
fi
# Tier 3: source + build script
if [ -x "$ROOT/build-ide.sh" ] && [ -d "$ROOT/src/ide" ] && [ -d "$ROOT/src/packages/fv" ]; then
    green "Tier 3 (source):  build-ide.sh + IDE/Free Vision source present"
else
    red "Tier 3 (source):  build-ide.sh or source missing"
fi
# Provisioner resolves
if "$ROOT/tools/get-ide.sh" --which >/dev/null 2>&1; then
    green "Provisioner:      tools/get-ide.sh resolves an IDE"
else
    red "Provisioner:      tools/get-ide.sh failed"
fi

echo ""
echo "=== Lazarus LCL (GUI) — 3 tiers, per widgetset ==="
for ws in win32 gtk2 qt nogui; do
    case "$ws" in
      win32) cpuos=i386-win32 ;;
      gtk2)  cpuos=i386-linux ;;
      qt)    cpuos=i386-linux ;;
      nogui) cpuos=i386-linux ;;
    esac
    # Tier 2: bundled LCL units
    if ls "$ROOT/bin/lazarus/units/$cpuos/lcl/$ws"/*.ppu >/dev/null 2>&1; then
        n=$(ls "$ROOT/bin/lazarus/units/$cpuos/lcl"/*.ppu 2>/dev/null | wc -l)
        w=$(ls "$ROOT/bin/lazarus/units/$cpuos/lcl/$ws"/*.ppu 2>/dev/null | wc -l)
        green "Tier 2 ($ws):  bundled LCL units ($n base + $w widgetset)"
    else
        red "Tier 2 ($ws):  no bundled LCL units"
    fi
    # Tier 3: source + build script
    if [ -x "$ROOT/build-lcl.sh" ] && [ -d "$ROOT/src/lazarus/lcl/interfaces/$ws" ]; then
        green "Tier 3 ($ws):  build-lcl.sh + $ws widgetset source present"
    else
        red "Tier 3 ($ws):  build-lcl.sh or $ws source missing"
    fi
    # Provisioner resolves + emits unit path
    if up="$("$ROOT/tools/get-lcl.sh" "$ws" --unitpath 2>/dev/null)" && [ -n "$up" ]; then
        green "Provisioner ($ws): get-lcl.sh emits unit path"
    else
        red "Provisioner ($ws): get-lcl.sh failed"
    fi
done

echo ""
echo "=== Functional: compile a real LCL GUI app via get-lcl.sh (win32) ==="
UP="$("$ROOT/tools/get-lcl.sh" win32 --unitpath 2>/dev/null || true)"
if [ -n "$UP" ]; then
    cat > /tmp/lcl_fb_test.lpr << 'EOF'
program lcl_fb_test;
{$mode objfpc}{$H+}
uses Interfaces, Forms, StdCtrls, Controls;
var F: TForm; B: TButton;
begin
  Application.Initialize;
  Application.CreateForm(TForm, F);
  F.Caption := 'fallback test';
  B := TButton.Create(F); B.Parent := F; B.Caption := 'ok';
  Application.Run;
end.
EOF
    export PATH="$ROOT/bin/tools/i386-win32:$PATH"
    out=$("$ROOT/bin/ppc386" -Twin32 -Pi386 -Mobjfpc -Scghi -O1 -WG \
        -Fu"$ROOT/bin/units/i386-win32" $UP \
        -Fu"$ROOT/src/packages/fcl-base/src" -Fu"$ROOT/src/packages/fcl-image/src" \
        -Fu"$ROOT/src/packages/winunits-base/src" \
        -FD"$ROOT/bin/tools/i386-win32" -FE/tmp -o/tmp/lcl_fb_test.exe \
        /tmp/lcl_fb_test.lpr 2>&1 || true)
    if [ -f /tmp/lcl_fb_test.exe ] && file /tmp/lcl_fb_test.exe 2>/dev/null | grep -q "PE32"; then
        green "LCL app compiled to PE32 GUI exe via Tier 2 units"
    else
        red "LCL app failed to compile via get-lcl.sh"
    fi
    rm -f /tmp/lcl_fb_test.* 2>/dev/null
else
    yellow "LCL functional test skipped (no unit path)"
fi

echo ""
echo "============================================"
echo "Passed: $PASS  Failed: $FAIL  Skipped: $SKIP"
[ "$FAIL" = 0 ] && echo "ALL IDE+GUI FALLBACK CHECKS PASSED"
echo "============================================"
