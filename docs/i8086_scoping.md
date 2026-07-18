> **STATUS: PPU FIX APPLIED (r4, 2026-07-17).** Compiler source backport,
> RTL patches, build tooling, and single-unit programs are working (verified
> on DOSBox). **BLOCKED:** ppcross8086 rebuilt from FPC 3.0.4 with PPU reader fix (ppu.pas CpuAluBitSize always-on)
> (host/target aint size mismatch). Fix identified in `docs/i8086_ppu_fix.md`
> but requires rebuilding ppcross8086 from FPC 3.0 source. Multi-unit programs now compile (uses dos verified). Linking needs
> smartlink regeneration from FPC 3.0.4 RTL.

# i8086 (16-bit Real-Mode DOS) Support — Scoping Assessment

**Question this document answers:** should 16-bit x86 / real-mode DOS
(`i8086-msdos`) support go into the current release (2.6.4irc-r3), into a
later release (r4+), or
be declined as out of scope?

**Recommendation up front: defer to a future release (or a dedicated
branch).** i8086 is
a full compiler *backend* port, not a cherry-pick. It is roughly the same
order of magnitude of work as everything else in r1+r2+r3 combined. It
should not block r3, and it should be scoped and staffed as its own project.

---

## 1. What "i8086 support" actually means

FPC's 16-bit x86 target generates real-mode segmented code (near/far
pointers, segment registers, tiny/small/compact/medium/large/huge memory
models) and links it into DOS `.exe`/`.com` files. It is a distinct code
generator from the 32-bit i386 target — 16-bit real mode is not "i386 with
smaller operands," it is a different execution model.

FPC gained this target in the **3.0** release. It does **not** exist in
2.6.4 in any usable form.

## 2. Evidence: what 2.6.4 has and does not have

Confirmed by inspection of the 2.6.4irc tree:

- **No i8086 code generator.** `src/compiler/` has `i386/`, `x86_64/`,
  `arm/`, `m68k/`, `powerpc/`, `powerpc64/`, `sparc/`, and shared `x86/` —
  but **no `i8086/` directory**.
- **No i8086 CPU type.** The `tsystemcpu` enum runs `cpu_no, cpu_i386,
  cpu_m68k, … cpu_mipsel` (0–13). There is **no `cpu_i8086`**.
- **No msdos (16-bit) target.** The `system_i386_*` list includes
  `watcom`, `wdosx`, `go32v2`, etc. — all **32-bit** DOS targets. There is
  **no `system_i8086_msdos`**.
- **No 16-bit code mode.** The `OS_16`/`OS_S16` constants that do appear
  are *operand sizes* (a 16-bit data element on a 32-bit machine, e.g.
  `mov ax,bx`), not a 16-bit code-generation mode.

What *does* exist is a thin **far-pointer type attribute**
(`voidfarpointertype`, `tpointerdef.createfar`, an `is_far` flag serialized
in the PPU). This is type-system vocabulary inherited from the Turbo Pascal
lineage; it is **not** a 16-bit backend. Having a `FarPointer` type does not
mean the compiler can emit segmented real-mode code, any more than having a
`ShortInt` type means it targets 8-bit CPUs.

## 3. Evidence: what a port would cost

Measured against the FPC 3.0 tree (which has the finished i8086 target):

| Component | Size | Notes |
|---|---|---|
| i8086 code generator (`compiler/i8086/*.pas`) | ~7,800 lines | new backend: cgcpu, node overrides (n8086*), param handling, reg alloc, symcpu |
| i8086 instruction tables (`compiler/i8086/*.inc`) | ~20,200 lines | opcode tables, attribute tables, assembler-reader includes |
| msdos RTL (`rtl/msdos/`) | ~3,450 lines | system unit, prt0 startup (asm), dos, ports, mouse, classes |
| `t_msdos` + `i_msdos` (linker/target) | ~510 lines | target info + WLINK external-linker driver |
| **Shared compiler files needing surgical edits** | **32 files** | parser, scanner, symtable, PPU, globals, node core, codegen base — see below |

