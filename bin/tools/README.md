# Bundled Build Tools

Prebuilt binaries for `as`, `ld`, `ar`, and `make` — the four tools
required to build FPC RTL units from source.

## IMPORTANT: Host platform limitation

These binaries are **x86_64 Linux ELF executables**. They run on
x86_64 Linux hosts ONLY. They will NOT work on:
- macOS (Mach-O, not ELF)
- Windows (PE, not ELF)
- FreeBSD (may work if ELF-compatible, untested)
- ARM Linux (wrong CPU architecture)

If you're building on a non-Linux-x86_64 host, install the
equivalent tools from your OS package manager:
- Debian/Ubuntu: `apt install binutils make`
- macOS: `xcode-select --install` (or `brew install binutils`)
- FreeBSD: `pkg install binutils gmake`

Source code for all tools is in `lib/build-tools/` for building
from source on any platform.

## Layout

```
bin/tools/
├── README.md              # this file
├── make                   # GNU Make 4.3 (host build tool)
├── x86_64-linux/          # Native Linux x86_64 binutils 2.42
│   ├── as, ld, ar
├── i386-linux/            # Linux i386 cross (same binutils, multilib)
│   ├── as, ld, ar
├── i386-go32v2/           # DJGPP cross-tools (DOS) binutils 2.35
│   ├── as, ld, ar
├── i386-win32/            # MinGW cross-tools (Windows) binutils 2.41
│   ├── as, ld, ar
├── i386-freebsd/          # FreeBSD cross (host ELF tools)
│   ├── as, ld, ar
└── i386-emx/              # OS/2 EMX (requires patched build)
    └── README.md
```

## Fallback behavior

`build-linux.sh` checks for system tools first. Bundled tools are
only used when the system doesn't have `as`, `ld`, `ar`, or `make`
on PATH. System tools are always preferred.

## Verification

```bash
test/test-tools.sh    # checks all tools exist, are executable,
                      # and can assemble/archive test files
```

## Source code

All source is in `lib/build-tools/`:
- `binutils-2.42.tar.xz` (27MB) — GPL v3+
- `make-4.3.tar.gz` (2.3MB) — GPL v3+
