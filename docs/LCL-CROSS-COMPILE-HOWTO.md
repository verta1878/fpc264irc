# LCL Win32 Cross-Compile from Linux — HOWTO

## The Problem

FPC 2.6.4's compiler crashes (`EAccessViolation` at `$F17E2`) when
compiling LCL units with deep class hierarchies (Controls, Forms).
This is a compiler bug in 2.6.4's type graph resolver — not a source
issue, not a memory issue, not fixable with heap flags.

## The Solution

Use ppc386 3.2.2 (installed via `apt`) to compile the LCL. Use 
upstream FPC 3.2.2 source (not Debian-patched) for the RTL.
No `lazbuild` needed.

## Prerequisites

```bash
# Install i386 cross-compiler:
dpkg --add-architecture i386
apt-get update
apt-get install fp-compiler:i386

# Verify:
ppc386 -v    # should show 3.2.2

# Download upstream FPC 3.2.2 source:
wget https://downloads.freepascal.org/fpc/dist/3.2.2/source/fpc-3.2.2.source.tar.gz
tar xzf fpc-3.2.2.source.tar.gz
```

## Step 1: Build Win32 RTL (89 PPUs)

```bash
cd fpc-3.2.2/rtl
make PP=/usr/bin/ppc386 CPU_TARGET=i386 OS_TARGET=win32 \
  OPT="-XPi386-win32- -FD<fpc264irc>/bin/tools/i386-win32" \
  clean all
```

Output: `fpc-3.2.2/rtl/units/i386-win32/` (89 PPUs)

## Step 2: Build FPC Packages

From `fpc-3.2.2/` root, compile each package source directly:

```bash
PPC=/usr/bin/ppc386
RTLUNITS=./rtl/units/i386-win32
OUT=/tmp/lcl-win32
XTOOLS=<fpc264irc>/bin/tools/i386-win32
OPTS="-Twin32 -n -Fu$RTLUNITS -Fu$OUT -FU$OUT -XPi386-win32- -FD$XTOOLS"

# fcl-base (contnrs, custapp, inifiles, etc)
# paszlib (zbase, zdeflate, zinflate, zstream)
# hash (crc)
# fcl-image (fpimage, fpcanvas, fpreadbmp, etc)
# winunits-base (shellapi — stub if activex/variants fail)
# fcl-process (process, pipes)
# rtl-objpas (strutils)
```

## Step 3: Create Stubs

Three LCL dependencies need stubs (not available or not needed):

**Win9xWsManager** (removed in later Lazarus):
```pascal
unit Win9xWsManager;
{$mode objfpc}{$H+}
interface
implementation
end.
```

**FPReadJpeg** (needs libjpeg C library):
```pascal
unit FPReadJpeg;
{$mode objfpc}{$H+}
interface
uses Classes, FPImage;
type
  TJPEGScale = (jsFullSize, jsHalf, jsQuarter, jsEighth);
  TJPEGReadPerformance = (jpBestQuality, jpBestSpeed);
  TFPJPEGCompressionQuality = 1..100;
  TFPReaderJPEG = class(TFPCustomImageReader)
  private
    FScale: TJPEGScale;
    FPerformance: TJPEGReadPerformance;
    FProgressiveEncoding: Boolean;
    FGrayScale: Boolean;
  protected
    procedure InternalRead(Str: TStream; Img: TFPCustomImage); override;
    function InternalCheck(Str: TStream): boolean; override;
  public
    property Scale: TJPEGScale read FScale write FScale;
    property Performance: TJPEGReadPerformance read FPerformance write FPerformance;
    property ProgressiveEncoding: Boolean read FProgressiveEncoding;
    property GrayScale: Boolean read FGrayScale;
  end;
implementation
procedure TFPReaderJPEG.InternalRead(Str: TStream; Img: TFPCustomImage);
begin end;
function TFPReaderJPEG.InternalCheck(Str: TStream): boolean;
begin Result := False; end;
end.
```

**FPWriteJpeg:**
```pascal
unit FPWriteJpeg;
{$mode objfpc}{$H+}
interface
uses Classes, FPImage;
type
  TFPJPEGCompressionQuality = 1..100;
  TFPWriterJPEG = class(TFPCustomImageWriter)
  private
    FQuality: TFPJPEGCompressionQuality;
    FProgressive: Boolean;
    FGrayScale: Boolean;
  protected
    procedure InternalWrite(Str: TStream; Img: TFPCustomImage); override;
  public
    property CompressionQuality: TFPJPEGCompressionQuality read FQuality write FQuality;
    property ProgressiveEncoding: Boolean read FProgressive write FProgressive;
    property GrayScale: Boolean read FGrayScale write FGrayScale;
  end;
implementation
procedure TFPWriterJPEG.InternalWrite(Str: TStream; Img: TFPCustomImage);
begin end;
end.
```

**ShellApi** (stub — avoids activex/variants chain):
```pascal
unit ShellApi;
{$mode objfpc}{$H+}
interface
uses Windows;
const
  CSIDL_PROGRAMS = $0002;
  CSIDL_PERSONAL = $0005;
  CSIDL_APPDATA  = $001a;
function ShellExecute(hWnd: HWND; Operation, FileName, Parameters,
  Directory: PChar; ShowCmd: Integer): HINST;
  stdcall; external 'shell32.dll' name 'ShellExecuteA';
function SHGetSpecialFolderPath(hwndOwner: HWND; lpszPath: PChar;
  nFolder: Integer; fCreate: BOOL): BOOL;
  stdcall; external 'shell32.dll' name 'SHGetSpecialFolderPathA';
implementation
end.
```

## Step 4: Build LazUtils

```bash
LAZUTILS=<lazarus>/components/lazutils
$PPC $OPTS -Fu$LAZUTILS -Fi$LAZUTILS -Mobjfpc <each unit>.pas
```

Key units: lazutf8, lazfileutils, lazlogger, masks, avglvltree

## Step 5: Build LCL

```bash
LCL=<lazarus>/lcl
LCLOPTS="$OPTS -Fu$LCL -Fi$LCL -Fi$LCL/include -Fu$LCL/widgetset"

# Build order (dependency chain):
# lclversion lcltype lclstrconsts wsreferences wsfactory
# lclproc lresources wslclclasses lclclasses lmessages
# interfacebase intfgraphics graphics controls
# stdctrls extctrls comctrls buttons menus forms
# dialogs imglist actnlist
```

## Result

141 PPUs for i386-win32 LCL. Copy to `bin/units/i386-win32/`.
NMServer and any LCL Win32 app can now link.

## Why 2.6.4 Can't Do This

ppc386 2.6.4 hits `EAccessViolation` at `$00000000000F17E2` when
compiling units with deep class hierarchies (Controls, Forms —
TObject → TPersistent → TComponent → TControl → TWinControl →
TScrollingWinControl → TCustomForm → TForm with hundreds of
virtual methods). This is a bug in the 2.6.4 type graph resolver.
FPC 3.2.2 rewrote that code path and handles it cleanly.

A future fpc264irc backport could fix this by patching the compiler
source at that address — it's in the symbol table resolution during
PPU generation. Filed as a known limitation.

## Credits

sysop/0 — cross-compile recipe, stubs, integration
