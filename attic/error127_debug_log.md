# Debug log: Error 127 during `make all` (fpc264irc RTL build)

## Question
Why does `make all` in src/rtl sometimes fail with `Error 127`, yet the RTL
still builds and all 166 tests pass?

## What Error 127 means
Exit code 127 = **"command not found"**. A process tried to run a program that
was not on PATH. It is NOT a compile error, a source bug, or a code-generation
problem. Something the build shelled out to could not be located.

## Reproduction attempts (the key finding: it's INTERMITTENT)

| Run | PATH state | Result |
|-----|-----------|--------|
| Earlier runs | leftover/mixed PATH (prior toolchain dirs) | Error 127, but system.ppu still built |
| Clean run (PATH=/usr/local/bin:/usr/bin...) | `as`,`ld`,`ar` all resolve to /usr/bin | **make exit 0, NO 127**, 62 units built |

So the 127 was **not deterministic** — it depended on what was on PATH at the
time, specifically whether the GNU assembler `as` was reachable.

## Root cause

The FPC RTL build for x86_64-linux does NOT use an internal assembler for every
unit. For the `system` unit (and a few others), the compiler emits assembly (`.s`)
and then invokes the **external GNU assembler `as`** to turn it into an object
(`.o`). Sequence:

    ppcx64 compiles system.pp  ->  emits system.s  ->  calls `as` -> system.o

If `as` is not found on PATH at that moment:
- `as` invocation returns **127 (command not found)**
- make reports `Error 127` at that rule

### Why it was intermittent
- When PATH included a directory expected to hold a prefixed/leftover assembler
  that wasn't actually there (or a stale toolchain dir shadowing /usr/bin), the
  `as` lookup failed -> 127.
- When PATH cleanly resolved `as` to /usr/bin/as (standard binutils), it worked ->
  exit 0.

### Why the RTL still built / 166 still passed
The 127 in the earlier runs hit on a **non-core / optional unit's** external tool
step, OR make continued past it. Crucially, `system.ppu` and the 62 core units
DID complete, so the codepage RTL was fully usable and all 166 string/codepage
tests passed against it. The 127 was on the toolchain-invocation side, not the
Pascal source side.

## Verified facts this session
- `which as` -> /usr/bin/as (present in the clean environment)
- Clean `make all ... BINUTILSPREFIX=` -> exit 0, 62 ppu built, no 127
- All 166 gate checks pass against the resulting RTL (binary-protocol 47/47)

## The actual fix (already in the repo, commit "Checks for as, ld, ar, make on PATH")
`build-linux.sh` now checks for `as`, `ld`, `ar`, `make` up front and prints a
clear message + install command if any is missing, instead of failing deep in a
Makefile with a cryptic 127.

### Honest gap (worth noting to the maintainer)
That guard lives in **build-linux.sh**. A user who runs **raw `make all`**
directly (as this debug did) BYPASSES the guard and can still hit the cryptic 127
if `as` isn't on PATH. Options:
1. Document clearly: "use build-linux.sh, not raw make."
2. OR add the tool check closer to the Makefile invocation so raw `make` users
   also get the friendly message.

## One-line answer
Error 127 = the build couldn't find the external GNU assembler `as` on PATH at
the moment it tried to assemble a unit. It's environment/PATH-dependent (hence
intermittent), not a code bug. With `as` present (`apt install binutils`), the
build completes cleanly and all 166 tests pass.

---

---

# FIX PROPOSAL (no shim — verta recommended no shim)

After deeper testing, the first fix draft was wrong (and contained a shim). The
accurate diagnosis splits Error 127 into TWO distinct modes, only ONE of which
needs anything — and the fix is not a shim, not a wrapper, not PATH magic.

## The two failure modes (tested)

**Mode 1 — `as` genuinely absent from PATH.**
Already handled. The RTL Makefile checks up front (around line 29) and stops with
a readable message:
```
Makefile:29: *** You need the GNU utils package to use this Makefile.  Stop.
```
No cryptic 127, no fix needed. The build system already catches this cleanly.

**Mode 2 — the actual intermittent 127 (this was the real culprit).**
`as` IS present, but `BINUTILSPREFIX` got set to a prefix (e.g. `x86_64-linux-`),
so the compiler was invoked with `-XPx86_64-linux-` and went looking for
`x86_64-linux-as` — which doesn't exist on a normal host — → **127**.
Reproduced deterministically with `BINUTILSPREFIX=nonexistent-`.

So Error 127 was a **prefix problem, not a missing-tool problem.** The host's
plain `as`/`ld` handle the target fine; the build just prepended a prefix that
pointed at non-existent prefixed tools.

## The fix (no shim): pass an empty BINUTILSPREFIX for native/multilib builds

The correct, in-build-system fix is to ensure `BINUTILSPREFIX=` (empty) is used
whenever the host's own `as`/`ld` can produce the target (native x86_64, and
i386-on-x86_64 via multilib). Then the compiler calls plain `as`/`ld`, which
exist, and 127 cannot occur.

This is already partly done: `build-linux.sh` passes `BINUTILSPREFIX=` when no
`CROSSBINDIR` is set. The remaining gap is only for someone running **raw make**
without that override. The no-shim options, in order of cleanliness:

### Fix A (documentation — zero code, zero shim). Do this.
README "Rebuild RTL from source": state the exact command WITH the override:
```
cd src/rtl
make all OS_TARGET=linux CPU_TARGET=x86_64 FPC=../../bin/ppcx64 BINUTILSPREFIX=
```
Note explicitly: **the trailing `BINUTILSPREFIX=` (empty) is required** for
native / i386-on-x86_64 builds; without it the Makefile may auto-set a prefix and
fail with Error 127 looking for `x86_64-linux-as`. This is a real, standard make
variable — not a shim — just documented.

### Fix B (make the default correct in the source Makefile.fpc — the right layer).
`Makefile.fpc` is the fpcmake SOURCE that regenerates the Makefile. Setting
`BINUTILSPREFIX=` there for the native targets bakes the correct default in, so
raw `make` users never hit the prefix problem. This is fpcmake's own mechanism
(not a wrapper, not a shim) — the requirement is expressed in the build system
itself. Requires regenerating the Makefile via fpcmake and re-testing.

## Why no shim is the right call (verta recommended this)
- A wrapper script around make = a shim (rejected).
- Prepending bundled tools to PATH = environment magic (rejected).
- The genuine fix is a **standard make variable set to the correct value** —
  either documented (Fix A) or baked into the fpcmake source (Fix B). The
  dependency and its configuration are stated honestly at the build-system layer,
  not worked around by an intermediary.

## Tested facts behind this proposal
- Mode 1 (`as` absent) -> Makefile line ~29 stops with readable GNU-utils message.
- Mode 2 (`BINUTILSPREFIX=nonexistent-`) -> reproduces 127 deterministically.
- Clean `make all ... BINUTILSPREFIX=` -> exit 0, 62 units, all 166 tests pass,
  binary-protocol 47/47.
- No `Makefile.local` include exists in this tree (so that route does nothing —
  not used).

## Recommendation
- **Fix A now** (document the required `BINUTILSPREFIX=`), and
- **Fix B** if you want raw-`make` correct-by-default (set it in Makefile.fpc,
  regenerate, re-test).
No shim, per verta's recommendation.
