# FPC 2.6.4irc r3.1 — Documentation

## Our Docs (fpc264irc-specific)
| File | What |
|------|------|
| CHANGELOG.md | Session-by-session changes |
| LCL-STATUS.md | Win9x ANSI backport (U-1), platform matrix |
| bugsfixed.md | All bugs found and fixed (BUG-001 through BUG-043) |
| DL-GLIBC-FIX.md | Linux dl.o glibc 2.34+ fix (LibDL='c') |
| INSTALL.md | Installation instructions |
| CREDITS.md | The crew |

## Cross-Platform Compilation
| Target | Compiler | PPUs | How |
|--------|----------|------|-----|
| Win32 (default) | ppc386 | 1263 | `ppc386 -Twin32 myapp.pas` |
| Win9x ANSI | ppc386 | 1263 | `ppc386 -Twin32 myapp.pas` (default=ANSI) |
| Win NT+ Unicode | ppc386 | 1263 | `ppc386 -Twin32 -dUNICODE myapp.pas` |
| Linux i386 | ppc386 | 241 | `ppc386 -Tlinux myapp.pas` |
| DOS go32v2 | ppc386 | 302 | `ppc386 -Tgo32v2 myapp.pas` |
| FreeBSD i386 | ppc386 | 160 | `ppc386 -Tfreebsd myapp.pas` |
| x86_64 Linux | ppcx64 | — | `ppcx64 -Tlinux myapp.pas` |
| i8086 DOS | ppcross8086 | — | `ppcross8086 -Tmsdos myapp.pas` |

## FPC Reference (stock)
| File | What |
|------|------|
| docs/fpc-reference/ | FPC language reference (HTML) |
| docs/reference/ | Additional reference docs |

## CHM Help Files (stock Lazarus — API reference)
Located in `docs/chm/`:
| File | Size | Content |
|------|------|---------|
| lcl.chm | 13MB | LCL class reference |
| rtl.chm | 3.1MB | RTL unit reference |
| fcl.chm | 1.9MB | FCL class reference |
| lazutils.chm | 1.1MB | LazUtils reference |
| ref.chm | 626K | Language reference |
| user.chm | 618K | User's guide |
| prog.chm | 383K | Programmer's guide |
| fpdoc.chm | 102K | fpdoc tool reference |
| toc.chm | 6.9K | Table of contents |

Note: CHM files are from stock FPC/Lazarus. They reference vanilla
2.6.4, not our fork. Use them for API reference. For fpc264irc-specific
features (win32compat, ANSI/Unicode, cross-platform), see our docs above.

## fpGUI
fpGUI toolkit source is in `libs/fpgui/` (307 units).
Lightweight GUI toolkit, alternative to LCL.

## Tools
| Tool | What |
|------|------|
| fpc.exe | Compiler driver (selects ppc386/ppcx64 automatically) |
| fpcmake.exe | Generates Makefiles from .fpc description files |
| fpcres.exe | Compiles resources (.rc → .res) |
| h2pas.exe | Converts C headers to Pascal units |
| ppudump.exe | Inspects PPU file contents |
| ppufiles.exe | Lists PPU dependencies |
| ppumove.exe | Moves/renames PPUs |
| ptop.exe | Pascal source pretty-printer |
| rstconv.exe | Converts resource strings between formats |
| plex.exe | Lexer generator (like lex/flex) |
| pyacc.exe | Parser generator (like yacc/bison) |
| lazarus.exe | Lazarus IDE (GUI editor + debugger) |
