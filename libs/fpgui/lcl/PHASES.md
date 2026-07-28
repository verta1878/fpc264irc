# fpGUI v2.1.0 → LCL Update Plan

Our fpGUI is v2.1.0 (2026-04-27) — matches upstream graemeg/fpGUI master.

## Phase 1: FPC 2.6.4 Compatibility (357 source files)

**Low friction (2 fixes):**
- Remove 2× `{$WARN 5024 off}` directives from `fpg_defines.inc`
- Wrap `{$modeswitch objectivec1}` with `{$IFDEF DARWIN}` (already is)

**Medium friction (7 files, 27 uses):**
- `specialize TFPGList<>` → replace with `TList` or `TFPList`
- `specialize TObjectDictionary<>` → replace with custom hash or `TFPDataHashTable`
- `specialize TDictionary<>` → same
- `specialize TObjectList<>` → `TObjectList` from `contnrs`
- Affected: fpg_base, fpg_hexview, fpg_layoutmanager, fpg_miglayout,
  fpg_mig_linkhandler, fpg_mig_layoututil

**No friction:**
- `generic` as FreeType field name — not FPC generics, just a struct field
- `inline` functions — supported in 2.6.4

## Phase 2: Core Framework (15 units)

Compile order:
1. fpg_defines.inc (preprocessor)
2. fpg_constants.pas
3. fpg_base.pas (application, widget base, canvas base)
4. fpg_command_intf.pas
5. fpg_widget.pas
6. fpg_utils.pas
7. fpg_imagelist.pas
8. fpg_fontmanager.pas
9. fpg_async.pas (thread wake)
10. fpg_csvparser.pas
11. fpg_imgutils.pas, fpg_imgfmt_jpg.pas
12. fpg_layoutmanager.pas (needs generics fix)
13. fpg_borderlayout.pas
14. Platform: x11/fpg_x11.pas OR gdi/fpg_gdi.pas
15. fpg_impl.pas (platform factory)

## Phase 3: Widget Library (50+ widgets)

All in framework/src/main/pascal/gui/:
button, label, edit, memo, checkbox, radiobutton, combobox,
listbox, grid, tree, panel, tab, menu, scrollbar, splitter,
trackbar, progressbar, dialogs, hint, hyperlink, gauge,
colorwheel, popupcalendar, hexview, ledmatrix, trayicon,
toggle, animation, window, form, scrollframe, spinedit, etc.

Each widget is self-contained — compile in any order after core.

## Phase 4: AggPas Hybrid Canvas (142 files)

Software rasterization engine. The big one:
- agg_basics, agg_math, agg_array
- Scanline renderers, rasterizers, span generators
- Font: agg_font_freetype (FreeType bindings)
- Image: BMP, PNG loading
- Path: Bézier, arc, ellipse
- Anti-aliasing, subpixel rendering

FreeType is a system library on Linux — needs -lfreetype.
Win32 uses native GDI TrueType — no external deps.

## Phase 5: LCL Widgetset Backend

Lazarus has `lcl/interfaces/fpgui/` — an existing bridge.
Steps:
1. Copy fpGUI src/ into Lazarus lcl/interfaces/fpgui/src/
2. Rebuild LCL with fpGUI widgetset
3. LCL apps render through fpGUI (pixel-perfect cross-platform)

OR (simpler): use our compatibility layer (libs/fpgui/lcl/)
to compile fpGUI apps against native LCL widgetsets.

## Phase 6: Testing

- Compile all 50+ examples in examples/
- Build DocView (documentation viewer)
- Build UI Designer
- Test on Linux (X11) and Win32 (GDI)

## Estimated Effort

| Phase | Files | Risk | Notes |
|-------|-------|------|-------|
| 1 | 7 | Low | Generic→TList replacements |
| 2 | 15 | Medium | Platform backends |
| 3 | 50+ | Low | Independent widgets |
| 4 | 142 | High | AggPas + FreeType |
| 5 | 10 | Medium | LCL bridge |
| 6 | 50+ | Low | Examples |

Phase 1-3 gets you a working GUI toolkit.
Phase 4 gets you pixel-perfect rendering.
Phase 5 gets you LCL integration.
