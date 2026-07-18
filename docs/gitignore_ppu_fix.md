# .gitignore PPU Fix

## Problem

The `.gitignore` at the repo root has `*.ppu` on line 4, which blocks
ALL `.ppu` files from being committed — including the prebuilt RTL units
in `bin/units/*/` that users need to compile programs.

This is why `system.ppu` for i8086-msdos (and all other targets) never
appeared on GitHub despite existing on the author's local machine.

## Fix Applied

Added exceptions to `.gitignore`:

```gitignore
*.ppu
!bin/units/**/*.ppu
!bin/units/**/*.o
```

## For the Author: Force-Add Existing Files

If the PPU files already exist locally but aren't tracked:

```bash
# Force-add all shipped PPU/O files:
git add -f bin/units/i8086-msdos/*.ppu
git add -f bin/units/i8086-msdos/*.o
git add -f bin/units/i8086-msdos/*/*.o    # smartlinks
git add -f bin/units/x86_64-linux/*.ppu
git add -f bin/units/i386-linux/*.ppu
git add -f bin/units/i386-win32/*.ppu
git add -f bin/units/i386-go32v2/*.ppu
git add -f bin/units/i386-freebsd/*.ppu
git add -f bin/units/i386-os2/*.ppu
git commit -m "Add prebuilt PPU/O files (were blocked by .gitignore *.ppu rule)"
```

## Impact

Without this fix, every clone of fpc264irc is missing the prebuilt units.
Users see:

```
Fatal: Can't find unit system used by <program>
```

With this fix, `uses system`, `uses dos`, `uses crt` etc. work immediately
after clone — no RTL rebuild needed.
