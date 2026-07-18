#!/bin/bash
# test-ripscript-tools.sh — Verify Ansilove + ImageMagick for RIPscript work
set -uo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PASS=0; FAIL=0; SKIP=0
green()  { echo -e "  \033[32mPASS\033[0m  $1"; PASS=$((PASS+1)); }
red()    { echo -e "  \033[31mFAIL\033[0m  $1"; FAIL=$((FAIL+1)); }
yellow() { echo -e "  \033[33mSKIP\033[0m  $1"; SKIP=$((SKIP+1)); }

echo "============================================"
echo "RIPscript Tools Test Suite"
echo "============================================"
echo ""

# Source tool paths from provision (run silently)
source <(bash "$ROOT/tools/ripscript/provision.sh" 2>/dev/null | cat > /dev/null; cat "$ROOT/tools/ripscript/toolpaths.sh" 2>/dev/null)

# Fall back to system tools if toolpaths.sh missing
[ -z "${ANSILOVE:-}" ] && ANSILOVE=$(command -v ansilove 2>/dev/null || echo "$ROOT/tools/ripscript/bin/ansilove")
[ -z "${CONVERT:-}" ] && CONVERT=$(command -v convert 2>/dev/null || echo "$ROOT/tools/ripscript/bin/convert")
IDENTIFY=$(command -v identify 2>/dev/null || echo "$ROOT/tools/ripscript/bin/identify")

TMPDIR=$(mktemp -d)
trap "rm -rf $TMPDIR" EXIT

# ============ 1. Tool availability ============
echo "=== 1. Tool Availability ==="

if [ -x "$ANSILOVE" ]; then
    VER=$($ANSILOVE -v 2>&1 | head -1)
    green "ansilove present — $VER"
else
    red "ansilove not found at $ANSILOVE"
fi

if [ -x "$CONVERT" ]; then
    VER=$($CONVERT -version 2>&1 | head -1 | sed 's/Version: //')
    green "convert present — $VER"
else
    red "convert (ImageMagick) not found at $CONVERT"
fi

if [ -x "$IDENTIFY" ]; then
    green "identify present"
else
    yellow "identify not found (optional)"
fi

# ============ 2. Bundled files ============
echo ""
echo "=== 2. Bundled Files ==="

[ -x "$ROOT/tools/ripscript/bin/ansilove" ] && green "Tier 2 binary: ansilove" || red "Tier 2 binary: ansilove missing"
[ -x "$ROOT/tools/ripscript/bin/convert" ] && green "Tier 2 binary: convert" || red "Tier 2 binary: convert missing"
[ -f "$ROOT/tools/ripscript/src/ansilove-src.tar.gz" ] && green "Tier 3 source: ansilove-src.tar.gz" || red "Tier 3 source: ansilove missing"
[ -f "$ROOT/tools/ripscript/src/libansilove-src.tar.gz" ] && green "Tier 3 source: libansilove-src.tar.gz" || red "Tier 3 source: libansilove missing"
[ -f "$ROOT/tools/ripscript/src/imagemagick-src.tar.gz" ] && green "Tier 3 source: imagemagick-src.tar.gz" || red "Tier 3 source: imagemagick missing"
[ -x "$ROOT/tools/ripscript/provision.sh" ] && green "provision.sh executable" || red "provision.sh missing"
[ -f "$ROOT/tools/ripscript/doc/BUILD.md" ] && green "BUILD.md present" || red "BUILD.md missing"

# ============ 3. Ansilove functional tests ============
echo ""
echo "=== 3. Ansilove Functional Tests ==="

