# fpGUI → LCL Compatibility Layer

Drop-in type aliases that let fpGUI applications compile against
Lazarus LCL with minimal source changes.

## Usage

Replace fpGUI units with LCL equivalents:

```pascal
// Before (fpGUI):
uses fpg_base, fpg_main, fpg_form, fpg_button, fpg_edit;

// After (LCL via compat layer):
uses fpg_lcl;
// Or individual units:
uses fpg_form, fpg_button, fpg_edit;
```

Add `libs/fpgui/lcl` to your unit search path:
```
fpc -Fu<path>/libs/fpgui/lcl myapp.pas
```

## What Changes

| fpGUI API | LCL API | Notes |
|-----------|---------|-------|
| `TfpgForm.Create(nil)` | `TForm.Create(nil)` | Same |
| `TfpgForm.SetPosition(x,y,w,h)` | `TForm.SetBounds(x,y,w,h)` | Rename |
| `TfpgForm.WindowTitle` | `TForm.Caption` | Rename |
| `TfpgButton.Text` | `TButton.Caption` | Rename |
| `fpgApplication.Initialize` | `Application.Initialize` | Use helper |
| `fpgApplication.Run` | `Application.Run` | Use helper |
| `TfpgWidget.HandlePaint` | `TControl.Paint` | Override |
| `TfpgCanvas.DrawString` | `TCanvas.TextOut` | Rename |
| `TfpgCanvas.DrawRectangle` | `TCanvas.Rectangle` | Rename |
| `TfpgColor` | `TColor` | Type alias |

## Property Renames

The main difference between fpGUI and LCL is property naming:

| fpGUI | LCL | Widget |
|-------|-----|--------|
| `Text` | `Caption` | TButton, TLabel, TCheckBox |
| `WindowTitle` | `Caption` | TForm |
| `FontDesc` | `Font.Name + Font.Size` | All |
| `BackgroundColor` | `Color` | All |
| `TextColor` | `Font.Color` | All |
| `Anchors [anLeft,anTop]` | `Anchors [akLeft,akTop]` | All |

## Files

| Unit | Maps |
|------|------|
| fpg_lcl.pas | All types in one unit + helpers |
| fpg_form.pas | TfpgForm → TForm |
| fpg_button.pas | TfpgButton → TButton |
| fpg_label.pas | TfpgLabel → TLabel |
| fpg_edit.pas | TfpgEdit/Memo → TEdit/TMemo |
| fpg_grid.pas | TfpgStringGrid → TStringGrid |
| fpg_tree.pas | TfpgTreeView → TTreeView |
| fpg_menu.pas | TfpgMenuBar/Item → TMainMenu/TMenuItem |
| fpg_dialogs.pas | Open/Save/Color/Font dialogs |
| fpg_panel.pas | TfpgPanel/Splitter → TPanel/TSplitter |
| fpg_tab.pas | TfpgTabControl → TPageControl |
