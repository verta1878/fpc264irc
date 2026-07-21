# FPC 2.6.4irc — Prebuilt Binaries

```
bin/
├── ppc386                    # i386 cross-compiler (BUG-029 fixed, rebuilt)
├── ppcx64                    # x86_64 native compiler
└── units/
    ├── x86_64-linux/         # 528 PPUs (RTL + packages)
    ├── i386-linux/           # 172 PPUs (system.o patched for BUG-029)
    ├── i386-win32/           # 587 PPUs (system.o patched for BUG-029)
    ├── i386-freebsd/         # 159 PPUs (system.o patched for BUG-029)
    ├── i386-go32v2/          # 254 PPUs (system.o patched for BUG-029)
    ├── i386-darwin/          # 757 PPUs (Pascal decr_ref, no patch needed)
    ├── i386-os2/             # 116 PPUs (Pascal decr_ref, no patch needed)
    └── i8086-msdos/          # 42 PPUs
```

## AnsiString Fix (BUG-029)

`{$H+}` AnsiString function returns now work correctly on all i386 targets.
The `fpc_AnsiStr_Decr_Ref` asm in `system.o` was binary-patched from
`sub $8` to `sub $12` to match the 12-byte TAnsiRec layout.

## Usage

```bash
bin/ppc386 -Mdelphi -Fubin/units/i386-linux prog.pas      # Linux
bin/ppc386 -Mdelphi -Twin32 -Fubin/units/i386-win32 prog.pas  # Win32
bin/ppcx64 -Mdelphi -Fubin/units/x86_64-linux/rtl prog.pas    # x86_64
```
