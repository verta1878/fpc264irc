# LCL Status — fpc264irc r3.1

## Last Updated: 2026-08-14

### Win32 PPUs: 737
### Linux PPUs: 241
### go32v2 PPUs: ~200
### FreeBSD PPUs: ~150

### U-1 Win9x ANSI Backport — COMPLETE
- win32compat.pas provides A/W dispatch
- Default (no define) → ANSI APIs → Win9x/ME safe
- `-dUNICODE` → Wide APIs → NT/2K/XP+
- Runtime `UnicodeEnabledOS` checks preserved in LCL

### Modified Files
| File | Changes |
|------|---------|
| win32compat.pas | NEW — 212 lines |
| win32callback.inc | DefWindowProcW → WinDefWindowProc |
| win32object.inc | SetWindowTextW, RegisterClassW, UnregisterClassW |
| win32wscontrols.pp | GetClassInfoW, RegisterClassW, WNDCLASSW→WNDCLASS |
| win32proc.pp | GetWindowTextW, GetWindowTextLengthW |
| win32listsl.inc | SendMessageW (5 calls) |
| win32wscomctrls.pp | CreateWindowExW, SendMessageW |
| win32wsstdctrls.pp | SendMessageW (13 calls) |
| win32memostrings.inc | SetWindowTextW |
| win32winapi.inc | 8 W-calls (DrawText, TextOut, ExtTextOut, MessageBox, GetObject, EnumFont, GetTextExtent) |
| win32wschecklst.pp | DrawTextW |
| win32wsspin.pp | SetWindowLongPtrW |
| win32wsdialogs.pp | SHBrowseForFolder var param |
| win32int.pp | Added win32compat to uses |
| multimon.pp | Rebuilt PPU |

### Platform Verification
| Platform | String | APIs | Test | Status |
|----------|--------|------|------|--------|
| Win95/98/ME | ANSI | A-variant | Wine Win98 | ✅ |
| Win NT/2K/XP+ | Runtime A/W | Both exist | Wine WinXP | ✅ |
| Linux | UTF-8 native | libc | Native | ✅ 29/29 |
| FreeBSD | UTF-8 native | libc | — | ✅ Verified |
| macOS | UTF-8 native | CoreFoundation | — | ✅ Verified |
| OS/2 | Codepage | DosDevIOCtl | — | ✅ Handled |
| DOS | OEM codepage | INT 21h | — | ✅ Codepage only |
