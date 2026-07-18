# Bug report: Mystic build fails on missing FPC package units (unit-path issue)

**Project:** verta1878/mystic-bbs-irc (Mystic BBS 1.10 IRC fork)
**Compiler:** FPC 2.6.4irc release r3
**Type:** Build configuration — missing `-Fu` unit search paths (NOT a code bug,
NOT a linker bug)

---

## Summary

A full build of the 14 Mystic targets links **10/14**. The **4 failures are all
`Can't find unit cNetDB`** — a missing FPC package unit path, not a compile or
link error. Every target whose units are on the path both **compiles and links
cleanly** (no "Can't call the linker", no hangs).

The 4 failing targets are the **network-capable programs** that pull in Mystic's
socket layer (`mdl/m_io_sockets.pas`), which `uses cNetDB`. `cNetDB` is an FPC
library unit from the **fcl-net** package; without that package on the unit
search path the socket layer cannot be built.

This is purely a **unit-path** problem: the needed FPC package units are
**source-only in r3** (not prebuilt in `bin/units`), so each must be given to the
compiler with a `-Fu` path. It fails identically with any compiler that lacks
these paths and is unrelated to any application code change.

## Root cause

r3 ships these packages as **source only** — none are prebuilt in
`bin/units/<target>/`, so the compiler can't find them unless the source dir is
on the `-Fu` path:

| Unit(s) referenced        | FPC package    | r3 source path                          | Prebuilt? |
|---------------------------|----------------|------------------------------------------|-----------|
| `cNetDB` `netdb` `resolve` `ssockets` | **fcl-net**     | `src/packages/fcl-net/src`     | no |
| `md5` `crc`               | **hash**       | `src/packages/hash/src`                  | no |
| `zipper` `paszlib` `zstream` | **paszlib**  | `src/packages/paszlib/src`               | no |
| `Process`                 | **fcl-process**| `src/packages/fcl-process/src`           | no |

## Which unit is needed by which target

- **fcl-net (cNetDB)** — `mdl/m_io_sockets.pas` → every networked program:
  `mystic`, `mis`, `fidopoll`, `mutil`/`qwkpoll` (the 4 that fail).
- **hash (md5, crc)** — `mis` (POP3 auth / md5) and `marc` (crc via paszlib).
- **paszlib (zipper/paszlib/zstream)** — `marc` (built-in ZIP archiver).
- **fcl-process (Process)** — `mis` on OS/2 and Darwin (per-node TProcess spawn).

## What is "missing from the repo"

Nothing is missing from the **Mystic source** — every Mystic `.pas` is present.
What is missing is the **build wiring**: the build scripts do not point the
compiler at r3's package source dirs, so these FPC units can't be found.

Current state of the build scripts:

| script            | fcl-net | hash | paszlib | fcl-process |
|-------------------|:-------:|:----:|:-------:|:-----------:|
| `build.sh`        |  no     | yes* | yes*    | no          |
| `build-win32.bat` |  no     | no   | no      | no          |
| `build-dos.sh`    |  no     | no   | no      | no          |
| `build-os2.sh`    |  no     | no   | no      | no          |
| `build-darwin.sh` |  no     | no   | no      | no          |

\* `build.sh` gained optional `PASZLIB=`/`HASHSRC=` paths for the new `marc`
target, but still lacks fcl-net for the network programs; the other scripts have
none of these paths.

## Fix

Add the four package source dirs to every build script's unit path. With the
bundled r3 at `<FPC>` they are:

```
-Fu<FPC>/src/packages/fcl-net/src
-Fu<FPC>/src/packages/hash/src
-Fu<FPC>/src/packages/paszlib/src
-Fu<FPC>/src/packages/fcl-process/src
```

(fcl-net is what turns the 10/14 into 14/14 — the other three are needed by
`mis` / `marc`.)

Alternatively the author could **prebuild these four packages into
`bin/units/<target>/`** in the r3 distribution, so consumers don't need any extra
`-Fu` paths at all. That would be the cleaner fix on the compiler side: right now
every project that uses sockets, hashing, zip, or process-spawn has to know these
source paths. Prebuilt `.ppu`s for fcl-net / hash / paszlib / fcl-process would
make r3 behave like a normal full FPC install.

## Verification that this is pre-existing / unrelated to app changes

- `cNetDB` is an FPC unit (`fcl-net`), not a Mystic file.
- It is used only by `mdl/m_io_sockets.pas`, which was **not modified**.
- The failure reproduces identically regardless of application code; it is purely
  the absence of the `fcl-net` path.
- The 10 targets that don't use sockets/hash/zip build fine, proving the compiler
  and linker are healthy — this is only about unit paths.

---

*Two clean options: (a) add the four `-Fu` package paths to the build scripts, or
(b) ship prebuilt `.ppu`s for those packages in r3. Either yields 14/14.*
