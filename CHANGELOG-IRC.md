# CHANGELOG-IRC — FPC 2.6.4irc

## Original IRC Fork Changes (from stock FPC 2.6.4)

### DOS Sockets (go32v2)
- `src/rtl/go32v2/sockets.pp` — new BSD socket unit for DOS via Watt-32
- `Uses Sockets` now works on go32v2 like every other platform

### Compiler Patches (original)
- Smartlink sections + COFF attributes backported from FPC 3.0
- `-Ao` flag — pass extra options to the assembler
- `-WS` flag — embed CWSDSTUB into go32v2 executables at link time
- `$EXTRAOPT` support in assembler command templates
- OS/2 import-by-name fix backported from FPC 3.0.4
- BUG-029: i386 ASM AnsiString Decr_Ref header size fix
- BUG-040: OS/2 EMX linker -N flag removed (OMAGIC → ZMAGIC)

### Binutils
- Corrected N_IMP1/N_IMP2 values for OS/2 BFD patch
- Clean cross-builds from Linux using stock binutils packages

### PPU Compatibility
- All PPUs compatible with stock FPC 2.6.4

---

## r311 Changes (2026-09-06)

See `docs/CHANGELOG.md` for the full r311 changelog covering:
- Phase 27: USB Stack (9 units)
- Phase 28: x86_64 cross targets
- Phase 29: Package compilation (1,012 Win64 PPUs)
- Phase 30: Compiler bootstrap (4 patches, native x64)
