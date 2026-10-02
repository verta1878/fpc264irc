# OS/2 (EMX) Cross-Tools

GNU Binutils 2.30 built with `--target=i386-aout --enable-obsolete`.

| File | What |
|---|---|
| `emx-ld`, `i386-emx-ld` | GNU ld 2.30 with the fpc264irc EMX patch (EMX a.out layout, N_IMP1/N_IMP2 import symbols, import relocations kept for emxbind). Static build (2026-10-02). |
| `ar`, `emx-ar`, `i386-emx-ar` | GNU ar 2.30 from the same build (indexes N_IMP1 import symbols). Static build (2026-10-02). |
| `as`, `emx-as`, `i386-emx-as` | GNU as 2.30 (i386-aout), unpatched. |
| `emx-emxbind`, `i386-emx-emxbind`, `emxbind.emx` | 64-bit build of emxbind 0.9d - **do not use**: it misreads a.out headers (`struct exec` uses `unsigned long`). |
| `emxbind` | older static build. |
| `emxl.exe` | EMX loader stub. |

For `-Tos2` use `-FD bin/tools/i386-os2`: it has the same `as`/`ld` (static copies) and the working 32-bit `emxbind`
(source in `patches/os2-cross/emxbind/`). Details of the ld patch: `bin/tools/i386-os2/README.md`.

## Rebuild from source

```bash
patches/os2-cross/binutils/build.sh /tmp/emx-binutils
# -> /tmp/emx-binutils/out/as ld ar nm (static, stripped)
```

The script unpacks `lib/build-tools/binutils-2.30.tar.xz`, applies `patches/os2-cross/binutils/binutils-2.30-emx.patch`,
configures `--target=i386-aout --enable-obsolete --disable-nls --disable-werror --disable-plugins` and links the tools
statically.
