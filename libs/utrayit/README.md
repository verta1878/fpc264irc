# utrayit — Console Tray/Minimize Unit for FPC

Cross-platform unit that lets console programs minimize to the Windows
system tray (notification area) or iconify on Unix terminals.

## Quick Start

```pascal
uses utrayit;

var Tray: TTrayIt;
begin
  Tray := TTrayIt.Create;
  Tray.TrayConsole('My App - click to restore');
  
  { ... your program runs here ... }
  
  Tray.UnTrayConsole;
  Tray.Free;
end.
```

## Adding a Custom Icon

1. Create your `.ico` file (16x16 + 32x32 + 48x48 recommended)
2. Create a `.rc` file:
   ```
   MAINICON ICON "myapp.ico"
   ```
3. Compile the resource:
   ```
   windres myapp.rc -o myapp.res
   ```
4. Add to your program:
   ```pascal
   {$IFDEF WINDOWS}
     {$R myapp.res}
   {$ENDIF}
   ```

The tray icon loads from the `MAINICON` resource automatically.
If no resource is embedded, it uses the console window's class icon,
and falls back to the default Windows application icon.

## Default Icon

`default.ico` — green ">_" prompt on black background (DOS terminal
style). Icon by kiddo. Use `trayicon.res` to embed it:

```pascal
{$IFDEF WINDOWS}
  {$R trayicon.res}
{$ENDIF}
```

## Platform Support

| Platform | Minimize | Tray Icon | Notes |
|----------|----------|-----------|-------|
| Win32/Win64 | Yes | Yes | Shell_NotifyIconW, XP through Win11 |
| Linux/Unix | Yes | No | XTWINOPS escape sequences (xterm) |
| DOS/OS2 | No | No | Graceful stubs, compiles fine |

## Files

```
utrayit.pas          The unit (one file, no dependencies)
default.ico          Default DOS terminal icon by kiddo (16/32/48px)
trayicon.rc          Resource script for default icon
trayicon.res         Compiled resource (ready to embed)
examples/
  example.pas        Basic tray minimize/restore demo
```

## Credits

| Who | What |
|-----|------|
| sysop/0 | Unit code |
| kiddo | Default icon (green >_ on black) |

## License

GPLv3 — Mystic BBS IRC Fork Contributors, 2026.
Part of fpc264irc.
