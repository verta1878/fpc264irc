# FIX — Mystic build: missing FPC package unit paths (cNetDB / md5 / paszlib / Process)

**Status:** FIXED two ways (either alone gives 14/14):
  (a) r3 now **prebuilds** fcl-net / hash / paszlib / fcl-process into
      `bin/units/<target>/` — r3 behaves like a normal full FPC install.
  (b) Mystic `build.sh` now **auto-detects** r3's `src/packages/*/src` dirs and
      adds them to the unit path, so a source-only r3 also builds 14/14.
**Reported by:** verta1878/mystic-bbs-irc maintainer.

## Root cause (confirmed)

10/14 Mystic targets built; the 4 failures were all `Can't find unit cNetDB`
(and, once that was on the path, `Can't find unit MD5` for `mis`). These are FPC
package units (fcl-net, hash), not Mystic files, and not a compile or link bug —
purely missing `-Fu` search paths. r3 shipped these packages **source-only**
(under `src/packages/*/src`), not prebuilt in `bin/units`, so the compiler
couldn't find them unless the source dir was on the path.

Units → package → who needs them:
- `cNetDB`, `netdb` — **fcl-net** — `mdl/m_io_sockets.pas` → `mystic`, `mis`,
  `fidopoll`, `qwkpoll` (the 4 that failed).
- `md5` — **hash** — `mis` (POP3 auth).
- `crc` — **hash** — pulled in by paszlib's `gzio`.
- `zipper`, `paszlib`, `zstream` — **paszlib** — `marc` (built-in ZIP).
- `Process` — **fcl-process** — `mis` on OS/2 / Darwin (per-node spawn).

## Fix (a): prebuilt package units in r3 (compiler side — the clean fix)

Built and installed into `bin/units/x86_64-linux/`:

```
fcl-net:      cnetdb netdb
hash:         md5 sha1 crc
paszlib:      zbase zdeflate zinflate gzio paszlib zipper zstream
fcl-process:  pipes process
```

(Build order matters: crc before gzio; zbase/zdeflate/zinflate before
gzio/paszlib; fcl-process needs its `src/unix` (or `src/win`, `src/os2`) include
dir via `-Fi`. ssockets/resolve were **not** built — they pull in UriParser from
fcl-web and Mystic doesn't use them.)

With these present, a full native Mystic build with **only `bin/units` on the
path** links **14/14**.

## Fix (b): build.sh auto-detects r3 package sources (Mystic side — robust fallback)

`build.sh` now derives `FPCROOT` from the `FPC` binary's location and, for each
of fcl-net / hash / paszlib / fcl-process, adds `-Fu<pkg>/src` (+ `-Fi`, plus the
fcl-process OS include dir) when the dir exists. Override with `FPCROOT=`.
This makes the networked/hash/zip programs build even on a source-only r3.
Verified: `mystic` and `mis` build via the source-path route with the prebuilt
`.ppu`s removed.

## Verification

- **14/14** native x86_64 Mystic build with only `bin/units` (prebuilt route).
- `mystic` + `mis` build via source-path route (build.sh route), prebuilt ppus
  stashed — proves both fixes independently.
- Gate suite unaffected: **166/169 ALL GREEN**.

## Cross targets (win32 / go32v2-dos / os2 / darwin)

For cross builds the packages must be prebuilt **for that target** (or their
source added to that script's unit path). The cross scripts already expose
override hooks (`OS2UNITS=`, `DARWINUNITS=`, `WATTOPT`/`-Fu"$U"` for dos). To get
network/hash/zip programs cross-linking, add per target:

```
-Fu<FPC>/src/packages/fcl-net/src
-Fu<FPC>/src/packages/hash/src
-Fu<FPC>/src/packages/paszlib/src
-Fu<FPC>/src/packages/fcl-process/src   (+ its OS include subdir via -Fi)
```

Prebuilding these four into `bin/units/<target>/` for each shipped cross target
is the tidiest long-term option and would remove the need for any extra `-Fu`.
