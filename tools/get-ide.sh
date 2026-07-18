#!/usr/bin/env bash
# ============================================================
#  3-tier provisioning for the Free Pascal text-mode IDE (fp).
#  Guarantees you never dead-end without an IDE.
#
#  Tier 1 — system:  use an 'fp' already on PATH.
#  Tier 2 — bundled: use the prebuilt bin/ide/fp shipped here.
#  Tier 3 — source:  build it from bundled source (build-ide.sh).
#
#  Usage: tools/get-ide.sh [--which | --run [args...]]
# ============================================================
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MODE="${1:---which}"; shift 2>/dev/null || true

green() { printf '  \033[32m%s\033[0m\n' "$1"; }
yellow(){ printf '  \033[33m%s\033[0m\n' "$1"; }

resolve_ide() {
    # Tier 1: system fp
    if command -v fp >/dev/null 2>&1; then
        # Only trust a system fp that is actually the FPC IDE
        if fp --version 2>&1 | grep -qi "Free Pascal IDE" 2>/dev/null; then
            echo "system:$(command -v fp)"; return 0
        fi
    fi
    # Tier 2: bundled binary
    if [ -x "$ROOT/bin/ide/fp" ]; then
        echo "bundled:$ROOT/bin/ide/fp"; return 0
    fi
    # Tier 3: build from source
    echo "source:$ROOT/build-ide.sh"; return 0
}

RES="$(resolve_ide)"
TIER="${RES%%:*}"
PATHTO="${RES#*:}"

case "$MODE" in
  --which)
    case "$TIER" in
      system)  green "Tier 1 (system):  $PATHTO" ;;
      bundled) green "Tier 2 (bundled): $PATHTO" ;;
      source)
        yellow "Tier 3 (source): no IDE binary found."
        echo   "         Build it with:  ./build-ide.sh" ;;
    esac
    echo "$PATHTO"
    ;;
  --run)
    if [ "$TIER" = source ]; then
        yellow "No IDE binary present — building from source first..."
        ( cd "$ROOT" && ./build-ide.sh ) || exit 1
        PATHTO="$ROOT/bin/ide/fp"
    fi
    exec "$PATHTO" "$@"
    ;;
  *) echo "Usage: tools/get-ide.sh [--which | --run [args...]]"; exit 1 ;;
esac
