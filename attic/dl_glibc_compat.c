/*
 * dl_glibc_compat.c — Force GLIBC_2.0/2.1 symbol versions for dl functions
 *
 * GPLv3 — fpc264irc, 2026-08-14
 *
 * Problem: FPC's dl.pp links against dlopen/dlsym/dlclose/dladdr
 * without specifying a glibc version. On glibc 2.34+, the linker
 * picks the newest version (@@GLIBC_2.34). Binaries built this way
 * won't run on older glibc systems.
 *
 * Fix: Use .symver to bind to the oldest available version.
 * This produces binaries that run on glibc 2.1+ (any Linux since 1999).
 *
 * Compile: gcc -m32 -c dl_glibc_compat.c -o dl_glibc_compat.o
 * Link:    Add dl_glibc_compat.o to the final link line
 */

__asm__(".symver dlopen,dlopen@GLIBC_2.1");
__asm__(".symver dlclose,dlclose@GLIBC_2.0");
__asm__(".symver dlsym,dlsym@GLIBC_2.0");
__asm__(".symver dlerror,dlerror@GLIBC_2.0");
__asm__(".symver dladdr,dladdr@GLIBC_2.0");
