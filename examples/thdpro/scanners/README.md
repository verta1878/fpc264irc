# DOS Virus Scanners — For THD ProScan

External scanners called by THD ProScan during file testing.

## Included

| Scanner | Version | Date | Source |
|---------|---------|------|--------|
| F-PROT | 2.24a | Aug 1996 | Frisk Software (free for personal use) |
| McAfee SCAN | 3.0.4 | ~1996 | McAfee Associates |

## Usage with THD ProScan

```
THDINSTL.EXE → Configure scanner paths:
  F-PROT:  C:\SCANNERS\F-PROT.EXE
  McAfee:  C:\SCANNERS\SCAN.EXE
```

THD ProScan calls these externally via DOS EXEC. It checks
their exit codes and stdout/stderr for infection reports.

## Source

Downloaded from https://www.dosdays.co.uk/topics/antivirus_utilities.php

## Note

Virus definitions are from 1996. These scanners detect viruses
of that era (boot sector, file infectors, polymorphic).
For modern use, they serve as reference implementations for
the Phase 25 scanner hook interface.

## Scanner Details

### McAfee DOS (SCAN.EXE v8.x)
- `scan.dat` — scan signatures
- `names.dat` — virus name database
- `clean.dat` — cleaning/repair definitions
- `extra.dat` — additional detections
- Source: `ftp://ftp.mcafee.com/pub/antivirus/datfiles/4.x/` (DAT v4.x series)
- Archive.org has DOS versions from 1989-1994

### TBScan (ThunderByte TBAV 6.30)
- Signatures built into the scanner binary
- Updated via new TBAV releases (no separate DAT file)
- Heuristic engine — detects unknown viruses by behavior, not just signatures

### ClamAV (modern, runs on host side)
- `main.cvd` — main signature database
- `daily.cvd` — daily updates
- `bytecode.cvd` — bytecode signatures
- Source: `http://database.clamav.net/main.cvd` (daily updates, still active)
- Best option for a modern BBS — run on the Linux/Win32 host, scan the upload directory

## Practical Setup

For a DOS BBS via netmodem2irc:
- **Host side:** ClamAV scanning uploads (modern signatures, daily updates)
- **BBS side:** F-Prot DOS as the in-BBS scanner (retro experience)
- THD ProScan calls F-Prot locally, ClamAV results checked by MIS before passing to BBS

This gives you 2024 virus coverage with 1996 BBS integration.
