# Retired units

Units kept for reference but no longer part of the active build. They are NOT on
any unit search path and are NOT compiled by the package makefiles.

## cnetdb.pp  (+ cnslookup.pp example)

The FPC **fcl-net** `cNetDB` unit: thin libc glue declaring the C library's
`hostent` record and `external clib 'gethostbyname'/'gethostbyaddr'/...`. It is
Unix/libc-specific (`uses BaseUnix, Sockets, initc`).

**Why retired:** the only consumer in this distribution was Mystic's socket layer
(`mdl/m_io_sockets.pas`), whose Unix branch now uses the pure-Pascal `netdb`
resolver instead. Nothing here imports `cNetDB` any more.

**Kept (not deleted)** because it is a stock FPC unit; a third-party consumer that
expects a full FPC install to provide `cNetDB` could copy it back. To reactivate:
move `cnetdb.pp` to `src/packages/fcl-net/src/`, and re-add `cnetdb` to
`fcl-net/Makefile`, `Makefile.fpc` (units_linux/units_freebsd), and `fpmake.pp`
(`AddUnit('cnetdb.pp',[linux,freebsd])`).

See `docs/removed/cnetdb-removal.md` and `docs/bugs/mystic-cnetdb-to-netdb-FIX.md`.
