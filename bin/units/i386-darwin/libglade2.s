# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_LIBGLADE2_GLADE_GNOME_INIT
_LIBGLADE2_GLADE_GNOME_INIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_glade_init$stub
	leave
	ret

.text
	.align 4
.globl	_LIBGLADE2_GLADE_BONOBO_INIT
_LIBGLADE2_GLADE_BONOBO_INIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_glade_init$stub
	leave
	ret

.text
	.align 4
.globl	_LIBGLADE2_GLADE_XML_NEW_WITH_DOMAIN$PCHAR$PCHAR$PCHAR$$PGLADEXML
_LIBGLADE2_GLADE_XML_NEW_WITH_DOMAIN$PCHAR$PCHAR$PCHAR$$PGLADEXML:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_glade_xml_new$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_LIBGLADE2_GLADE_XML_NEW_FROM_MEMORY$PCHAR$LONGINT$PCHAR$PCHAR$$PGLADEXML
_LIBGLADE2_GLADE_XML_NEW_FROM_MEMORY$PCHAR$LONGINT$PCHAR$PCHAR$$PGLADEXML:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_glade_xml_new_from_buffer$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_LIBGLADE2_GLADE_TYPE_XML$$LONGWORD
_LIBGLADE2_GLADE_TYPE_XML$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_glade_xml_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_LIBGLADE2_GLADE_XML$POINTER$$PGLADEXML
_LIBGLADE2_GLADE_XML$POINTER$$PGLADEXML:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_LIBGLADE2_GLADE_TYPE_XML$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_LIBGLADE2_GLADE_XML_CLASS$POINTER$$PGLADEXMLCLASS
_LIBGLADE2_GLADE_XML_CLASS$POINTER$$PGLADEXMLCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_LIBGLADE2_GLADE_TYPE_XML$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_LIBGLADE2_GLADE_IS_XML$POINTER$$BOOLEAN32
_LIBGLADE2_GLADE_IS_XML$POINTER$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_LIBGLADE2_GLADE_TYPE_XML$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	orb	%al,%al
	setneb	%al
	movzbl	%al,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_LIBGLADE2_GLADE_IS_XML_CLASS$POINTER$$BOOLEAN32
_LIBGLADE2_GLADE_IS_XML_CLASS$POINTER$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_LIBGLADE2_GLADE_TYPE_XML$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	orb	%al,%al
	setneb	%al
	movzbl	%al,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_LIBGLADE2_GLADE_XML_GET_CLASS$POINTER$$PGLADEXMLCLASS
_LIBGLADE2_GLADE_XML_GET_CLASS$POINTER$$PGLADEXMLCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_LIBGLADE2_GLADE_TYPE_XML$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_LIBGLADE2
_THREADVARLIST_LIBGLADE2:
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

L_glade_init$stub:
.indirect_symbol _glade_init
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_glade_xml_new$stub:
.indirect_symbol _glade_xml_new
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_glade_xml_new_from_buffer$stub:
.indirect_symbol _glade_xml_new_from_buffer
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_glade_xml_get_type$stub:
.indirect_symbol _glade_xml_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_LIBGLADE2_GLADE_TYPE_XML$$LONGWORD$stub:
.indirect_symbol _LIBGLADE2_GLADE_TYPE_XML$$LONGWORD
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

L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER
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

L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub:
.indirect_symbol _GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS
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
.globl	_INIT_LIBGLADE2_PLONGINT
_INIT_LIBGLADE2_PLONGINT:
	.byte	0
	.ascii	"\010PLongint"

.const_data
	.align 2
.globl	_RTTI_LIBGLADE2_PLONGINT
_RTTI_LIBGLADE2_PLONGINT:
	.byte	0
	.ascii	"\010PLongint"

.const_data
	.align 2
.globl	_INIT_LIBGLADE2_PSMALLINT
_INIT_LIBGLADE2_PSMALLINT:
	.byte	0
	.ascii	"\011PSmallInt"

.const_data
	.align 2
.globl	_RTTI_LIBGLADE2_PSMALLINT
_RTTI_LIBGLADE2_PSMALLINT:
	.byte	0
	.ascii	"\011PSmallInt"

.const_data
	.align 2
.globl	_INIT_LIBGLADE2_PBYTE
_INIT_LIBGLADE2_PBYTE:
	.byte	0
	.ascii	"\005PByte"

.const_data
	.align 2
.globl	_RTTI_LIBGLADE2_PBYTE
_RTTI_LIBGLADE2_PBYTE:
	.byte	0
	.ascii	"\005PByte"

