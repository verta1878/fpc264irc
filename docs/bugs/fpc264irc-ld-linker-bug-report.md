# FPC 2.6.4irc r3 — bug report: internal linker (`ld`) stalls / cannot be called

**Reporter:** Antonio Rico (Reapern66) — Mystic BBS IRC fork
**Compiler:** FPC 2.6.4irc release r3 (2026-07-12), i386
**Target seen on:** i386-linux (native), building the Mystic tree and small
standalone test programs.

---

## Summary

When `ppc386` (r3) reaches the **link stage**, the external linker step
frequently **hangs indefinitely** and/or the compiler reports it **cannot call
the linker** and falls back to "external linking," which then never completes.
The **compile stage always succeeds** — object files (`.o`/`.ppu`) are produced
cleanly — so this is specifically a **link-phase / toolchain-invocation
problem**, not a Pascal-compilation problem.

The symptom is reproducible across many different programs in the same
environment (Mystic's `mystic`/`mis`/`mplc`, and tiny standalone test programs
that only use the RTL + `zipper`/`paszlib`). It is **not** tied to any one source
file.

## Exact error text observed

At the end of an otherwise-clean compile, `ppc386` emits:

```
<file>.pas(<n>,1) Error: Can't call the linker, switching to external linking
<file>.pas(<n>,1) Fatal: There were 1 errors compiling module, stopping
Fatal: Compilation aborted
```

…where `<n>` is the final `end.` line of the program. In other runs there is no
error at all — the `ld` process simply **spins/hangs** (pinning CPU) and the
build never returns until the `ld` process is killed manually
(`pkill -9 -f '/usr/bin/ld'`).

A telling secondary symptom: once an `ld` invocation is wedged, even unrelated
calls like `ld --version` **also hang**, which suggests the linker binary itself
gets stuck rather than a transient resource issue.

## What DOES work (isolates the problem to the link step)

- **Compile-only** (`ppc386 -Cn ...`, produces `.o`, skips link) **always
  succeeds.** Every Mystic unit and every test program compiles clean this way.
- The generated **object files are valid** — the problem is purely in getting
  `ld` to run to completion and emit the final executable.

So on any machine whose `ld` completes normally, the same sources build and link
into working binaries — we have produced working `mystic.exe` / `mplc.exe` /
`maketheme.exe` via the win32 cross path when the linker did not wedge. The
failure is environmental to the linker invocation, and this report is to flag
that r3's link path is sensitive to it.

## Reproduction (minimal)

```pascal
program t; begin writeln('ok'); end.
```

```
ppc386 t.pas -o t          # link stage hangs or "Can't call the linker"
ppc386 -Cn t.pas           # compile-only: succeeds, emits t.o
```

(Reproduces the same way for a program that `uses Zipper` with the paszlib +
hash unit paths — compile clean, link hangs.)

## Questions for the author

1. Does r3 assume a particular `ld` (GNU binutils version / path), or a specific
   invocation, that could hang if the system `ld` differs? (The 3-tier tool
   fallback doc mentions bundled tools — is the linker step using the bundled
   `bin/tools` `ld`, or the system one, and can that be forced?)
2. Is there a recommended `-XX`/`-Xt`/smart-linking or `-Cn`-then-manual-link
   workflow for environments where the default `ld` call is unreliable?
3. Would r3 benefit from a longer/abortable timeout or clearer diagnostics when
   the linker does not return, instead of hanging?

## Impact

Not a correctness bug — output is fine once linked — but it makes **fully
building the binaries painful** in this environment: every full build must be
babysat and stuck `ld` processes killed. Compile-only verification is the
reliable workaround we use, then linking is done where `ld` behaves.

---

*Prepared from a working session where this occurred repeatedly and
consistently; happy to provide full build logs on request.*
