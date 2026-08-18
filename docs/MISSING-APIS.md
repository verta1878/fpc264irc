# APIs Not in FPC 2.6.4 — Backport Candidates

## Purpose
When stripping Lazarus 3.x help XMLs for Phase 3, these APIs must
be removed from the docs. This file tracks them so we know what
to backport if needed later.

## Language Features (Compiler-Level — Hard to Backport)

| Feature | Added In | What | Backport Difficulty |
|---------|----------|------|-------------------|
| Generics | 2.6.0 (basic) | `TList<T>` | ⚠️ PARTIAL — basic generics work in 2.6.4 |
| Advanced records | 2.6.0 (basic) | Methods on records | ⚠️ PARTIAL — basic works |
| constref | 2.7.1 | Pass by const reference | ❌ Compiler change — our PPU mismatch issue |
| Anonymous functions | 3.2.0 | `procedure(x: Integer)` inline | ❌ Compiler rewrite |
| Type helpers | 3.0.0 | `Integer.ToString` | ❌ Compiler change |
| Management operators | 3.2.0 | Initialize/Finalize/Copy/AddRef | ❌ Compiler change |
| Implicit function specialization | 3.2.0 | Infer generic params | ❌ Compiler change |
| Custom attributes | 3.2.0 | `[MyAttribute]` | ❌ Compiler change |
| Inline variables | 3.2.0 | `var x := 5;` | ❌ Compiler change |
| Multi-line strings | 3.2.2 | Backtick strings | ❌ Compiler change |

## RTL Units (Can Backport — Just Pascal Code)

| Unit | Added In | What | Backport Difficulty |
|------|----------|------|-------------------|
| fgl | 2.6.2 | Generic containers (TFPGList etc.) | ✅ EASY — pure Pascal |
| fpjson | 2.6.0 | JSON parser/generator | ✅ Already in our tree |
| fphttp | 2.6.2 | HTTP client/server | ✅ Pure Pascal |
| fpopenssl | 2.6.0 | OpenSSL bindings | ✅ Already in packages |
| fpzip | 2.6.0 | ZIP archive handling | ✅ Already in paszlib |
| URIParser | 2.6.0 | URI parsing | ✅ Pure Pascal |
| jsonparser | 2.6.0 | JSON streaming parser | ✅ Already in fcl-json |
| jsonscanner | 2.6.0 | JSON lexer | ✅ Already in fcl-json |
| bufstream | 2.6.0 | Buffered streams | ✅ Already in fcl-base |
| syncobjs | 2.6.0 | TCriticalSection etc. | ✅ Already in rtl |
| contnrs | 2.6.0 | TObjectList etc. | ✅ Already in rtl |

## FCL/LCL Classes (Can Backport — Pascal Code)

| Class | Added In | What | Backport Difficulty |
|-------|----------|------|-------------------|
| TFPHTTPClient | 2.6.2 | HTTP client with SSL | ✅ EASY — fcl-web |
| TFPCustomHTTPServer | 2.6.2 | Embedded HTTP server | ✅ Pure Pascal |
| TCSVDocument | 3.0.0 | CSV reader/writer | ✅ EASY — pure Pascal |
| TBufDataset | 2.6.0 | In-memory dataset | ✅ Already in fcl-db |
| TProcess.Executable | 2.6.2 | Process launch property | ✅ Already in fcl-process |
| TJSONObject.Find | 3.0.0 | Safe JSON key lookup | ✅ EASY — one method |
| TStringList.OwnsObjects | 3.0.0 | Auto-free items | ✅ EASY — one property |
| TThread.Queue | 3.0.0 | Thread-safe UI callback | ⚠️ MEDIUM — needs RTL support |

## LCL Widgetsets (Platform-Specific)

| Widgetset | Status in 2.6.4 | Notes |
|-----------|-----------------|-------|
| Win32/Win64 | ✅ Full | Our primary target |
| GTK2 | ✅ Full | Stock Lazarus 1.0 |
| Qt | ⚠️ Partial | Qt4 only, needs Qt4Pas |
| Carbon | ⚠️ Deprecated | Use Cocoa on modern macOS |
| Cocoa | ❌ Not in 1.0 | Added in Lazarus 1.4+ |
| CustomDrawn | ⚠️ Experimental | In tree but incomplete |
| fpGUI | ✅ In our tree | 307 units, lightweight |

## SysUtils Functions Not in 2.6.4

| Function | Added In | What | Backport |
|----------|----------|------|----------|
| TEncoding class | 3.0.0 | String encoding support | ⚠️ MEDIUM |
| RawByteString | 2.6.0 | Encoding-neutral string | ✅ Already in rtl |
| UnicodeString | 2.6.0 | UTF-16 string | ✅ Already in rtl |
| DefaultSystemCodePage | 3.0.0 | System codepage var | ⚠️ MEDIUM |
| SetMultiByteConversionCodePage | 3.0.0 | Codepage control | ⚠️ MEDIUM |
| TFormatSettings | 2.6.0 | Locale-aware formatting | ✅ Already in sysutils |

## Windows API Coverage

| API | In Our shlobj/windows | Notes |
|-----|----------------------|-------|
| SHAddToRecentDocs | ❌ Missing | We declared locally — should be in shlobj |
| SHBrowseForFolderW | ✅ | In win32compat |
| Shell_NotifyIcon | ✅ | In shellapi |
| CoInitializeEx | ✅ | In ole2/activex |
| TaskDialog | ❌ Not in Win32 API | Vista+ only |
| DwmExtendFrameIntoClientArea | ❌ | Vista+ DWM API |

## What To Backport First (Priority Order)

1. **SHAddToRecentDocs** → add to shlobj.pp (trivial, fixes local hack)
2. **TStringList.OwnsObjects** → one property + destructor change
3. **TJSONObject.Find** → one method, prevents exceptions
4. **TCSVDocument** → pure Pascal, useful for BBS data export
5. **TFPHTTPClient** → already in fcl-web, verify it compiles
6. **TThread.Queue** → needed for proper GUI threading

## What NOT To Backport (Compiler Changes Required)

- constref (our IUnknown fix avoids the need)
- Anonymous functions
- Type helpers
- Management operators
- Custom attributes
- Inline variables
- Implicit specialization

These require compiler modifications. Out of scope unless we
patch ppc386 source code (src/compiler/).
