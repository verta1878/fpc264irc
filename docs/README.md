# FPC 2.6.4irc r311 — Documentation

## Our Docs
| File | What |
|------|------|
| USB.md | USB stack API reference (9 units) |
| X64-BOOTSTRAP.md | x64 compiler patches + 3-stage bootstrap |
| CHANGELOG.md | Session-by-session changes |
| INSTALL.md | Installation instructions |
| CREDITS.md | The crew |
| DARWIN-CROSS.md | macOS cross-compilation notes |
| LCL-STATUS.md | Win9x ANSI backport (U-1), platform matrix |
| bugsfixed.md | All bugs found and fixed (BUG-001 through BUG-043) |
| DL-GLIBC-FIX.md | Linux dl.o glibc 2.34+ fix (LibDL='c') |

## Cross-Platform Compilation
| Target | Compiler | PPUs | How |
|--------|----------|------|-----|
| Win64 | ppcx64 | 1,012 | `ppcx64 -Twin64 myapp.pas` |
| Win32 (default) | ppc386 | 1,521 | `ppc386 -Twin32 myapp.pas` |
| Win9x ANSI | ppc386 | 1,521 | `ppc386 -Twin32 myapp.pas` (default=ANSI) |
| Linux x86_64 | ppcx64 | 529 | `ppcx64 -Tlinux myapp.pas` |
| Linux i386 | ppc386 | 252 | `ppc386 -Tlinux myapp.pas` |
| DOS go32v2 | ppc386 | 308 | `ppc386 -Tgo32v2 myapp.pas` |
| DOS 16-bit | ppcross8086 | 113 | `ppcross8086 -Tmsdos myapp.pas` |
| FreeBSD i386 | ppc386 | 160 | `ppc386 -Tfreebsd myapp.pas` |

## FPC Reference
The `reference/` and `fpc-reference/` directories contain the upstream FPC documentation.
