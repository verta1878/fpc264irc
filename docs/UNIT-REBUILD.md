# Exact source rebuild — plan and status (byte, 2026-10-10)

Goal: every shipped unit is what a build kit makes from this repo's own `src/` with today's `bin/ppc386` / `bin/ppcx64`.
Only after that, newer upstream FPC source is ported (on a known-good base).

How each folder is done: a kit rebuilds the whole folder from `src/` (source files + used units read from the shipped
`.ppu`, as `tools/darwin64-build`), the result is compared with the shipped units, and the only difference allowed is the
string-join helper below. Anything else (other source, changed interface, unit that does not compile) is reported
before anything ships. One folder per delivery.

Why units differ today: the old compiler joined `'a' + 'b' + 'c'` with one call to `fpc_*_concat_multi`; today's
compiler (`src/compiler/nopt.pas`, fpc264irc change) joins two at a time. Both work - the helper is in every shipped
system unit. A unit's archive containing `concat_multi` is exactly a unit a rebuild changes (checked on OS/2: the search
named the same 37 units the kit rebuild changed).

| # | Folder | Kit | Units | Old-helper units | Status |
|---|---|---|---|---|---|
| 1 | i386-os2 | `tools/os2-native-build` | 219 | 37 | **Done 2026-10-10** - replaced by the kit build |
| 2 | i386-freebsd / x86_64-freebsd (+ Lazarus i386-freebsd) | `tools/freebsd-build` | 167 / 46 (+ 312) | 20 / 0 (+ 63) | **Done 2026-10-12** - all three folders replaced by the kit build (`dos`/`sysutils` interface changed, so the Lazarus set was rebuilt with them) |
| 3 | i386-linux (+ Lazarus i386-linux) | `tools/linux-build` | 275 (+ 228) | 50 (+ 63) | **Done 2026-10-13** - both folders replaced by the kit build (sysutils, dynlibs, contnrs interface changes) |
| 4 | i386-go32v2 (+ Lazarus i386-go32v2, lcl/) | `tools/go32v2-build` | 235 (+ 138) | 44 (+ 34) | **Done 2026-10-13** - kit build; 2026-10-15: fossil + serial_irq built too (serial has COM_IRQ / MCR_OUT2), `Move` fix for DOSBox (BUG-044) |
| 5 | i386-darwin (+ Lazarus i386-darwin) | `tools/darwin-build` | 795 → 809 (+ 271) | 85 | **Done 2026-10-16** - kit build; new layout: FV `menus` + `resource` in `fv/`, univint `Video` + the 7 units that use it in `univint/`; + fcl-res, `fpobserver`, `jconsts`; `sysutils`/`dos`/`serial` interface changes |
| 6 | x86_64-linux (+ `lcl/`, + Lazarus x86_64-linux) | `tools/linux-build` | 563 + 69 (+ 411) | 144 (+ 147) | **Done 2026-10-27** - all three folders replaced by the kit build; most units are PIC (`-Cg`), as shipped; `lcl/` = flat LCL copy with the nogui widgetset; `sysutils`/`dos`/`dynlibs`/`dl` interface changes, `objpas`/`rtlconst`/`cthreads` came from another compiler build |
| 7 | i386-win32 (main + lcl/) | `tools/win32-build` | 922 + 616 lcl/ | 434 | **Main folder done 2026-10-27** - kit build; `system` built from source again (same checksums as the locked BUG-001 binary), `dynlibs` + GetProcAddress/FreeLibrary (openssl). `lcl/` (616) + Lazarus i386-win32 (304): next |
| 8 | x86_64-win64 | to do | 1,039 | 0 | proof only |
| 9 | Lazarus unit sets (`bin/lazarus/units`) | to do (i386-freebsd done with #2, i386-linux #3, i386-go32v2 #4) | 1,201 | 358 | last |
| - | x86_64-darwin | `tools/darwin64-build` | 789 | 0 | done 2026-10-09 (byte-identical rebuild) |
| - | i8086-msdos* | `tools/i8086-graph-build` | | n/a (FPC 3.2.2) | done |

## Units that still call the old helper (2026-10-10)

**i386-freebsd**: none (2026-10-12)

**i386-linux**: none (2026-10-13)

**i386-go32v2**: none (2026-10-13)

**i386-darwin**: none (2026-10-16)

**x86_64-linux**: none (2026-10-27)

**i386-win32**: main folder none (2026-10-27); `lcl/` (269):
lcl/aboutfrm lcl/abstractsmethodsdlg lcl/addtopackagedlg lcl/addtoprojectdlg lcl/allcompileroptions lcl/anchoreditor lcl/applicationbundle lcl/assemblerdlg lcl/atom_checkboxes_options lcl/basepkgmanager lcl/basiccodetools lcl/breakpropertydlg lcl/buildfiledlg lcl/buildlazdialog lcl/buildmanager lcl/buildmodesmanager lcl/buildprofilemanager lcl/callstackdlg lcl/changeclassdialog lcl/changedeclarationtool lcl/charactermapdlg lcl/checkcompileropts lcl/checklfmdlg lcl/clipbrd lcl/cmdlinedebugger lcl/codeatom lcl/codebeautifier lcl/codebrowser lcl/codecache lcl/codecompletiontemplater lcl/codecompletiontool lcl/codecontextform lcl/codeexplopts lcl/codeexplorer lcl/codehelp lcl/codemacroprompt lcl/codetemplatesdlg lcl/codetoolmanager lcl/codetools_codecreation_options lcl/codetoolscfgscript lcl/codetoolsdefines lcl/codetoolsdefpreview lcl/codetoolsfpcmsgs lcl/codetoolsoptions lcl/codetoolsstructs lcl/codetree lcl/collectionpropeditform lcl/comctrls lcl/compiler lcl/compiler_config_target lcl/compiler_messages_options lcl/compiler_modematrix lcl/compiler_other_options lcl/compiler_path_options lcl/compiler_verbosity_options lcl/compileroptions lcl/componenteditors lcl/componentpalette lcl/componentreg lcl/componenttreeview lcl/compoptsmodes lcl/condef lcl/controls lcl/convcodetool lcl/convertdelphi lcl/convertsettings lcl/ctunitgraph lcl/ctxmlfixfragment lcl/customcodetool lcl/customformeditor lcl/dbctrls lcl/debugger lcl/debugmanager lcl/debugutils lcl/definetemplates lcl/designer lcl/designermenu lcl/desktop_options lcl/dialogprocs lcl/dialogs lcl/diffdialog lcl/diffpatch lcl/directivestree lcl/directorycacher lcl/diskdiffsdialog lcl/editor_color_options lcl/editor_indent_options lcl/editor_keymapping_options lcl/editor_mouseaction_options_advanced lcl/editormacrolistviewer lcl/editoroptions lcl/emptymethodsdlg lcl/env_file_filters lcl/environmentopts lcl/evaluatedlg lcl/eventcodetool lcl/expreval lcl/extdlgs lcl/extractprocdlg lcl/extractproctool lcl/exttooldialog lcl/exttooleditdlg lcl/fieldseditor lcl/fieldslist lcl/filectrl lcl/filefilterpropeditor lcl/fileprocs lcl/files_options lcl/fileutil lcl/finddeclarationcache lcl/finddeclarationtool lcl/findoverloads lcl/findoverloadsdlg lcl/findrenameidentifier lcl/findunitdlg lcl/forms lcl/fpdoceditwindow lcl/fpdocselectlink lcl/frmselectprops lcl/gdbmidebugger lcl/gdbmidebuginstructions lcl/gdbtypeinfo lcl/graphicpropedit lcl/graphics lcl/graphpropedits lcl/graphtype lcl/grids lcl/helpfpcmessages lcl/helpfpdoc lcl/helpoptions lcl/idecmdline lcl/idecommands lcl/idecontexthelpedit lcl/idefpcinfo lcl/idehelpmanager lcl/ideinfodlg lcl/ideinfoneedbuild lcl/idemsgintf lcl/identcompletiontool lcl/ideprocs lcl/ideprotocol lcl/idetranslations lcl/idewindowhelp lcl/idewindowintf lcl/imagelisteditor lcl/initialsetupdlgs lcl/inputfiledialog lcl/inputhistory lcl/inspectdlg lcl/installpkgsetdlg lcl/intfgraphics lcl/jitforms lcl/jumphistoryview lcl/keymapping lcl/keymapshortcutdlg lcl/keywordfunclists lcl/laz2_dom lcl/laz2_xmlwrite lcl/laz_xmlstreaming lcl/lazconf lcl/lazconfigstorage lcl/lazfileutils lcl/lazhelphtml lcl/lazhelpintf lcl/lazlogger lcl/lazloggerbase lcl/lazutf8 lcl/lclintf lcl/lclproc lcl/lfmtrees lcl/linkscanner lcl/localsdlg lcl/lpkcache lcl/lresources lcl/lvlgraphctrl lcl/macrointf lcl/main lcl/mainbase lcl/mainintf lcl/makeresstrdlg lcl/maskedit lcl/maskpropedit lcl/menuintf lcl/menus lcl/methodjumptool lcl/miscoptions lcl/missingpropertiesdlg lcl/modematrixctrl lcl/modematrixopts lcl/msgquickfixes lcl/msgview lcl/newdialog lcl/objectinspector lcl/objinspext lcl/oifavoriteproperties lcl/oldcustomcompdlg lcl/openinstalledpkgdlg lcl/outputfilter lcl/packagedefs lcl/packageeditor lcl/packageintf lcl/packagelinks lcl/packagesystem lcl/pascalparsertool lcl/pascalreadertool lcl/pkglinksdlg lcl/pkgmanager lcl/ppucodetools lcl/ppuparser lcl/processdebugger lcl/project lcl/project_misc_options lcl/projectdefs lcl/projecticon lcl/projectintf lcl/projectresources lcl/propedits lcl/resourcecodetool lcl/restrictionbrowser lcl/runparamsopts lcl/searchfrm lcl/searchresultview lcl/showcompileropts lcl/sourcechanger lcl/sourceeditor lcl/sourceeditprocs lcl/sourcefilemanager lcl/sourcelog lcl/sshgdbmidebugger lcl/stdcodetools lcl/stdctrls lcl/synbeautifier lcl/synedit lcl/syneditfoldedview lcl/synedithighlighter lcl/synedithighlighterfoldbase lcl/syneditkeycmds lcl/syneditmarkupifdef lcl/syneditmiscclasses lcl/syneditmousecmds lcl/syneditsearch lcl/synedittextbuffer lcl/synedittexttrimmer lcl/synexporthtml lcl/synguttercodefolding lcl/synhighlighterany lcl/synhighlightercpp lcl/synhighlighterpas lcl/synmacrorecorder lcl/synregexpr lcl/syntextdrawer lcl/taborderdlg lcl/textstrings lcl/threaddlg lcl/transfermacros lcl/translations lcl/unitinfodlg lcl/usedunits lcl/utf8process lcl/valedit lcl/viewunit_dlg lcl/w32versioninfo lcl/watchesdlg lcl/win32proc lcl/win32wscontrols lcl/win32wsmenus lcl/win32wsstdctrls lcl/window_options lcl/xmlpropstorage 

**bin/lazarus/units**:
i386-freebsd none (2026-10-12);
i386-go32v2 none (2026-10-13);
i386-darwin none (2026-10-16);
i386-linux none (2026-10-13);
i386-win32 51 of 199;
x86_64-linux none (2026-10-27);
