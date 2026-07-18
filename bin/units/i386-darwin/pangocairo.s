# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_PANGOCAIRO_PANGO_TYPE_CAIRO_FONT$$LONGWORD
_PANGOCAIRO_PANGO_TYPE_CAIRO_FONT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_cairo_font_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGOCAIRO_PANGO_CAIRO_FONT$POINTER$$POINTER
_PANGOCAIRO_PANGO_CAIRO_FONT$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGOCAIRO_PANGO_TYPE_CAIRO_FONT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGOCAIRO_PANGO_IS_CAIRO_FONT$POINTER$$BOOLEAN
_PANGOCAIRO_PANGO_IS_CAIRO_FONT$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGOCAIRO_PANGO_TYPE_CAIRO_FONT$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PANGOCAIRO_PANGO_TYPE_CAIRO_FONT_MAP$$LONGWORD
_PANGOCAIRO_PANGO_TYPE_CAIRO_FONT_MAP$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pango_cairo_font_map_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGOCAIRO_PANGO_CAIRO_FONT_MAP$POINTER$$POINTER
_PANGOCAIRO_PANGO_CAIRO_FONT_MAP$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGOCAIRO_PANGO_TYPE_CAIRO_FONT_MAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PANGOCAIRO_PANGO_IS_CAIRO_FONT_MAP$POINTER$$BOOLEAN
_PANGOCAIRO_PANGO_IS_CAIRO_FONT_MAP$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_PANGOCAIRO_PANGO_TYPE_CAIRO_FONT_MAP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_PANGOCAIRO
_THREADVARLIST_PANGOCAIRO:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_cairo_font_get_type$stub:
.indirect_symbol _pango_cairo_font_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PANGOCAIRO_PANGO_TYPE_CAIRO_FONT$$LONGWORD$stub:
.indirect_symbol _PANGOCAIRO_PANGO_TYPE_CAIRO_FONT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pango_cairo_font_map_get_type$stub:
.indirect_symbol _pango_cairo_font_map_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PANGOCAIRO_PANGO_TYPE_CAIRO_FONT_MAP$$LONGWORD$stub:
.indirect_symbol _PANGOCAIRO_PANGO_TYPE_CAIRO_FONT_MAP$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_PANGOCAIRO_PANGOCAIROSHAPERENDERERFUNC
_INIT_PANGOCAIRO_PANGOCAIROSHAPERENDERERFUNC:
	.byte	23,27
	.ascii	"PangoCairoShapeRendererFunc"

.const_data
	.align 2
.globl	_RTTI_PANGOCAIRO_PANGOCAIROSHAPERENDERERFUNC
_RTTI_PANGOCAIRO_PANGOCAIROSHAPERENDERERFUNC:
	.byte	23,27
	.ascii	"PangoCairoShapeRendererFunc"
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame
# End asmlist al_dwarf_frame
# Begin asmlist al_dwarf_info
# End asmlist al_dwarf_info
# Begin asmlist al_dwarf_abbrev
# End asmlist al_dwarf_abbrev
# Begin asmlist al_dwarf_line
# End asmlist al_dwarf_line
# Begin asmlist al_picdata
# End asmlist al_picdata
# Begin asmlist al_resourcestrings
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

