# Phase 10 Research: Win32 RTL Three-Way ABI Disagreement

## The situation

Three pieces of the Win32 RTL disagree on the `TUnicodeStringManager` callback signatures:

1. **system.ppu** (shipped, r3 archive, Jul 10) — compiled when `syswin.inc` had 3-param string callbacks. The proc type fields in `TUnicodeStringManager` expect 3 parameters. This binary works; it's what netmodem2irc, Inno, and all Win32 apps link against.
2. **syswin.inc** (source, fixed) — now has 4-param functions matching `ustringh.inc`, but no longer matches the shipped `system.ppu`.
3. **ustringh.inc** (source) — always had 4-param type definitions; also doesn't match the shipped `system.ppu`.

## Historical context: the 3→4 param boundary

The 3-param vs 4-param split corresponds to FPC's codepage-aware string overhaul.

- **Old (pre-3.0) RTL signatures** were genuinely 3-parameter:
  `procedure Wide2AnsiMove(source:pwidechar; dest:pchar; len:SizeInt)` and
  `procedure Ansi2WideMove(source:pchar; dest:pwidechar; len:SizeInt)` (rtl/inc/wstrings.inc era).
- **New (codepage-aware, cpstrnew → FPC 3.0) signatures** added a `TSystemCodePage` parameter and changed the destination to a managed `var dest: RawByteString`. Every string conversion at runtime goes through `widestringmanager.Wide2AnsiMoveProc()` with codepage semantics attached.

The tree in question straddles this boundary: `ustringh.inc` is post-overhaul, while the shipped `system.ppu` was built when `syswin.inc` was effectively pre-overhaul.

## Why the mismatch is worse than an argument-count problem

The signature change is not just arity:

- Old form: caller allocates a raw buffer, callee writes into `dest: pchar`.
- New form: callee allocates a managed, reference-counted string via `var dest: RawByteString`, guided by the codepage parameter.

If a 3-param caller reaches a 4-param implementation (or vice versa):

- On i386, the register calling convention passes early parameters in EAX/EDX/ECX; a mismatch means *every* parameter after the divergence point is misinterpreted.
- A raw buffer pointer treated as a managed string var-param causes the RTL to manipulate a "refcount" inside arbitrary memory → heap corruption, intermittent runtime error 216, heisenbugs.

Precedent for the failure mode: historical FPC/SDL threads show that header translations made for a different library version than the one actually linked crash with error 216 at the first affected call — same disease, different organ.

## Why the shipped ppu currently "works"

FPC's consistency mechanism is PPU checksums: each unit carries an overall CRC, an interface CRC, and an indirect CRC. A unit is recompiled when the checksum of a unit it depends on changes ("Recompiling X, checksum changed for System").

**Critical limitation:** checksums compare **ppu against ppu, never ppu against source.** The compiler cannot detect that `syswin.inc` on disk disagrees with the shipped `system.ppu`. Everything linked against the r3 archive is internally consistent — it works because nobody has recompiled System yet.

## Failure scenarios

### Scenario 1 — someone rebuilds System
Recompiling the System unit (requires the special `-Us` switch) from the fixed source changes its interface CRC, because `TUnicodeStringManager` is an interface-level type. That triggers the full recompile cascade. Documented worst case (from cross-compile threads): a dependent unit hits "Recompiling BaseUnix, checksum changed for System," cannot find its source, and fails fatally. Downstream ppus built against r3 (netmodem2irc, Inno) face a forced mass recompile — or, if the check is bypassed, silent ABI mismatch.

### Scenario 2 — a stale or duplicate ppu wins the unit search path
FPC-devel archives document how painful clashing local unit copies are: checksum-changed recompiles whose root cause (a duplicate file on the search path) took a long time to trace. With source and binary intentionally out of sync, any tooling that auto-recompiles RTL units from source (Lazarus build modes, fpmake, a stray `-B`) manufactures this scenario.

### Scenario 3 — a custom widestring manager built against the wrong header
Any cwstring-style unit that populates the manager record's proc fields and calls `SetWideStringManager` compiles its assignments against whichever `ustringh.inc`/ppu it sees. Built against 4-param definitions but running with 3-param callers (or vice versa) = corruption at every string conversion.

### Tripwire diagnostic
The compiler hard-codes expectations about RTL internals. The error
*"Internal type 'X' was not found. Check if you use the correct run time library"*
explicitly means the runtime library in use doesn't match the compiler — that message appearing anywhere in builds is the smoke alarm for this mismatch.

## Recommendations

Only two states are stable:

- **(a) Source matches binary, old ABI.** Revert `syswin.inc` to the 3-param form in the shipped tree; park the 4-param fix in a branch until a coordinated rebuild.
- **(b) Source matches binary, new ABI.** One coordinated `make clean all` of the RTL from the fixed source; ship as a new archive revision (r4); rebuild every downstream ppu against it in the same operation.

The current state — correctness depending on nobody ever invoking the recompile path — is the unstable one.

Verification aids:

- Build with `-vu` to see every unit-load decision and recompile reason.
- The compiler's `DEBUG_UNIT_CRC_CHANGES` mode prints exact interface CRC values on mismatch — useful for proving r4 consistency before shipping.
- Audit how downstream consumers build (`-Ur` release-mode units vs full source) to determine which scenarios are reachable in the pipeline.
