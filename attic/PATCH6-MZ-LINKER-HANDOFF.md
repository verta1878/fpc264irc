# PATCH REQUEST: FPC 2.6.4irc — MZ Linker .a Fallback

## For: Next Claude session working on fpc264irc compiler
## From: Session 2026-09-09 (sysop/0)
## Priority: Patch 6

## What To Do

Patch the internal MZ linker so it finds `.a` (smartlinked OMF archives)
when `.o` files don't exist. This is the only thing blocking `ppcross8086`
from producing DOS MZ executables without external `wlink`.

## The Problem

```
ppcross8086 -Tmsdos -Wmsmall test.pas
  Compiling test_mz.pas
  Linking test_mz.exe
  Error: Can't open object file: system.o    ← file is system.a
  Fatal: There were 1 errors compiling module, stopping
```

RTL units are compiled with smartlinking → `.a` archives (OMF libraries).
The `DefaultLinkScript` in `TInternalLinkerMsDos` adds them via
`READOBJECT` which only looks for `.o`. It needs to fall back to `.a`
via `READSTATICLIBRARY` when the `.o` doesn't exist.

## Where To Patch

File: `src/compiler/systems/t_msdos.pas` (recovered from FPC 3.2.2,
now in the repo at that path — 540 lines).

Class: `TInternalLinkerMsDos`

Method: `DefaultLinkScript` (starts around line 430)

The current code does:
```pascal
while not ObjectFiles.Empty do
begin
  s:=ObjectFiles.GetFirst;
  if s<>'' then
    LinkScript.Concat('READOBJECT ' + maybequoted(s));
end;
```

This emits `READOBJECT foo.o` for every unit. When `foo.o` doesn't exist
but `foo.a` does, the link fails.

## Proposed Fix

Replace the ObjectFiles loop with logic that checks for `.a` when `.o`
is missing:

```pascal
while not ObjectFiles.Empty do
begin
  s:=ObjectFiles.GetFirst;
  if s<>'' then
  begin
    if FileExists(s, false) then
      LinkScript.Concat('READOBJECT ' + maybequoted(s))
    else
    begin
      { smartlinked units produce .a instead of .o — try that }
      s2:=ChangeFileExt(s, '.a');
      if FileExists(s2, false) then
        LinkScript.Concat('READSTATICLIBRARY ' + maybequoted(s2))
      else
        LinkScript.Concat('READOBJECT ' + maybequoted(s));  { let it fail with original name }
    end;
  end;
end;
```

Add `s2: TCmdStr;` to the var block.

Note: `FileExists` in the compiler uses `cfileutl.FileExists(s, false)`
where false = don't search path, just check the exact path. The object
files already have full paths by this point.

## Also Check

The `READSTATICLIBRARY` handler in `link.pas` calls `CArObjectReader`
which is set to `TOmfLibObjectReader` in the constructor. This already
knows how to read OMF `.a` archives. So the reading side is done — only
the script generation needs the fallback.

## Files Involved

```
src/compiler/systems/t_msdos.pas    ← PATCH THIS (DefaultLinkScript)
src/compiler/link.pas               ← read-only reference (READSTATICLIBRARY handler)
src/compiler/ogomf.pas              ← read-only reference (TMZExeOutput)
src/compiler/omfbase.pas            ← read-only reference (OMF types)
src/compiler/owomflib.pas           ← read-only reference (TOmfLibObjectReader)
src/compiler/systems/i_msdos.pas    ← read-only reference (link=ld_int_msdos)
```

## How To Test

```bash
# 1. Rebuild ppcross8086 using the existing ppcross8086 as bootstrap
cd fpc264irc/src/compiler
make cycle CPU_TARGET=i8086 FPC=../../bin/ppcross8086
# (or however the i8086 compiler rebuild works — check Makefile)

# 2. Test with a trivial program
cat > /tmp/test_mz.pas << 'EOF'
program test_mz;
begin
  WriteLn('MZ linker test');
  WriteLn('PASS');
end.
EOF

# 3. Compile — should produce .exe directly, no wlink needed
bin/ppcross8086 -Tmsdos -Wmsmall -Fubin/units/i8086-msdos-small /tmp/test_mz.pas

# 4. Verify
file test_mz.exe          # should say "MS-DOS executable"
xxd test_mz.exe | head -2 # should start with 4d5a (MZ)

# 5. Run in DOSBox
dosbox -c "mount c /tmp" -c "c:" -c "test_mz.exe" -c "exit"
# Should print: MZ linker test / PASS

# 6. Test all memory models
for m in tiny small medium compact large huge; do
  bin/ppcross8086 -Tmsdos -Wm${m} -Fubin/units/i8086-msdos-${m} /tmp/test_mz.pas
  echo "$m: $(file test_mz.exe 2>/dev/null || echo 'FAIL')"
done

# 7. Regression: verify x86_64-linux still works
cd /path/to/MysticIRC && bash build-linux.sh x64
```

## Context

- The prebuilt `ppcross8086` binary has the internal MZ linker compiled in
- It was backported from FPC 3.2.2 but the source wasn't committed
- Source files recovered from FPC 3.2.2 and added to repo this session
- All i8086 compilation works — only linking is broken
- MysticIRC misdos, mystfoss, and examples/serial all compile clean
  for i8086 but can't link without wlink
- This is Patch 6 in the compiler patch sequence (see SESSION-REPORT)

## DO NOT

- Do not touch ogomf.pas or link.pas unless absolutely necessary
- Do not change the external linker paths (wlink fallback must still work)
- Do not rebuild i8086 RTL PPUs (they're fine, just smartlinked)
- Ask before making any other changes

o7
