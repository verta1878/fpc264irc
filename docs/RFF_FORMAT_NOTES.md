# RFF Font Format 

## Source: RIPaint 2.0 / RIPterm 2.0 (TeleGrafix, 1997)

## Files: COBB.RFF, DEFAULT.RFF, DIXON.RFF, MARIN.RFF, SYMBOL.RFF

## Registry: ATF.CFG (Active TeleGrafix Font config)

## Format Version: 2.2

## Header (0x00-0x0F)

* 0x00 \[word]: Data size (file size - overhead)
* 0x02-0x0F: Reserved (zeros)

## Font Descriptor (0x10-0x41)

* 0x10 \[word]: Header size (always 16)
* 0x12 \[byte]: Major version (2)
* 0x13 \[byte]: Minor version (2)
* 0x14 \[word]: First char code (e.g., 46 = '.')
* 0x16 \[word]: Last char code (e.g., 54 = '6')
* 0x18 \[word]: Unknown (1026 common)
* 0x1A \[word]: Design units (17560 = 0x4498, common to all fonts)
* 0x1C \[sword]: Ascent (positive, in design units)
* 0x1E \[sword]: Max width (in design units)
* 0x20 \[sword]: Descent (negative, in design units)
* 0x22-0x41: Additional metrics

## Font Name (0x42+)

* Null-terminated ASCII string (e.g., "Cobb", "DEFAULT")

## Face Table (after name, 10 faces per font, \~46 bytes each)

Each RFF contains 10 variant faces:

1. Regular
2. Thin (Th)
3. Condensed (Cn)
4. Wide (Wd)
5. Extra/Bold (Ex)
6. Hollow/Outline (Ho)
7. Hollow Thin (HT)
8. Hollow Condensed (HC)
9. Hollow Wide (HW)
10. Hollow Extra (HE)

## Glyph Data

After the face table. Appears to be relative vector stroke commands
(signed bytes for pen movement, similar to BGI CHR format but more
compact). Bytes like 03, FB (-5), 00, suggest relative coordinate
deltas.

## ATF.CFG Structure

* 0x00 \[dword]: Unknown (checksum?)
* 0x04 \[word]: Font count (50 = 5 fonts \* 10 faces)
* 0x08+: Font entries, each containing:

  * Null-terminated filename (e.g., "COBB.RFF")
  * Font descriptor copy (same as RFF header 0x10+)

## Available Fonts

|File|Size|Name|Chars|
|-|-|-|-|
|COBB.RFF|62KB|Cobb|. / 0-6 (9 chars, 10 faces)|
|DEFAULT.RFF|31KB|DEFAULT|. / 0-6 (9 chars)|
|DIXON.RFF|42KB|Dixon|. / 0-6 (9 chars)|
|MARIN.RFF|56KB|Marin|. / 0-6 (9 chars)|
|SYMBOL.RFF|43KB|Symbol|. / 0-6 (9 chars)|

## Notes

* Full glyph data decoder not yet implemented

