# String Handling in FPC 2.6.4irc — Reference for Mystic BBS

## The Problem

Mystic BBS was written for Delphi/Virtual Pascal where `String` always
means AnsiString (heap, unlimited length). FPC 2.6.4 defaults to
ShortString (stack, 255 max) unless `{$H+}` is active. Missing `{$H+}`
causes **silent truncation** — no error, no warning, data just disappears
at byte 255.

## String Types

| Type | Storage | Max Length | Null Term | Ref Counted |
|------|---------|-----------|-----------|-------------|
| `ShortString` | Stack | 255 bytes | No | No |
| `String[N]` | Stack | N bytes (1-255) | No | No |
| `AnsiString` | Heap | 2GB | Yes (hidden) | Yes |
| `WideString` | Heap | 1GB (2 bytes/char) | No | Yes |
| `UnicodeString` | Heap | 1GB (2 bytes/char) | No | Yes |
| `PChar` | Pointer | Until #0 | Yes | No |

## Memory Layout

```
ShortString 'HELLO':
  Stack: [05][H][E][L][L][O]
          ^length byte

AnsiString 'HELLO':
  Heap:  [-12:codepage][-8:refcount=1][-4:length=5][H][E][L][L][O][#0]
          pointer points here ─────────────────────^
  Stack: [pointer to heap block]

String[80] 'HELLO':
  Stack: [05][H][E][L][L][O][garbage × 75]
          ^length  ^only 5 used, 75 wasted

PChar 'HELLO':
  Anywhere: [H][E][L][L][O][#0]
             ^pointer points here
```

## What Controls the Default

| Directive | `String` means | When |
|-----------|---------------|------|
| `{$H-}` | ShortString | Default in FPC/OBJFPC/TP modes |
| `{$H+}` | AnsiString | Default in DELPHI mode |
| `{$MODE DELPHI}` | AnsiString | Implies `{$H+}` |
| `{$MODE OBJFPC}` | ShortString | Unless `{$H+}` added |
| `{$MODE FPC}` | ShortString | Unless `{$H+}` added |
| `{$MODE TP}` | ShortString | Cannot use `{$H+}` |

## Silent Truncation — The Bug

```pascal
{$H-}  { or no H directive in OBJFPC mode }
var S: String;  { = ShortString = 255 max }
begin
  S := SomeFunctionReturning500Chars;
  { S is now 255 chars. Bytes 256-500 GONE. No error. }
  WriteLn(Length(S));  { prints 255 }
end;
```

No runtime error. No compiler warning. The data is silently lost.
This is the #1 source of Mystic BBS bugs when porting to FPC.

## How to Fix for Mystic

### Option 1: Add {$H+} to every unit (recommended)

```pascal
{$MODE OBJFPC}
{$H+}           { ← ADD THIS }
unit m_strings;
```

### Option 2: Use {$MODE DELPHI}

```pascal
{$MODE DELPHI}  { implies {$H+} automatically }
unit m_strings;
```

### Option 3: Explicit AnsiString declarations

```pascal
var S: AnsiString;  { always heap, regardless of $H }
```

## Mystic Units That Need {$H+}

Any unit that:
- Handles user input (paths, messages, filenames)
- Reads from files or sockets (variable length data)
- Concatenates strings (`S := S + MoreData`)
- Passes strings to/from other units
- Uses string functions that return variable-length results

Common Mystic units affected:
```
m_strings.pas    — string manipulation library
m_fileio.pas     — file I/O (paths can exceed 255)
m_socket.pas     — network data (packets can be any size)
m_protocol.pas   — protocol handling
m_archive.pas    — archive filenames/paths
```

## Detecting the Problem

### At compile time

FPC does NOT warn about truncation. You must audit manually:
```bash
# Find units without {$H+} that use String type:
grep -L 'H+\|MODE DELPHI' src/mystic/*.pas | while read f; do
  if grep -q 'var.*: String' "$f" 2>/dev/null; then
    echo "WARNING: $f uses String without {$H+}"
  fi
done
```

### At runtime

Add assertions during development:
```pascal
procedure CheckString(const S: String; const Where: String);
begin
  if Length(S) = 255 then
    WriteLn('TRUNCATION WARNING at ', Where, ': String is exactly 255');
end;
```

## String Conversion Rules

| From | To | What happens |
|------|------|-------------|
| AnsiString → ShortString | **Truncates at 255** silently |
| ShortString → AnsiString | Safe — always fits |
| AnsiString → PChar | Safe — hidden #0 exists |
| ShortString → PChar | **Dangerous** — no #0 |
| PChar → AnsiString | Safe — copies until #0 |
| PChar → ShortString | **Truncates at 255** silently |

## Reference Counting (AnsiString)

```pascal
var A, B: AnsiString;
begin
  A := 'Hello';     { refcount = 1 }
  B := A;            { refcount = 2, B points to SAME heap block }
  B := B + ' World'; { copy-on-write: B gets new block, A unchanged }
end;                  { both freed when refcount hits 0 }
```

No manual Free/Dispose needed. The compiler inserts cleanup code
at every scope exit, exception handler, and function return.

## ShortString vs AnsiString Performance

| Operation | ShortString | AnsiString |
|-----------|-------------|------------|
| Declaration | Instant (stack) | Instant (nil pointer) |
| Assignment | memcpy (fast) | pointer copy + refcount (faster) |
| Concatenation | memcpy, truncates at 255 | heap realloc if needed |
| Parameter passing | copies entire string | copies 4-byte pointer |
| Function return | copies entire string | copies 4-byte pointer |
| Memory per var | 256 bytes always | 4 bytes + heap as needed |

For Mystic BBS: AnsiString is both **safer** (no truncation) and
**faster** (pointer passing vs 256-byte copies).

## i8086 Considerations

On i8086, AnsiString works but uses more heap (far pointers, segment
management). For i8086 BBS doors, ShortString may be appropriate since
DOS path names max at 80 chars and screen width is 80 columns.

Use `String[80]` for fixed-width screen buffers:
```pascal
var Line: String[80];  { exact fit for one screen line }
```

## Quick Reference

```
Want unlimited strings?     → {$H+} or {$MODE DELPHI}
Want 255-max stack strings? → {$H-} or {$MODE OBJFPC}
Want explicit control?      → declare as AnsiString or ShortString
Want C interop?             → PChar (but manage memory manually)
Want screen-width buffers?  → String[80]
Want maximum compatibility? → {$MODE DELPHI} (matches VP/Delphi)
```
