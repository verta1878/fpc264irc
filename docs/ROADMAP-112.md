# Mystic BBS 1.12 IRC — Feature Verification Roadmap

Verify features from 1.11 branch into 1.12. Check each item against
g00r00's original 1.12a49 pre-release and our fork additions.

## 1.11a5 Feature Checklist

| # | Status | Feature | Notes |
|---|--------|---------|-------|
| 1 | ✅ | ANSI art rendering | Verified — login prompt, ANSI editor |
| 2 | ✅ | Node activity | Node 1 active, status visible |
| 3 | ✅ | Configuration editor | All edit screens rendering |
| 4 | ✅ | Text editor | Built-in text editor working |
| 5 | ✅ | Log viewer | Accessible from config |
| 6 | ✅ | cfg path fix | Install paths writing correctly |
| 7 | ⬜ | FidoNet echomail | Needs verification against 1.12 |
| 8 | ⬜ | File base | Transfer protocols, file areas |
| 9 | ⬜ | Door support (DOOR32) | g00r00's door32 examples in repo |
| 10 | ⚠️ | Searchlight-style prompt menus rework | 111a3 — has screen size handling code, may need further work to fully match g00r00's rework |
| 11 | ⬜ | Event system | Timed events, maintenance |
| 12 | ⬜ | Archive viewers | aviewzip, aviewrar, etc. (139 source files) |
| 13 | ⬜ | RIP graphics | rip_graph.pas + rip_parser.pas present |
| 14 | ⬜ | Script engine | mystic/scripts/ directory |

## 1.12 Pre-Release (112a49pre.zip)

Items to compare against g00r00's 1.12a49:

| Area | What to check |
|------|---------------|
| MDL libraries | 30+ .a files in mdl/ — compare API |
| New source files | Diff 1.11 vs 1.12 Pascal source |
| Protocol changes | pm_prot_zmodem, pm_tcp_client_ftp |
| Configuration format | mystic.dat structure changes |
| Door32 | door32.sys handling |

## Our Additions (IRC Fork)

| Feature | Status | Unit/File |
|---------|--------|-----------|
| RIP graphics | Source present | rip_graph.pas, rip_parser.pas |
| ANSI buffer | Working | bbs_ansi_buffer.pas |
| FOSSIL driver | Built | fossil.pas (libs/fossil/) |
| Serial port | Built | serial.pas + serial_irq.pas |
| Pure Pascal sockets | Built | sockets.pp (go32v2) |
| fpGUI toolkit | 266/266 | libs/fpgui/ |

## Process

1. Extract 112a49pre.zip
2. Diff source files: `diff -rq mystic111/ mystic112/`
3. Identify new/changed units
4. Merge our fork additions
5. Build and test
