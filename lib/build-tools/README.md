# Build Tools — Source & Prebuilt Binaries

Source code and prebuilt binaries for the four tools required to build
FPC 2.6.4irc from source: `as` (assembler), `ld` (linker), `ar`
(archiver), and `make` (build system).

## Prebuilt binaries

Located in `bin/tools/`:

```
bin/tools/
├── make                   # GNU Make 4.3 (shared, host tool)
├── x86_64-linux/          # Native Linux x86_64
│   ├── as                 # GNU assembler 2.42
│   ├── ld                 # GNU linker 2.42 (BFD)
│   └── ar                 # GNU archiver 2.42
├── i386-linux/            # Linux i386 (same tools, multilib)
│   ├── as, ld, ar
├── i386-go32v2/           # DJGPP cross-tools (DOS go32v2)
│   ├── as                 # DJGPP assembler 2.35
│   ├── ld                 # DJGPP linker 2.35
│   └── ar                 # DJGPP archiver 2.35
├── i386-win32/            # MinGW cross-tools (Windows)
│   ├── as                 # MinGW assembler 2.41
│   ├── ld                 # MinGW linker 2.41
│   └── ar                 # MinGW archiver 2.41
├── i386-freebsd/          # FreeBSD cross (uses host ELF tools)
│   ├── as, ld, ar
└── i386-emx/              # OS/2 (requires patched binutils)
    └── README.md           # See patches/os2-cross/
```

## Verification

```bash
test/test-tools.sh         # tests all tools on all platforms
```

## Source

| Tool | Source | License |
|------|--------|---------|
| GNU Binutils 2.42 | `binutils-2.42.tar.xz` (27MB) | GPL v3+ |
| GNU Make 4.3 | `make-4.3.tar.gz` (2.3MB) | GPL v3+ |

Original downloads:
- https://ftp.gnu.org/gnu/binutils/binutils-2.42.tar.xz
- https://ftp.gnu.org/gnu/make/make-4.3.tar.gz
