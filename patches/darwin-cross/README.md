# i386-darwin cross toolchain for Linux — byte, 2026-10-07

`build.sh [work dir]` builds the contents of `bin/tools/i386-darwin/` from pinned open-source releases
(Linux x86_64 host; needs git, clang, cmake, make, autoconf/libtool, static libstdc++ and libuuid):

| Step | Source | Pinned | License |
|---|---|---|---|
| libdispatch + BlocksRuntime (static, needed by ld64) | apple/swift-corelibs-libdispatch | swift-6.0.3-RELEASE `137b6cf3` | Apache-2.0 |
| cctools + ld64 → `as ld ar ranlib nm otool strip lipo install_name_tool` | tpoechtrager/cctools-port | 1030.6.3-ld64-956.6 `904de2a7` | APSL-2.0 |
| `crt1.o` (10.4), `crt1.10.5.o`, `crt1.10.6.o` | apple-oss-distributions/Csu | Csu-88 `95613f85` | APSL-2.0 |
| stub `libSystem.B.dylib`, `libiconv.2.dylib`, `libncurses.5.4.dylib` | `gen-stubs.sh` + `stubs/*.syms` (ours) | — | — |

Notes:
- Static binaries: libtool's `-all-static` at make time. ld64's `ld.cpp` defines its own `__cxa_atexit` (it skips destructors
  at exit), which clashes with glibc's in a static link; `--allow-multiple-definition` keeps ld64's.
- `SOURCE_DATE_EPOCH` is fixed, so `ld -v`'s build date is too: two builds give byte-identical output.
- Csu: `start.s` + `crt.c` (+ `dyld_glue.s` for 10.4/10.5) compiled with `clang -target i386-apple-macosx<ver>` and linked
  `-r -keep_private_externs` with the new ld, as Csu's own Makefile does (crt1.v1 / v2 / v3). `start.s` includes
  `<Availability.h>` only for ARM; an empty one is supplied.
- Stubs: each symbol in `stubs/<lib>.syms` becomes an empty function in a dylib that carries the real install name.
  ld64 will not build a dylib that does not link libSystem - except libSystem itself, which Apple builds from an object
  named `exit-asm.o`; the libSystem stub uses that name, the other stubs link against it.
- `stubs/libSystem.B.syms`: every C-library symbol that any unit in `bin/units/i386-darwin` imports (found with llvm-nm
  across all 794 archives), the symbols crt1.o needs, `dyld_stub_binder`, plus common C/POSIX calls for your own
  `external` declarations. Framework and third-party symbols (Carbon, CoreFoundation, Cocoa, SDL, FreeType, X11) are not in it.
