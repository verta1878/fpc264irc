# Retired to attic: cNetDB (fcl-net libc resolver glue)

**Removed in:** r3 patch (2026-07-14)
**Reason:** Mystic's socket layer was the only consumer in this distribution.
Its Unix path now uses the pure-Pascal `netdb` resolver instead, so the external
libc glue unit `cNetDB` (uses BaseUnix + initc + `external clib
'gethostbyname'/'gethostbyaddr'`) is no longer needed here.

**What cNetDB was:** a thin FPC unit declaring the C library's `hostent` record
plus `gethostbyname`/`gethostbyaddr`/`getaddrinfo`/... as `external clib`
imports. Unix/libc-specific.

**Files moved to `attic/retired-units/` (not deleted):**
- `src/packages/fcl-net/src/cnetdb.pp`
- `src/packages/fcl-net/examples/cnslookup.pp` (example that used cNetDB)
- `bin/units/<target>/cnetdb.ppu` + `.o` (prebuilt artifact)
- References in `src/packages/fcl-net/Makefile`, `Makefile.fpc`, `fpmake.pp`.

**Caveat (upstream divergence):** cNetDB is a stock FPC unit. Removing it makes
this fork's fcl-net diverge from upstream FPC. Nothing in this distribution uses
it anymore, but third-party code that expects a full FPC install to provide
`cNetDB` would not find it here. If that ever matters, restore it from upstream
FPC 2.6.4 `packages/fcl-net/src/cnetdb.pp` and re-add the Makefile/fpmake entries.
The original is preserved in this repo's git history.

**Replacement:** `mdl/m_io_sockets.pas` (Mystic) Unix branch now uses `netdb`
(`GetHostByName` + `HostToNet`; `ResolveHostByAddr` + `NetToHost`). See
docs/bugs/mystic-cnetdb-to-netdb-FIX.md.
