# fpc264irc — the 3-tier tool-fallback system

How the build obtains the assembler/linker/archiver (as/ld/ar) and make for each
target, so a build never dead-ends on a missing external tool. This is the
"never leave the user stuck" principle applied to the toolchain.

## STATUS HONESTY (as of pushed commit c424b74)
- **Native (x86_64-linux):** Tier 1 + Tier 2 present and pushed (falls back to
  bin/tools/x86_64-linux/).
- **Cross-targets (go32v2, win32, freebsd, emx):** pushed build STILL says
  `SKIP` when system cross-tools are missing — it does NOT yet fall back to
  bundled or point to source. The full 3-tier for cross-targets is
  DESIGNED + IN FLIGHT (maintainer's unpushed work, reported 44/44), NOT yet
  in the public commit.
- This doc describes the INTENDED design and marks what is pushed vs pending, so
  it stays honest rather than claiming done what isn't.

## The three tiers (design)

**Tier 1 — system tools (preferred).**
Use the system's installed tools if present (e.g. `apt install binutils-djgpp`
for go32v2). A user with a known-good, matched toolchain uses their own.
Detection: `command -v <tool>`.

**Tier 2 — bundled binaries (fallback).**
If system tools are absent, use the binaries shipped in `bin/tools/<target>/`.
These are real file copies (zero symlinks, Windows-safe), verified to run
(`--version`) and to actually cross-compile (go32v2->DOS MZ, win32->PE32,
freebsd->ELF).

**Tier 3 — build from bundled source (last resort — GUIDANCE, not auto-compile).**
If the bundled binary is also unusable (e.g. host ABI mismatch), the source is
shipped in `lib/build-tools/` (binutils-2.42, binutils-2.30 for emx a.out,
make-4.3). Tier 3 **prints the exact command to build the tool from that source**
rather than silently launching a multi-minute compile. Reason: auto-compiling
binutils can shift the failure from "missing assembler" to "missing gcc + long
wait," which confuses the very user the fallback is meant to help. Guidance keeps
it self-contained AND honest about what's happening.

## Tier ORDER — decided: system -> bundled -> source
Preferred order is **system first**, then bundled, then source-guidance. Rationale:
a user's own matched, known-good toolchain should win over the bundled one (which
could ABI-mismatch a given host). Bundled is the safety net for "can't install";
source is the guaranteed-never-stuck last resort.
(Note: this is the SAFER order. An earlier "bundled first" idea was reconsidered —
overriding a good system tool with a bundled one risks mismatch. System-first is
the chosen order.)

## Per-target applicability (honest — it's really 4 cross-targets)
| Target | Needs fallback? | Tier 1 | Tier 2 (bundled) | Tier 3 (source msg) |
|--------|-----------------|--------|------------------|---------------------|
| x86_64-linux (native) | already done | host as/ld | bin/tools/x86_64-linux/ | binutils-2.42 |
| i386-linux (multilib) | NOT needed | host as (--32) | (uses native) | (uses native) |
| i386-go32v2 (DOS) | YES (in flight) | binutils-djgpp | bin/tools/i386-go32v2/ | binutils-2.42 |
| i386-win32 | YES (in flight) | mingw | bin/tools/i386-win32/ | binutils-2.42 |
| i386-freebsd | YES (in flight) | freebsd binutils | bin/tools/i386-freebsd/ | binutils-2.42 |
| i386-emx (OS/2) | YES (in flight) | i386-emx-ld | bin/tools/i386-emx/ | binutils-2.30 + N_IMP patch |

- Native already has Tier 1+2. Multilib needs no separate tools (host handles it).
- The 4 cross-targets are where Tier 2/3 must be added (in-flight work).

## NOT to be confused with: the OS/2 RTL-units gap
The 3-tier system is about **TOOLS** (as/ld/ar). It is SEPARATE from the OS/2
"RTL units pending" issue. Having the emx tools (all 3 tiers) does NOT give you
system.ppu/sysutils.ppu for OS/2 — those must be BUILT by running the compiler
with the emx tools. Do not conflate "tools available" with "can build a complete
OS/2 program." See the backport-method doc's OS/2 section.

## What "100% verified" means here (honest ceiling)
- Verifiable on one machine: the tier LOGIC, that bundled binaries RUN, and that
  they actually CROSS-COMPILE correct output. (Maintainer's test: 44/44.)
- NOT fully provable on one machine: "works on every possible broken host."
  That needs the test run across DIFFERENT environments (system-tools present /
  only-bundled / neither). This is why the test scripts SHIP in test/ — so others
  verify in THEIR environments. That accumulation is what approaches 100%.
- A single machine's run will show SKIPs for tiers its environment can't exercise
  (e.g. "3 SKIP: system FreeBSD/EMX not installed"). SKIPs are honest, not
  failures — they mark untested-here, not broken.

## Verification checklist (when the cross-target 3-tier is pushed)
- [ ] go32v2/win32/freebsd/emx: with system tools ABSENT, build falls back to
      bin/tools/<target>/ (Tier 2) and still produces correct cross-output.
- [ ] With bundled binary forced-unusable, Tier 3 prints the exact source-build
      command (does NOT silently auto-compile).
- [ ] Order is system -> bundled -> source (Tier 1 wins when present).
- [ ] test/test-tool-fallback.sh present and green in the pushed repo.
- [ ] No regression: 166 gates + binary-protocol 47/47 still pass.

---

## Extending the 3-tier model: IDE and GUI (LCL)

The same "never leave the user stuck" principle now covers two more
deliverables beyond the toolchain: the text-mode IDE and the Lazarus LCL.

### FPC text-mode IDE (`fp`)

- **Tier 1 — system:** an `fp` already on `PATH` that reports itself as the
  Free Pascal IDE.
- **Tier 2 — bundled:** the prebuilt `bin/ide/fp` (statically linked) plus
  its compiled units in `bin/ide/units/<cpu-os>/` (Free Vision + IDE).
- **Tier 3 — source:** build from bundled source with `./build-ide.sh`.
  Every unit the IDE needs — Free Vision (`src/packages/fv`), the embedded
  compiler (`src/compiler`), and the chm/xml help units — ships in-tree, so
  the source build is self-contained.

Provisioner: `tools/get-ide.sh [--which | --run [args...]]`. `--run` builds
from source automatically if no binary is present.

### Lazarus 1.2.6 LCL (GUI)

Per widgetset (`win32` → i386-win32, `gtk2` → i386-linux):

- **Tier 1 — system:** a system Lazarus install whose LCL units for the
  requested widgetset are present.
- **Tier 2 — bundled:** the prebuilt LCL units in
  `bin/lazarus/units/<cpu-os>/` (LCL base + widgetset + LazUtils), shipped
  complete with the `.lfm`/`.res` form-resource files the units reference so
  a using-program compiles without the Lazarus source tree.
- **Tier 3 — source:** build from bundled Lazarus source with
  `./build-lcl.sh <widgetset>`. The full LCL + all widgetset backends live
  in `src/lazarus/`, and every FPC package the LCL depends on is in-tree.

Provisioner: `tools/get-lcl.sh <widgetset> [--which | --unitpath]`.
`--unitpath` emits the `-Fu` flags a build needs, resolved to whichever tier
is available.

Both are exercised by `test/test-ide-gui-fallback.sh`, which checks all
tiers and functionally compiles a real LCL GUI app through the provisioner.
