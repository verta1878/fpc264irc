# MPLC Test Suite

Test scripts for the Mystic MPL compiler (`mplc`).

## Quick Test

```bash
# Compile all test scripts:
mplc hello.mps     # Basic writeln
mplc vars.mps      # Variables + loops + conditionals  
mplc diag.mps      # Full diagnostic (types, strings, math)
mplc filetest.mps   # File I/O
```

All should report "Success!" and produce `.mpx` files.

## If mplc Isn't Working — Diagnostic Checklist

### 1. Does mplc run at all?
```bash
./mplc
# Should show version banner + usage
```
If it crashes or shows nothing: rebuild with `fpc264irc/bin/ppc386`.

### 2. Does it find the script?
```bash
./mplc /full/path/to/script.mps
```
Use absolute paths. Relative paths may fail depending on CWD.

### 3. Common compile errors:
| Error | Cause | Fix |
|-------|-------|-----|
| "Unknown identifier" | Wrong MPL function name | Check MPL docs for exact names |
| "Expected ;" | Missing semicolon | Standard Pascal syntax |
| "Type mismatch" | Wrong parameter type | Check function signatures |

### 4. The .mpx runs but crashes at runtime?
The `.mpx` bytecode runs inside Mystic's interpreter. Issues:
- **Socket functions**: need Mystic running with network configured
- **File paths**: relative to Mystic's data directory, not CWD
- **User context**: some functions need an active BBS session

### 5. Rebuild mplc from source:
```bash
cd mystic-bbs-irc
FPC=/path/to/fpc264irc/bin/ppc386 bash build.sh
# mplc builds as out/bin/mplc
```

### 6. Version check:
```bash
./mplc 2>&1 | head -3
# Should show: "Mystic BBS Programming Language Compiler Version 1.10 A38irc-A52"
```
