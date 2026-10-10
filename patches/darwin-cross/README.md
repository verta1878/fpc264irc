# i386-darwin cross toolchain for Linux — byte, 2026-10-07 (frameworks 2026-10-08, universal i386 + x86_64 2026-10-09)

`build.sh [work dir]` builds the contents of `bin/tools/i386-darwin/` from pinned open-source releases
(Linux x86_64 host; needs git, clang, cmake, make, autoconf/libtool, static libstdc++ and libuuid):

| Step | Source | Pinned | License |
|---|---|---|---|
| libdispatch + BlocksRuntime (static, needed by ld64) | apple/swift-corelibs-libdispatch | swift-6.0.3-RELEASE `137b6cf3` | Apache-2.0 |
| cctools + ld64 → `as ld ar ranlib nm otool strip lipo install_name_tool` | tpoechtrager/cctools-port | 1030.6.3-ld64-956.6 `904de2a7` | APSL-2.0 |
| `crt1.o` (10.4), `crt1.10.5.o`, `crt1.10.6.o` — universal i386 + x86_64 | apple-oss-distributions/Csu | Csu-88 `95613f85` | APSL-2.0 |
| stub `libSystem.B.dylib`, `libiconv.2.dylib`, `libncurses.5.4.dylib`, `libobjc.A.dylib` + 25 frameworks — universal | `gen-stubs.sh` + `stubs/` (ours) | — | — |

Notes:
- Static binaries: libtool's `-all-static` at make time. ld64's `ld.cpp` defines its own `__cxa_atexit` (it skips destructors
  at exit), which clashes with glibc's in a static link; `--allow-multiple-definition` keeps ld64's.
- `SOURCE_DATE_EPOCH` is fixed, so `ld -v`'s build date is too: two builds give byte-identical output.
- Csu: `start.s` + `crt.c` (+ `dyld_glue.s` for 10.4/10.5) compiled with `clang -target i386-apple-macosx<ver>` and linked
  `-r -keep_private_externs` with the new ld, as Csu's own Makefile does (crt1.v1 / v2 / v3). `start.s` includes
  `<Availability.h>` only for ARM; an empty one is supplied.
- Universal (2026-10-09): `csu()` and `stub()` build an i386 and an x86_64 part and join them with the new `lipo`.
  i386 parts are built exactly as before (byte-identical); x86_64 parts are built for 10.5 (FPC's x86_64 default),
  crt1.o (10.4) for x86_64 without `-mdynamic-no-pic`. The same symbol lists serve both; an Objective-C class becomes
  `_OBJC_CLASS_$_X` + `_OBJC_METACLASS_$_X` in the x86_64 part (Objective-C 2 ABI, what `ppcx64` emits).
- Stubs: each symbol in `stubs/<lib>.syms` becomes an empty function in a dylib that carries the real install name.
  ld64 will not build a dylib that does not link libSystem - except libSystem itself, which Apple builds from an object
  named `exit-asm.o`; the libSystem stub uses that name, the other stubs link against it.
- `stubs/libSystem.B.syms`: every C-library symbol that any unit in `bin/units/i386-darwin` imports (found with llvm-nm
  across all 794 archives), the symbols crt1.o needs, `dyld_stub_binder`, plus common C/POSIX calls for your own
  `external` declarations. `stubs/libSystem.extra.syms` adds what the Mac interface units import from libSystem
  (fenv, fp, xattr, and what 10.4's crt1.o needs).
- Frameworks: `gen-framework-syms.py <repo> stubs` writes `stubs/frameworks/<F>.syms`, `stubs/libobjc.A.syms`,
  `stubs/libSystem.extra.syms` and `stubs/frameworks.txt` from FPC's own sources: univint (`external name '_x'`; the
  framework from each header's `File: <Subframework>/x.h` line or its name, subframeworks folded into the public
  framework that exports them, PowerPC-only DrawSprocket left out), cocoaint (`objcclass external` classes,
  `cdecl; external` functions, `cvar; external` variables), `rtl/inc/objc*.inc` + objcrtl (libobjc), openal, opencl.
  Rerun it only when those sources change; its output is committed.
- `frameworks.txt` = `name|install name|re-exported frameworks`, each line after the frameworks it re-exports, so
  `gen-stubs.sh` builds them in one pass. Re-exporting stubs are built with `-macosx_version_min 10.5`: for 10.4 ld64
  writes the old `LC_SUB_LIBRARY` form, which does not carry `/usr/lib/libobjc` through Foundation; 10.5 writes
  `LC_REEXPORT_DYLIB`. Programs are not affected (they still default to 10.4).
- Trimming (2026-10-10): `apple-trim.py <otool> <Apple MacOSX10.x.sdk>...` keeps, per architecture, only the candidate
  names Apple's libraries export, in the library that owns them on the Mac (non-public re-exports such as
  `/usr/lib/system/*` or CarbonCore count for their umbrella; Apple's `$ld$add$os…` / `$ld$hide$os…` entries are kept so
  ld64 picks the same library per minimum macOS version), and writes `stubs/i386/*.syms`, `stubs/x86_64/*.syms` and a
  `DROPPED.txt` for each. `gen-stubs.sh` uses those lists when they exist. Only names come from the SDK; it stays outside
  the repository (Apple's licence). Run with the 10.6 and 10.7 SDKs (first SDK decides the owner); rerun it when the
  candidate lists change.
- Objective-C classes (`.objc_class_name_X`) are data words: the real frameworks export them as absolute symbols,
  which ld64 drops when it builds a dylib.
- ld64 looks for `-framework X` at `X.framework/X` and for a re-exported framework at its install path
  `X.framework/Versions/A/X` (Foundation, AppKit: `Versions/C`), so each framework is there twice (symlinks on a Mac;
  git on Windows keeps none).
- The SDK folder must be called `MacOSX10.6.sdk`: ld64 takes the SDK version it records from the `-syslibroot` name.