.const_data
	.align 2
.globl	_INIT_LIBGLADE2_PWORD
_INIT_LIBGLADE2_PWORD:
	.byte	0
	.ascii	"\005PWord"

.const_data
	.align 2
.globl	_RTTI_LIBGLADE2_PWORD
_RTTI_LIBGLADE2_PWORD:
	.byte	0
	.ascii	"\005PWord"

.const_data
	.align 2
.globl	_INIT_LIBGLADE2_PDWORD
_INIT_LIBGLADE2_PDWORD:
	.byte	0
	.ascii	"\006PDWord"

.const_data
	.align 2
.globl	_RTTI_LIBGLADE2_PDWORD
_RTTI_LIBGLADE2_PDWORD:
	.byte	0
	.ascii	"\006PDWord"

.const_data
	.align 2
.globl	_INIT_LIBGLADE2_PDOUBLE
_INIT_LIBGLADE2_PDOUBLE:
	.byte	0
	.ascii	"\007PDouble"

.const_data
	.align 2
.globl	_RTTI_LIBGLADE2_PDOUBLE
_RTTI_LIBGLADE2_PDOUBLE:
	.byte	0
	.ascii	"\007PDouble"

.const_data
	.align 2
.globl	_INIT_LIBGLADE2_PGLADEXML
_INIT_LIBGLADE2_PGLADEXML:
	.byte	0
	.ascii	"\011PGladeXML"

.const_data
	.align 2
.globl	_RTTI_LIBGLADE2_PGLADEXML
_RTTI_LIBGLADE2_PGLADEXML:
	.byte	0
	.ascii	"\011PGladeXML"

.const_data
	.align 2
.globl	_INIT_LIBGLADE2_TGLADEXML
_INIT_LIBGLADE2_TGLADEXML:
	.byte	13,9
	.ascii	"TGladeXML"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_LIBGLADE2_TGLADEXML
_RTTI_LIBGLADE2_TGLADEXML:
	.byte	13,9
	.ascii	"TGladeXML"
	.long	20,3
	.long	_RTTI_GLIB2_TGOBJECT
	.long	0
	.long	_RTTI_SYSTEM_PCHAR
	.long	12
	.long	_RTTI_SYSTEM_POINTER
	.long	16

.const_data
	.align 2
.globl	_INIT_LIBGLADE2_PGLADEXMLCLASS
_INIT_LIBGLADE2_PGLADEXMLCLASS:
	.byte	0
	.ascii	"\016PGladeXMLClass"

.const_data
	.align 2
.globl	_RTTI_LIBGLADE2_PGLADEXMLCLASS
_RTTI_LIBGLADE2_PGLADEXMLCLASS:
	.byte	0
	.ascii	"\016PGladeXMLClass"

.const_data
	.align 2
.globl	_INIT_LIBGLADE2_TGLADEXMLCLASS
_INIT_LIBGLADE2_TGLADEXMLCLASS:
	.byte	13,14
	.ascii	"TGladeXMLClass"
	.long	68,0

.const_data
	.align 2
.globl	_RTTI_LIBGLADE2_TGLADEXMLCLASS
_RTTI_LIBGLADE2_TGLADEXMLCLASS:
	.byte	13,14
	.ascii	"TGladeXMLClass"
	.long	68,1
	.long	_RTTI_GLIB2_TGOBJECTCLASS
	.long	0

.const_data
	.align 2
.globl	_INIT_LIBGLADE2_TGLADEXMLCONNECTFUNC
_INIT_LIBGLADE2_TGLADEXMLCONNECTFUNC:
	.byte	23,20
	.ascii	"TGladeXMLConnectFunc"

.const_data
	.align 2
.globl	_RTTI_LIBGLADE2_TGLADEXMLCONNECTFUNC
_RTTI_LIBGLADE2_TGLADEXMLCONNECTFUNC:
	.byte	23,20
	.ascii	"TGladeXMLConnectFunc"

.const_data
	.align 2
.globl	_INIT_LIBGLADE2_PGLADEXMLCUSTOMWIDGETHANDLER
_INIT_LIBGLADE2_PGLADEXMLCUSTOMWIDGETHANDLER:
	.byte	0
	.ascii	"\034PGladeXMLCustomWidgetHandler"

.const_data
	.align 2
.globl	_RTTI_LIBGLADE2_PGLADEXMLCUSTOMWIDGETHANDLER
_RTTI_LIBGLADE2_PGLADEXMLCUSTOMWIDGETHANDLER:
	.byte	0
	.ascii	"\034PGladeXMLCustomWidgetHandler"
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

