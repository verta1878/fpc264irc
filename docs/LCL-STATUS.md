# LCL Status

## Win32 Widgetset — Complete

The LCL Win32 widgetset compiles and runs. lazarus.exe builds at 18 MB.

### Key Changes from Stock Lazarus

- **win32compat.pas** (U-1): Replaces 46 Unicode W-calls with ANSI
  A-calls for Win9x compatibility. Transparent on NT+.
- **IUnknown**: Works natively with `const`. The CORBA interface hack
  and imagelistcache Pointer cast from earlier sessions have been
  removed. RTL rebuild resolved the const/constref mismatch.
- **SHAddToRecentDocs**: Local declaration in environmentopts.pp.
  Not in FPC 2.6.4 shlobj — stays as local import from shell32.dll.

### PPU Counts

| Layer | Count | Status |
|-------|-------|--------|
| RTL core | 8 | Rebuilt from source |
| RTL extended | 65 | Rebuilt from source |
| Packages | 531 | Rebuilt from source |
| LazUtils | 51 | Rebuilt (3 keep stock: tttypes, paswstring, utf8process) |
| LCL | 118 | Compiled from source |
| IDE + tools | 14 exe | Built |
| **Total** | **1,368 PPUs** | |

### Build Verification

6 tests pass:
1. IUnknown native const
2. fpjson + jsonparser
3. DOM + XMLRead
4. classes + typinfo RTTI
5. registry (Win32)
6. fphttpclient (network)

lazarus.exe compiles and links without errors.
