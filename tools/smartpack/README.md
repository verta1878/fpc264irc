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
- `macho_ar.py` — Darwin archive writer with a `__.SYMDEF SORTED` index (not used yet, see below).

Kept as `.o` on purpose (the compiler links them by file name, FPC releases ship them the same way):
prt0/cprt0/gprt0/dllprt0 (linux, freebsd), prt0/exceptn/fpu (go32v2), prt0/prt1 (os2), prt0[tsmclh] (i8086),
sdk/emx/lib crt0 & co.

Not converted yet:
- i386-darwin: the .o files are malformed — the cross compiler writes 16-byte Mach-O nlist entries
  (pointer-sized n_strx from a 64-bit host) instead of 12. Needs a compiler fix + rebuild.
- i8086-msdos medium/large/huge: PPU207 (3.2.2) units built without -CX; their archives are OMF
  libraries. Rebuild with -CX in the i8086 kit.
- i386-os2: units have no object code in the repo at all (the .a files there are DLL import libs).

Tested (link + run): i386-linux, x86_64-linux, i386-win32 + x86_64-win64 (Wine), i386-go32v2 (DOSBox),
lazutils (i386-win32), lcl subfolder (x86_64-linux), ppudump built against bin/compiler-ppus;
i386-freebsd link only.
