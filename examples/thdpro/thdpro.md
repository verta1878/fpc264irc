# THD ScanPro v1.0.0 — GPLv3

Clean-room rebuild of THD ProScan file processor for BBS systems.
100% new code — based on THDDOC.TXT specification by David Muir (PainSoft).
Zero original source reused.

## Programs

| Program | Purpose |
|---------|---------|
| THDPRO | Main file scanner — archive testing, virus scanning, description import |
| THDINSTL | Configuration wizard — scanner paths, BBS type, archive tools |
| THDPLUS | Database updater — reads TESTINFO.DAT, updates FILES.BBS/RA/Renegade/Mystic |
| THDTERM | Terminal wrapper — watches directory, auto-tests, sorts to PASS/FAIL |
| THDSELCT | File selector — interactive TUI for choosing files to test |

## Binaries

| Platform | THDPRO | THDINSTL | THDPLUS | THDTERM | THDSELCT |
|----------|--------|----------|---------|---------|----------|
| Linux i386 | 649KB | 587KB | 578KB | 579KB | 579KB |
| Win32 i386 | 202KB | 144KB | 136KB | 140KB | 138KB |
| DOS go32v2 | 526KB | 486KB | 477KB | 478KB | 478KB |
| OS/2 EMX | 533KB | — | — | — | — |

Standalone package: `thdpro-v100-gplv3.zip`

## Features

- 14 archive formats detected by magic bytes (ZIP, RAR, ARJ, LHA, ARC, PAK, SQZ, HYP, UC2, TD0, GZ, BZ2, 7Z)
- Archive extraction via marc-lib (kiddo/evga — GPLv3, 11 units)
- Virus scanning: ClamAV 1.x (live tested, EICAR detected), McAfee SCAN, F-PROT, TBSCAN hooks
- Description import: VENDINFO.DIZ > FILE_ID.DIZ > DESC.SDI > DESC.SDN (recursive search)
- GIF spec extraction (Width×Height×Colors from header, pure Pascal)
- CRC32 duplicate detection (THDPRO.DUP: [FileSize:LongInt, CRC32:LongInt] pairs)
- ANSI TUI with CP437 box drawing and color-coded results
- Binary config file (THDPRO.CFG, 692 bytes)
- TESTINFO.DAT output (2380 bytes per record, byte-compatible with original)
- Exit codes for BBS integration (0=clean, 1=virus, 2=suspect, 3=corrupt, 4=password)

## ClamAV Setup

```bash
# Install:
apt install clamav           # Debian/Ubuntu
freshclam                    # Update virus definitions

# Configure:
THDINSTL → Virus Scanner Paths → ClamAV: /usr/bin/clamscan

# Or auto-detect (THDPRO finds /usr/bin/clamscan automatically)
```

## Usage

```
THDPRO <filename> [options]

Options:
  /ADD      Add description to file database
  /CO       Convert only (no testing)
  /KO       Keep original after conversion
  /LA       Log all activity
  /NODESC   Do not import descriptions
  /OV       Override time/space limits
  /RO       Read only mode
  /SEC      Secure mode
  0-8       COM port (0=local)
  /60-/1500 VENDINFO description size
  TOZIP     Convert to ZIP
  TOARJ     Convert to ARJ
  TOLHA     Convert to LHA
  CRC       CRC duplicate check mode
```

## Pipeline

```
1. Detect archive format (magic bytes)
2. CRC duplicate check (THDPRO.DUP)
3. Test archive integrity (marc-lib)
4. Extract to temp directory
5. Virus scan (ClamAV / McAfee / F-PROT / TBSCAN)
6. Write TESTINFO.DAT record (2380 bytes)
7. Extract descriptions (VENDINFO > FILE_ID > DESC.SDI > DESC.SDN)
8. GIF spec scan (Width×Height×Colors)
9. Cleanup temp directory
10. Exit code for BBS
```

## File Formats

### THDPRO.CFG (692 bytes)
Binary config file written by THDINSTL. Contains BBS type, scanner paths,
archive tool paths, options. Supports 9 BBS types: RemoteAccess, Telegard,
Renegade, FILE.BBS, PCBoard, Wildcat, Synchronet, Mystic, Standalone.

### TESTINFO.DAT (2380 bytes per record)
Appended by THDPRO after each file test. Read by THDPLUS for BBS database
updates. Byte-compatible with THD ProScan's TESTINFO.INC specification.
Contains file info, test results, descriptions (up to 1500 chars), timestamps.

### THDPRO.DUP (8 bytes per entry)
CRC duplicate database. Each entry: [FileSize:LongInt, CRC32:LongInt].
Checked before testing — duplicate files rejected immediately.

### THDPRO.LOG
Text log with timestamps. All test activity, scanner results, descriptions.

## Source

```
examples/thdpro/
  thdpro.pas        Main scanner engine
  thdinstl.pas      Configuration wizard
  thdplus.pas       Database updater
  thdterm.pas       Terminal wrapper
  thdselct.pas      File selector
  thd_shim.pas      mdl compatibility shim
  m_strings.pas     String shim for marc-lib
  m_fileio.pas      File I/O shim for marc-lib
  m_ops.pas         Defines stub for marc-lib
  m_archive.pas     Patched marc-lib (ExecTool cross-platform fix)
```

## Reference Material

```
examples/thdpro/reference/
  THDDOC.TXT        Original specification (156KB)
  TESTINFO.INC       Record format definition
  marc-lib/          Archive library (11 units, 1,859 lines, GPLv3)
  scanners/
    fprot/           F-PROT 2.24a
    mcafee/          McAfee SCAN 3.0.4
    tbscan/          TBSCAN 2.8
```

## License

GPLv3. Archive support via marc-lib (kiddo/evga — GPLv3).

## The Crew

verta1878, sysop/0, evga, kiddo, wrench