**The 32 shared-file edits are the real difficulty**, not the ~28K lines of
new i8086-specific code (that mostly drops in as new files). Sixteen-bit
awareness has to be threaded through the compiler core: `parser.pas`,
`scanner.pas`, `pexpr.pas`, `pdecl.pas`, `pdecvar.pas`, `psub.pas`,
`psystem.pas`, `symconst.pas`, `symdef`-adjacent code, `cgbase.pas`,
`cgobj.pas`, `hlcgobj.pas`, `ncal.pas`, `nadd.pas`, `nmem.pas`, `ninl.pas`,
`ncgld.pas`, `ncgutil.pas`, `ncgcnv.pas`, `nflw.pas`, `options.pas`,
`scandir.pas`, `switches.pas`, `fppu.pas`, `ppu.pas`, and more.

## 4. The PPU-format problem

The compiled-unit format version is **135 in 2.6.4** and **173 in 3.0** —
38 format revisions apart. The i8086 target's segment/far-pointer metadata
and memory-model settings are serialized using format features introduced
somewhere across those 38 revisions. Cherry-picking i8086 onto 2.6.4's PPU
v135 means either back-porting the relevant serialization changes (which
drags in unrelated 3.0 format churn) or inventing a 2.6.4irc-specific hybrid
format. Either way the unit system — the thing that makes `Uses` work — is
in scope, which is exactly the kind of load-bearing change that must not be
rushed into r3.

## 5. The toolchain problem

i8086-msdos does **not** use the binutils `as`/`ld` chain that every other
2.6.4irc target uses. It uses:

- **NASM** as the assembler (`as_i8086_nasmobj` — 16-bit OBJ output), and
- **WLINK** (Open Watcom's linker) for the DOS `.exe`, with a target-specific
  `PostProcessExecutable` step to fix the MZ header's `MaxAlloc`.

That is an entirely new external-tool family for the 3-tier bundled-tools
system: we would need to bundle/verify NASM and Open Watcom's WLINK for
every host, add them to `bin/tools/`, extend the fallback logic, and add a
`test-i8086-build.sh` chain. None of the existing bundled binutils help here.

*One small piece of good news:* 2.6.4 already ships the NASM **output writer**
(`compiler/x86/agx86nsm.pas`) and has `as_i386_nasm*` assembler modes, so the
nasm-emission plumbing exists to build on. But 16-bit NASM object output and
the WLINK driver are still new work.

## 6. Why this is not a "checklist item"

Everything shipped in r1 through r3 has been a **cherry-pick or
targeted fix**: a codepage backport, a socket unit, a COFF storage-class
fix, seven OS/2 RTL fixes, a binutils N_IMP patch. Each follows the
BACKPORT-METHOD discipline — confirm 2.6.4 has the bug/gap, port the minimal
change, gate it. i8086 fits none of that: there is no bug to fix and no
minimal change to port. It is *new capability* the size of a small compiler.

Realistic effort: **multi-month**, single-developer, with its own test
matrix (memory models, near/far correctness, DOS `.exe` execution under an
emulator). It needs the NASM+WLINK toolchain bundled and a from-scratch
16-bit RTL validation pass.

## 7. Options

- **Option A — Decline (out of scope for 2.6.4irc entirely).** 2.6.4irc's
  charter is BBS/retro preservation on the six targets it already supports.
  32-bit DOS (`go32v2`) already covers the DOS use case with a modern DPMI
  runtime. 16-bit real mode is a different, older niche. *Cleanest.*

- **Option B — Defer to a future release as a dedicated branch
  (recommended).** Tag r3 without i8086. Open an `i8086-port` branch
  afterward and treat it as its own project: port the 3.0 backend, back-port
  the minimal PPU serialization it needs, bundle NASM+WLINK, and build a
  DOS-emulator test harness. Merge to a future release (r4+) only when it
  passes a real i8086 gate. *Keeps the door open without holding r3 hostage.*

- **Option C — Attempt in r3 (not recommended).** Would delay r3 by months,
  risk destabilizing the PPU format that all six working targets depend on,
  and violate the cherry-pick discipline that has kept the fork honest.

## 8. Recommendation

**Ship r3 without i8086 (Option B).** Record i8086 as a named, scoped
future-release candidate with this document as its charter. If, when that
planning starts,
the DOS use case is already satisfied by `go32v2` for the project's actual
users (BBS/retro software, which is overwhelmingly 32-bit DPMI in practice),
fall back to **Option A** and decline it explicitly rather than carrying an
open-ended obligation.

The one concrete r3 action: make sure the README and release notes state
plainly that 2.6.4irc targets **32-bit** DOS via `go32v2`, and that 16-bit
real-mode (`i8086-msdos`) is **not** supported — so no one mistakes the
inherited `FarPointer` type for a 16-bit target.