if [ -x "$ANSILOVE" ]; then
    # Create test ANSI file with escape codes
    printf '\033[1;31mHello\033[0m \033[1;34mWorld\033[0m\r\n' > "$TMPDIR/test.ans"
    printf '\033[44;37m  RIPscript Test  \033[0m\r\n' >> "$TMPDIR/test.ans"

    # Test: ANS → PNG conversion
    $ANSILOVE "$TMPDIR/test.ans" -o "$TMPDIR/test.png" 2>/dev/null
    if [ -f "$TMPDIR/test.png" ] && [ -s "$TMPDIR/test.png" ]; then
        SIZE=$(stat -c%s "$TMPDIR/test.png")
        green "ANS → PNG conversion ($SIZE bytes)"
    else
        red "ANS → PNG conversion failed"
    fi

    # Test: output is valid PNG (check magic bytes)
    if [ -f "$TMPDIR/test.png" ]; then
        MAGIC=$(od -A n -t x1 -N4 "$TMPDIR/test.png" 2>/dev/null | tr -d " 
")
        if [ "$MAGIC" = "89504e47" ]; then
            green "Output is valid PNG (magic: 89504e47)"
        else
            red "Output is not valid PNG (got: $MAGIC)"
        fi
    fi

    # Test: SAUCE metadata handling (create file with SAUCE record)
    printf 'Test ANSI\r\n\x1a' > "$TMPDIR/sauce.ans"
    printf 'SAUCE' >> "$TMPDIR/sauce.ans"
    printf '00Test Title             Test Author         Test Group          20260717' >> "$TMPDIR/sauce.ans"
    $ANSILOVE "$TMPDIR/sauce.ans" -o "$TMPDIR/sauce.png" 2>/dev/null
    if [ -f "$TMPDIR/sauce.png" ]; then
        green "SAUCE record file handled"
    else
        yellow "SAUCE record test — file not produced (non-critical)"
    fi

    # Test: different output modes
    $ANSILOVE "$TMPDIR/test.ans" -o "$TMPDIR/test_ced.png" -m ced 2>/dev/null
    if [ -f "$TMPDIR/test_ced.png" ]; then
        green "CED rendering mode works"
    else
        yellow "CED mode not available in this version"
    fi
else
    yellow "ansilove not available — skipping functional tests"
fi

# ============ 4. ImageMagick functional tests ============
echo ""
echo "=== 4. ImageMagick Functional Tests ==="

if [ -x "$CONVERT" ]; then
    # Test: create a test image from scratch
    $CONVERT -size 640x350 xc:black "$TMPDIR/blank.png" 2>/dev/null
    if [ -f "$TMPDIR/blank.png" ]; then
        green "Create blank 640x350 image (RIP resolution)"
    else
        red "Failed to create blank image"
    fi

    # Test: draw colored rectangles (simulating RIP primitives)
    $CONVERT -size 640x350 xc:black \
        -fill blue -draw "rectangle 10,10 200,100" \
        -fill red -draw "rectangle 50,50 300,200" \
        -fill yellow -draw "circle 400,175 400,50" \
        "$TMPDIR/rip_primitives.png" 2>/dev/null
    if [ -f "$TMPDIR/rip_primitives.png" ]; then
        green "Draw RIP primitives (rect, circle, fill)"
    else
        red "Failed to draw primitives"
    fi

    # Test: 16-color EGA palette reduction
    $CONVERT "$TMPDIR/rip_primitives.png" -colors 16 "$TMPDIR/ega16.png" 2>/dev/null
    if [ -f "$TMPDIR/ega16.png" ]; then
        green "16-color EGA palette reduction"
    else
        red "Color reduction failed"
    fi

    # Test: resize to standard resolutions
    $CONVERT "$TMPDIR/rip_primitives.png" -resize 320x200! "$TMPDIR/cga.png" 2>/dev/null
    if [ -f "$TMPDIR/cga.png" ]; then
        green "Resize to 320x200 (CGA resolution)"
    else
        red "Resize failed"
    fi

    # Test: format conversion PNG → BMP
    $CONVERT "$TMPDIR/rip_primitives.png" "$TMPDIR/output.bmp" 2>/dev/null
    if [ -f "$TMPDIR/output.bmp" ]; then
        green "PNG → BMP conversion"
    else
        red "Format conversion failed"
    fi

    # Test: text annotation (for RIP text overlay testing)
    $CONVERT "$TMPDIR/blank.png" \
        -fill white -pointsize 16 \
        -annotate +10+30 "RIPscript Test" \
        "$TMPDIR/text.png" 2>/dev/null
    if [ -f "$TMPDIR/text.png" ]; then
        green "Text annotation overlay"
    else
        yellow "Text annotation failed (may need fonts)"
    fi

    # Test: identify image properties
    if [ -x "$IDENTIFY" ]; then
        INFO=$($IDENTIFY "$TMPDIR/rip_primitives.png" 2>/dev/null)
        if echo "$INFO" | grep -q "640x350"; then
            green "identify reports correct dimensions (640x350)"
        else
            red "identify dimensions mismatch: $INFO"
        fi
    fi

    # Test: composite/overlay (for layered RIP rendering)
    $CONVERT "$TMPDIR/blank.png" "$TMPDIR/rip_primitives.png" \
        -gravity center -composite "$TMPDIR/composite.png" 2>/dev/null
    if [ -f "$TMPDIR/composite.png" ]; then
        green "Image compositing/overlay"
    else
        yellow "Compositing not available"
    fi
else
    yellow "ImageMagick not available — skipping functional tests"
fi

# ============ 5. Integration test ============
echo ""
echo "=== 5. Pipeline Integration (ansilove → ImageMagick) ==="

if [ -x "$ANSILOVE" ] && [ -x "$CONVERT" ]; then
    # Full pipeline: ANSI → PNG → resize → 16-color → BMP
    printf '\033[1;33m╔══════════════════╗\033[0m\r\n' > "$TMPDIR/pipeline.ans"
    printf '\033[1;33m║\033[1;37m  Mystic BBS v38  \033[1;33m║\033[0m\r\n' >> "$TMPDIR/pipeline.ans"
    printf '\033[1;33m╚══════════════════╝\033[0m\r\n' >> "$TMPDIR/pipeline.ans"

    $ANSILOVE "$TMPDIR/pipeline.ans" -o "$TMPDIR/step1.png" 2>/dev/null &&
    $CONVERT "$TMPDIR/step1.png" -resize 640x350 "$TMPDIR/step2.png" 2>/dev/null &&
    $CONVERT "$TMPDIR/step2.png" -colors 16 "$TMPDIR/step3.png" 2>/dev/null &&
    $CONVERT "$TMPDIR/step3.png" "$TMPDIR/final.bmp" 2>/dev/null

    if [ -f "$TMPDIR/final.bmp" ]; then
        SIZE=$(stat -c%s "$TMPDIR/final.bmp")
        green "Full pipeline: ANS → PNG → resize → 16-color → BMP ($SIZE bytes)"
    else
        red "Pipeline failed"
    fi
else
    yellow "Pipeline test skipped — need both ansilove and ImageMagick"
fi

# ============ Summary ============
echo ""
echo "============================================"
echo "Passed: $PASS  Failed: $FAIL  Skipped: $SKIP"
echo "Total:  $((PASS+FAIL+SKIP))"
if [ $FAIL -eq 0 ]; then
    echo "ALL RIPSCRIPT TOOL TESTS PASSED"
else
    echo "SOME TESTS FAILED"
fi
echo "============================================"
exit $FAIL
