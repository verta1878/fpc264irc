# FIX — internal linker (`ld`) stalls / "Can't call the linker" (r3, i386/x86_64 Linux)

**Status:** FIXED in-tree (t_linux.pas). Rebuilt `ppc386` + `ppcx64`.
**Reported by:** Antonio Rico (Reapern66), Mystic BBS IRC fork.

## Root cause

At the native-Linux link stage, r3 (inherited from FPC 2.6.4) invoked GNU `ld`
like this:

```
/usr/bin/ld -b elf32-i386 -m elf_i386 -s -L. -o <exe> link.res
```

`link.res` is a **full replacement linker script** (`ENTRY(_start)` + a complete
`SECTIONS { ... }` block), but it was passed as a **bare positional argument**
instead of via `-T`. FPC 2.6.4 only added `-T` when cross-linking with a sysroot;
for a normal native build it did not.

Modern GNU `ld` (binutils 2.19+, and very much 2.42 as shipped on current
Ubuntu) does not want a linker script as a positional input. It warns:

```
/usr/bin/ld: warning: link.res contains output sections; did you forget -T?
```

and — depending on the exact binutils build — can parse the script
pathologically or wedge the `ld` process. Once wedged, the stuck `ld` is what
makes even an unrelated `ld --version` appear to hang (it is the same wedged
binary/process state, not a new failure). The compile stage is unaffected, which
is why compile-only always worked.

This is a known upstream issue: **FPC 3.2.2 fixed it by always passing `-T` for
binutils >= 2.19.** Our script is always a full replacement script, so `-T` is
always the correct way to pass it.

## The fix

In `compiler/systems/t_linux.pas`, the executable link command now always
includes `-T` before the response/script file:

```pascal
ExeCmd[1]:='ld ... -L. -o $EXE';
ExeCmd[1]:=ExeCmd[1]+' -T';      { always: link.res is a full linker script }
ExeCmd[1]:=ExeCmd[1]+' $RES';
```

Resulting invocation:

```
/usr/bin/ld -b elf32-i386 -m elf_i386 -s -L. -o <exe> -T link.res
```

The `did you forget -T?` warning is gone, and the ambiguity that let some `ld`
builds stall is removed. (A separate, harmless `LOAD segment with RWX
permissions` note from modern `ld` may still appear; it is cosmetic and
unrelated.)

## Verification

- `ppc386` and `ppcx64` rebuilt from the patched tree; both still report
  `2.6.4irc-r3 (2026-07-12)`.
- Gate suite: **169 pass / 0 fail (166 core) — ALL GATES GREEN**, and the gate
  programs now *link* (not just compile).
- Trivial `program t; begin writeln('ok') end.` compiles, links, runs on both
  i386 and x86_64 — no `-T` warning, no hang.
- **Native i386 Mystic build**: `mystic` (969 KB), `mplc`, `mide`, `mutil`,
  `mbbsutil`, `mystpack`, `install`, `install_make`, `maketheme`, `109to110`
  all compile **and link** cleanly. (`mis`, `fidopoll`, `nodespy`, `qwkpoll`
  still need `cNetDB`/fcl-net units on the path — a separate units-availability
  matter, compile-stage, unrelated to this linker bug.)

## Answers to the reporter's questions

1. r3 used the **system** `ld` and passed the script positionally; nothing
   forced the bundled `bin/tools` linker. The fix makes the invocation
   unambiguous (`-T`) so the system `ld` no longer has to guess.
2. Workarounds before this fix: `-Cn` (compile-only) then link by hand, or link
   on a machine with older binutils. With the fix these are no longer needed.
3. The fix removes the stall condition at the source; a link timeout is a
   separate hardening idea and not required to resolve this report.
