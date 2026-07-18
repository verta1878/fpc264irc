# Change — Mystic drops external cNetDB, uses r3's pure-Pascal netdb resolver

**Change type:** dependency removal + resolver swap (Mystic Unix path).
**Requested:** stop depending on the external `cNetDB` package unit; use r3's
pure-Pascal resolver; remove `cNetDB` from the repo.

## What changed

`mdl/m_io_sockets.pas` used `cNetDB` only in its `{$IFDEF UNIX}` branch (Windows
already uses `Winsock2`, OS/2 `WinSock`, DOS Watt-32 via `sockets_go32v2`).
`cNetDB` is thin libc glue: `uses BaseUnix, Sockets, initc` + the `hostent`
record + `external clib 'gethostbyname'/'gethostbyaddr'`.

The Unix branch now uses FPC's **pure-Pascal `netdb`** instead — no libc glue:

- **uses:** `cNetDB` → `netdb` (UNIX branch only).
- **Forward (`ResolveAddress`)**, UNIX branch:
  `netdb.GetHostByName(Host, HE)` then `Result := LongInt(HostToNet(HE.Addr))`.
- **Reverse (`WaitConnection`)**, UNIX branch:
  `netdb.ResolveHostByAddr(NetToHost(SIN.sin_addr), HE)` then `HE.Name`.

Non-UNIX branches are unchanged (still the libc-style `GetHostByName(PChar):
PHostEnt` path provided by Winsock2 / WinSock / Watt-32).

## Byte order (the subtle part — verified)

- netdb's `GetHostByName` returns `H.Addr` in **HOST** order (it applies
  `nettohost` internally). Mystic's `Sin.sin_Addr.S_Addr` and the `LongInt`
  handed back must be in **NETWORK** order (the old libc path returned network
  order directly). → convert with **`HostToNet`**.
- netdb's `ResolveHostByAddr`/`ResolveAddress` expect the address in **HOST**
  order (they apply `hosttonet` internally to build the in-addr.arpa PTR name),
  but `SIN.sin_addr` from `fpAccept` is in **NETWORK** order. → convert with
  **`NetToHost`** before the call.

Runtime-verified: `GetHostByName('localhost')` → net-order `s_addr` 16777343
(`0x0100007F`) = `127.0.0.1`; `api.anthropic.com` → `160.79.104.10`; the literal
dotted-quad fallback (`StrToNetAddr`) still fires for numeric input.

## cNetDB removal

`cNetDB` is a stock FPC unit but nothing in this distribution uses it anymore, so
it was removed from the repo:
- `src/packages/fcl-net/src/cnetdb.pp` (source)
- `src/packages/fcl-net/examples/cnslookup.pp` (the example that used it)
- `bin/units/*/cnetdb.ppu` + `.o` (prebuilt artifact)
- build-system entries in `Makefile`, `Makefile.fpc`, `fpmake.pp`, and the
  `.gitattributes` lines.

**Caveat:** this makes the fork's fcl-net diverge from upstream FPC. Restore from
upstream 2.6.4 (`packages/fcl-net/src/cnetdb.pp` + Makefile/fpmake entries) if a
third-party consumer ever needs it. The original is in git history and recorded
in `docs/removed/cnetdb-removal.md`.

## Verification

- 14/14 native x86_64 Mystic build (netdb path), only `bin/units` on the path.
- fcl-net `netdb.ppu` rebuilds clean with no cnetdb dependency.
- win32 cross build of `mis` (networked) compiles + links — the non-UNIX
  Winsock2 path is unaffected by the UNIX-only change.
- Compiler gate suite: 166/169 ALL GREEN.

## Note on cross-platform netdb (not done, by design)

Making FPC's `netdb` itself run the DNS query on Win/OS2/DOS is separate, genuine
work: netdb's UDP query uses `BaseUnix` (`fpFD_ZERO/fpFD_Set/fpSelect/fpclose`),
and even FPC 3.2.2 still `uses BaseUnix` unconditionally. It isn't needed here —
Mystic only needs netdb on Unix; the other targets have their own resolvers.
