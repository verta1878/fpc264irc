# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPWRITETGA_TFPWRITERTARGA_$__SAVEHEADER$TSTREAM$TFPCUSTOMIMAGE$$BOOLEAN
_FPWRITETGA_TFPWRITERTARGA_$__SAVEHEADER$TSTREAM$TFPCUSTOMIMAGE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-336(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-332(%ebp)
	leal	-300(%ebp),%ecx
	leal	-324(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-328(%ebp)
	testl	%eax,%eax
	jne	Lj5
	movb	$0,-13(%ebp)
	leal	-332(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	leal	-332(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$FPWRITETGA$_Ld1$non_lazy_ptr-Lj4(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-332(%ebp),%ecx
	leal	-287(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-31(%ebp),%eax
	movb	$0,%cl
	movl	$18,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movb	-287(%ebp),%al
	movb	%al,-31(%ebp)
	movb	$0,-30(%ebp)
	movb	$2,-29(%ebp)
	movw	$0,%ax
	call	L_TARGACMN_FROMWORD$WORD$$TWORDREC$stub
	movw	%ax,-28(%ebp)
	movw	$0,%ax
	call	L_TARGACMN_FROMWORD$WORD$$TWORDREC$stub
	movw	%ax,-26(%ebp)
	movb	$0,-24(%ebp)
	movw	$0,%ax
	call	L_TARGACMN_FROMWORD$WORD$$TWORDREC$stub
	movw	%ax,-23(%ebp)
	movw	$0,%ax
	call	L_TARGACMN_FROMWORD$WORD$$TWORDREC$stub
	movw	%ax,-21(%ebp)
	movl	-8(%ebp),%eax
	movw	32(%eax),%ax
	call	L_TARGACMN_FROMWORD$WORD$$TWORDREC$stub
	movw	%ax,-19(%ebp)
	movl	-8(%ebp),%eax
	movw	28(%eax),%ax
	call	L_TARGACMN_FROMWORD$WORD$$TWORDREC$stub
	movw	%ax,-17(%ebp)
	movb	$24,-15(%ebp)
	movb	$32,-14(%ebp)
	leal	-31(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$18,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movzbl	-31(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj70
	jmp	Lj71
Lj70:
	movzbl	-31(%ebp),%ecx
	leal	-286(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
Lj71:
	movb	$1,-13(%ebp)
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-332(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	movl	-328(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movb	-13(%ebp),%al
	movl	-336(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITETGA_TFPWRITERTARGA_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
_FPWRITETGA_TFPWRITERTARGA_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	imull	$3,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	leal	-28(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	leal	-52(%ebp),%ecx
	leal	-76(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-80(%ebp)
	testl	%eax,%eax
	jne	Lj94
	movl	-8(%ebp),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj99
	decl	-16(%ebp)
	.align 2
Lj100:
	incl	-16(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%esi
	decl	%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj104
	decl	-20(%ebp)
	.align 2
Lj105:
	incl	-20(%ebp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-88(%ebp)
	movl	%edx,-84(%ebp)
	movl	-88(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-84(%ebp),%eax
	movl	%eax,-36(%ebp)
	movzwl	-36(%ebp),%eax
	shrl	$8,%eax
	movl	-32(%ebp),%edx
	movb	%al,(%edx)
	incl	-32(%ebp)
	movzwl	-38(%ebp),%eax
	shrl	$8,%eax
	movl	-32(%ebp),%edx
	movb	%al,(%edx)
	incl	-32(%ebp)
	movzwl	-40(%ebp),%eax
	shrl	$8,%eax
	movl	-32(%ebp),%edx
	movb	%al,(%edx)
	incl	-32(%ebp)
	cmpl	-20(%ebp),%esi
	jg	Lj105
Lj104:
	movl	-28(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*132(%esi)
	cmpl	-16(%ebp),%ebx
	jg	Lj100
Lj99:
Lj94:
	call	LFPC_POPADDRSTACK$stub
	movl	-28(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-80(%ebp),%eax
	testl	%eax,%eax
	je	Lj95
	decl	%eax
	testl	%eax,%eax
	je	Lj96
Lj96:
	call	LFPC_RERAISE$stub
Lj95:
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPWRITETGA
_INIT$_FPWRITETGA:
.reference __FPWRITETGA_init
.globl	__FPWRITETGA_init
__FPWRITETGA_init:
.reference _INIT$_FPWRITETGA
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPWRITETGA_TFPWRITERTARGA$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPWRITETGA$_Ld3$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_$FPWRITETGA$_Ld5$non_lazy_ptr-Lj2(%ebx),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPWRITETGA$_Ld7
_$FPWRITETGA$_Ld7:
	.byte	14
	.ascii	"TFPWriterTarga"

.const_data
	.align 2
.globl	_VMT_FPWRITETGA_TFPWRITERTARGA
_VMT_FPWRITETGA_TFPWRITERTARGA:
	.long	20,-20
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEWRITER
	.long	_$FPWRITETGA$_Ld7
	.long	0,0
	.long	_$FPWRITETGA$_Ld8
	.long	_RTTI_FPWRITETGA_TFPWRITERTARGA
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_SYSTEM_TOBJECT_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER
	.long	_FPWRITETGA_TFPWRITERTARGA_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
	.long	_FPWRITETGA_TFPWRITERTARGA_$__SAVEHEADER$TSTREAM$TFPCUSTOMIMAGE$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPWRITETGA
_THREADVARLIST_FPWRITETGA:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPWRITETGA$_Ld2
_$FPWRITETGA$_Ld2:
	.short	0,1
	.long	0,-1,2
.reference _$FPWRITETGA$_Ld1
.globl	_$FPWRITETGA$_Ld1
_$FPWRITETGA$_Ld1:
.reference _$FPWRITETGA$_Ld2
	.ascii	"ID\000"

.const_data
	.align 2
.globl	_$FPWRITETGA$_Ld4
_$FPWRITETGA$_Ld4:
	.short	0,1
	.long	0,-1,3
.reference _$FPWRITETGA$_Ld3
.globl	_$FPWRITETGA$_Ld3
_$FPWRITETGA$_Ld3:
.reference _$FPWRITETGA$_Ld4
	.ascii	"tga\000"

.const_data
	.align 2
.globl	_$FPWRITETGA$_Ld6
_$FPWRITETGA$_Ld6:
	.short	0,1
	.long	0,-1,12
.reference _$FPWRITETGA$_Ld5
.globl	_$FPWRITETGA$_Ld5
_$FPWRITETGA$_Ld5:
.reference _$FPWRITETGA$_Ld6
	.ascii	"TARGA Format\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PUSHEXCEPTADDR$stub:
.indirect_symbol FPC_PUSHEXCEPTADDR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SETJMP$stub:
.indirect_symbol FPC_SETJMP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_to_shortstr$stub:
.indirect_symbol fpc_ansistr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TARGACMN_FROMWORD$WORD$$TWORDREC$stub:
.indirect_symbol _TARGACMN_FROMWORD$WORD$$TWORDREC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPADDRSTACK$stub:
.indirect_symbol FPC_POPADDRSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RERAISE$stub:
.indirect_symbol FPC_RERAISE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90$stub:
.indirect_symbol _FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90
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
.globl	_$FPWRITETGA$_Ld8
_$FPWRITETGA$_Ld8:
	.short	0
	.long	_$FPWRITETGA$_Ld9
	.align 2
.globl	_$FPWRITETGA$_Ld9
_$FPWRITETGA$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPWRITETGA_TFPWRITERTARGA
_INIT_FPWRITETGA_TFPWRITERTARGA:
	.byte	15,14
	.ascii	"TFPWriterTarga"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPWRITETGA_TFPWRITERTARGA
_RTTI_FPWRITETGA_TFPWRITERTARGA:
	.byte	15,14
	.ascii	"TFPWriterTarga"
	.long	_VMT_FPWRITETGA_TFPWRITERTARGA
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEWRITER
	.short	0
	.byte	10
	.ascii	"FPWriteTGA"
	.short	0
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

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETGA$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPWRITETGA$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPWRITETGA_TFPWRITERTARGA$non_lazy_ptr:
.indirect_symbol _VMT_FPWRITETGA_TFPWRITERTARGA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETGA$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPWRITETGA$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETGA$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPWRITETGA$_Ld5
	.long	0
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

