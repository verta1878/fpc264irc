# Free Pascal Runtime Error 216 — Font Loading / Path Fix

## What error 216 means

Runtime error 216 in Free Pascal is an **access violation** (general protection fault): the program tried to read or write memory it doesn't have permission to touch. Common causes:

- Dereferencing a `nil` pointer
- Using an object that was never created or was already freed
- Indexing past the end of a buffer

FPC inherits Turbo Pascal's error numbering; on Windows, the OS raises an access-violation exception and FPC's runtime reports it as error 216.

Note the distinction: if code *checks* for a missing file, FPC reports error 2 (file not found) or error 3 (path not found). Error 216 means the missing file was never detected and a bad pointer was used later.

## Why it happens with font loading

1. Code loads a font with a **relative path** like `assets/fonts/main.ttf`.
2. Relative paths resolve against the **current working directory** — wherever the program was launched from — *not* the executable's directory.
3. Launched from a different folder (Explorer double-click, terminal in another directory, Lazarus with a different working directory, shortcut with a different "Start in" field), the file isn't found.
4. The load function (`TTF_OpenFont`, `LoadFont`, etc.) returns `nil` instead of raising an error.
5. The next call that uses the font dereferences the nil pointer → runtime error 216.

## Why "nothing changed" but it crashes now

Usually neither FPC nor Windows changed — the **launch context** did (new IDE, moved project, ran from a script, copied the exe without its assets folder). The bug was latent all along.

Genuine environment-related triggers do exist but are rarer:

- Switching 32-bit ↔ 64-bit targets or FPC versions can shift memory layout so a previously "harmless" bad pointer now faults.
- Historical FPC issue: register variables combined with stack checking (`-Ct` with register optimization) caused spurious 216 errors; disabling stack checking avoided it.
- Mismatched library bindings (e.g., Pascal SDL headers translated for a different SDL version than the one installed) can crash with 216 at the very first library call.

If the crash happens at the *first* library call rather than at font use, check the bindings-mismatch cause.

## The fix

Three parts: anchor the path to the executable, verify the file exists, and check the loader's return value.

```pascal
uses SysUtils;

var
  fontPath: string;
begin
  // Anchor to the executable's directory, not the working directory
  fontPath := ExtractFilePath(ParamStr(0)) + 'assets' + PathDelim +
              'fonts' + PathDelim + 'main.ttf';

  // Fail with a readable message instead of crashing later
  if not FileExists(fontPath) then
  begin
    WriteLn('Font not found: ', fontPath);
    Halt(1);
  end;

  myFont := LoadFont(fontPath);  // or TTF_OpenFont, etc.
  if myFont = nil then
  begin
    WriteLn('Failed to load font: ', fontPath);
    Halt(1);
  end;

  // ... safe to use myFont from here
end.
```

Key points:

- `ParamStr(0)` is the executable's own path, so `ExtractFilePath(ParamStr(0))` works regardless of where the program is launched from.
- `PathDelim` keeps the path portable across Windows (`\`) and Linux/macOS (`/`).
- Checking the loader's return value turns a mysterious crash into a clear "font not found" message.

## Quick diagnostic test

Run the program from the directory that makes the original relative path correct. If the crash disappears, the working-directory diagnosis is confirmed.
