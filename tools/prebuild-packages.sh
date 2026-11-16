#!/usr/bin/env bash
# Prebuild the FPC packages Mystic (and similar projects) need, into
# bin/units/<target>, so consumers don't need extra -Fu paths.
#
#   Usage:  ./tools/prebuild-packages.sh [target ...]
#           (no args = all known targets)
#
# Per-target notes (handled automatically):
#   * netdb (fcl-net) is the pure-Pascal resolver and is Unix-only -> built only
#     for linux/freebsd. win32/os2/go32v2 use their native resolver instead.
#   * fcl-process (pipes/process) has no go32v2 (DOS) support -> skipped there.
#   * os2 uses the emx target + the bundled bin/tools/i386-emx assembler.
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
P="$ROOT/src/packages"

# target : unitdir : fpc : ttarget : osinc : toolsdir(optional)
TARGETS_ALL="
x86_64-linux:x86_64-linux:bin/ppcx64:linux:unix:
i386-linux:i386-linux:bin/ppc386:linux:unix:
i386-go32v2:i386-go32v2:bin/ppc386:go32v2::
i386-win32:i386-win32:bin/ppc386:win32:win:
i386-freebsd:i386-freebsd:bin/ppc386:freebsd:unix:
i386-os2:i386-os2:bin/ppc386:emx:os2:bin/tools/i386-emx
"

want="${*:-all}"

build_one() {
  local unitdir=$1 fpc=$2 tt=$3 osinc=$4 tools=$5
  local U="$ROOT/bin/units/$unitdir"
  [ -d "$U" ] || { echo "  $unitdir: no unit dir, skip"; return; }
  local FPC="$ROOT/$fpc"
  local TD=""; [ -n "$tools" ] && TD="-FD$ROOT/$tools"
  local ok=0 tot=0
  _c() {  # src incdir
    tot=$((tot+1))
    local inc="-Fi$P/$2"; [ -n "$osinc" ] && inc="$inc -Fi$P/fcl-process/src/$osinc"
    "$FPC" -T$tt $TD -Fu"$U" -FU"$U" $inc "$P/$1" >/tmp/pp_$(basename $1).log 2>&1 && ok=$((ok+1))
  }
  _c hash/src/md5.pp hash/src
  _c hash/src/sha1.pp hash/src
  _c hash/src/crc.pas hash/src
  # netdb: Unix-only
  case "$tt" in linux|freebsd) _c fcl-net/src/netdb.pp fcl-net/src;; esac
  for u in zbase zdeflate zinflate gzio paszlib zipper zstream; do _c paszlib/src/$u paszlib/src; done
  # fcl-process: not on go32v2 (DOS)
  case "$tt" in go32v2) : ;; *) _c fcl-process/src/pipes.pp fcl-process/src; _c fcl-process/src/process.pp fcl-process/src;; esac
  echo "  $unitdir ($tt): $ok/$tot package units built"
}

for row in $TARGETS_ALL; do
  IFS=: read -r name unitdir fpc tt osinc tools <<< "$row"
  [ -z "$name" ] && continue
  if [ "$want" = "all" ] || [[ " $want " == *" $name "* ]]; then
    build_one "$unitdir" "$fpc" "$tt" "$osinc" "$tools"
  fi
done
