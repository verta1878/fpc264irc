# smartpack — units ship as .ppu + .a, no loose .o (byte, 2026-10-02)

Rule: only `.ppu`, `.a`, `.rst` and source belong in the repo. A unit's compiled code still has to ship,
so each unit's object file is wrapped into its smart-link archive and the `.ppu` points at that archive.
No recompile; `.ppu` checksums are untouched, so nothing that depends on a unit has to rebuild.

- `ppu_smart.py` — rewrites a 2.6.4 `.ppu` (PPU135): "Link unit object file: X.o (static)" becomes
  "Link unit static lib: libpX.a (smart)" (go32v2: `X.a`), header flag static_linked -> smart_linked.
  The compiler's linker (link.pas) then uses the `.a`, with or without -XX.
- `pack-units.sh <dir> <target> [delete-list]` — archives each unit `.o` (target ar), runs ppu_smart.py,
  lists every other `.o`/`.s` for deletion except startup objects the compiler links by name.
- `ppu_consistency.py <ppudump> <unit dir> [...]` - lists stale dependency records: FATAL (implementation section,
  the compiler stops with "Can't find unit") and interface-only warnings (compiler carries on).
- `rebuild_stale.py <repo> <target> <unit dir>` - rebuilds the FATAL units from `src/` against the current units
  (dependencies first, mutually dependent units together), packs them as `.ppu` + `.a`, loops until none are left.
- `ppu_version_check.py <repo>` - every `.ppu` must be in its compiler's format: PPU135 (ppc386/ppcx64, FPC 2.6.4)
  everywhere, PPU207 (ppcross8086, FPC 3.2.2) in `bin/units/i8086-msdos*`. Lists the wrong ones, exit code 1 if any.
- `macho_ar.py` — Darwin archive writer with a `__.SYMDEF SORTED` index (spare; `llvm-ar --format=darwin` is used).
- `macho_fix.py in.o out.o` — repairs an i386 Mach-O object written by the 2.6.4 internal writer (`-Amacho`) before the
  ogmacho/macho fix: symbol entries 16 -> 12 bytes, LC_SEGMENT filesize/vmsize. Output is byte-identical to what the
  fixed compiler writes for the same code (checked on 400 units that rebuild with identical code generation).
- `ppu_initflag.py <unit dir> [--apply]` — clears a stale "init"/"final" flag in a `.ppu` whose archive defines no
  `_INIT$_<unit>`/`_FINALIZE$_<unit>` (used on i386-darwin: 656 units). Uses llvm-nm (not for a.out targets).
- `darwin_rebuild.py <repo> <ppc386> <unit dir> <out dir> [unit ...]` — rebuilds i386-darwin units from `src/` with the
  fixed compiler and keeps an object only if the new `.ppu` checksums equal the shipped ones (used for the 9 darwin
  units that had no object code, and to verify macho_fix.py).

Kept as `.o` on purpose (the compiler links them by file name, FPC releases ship them the same way):
prt0/cprt0/gprt0/dllprt0 (linux, freebsd), prt0/exceptn/fpu (go32v2), prt0/prt1 (os2), prt0[tsmclh] (i8086),
sdk/emx/lib crt0 & co.

i8086-msdos (all six models): built with -CX by the compiler itself (OMF libraries), not by this tool;
medium/large/huge converted 2026-10-07 by rebuilding with -CX (`tools/i8086-graph-build/build-rtl.sh`).

Tested (link + run): i386-linux, x86_64-linux, i386-win32 + x86_64-win64 (Wine), i386-go32v2 (DOSBox),
lazutils (i386-win32), lcl subfolder (x86_64-linux), ppudump built against bin/compiler-ppus;
i386-freebsd link only; i386-os2 link + emxbind (LX import fixups checked); i386-darwin: link with bin/tools/i386-darwin (ld64, 2026-10-07) - 7 test programs, not yet run on a Mac.
