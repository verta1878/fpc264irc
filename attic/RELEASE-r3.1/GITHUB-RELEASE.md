# GitHub Release — copy/paste guide (r3.1 linker-fix patch)

Everything below is ready to paste into GitHub's "Draft a new release" form.
This is a **patch on top of r3** — one link-stage bug fix, no feature or version
change. If you prefer, fold it into r3 as an amended build instead of a new tag.

---

## Tag
```
v2.6.4irc-r3.1
```
(Target: `master`, or whichever branch holds the r3 commit.)

## Release title
```
2.6.4irc-r3.1 — native ld linker-invocation fix (modern binutils)
```

## Release description (paste into the big text box)

---

Patch release for **2.6.4irc-r3**. One fix: native linking on modern Linux no
longer stalls.

### The bug

On current Linux (GNU binutils 2.19+, e.g. **2.42** on today's Ubuntu),
`ppc386`/`ppcx64` could **hang at the link stage** or report **"Can't call the
linker, switching to external linking."** Compiling always succeeded — object
files were produced cleanly — so it was purely a link-invocation problem.
Symptom flagged by a user building the Mystic tree: once an `ld` call wedged,
even an unrelated `ld --version` appeared to hang.

### Root cause

r3 (inherited from FPC 2.6.4) passed `link.res` — a **full replacement linker
script** (`ENTRY(_start)` + a complete `SECTIONS { … }` block) — to `ld` as a
**bare positional argument** instead of via `-T`. FPC 2.6.4 only added `-T` when
cross-linking with a sysroot. Modern `ld` doesn't want a script as positional
input: it warns *"link.res contains output sections; did you forget -T?"* and,
on some binutils builds, parses it pathologically or wedges the process.

### The fix

`compiler/systems/t_linux.pas` now **always** passes the script with `-T`
(our `link.res` is always a full replacement script, so `-T` is always correct).
This matches the approach FPC 3.2.2 adopted for binutils ≥ 2.19.

```
/usr/bin/ld -b elf32-i386 -m elf_i386 -s -L. -o <exe> -T link.res
```

The `did you forget -T?` warning is gone and the stall condition is removed at
the source. (A separate, harmless `LOAD segment with RWX permissions` note from
modern `ld` may still appear — cosmetic, unrelated.)

### Verified

- `ppc386` + `ppcx64` rebuilt; both still report `2.6.4irc-r3 (2026-07-12)`.
- Gate suite: **166/169 ALL GREEN** — and gate programs now *link*, not just
  compile.
- Native **i386 Mystic build** (the reported scenario): `mystic` (969 KB),
  `mplc`, `mide`, `mutil`, `mbbsutil`, `mystpack`, `install`, `install_make`,
  `maketheme`, `109to110` all compile **and link** cleanly — no `-T` warning,
  no hang.

### Who needs this

Anyone building r3 **natively on a recent Linux distro**. If your `ld` already
completed fine (older binutils, or the bundled toolchain), r3 already worked and
this patch simply removes a warning and future-proofs the invocation.

### Compiler identification (unchanged)

- `ppcx64 -iR` → `2.6.4irc-r3 (2026-07-12)`
- `ppcx64 -iV` → `2.6.4`

Full detail: `docs/bugs/fpc264irc-ld-linker-bug-FIX.md`.

---

## Pre-release?
Leave **unchecked** — this is a stability patch to a stable release.
