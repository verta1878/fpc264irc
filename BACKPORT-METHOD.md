# fpc264irc — the backport method (Phase 2 and beyond)

How every fix from FPC 3.x trunk gets brought into 2.6.4irc. This is the proven
discipline behind all the backports that have held up under independent
verification (ogcoff.pas, astrings.inc, the COFF section fix, the codepage parser).

## Not a git cherry-pick — a manual, understood port

The codebases (2.6.4 vs 3.x trunk) diverged years ago and don't share usable
history, so `git cherry-pick` won't apply. Every backport is instead:
**read the trunk fix, understand what it does and why, and write the equivalent
change against OUR 2.6.4 source.** Understanding-before-porting is what makes a
backport trustworthy — a fix you understood is one you can stand behind; a fix
that merely "applied" tells you nothing about whether it was right for your tree.

## The six-step method

1. **Find** the specific trunk fix that might matter (e.g. a go32v2/OS2 fix).
2. **Read + understand** it — what bug does it address, and why does the fix work?
3. **Confirm 2.6.4 ACTUALLY HAS the bug.** ← THE KEY FILTER (see below).
4. **Apply the equivalent by hand** to 2.6.4's (different) source.
5. **Gate** against the full suite: 166 checks + binary-protocol 47/47.
6. **One at a time** — each fix verified before the next, so any regression is
   localized to the change that caused it.

## Step 3 is the filter that keeps Phase 2 from becoming a blind trunk merge

Not every trunk fix belongs in our tree. Some fixes address bugs that were
**introduced by a later trunk refactor** — a bug 2.6.4 never had. Applying such a
fix would be, in the maintainer's words:

> "patching a wound we don't have, and risking side effects from the patch itself."

So the rule for every candidate:
- **2.6.4 has the bug?** -> port the fix.
- **The bug only exists in trunk (introduced post-2.6.4)?** -> SKIP it. Skipping
  the wrong fixes is as important as applying the right ones. It keeps the backport
  minimal, which keeps it safe.

## Why this matters

This method keeps the go32v2 and OS/2 cherry-picks (the r3 work) minimal and
correct — only real bugs that 2.6.4 genuinely has, each understood, each gated.
Same "smallest correct change" instinct that made Phase 1 Items 3 and 4 turn out
to be "already done" rather than risky surgery.

## Independent verification lens (for each backport)
Not just "does it work" but:
- Did 2.6.4 actually have the bug this fixes? (step 3)
- Does applying it regress anything? (baseline 65/65, binary-protocol 47/47)
- One at a time, so regressions localize.

---

# OS/2 (i386-emx) cherry-picks — applying the method to OS/2

The OS/2 cherry-picks follow the same six-step method above, done to the
**"extender standard"** — the same understood / confirmed-we-have-the-bug / gated
/ documented / reproducible discipline that made the go32v2 extender work
(ogcoff.pas storage-class fix, COFF/smartlink, CWSDPMI/-WS) hold up under
independent verification. Not a looser "just apply the trunk fix" pass.

## Why OS/2 needs extra care (two separate concerns — don't conflate them)

1. **Tools** (as/ld/ar for emx) — DONE. Patched binutils 2.30 (a.out) + BFD N_IMP
   patch, bundled, 3-tier fallback. This is settled.
2. **RTL units** (system.ppu, sysutils.ppu, ... for OS/2) — PENDING. Nobody has
   built these yet. This is NOT a cherry-pick and NOT a tools issue — it's the
   separate task of running the compiler with the emx tools to build the OS/2
   runtime. **Cherry-picks that touch the OS/2 RTL cannot be fully gated until the
   OS/2 RTL units exist to build against.** Sequence the RTL-units build FIRST.

## The step-3 filter is especially sharp for OS/2

OS/2 support changed a lot between 2.6.4 and 3.x trunk. So for every OS/2 trunk
fix, step 3 ("does 2.6.4 ACTUALLY have this bug?") must be answered explicitly,
because OS/2 has three kinds of trunk changes that look alike but are NOT all
valid to backport:

- **(a) Real bug fixes for bugs present in 2.6.4** -> PORT. (grep/reproduce to confirm)
- **(b) Fixes for bugs introduced by a LATER trunk OS/2 refactor** -> SKIP.
  Patching a wound we don't have.
- **(c) New OS/2 FEATURES added in trunk** (not bug fixes) -> NOT a backport by
  this method's rule. A feature is not "a bug 2.6.4 has." Adding features is a
  separate decision, not a cherry-pick. Flag these; don't silently fold them in.

The FileNameCasePreserving question from go32v2 is the cautionary example: confirm
whether an OS/2 candidate is a **bug fix** or a **feature** before treating it as a
cherry-pick.

## Per-cherry-pick checklist (OS/2) — record evidence for each

For EACH OS/2 fix, record in the commit/CHANGELOG:
1. **Source**: the trunk fix (file + what it changed).
2. **Understanding**: what bug it addresses, why the fix works.
3. **Step-3 evidence**: HOW you confirmed 2.6.4 has this bug — grep showing the
   buggy code present, or a reproduction. If you can't show 2.6.4 has it, DON'T
   port it. (This is the step that made the extender work trustworthy.)
4. **Category**: bug-fix (port) vs trunk-only bug (skip) vs feature (separate
   decision). State which.
5. **Gate**: 166 checks + binary-protocol 47/47 green after applying. NOTE: if the
   fix touches the OS/2 RTL, it can only be fully gated once OS/2 RTL units exist
   — so build those first, or mark the gate "pending OS/2 RTL".
6. **One at a time**: verified before the next.

## OS/2 sequencing (honest dependency order)
1. **Build the OS/2 RTL units** first (run the compiler + bundled emx tools:
   `make ... OS_TARGET=emx CPU_TARGET=i386 CROSSBINDIR=bin/tools/i386-emx`).
   Until these exist, OS/2 fixes can't be fully compiled/gated.
2. THEN apply OS/2 cherry-picks against a buildable OS/2 RTL, each with step-3
   evidence, each gated.
3. A cherry-pick whose bug lives in the OS/2 RTL is only *proven* once step 1 is
   done — so don't call such a pick "verified" before the RTL builds.

## Independent verification lens (OS/2)
For each OS/2 cherry-pick, an independent clone should be able to confirm:
- 2.6.4 genuinely had the bug (step-3 evidence reproduces), AND
- the fix builds + doesn't regress the gates, AND
- (for RTL-touching fixes) the OS/2 RTL actually builds with the bundled emx tools.
If the OS/2 RTL doesn't build yet, the honest status is "tools + fix ready, RTL
build pending" — not "done".
