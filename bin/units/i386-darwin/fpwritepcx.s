# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPWRITEPCX_TFPWRITERPCX_$__SAVEHEADER$TSTREAM$TFPCUSTOMIMAGE$$BOOLEAN
_FPWRITEPCX_TFPWRITERPCX_$__SAVEHEADER$TSTREAM$TFPCUSTOMIMAGE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-13(%ebp)
	leal	-142(%ebp),%eax
	movb	$0,%cl
	movl	$128,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movb	$10,-142(%ebp)
	movb	$5,-141(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj17
	jmp	Lj18
Lj17:
	movb	$1,-140(%ebp)
	jmp	Lj21
Lj18:
	movb	$0,-140(%ebp)
Lj21:
	movb	$8,-139(%ebp)
	movw	$0,-138(%ebp)
	movw	$0,-136(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	decl	%eax
	movw	%ax,-134(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movw	%ax,-132(%ebp)
	movw	$300,-130(%ebp)
	movw	$300,-128(%ebp)
	movb	$3,-77(%ebp)
	movl	-8(%ebp),%eax
	movw	32(%eax),%ax
	movw	%ax,-76(%ebp)
	movw	$1,-74(%ebp)
	leal	-142(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$128,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movb	$1,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPCX_TFPWRITERPCX_$__WRITELINE$TSTREAM$PBYTE$LONGINT
_FPWRITEPCX_TFPWRITERPCX_$__WRITELINE$TSTREAM$PBYTE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj57
	.align 2
Lj56:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-13(%ebp)
	incl	-20(%ebp)
	decl	8(%ebp)
	movb	$1,-14(%ebp)
	jmp	Lj64
	.align 2
Lj63:
	incb	-14(%ebp)
	incl	-20(%ebp)
	decl	8(%ebp)
Lj64:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj67
	jmp	Lj65
Lj67:
	movzbl	-14(%ebp),%eax
	cmpl	$63,%eax
	jl	Lj66
	jmp	Lj65
Lj66:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	cmpb	-13(%ebp),%al
	je	Lj63
	jmp	Lj65
Lj65:
	movb	-13(%ebp),%al
	cmpb	$192,%al
	jb	Lj70
	jmp	Lj69
Lj70:
	movzbl	-14(%ebp),%eax
	cmpl	$1,%eax
	je	Lj68
	jmp	Lj69
Lj68:
	leal	-13(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	jmp	Lj77
Lj69:
	movzbl	-14(%ebp),%eax
	addl	$192,%eax
	movb	%al,-15(%ebp)
	leal	-15(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	leal	-13(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj77:
Lj57:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj56
	jmp	Lj58
Lj58:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPCX_TFPWRITERPCX_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
_FPWRITEPCX_TFPWRITERPCX_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-136(%ebp)
	movl	%esi,-132(%ebp)
	movl	%edi,-128(%ebp)
	call	Lj93
Lj93:
	popl	-124(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	movb	$1,-45(%ebp)
	movl	$0,-44(%ebp)
	movl	$0,4(%esp)
	movb	$0,12(%esp)
	leal	-45(%ebp),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$0,%ebx
	movl	-12(%ebp),%edx
	movl	(%edx),%esi
	movl	%ebx,%edx
	call	*100(%esi)
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
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	28(%eax),%ecx
	movl	32(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-44(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj134
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edi
	jl	Lj139
	decl	-16(%ebp)
	.align 2
Lj140:
	incl	-16(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj144
	decl	-20(%ebp)
	.align 2
Lj145:
	incl	-20(%ebp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-112(%ebp)
	movl	%edx,-108(%ebp)
	movl	-112(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-108(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	shll	$1,%eax
	movl	-20(%ebp),%ecx
	addl	%ecx,%eax
	movl	%eax,%ecx
	movzwl	-36(%ebp),%eax
	shrl	$8,%eax
	movb	%al,(%edx,%ecx,1)
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-20(%ebp),%ecx
	addl	%ecx,%eax
	movl	%eax,%ecx
	movzwl	-38(%ebp),%eax
	shrl	$8,%eax
	movb	%al,(%edx,%ecx,1)
	movl	-32(%ebp),%ecx
	movl	-20(%ebp),%edx
	movzwl	-40(%ebp),%eax
	shrl	$8,%eax
	movb	%al,(%ecx,%edx,1)
	movl	$0,4(%esp)
	movb	$0,12(%esp)
	leal	-45(%ebp),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	movl	%eax,8(%esp)
	fnstcw	-108(%ebp)
	fnstcw	-106(%ebp)
	orw	$3840,-108(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	imull	%eax,%edx
	movl	%edx,-112(%ebp)
	fildl	-112(%ebp)
	fildl	-44(%ebp)
	fdivrp	%st,%st(1)
	movl	-124(%ebp),%edx
	movl	L_$FPWRITEPCX$_Ld1$non_lazy_ptr-Lj93(%edx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-108(%ebp)
	fistpq	-120(%ebp)
	fldcw	-106(%ebp)
	fwait
	movb	-120(%ebp),%cl
	movl	-12(%ebp),%eax
	movl	$1,%edx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*100(%esi)
	movb	-45(%ebp),%al
	testb	%al,%al
	je	Lj174
	jmp	Lj175
Lj174:
	jmp	Lj137
Lj175:
	cmpl	-20(%ebp),%ebx
	jg	Lj145
Lj144:
	movl	-12(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj176
	jmp	Lj177
Lj176:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPWRITEPCX_TFPWRITERPCX_$__WRITELINE$TSTREAM$PBYTE$LONGINT$stub
	jmp	Lj186
Lj177:
	movl	-28(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj186:
	cmpl	-16(%ebp),%edi
	jg	Lj140
Lj139:
	movl	$0,4(%esp)
	movb	$0,12(%esp)
	leal	-45(%ebp),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movb	$100,%cl
	movl	$2,%ebx
	movl	-12(%ebp),%edx
	movl	(%edx),%esi
	movl	%ebx,%edx
	call	*100(%esi)
Lj134:
	call	LFPC_POPADDRSTACK$stub
	movl	-28(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj135
	decl	%eax
	testl	%eax,%eax
	je	Lj136
	decl	%eax
	testl	%eax,%eax
	je	Lj92
Lj136:
	call	LFPC_RERAISE$stub
Lj137:
	movl	-104(%ebp),%eax
	movl	$2,-104(%ebp)
	jmp	Lj134
Lj135:
Lj92:
	movl	-136(%ebp),%ebx
	movl	-132(%ebp),%esi
	movl	-128(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPWRITEPCX
_INIT$_FPWRITEPCX:
.reference __FPWRITEPCX_init
.globl	__FPWRITEPCX_init
__FPWRITEPCX_init:
.reference _INIT$_FPWRITEPCX
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPWRITEPCX_TFPWRITERPCX$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPWRITEPCX$_Ld2$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_$FPWRITEPCX$_Ld4$non_lazy_ptr-Lj2(%ebx),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPWRITEPCX$_Ld6
_$FPWRITEPCX$_Ld6:
	.byte	12
	.ascii	"TFPWriterPCX"

.const_data
	.align 2
.globl	_VMT_FPWRITEPCX_TFPWRITERPCX
_VMT_FPWRITEPCX_TFPWRITERPCX:
	.long	24,-24
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEWRITER
	.long	_$FPWRITEPCX$_Ld6
	.long	0,0
	.long	_$FPWRITEPCX$_Ld7
	.long	_RTTI_FPWRITEPCX_TFPWRITERPCX
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
	.long	_FPWRITEPCX_TFPWRITERPCX_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
	.long	_FPWRITEPCX_TFPWRITERPCX_$__SAVEHEADER$TSTREAM$TFPCUSTOMIMAGE$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPWRITEPCX
_THREADVARLIST_FPWRITEPCX:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 3
.globl	_$FPWRITEPCX$_Ld1
_$FPWRITEPCX$_Ld1:
	.byte	0,0,0,0,0,0,0,200,5,64

.const_data
	.align 2
.globl	_$FPWRITEPCX$_Ld3
_$FPWRITEPCX$_Ld3:
	.short	0,1
	.long	0,-1,3
.reference _$FPWRITEPCX$_Ld2
.globl	_$FPWRITEPCX$_Ld2
_$FPWRITEPCX$_Ld2:
.reference _$FPWRITEPCX$_Ld3
	.ascii	"pcx\000"

.const_data
	.align 2
.globl	_$FPWRITEPCX$_Ld5
_$FPWRITEPCX$_Ld5:
	.short	0,1
	.long	0,-1,10
.reference _$FPWRITEPCX$_Ld4
.globl	_$FPWRITEPCX$_Ld4
_$FPWRITEPCX$_Ld4:
.reference _$FPWRITEPCX$_Ld5
	.ascii	"PCX Format\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
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

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

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

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPCX_TFPWRITERPCX_$__WRITELINE$TSTREAM$PBYTE$LONGINT$stub:
.indirect_symbol _FPWRITEPCX_TFPWRITERPCX_$__WRITELINE$TSTREAM$PBYTE$LONGINT
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
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
.globl	_$FPWRITEPCX$_Ld7
_$FPWRITEPCX$_Ld7:
	.short	0
	.long	_$FPWRITEPCX$_Ld8
	.align 2
.globl	_$FPWRITEPCX$_Ld8
_$FPWRITEPCX$_Ld8:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPWRITEPCX_TFPWRITERPCX
_INIT_FPWRITEPCX_TFPWRITERPCX:
	.byte	15,12
	.ascii	"TFPWriterPCX"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPWRITEPCX_TFPWRITERPCX
_RTTI_FPWRITEPCX_TFPWRITERPCX:
	.byte	15,12
	.ascii	"TFPWriterPCX"
	.long	_VMT_FPWRITEPCX_TFPWRITERPCX
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEWRITER
	.short	0
	.byte	10
	.ascii	"FPWritePCX"
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
L_$FPWRITEPCX$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPWRITEPCX$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPWRITEPCX_TFPWRITERPCX$non_lazy_ptr:
.indirect_symbol _VMT_FPWRITEPCX_TFPWRITERPCX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPCX$_Ld2$non_lazy_ptr:
.indirect_symbol _$FPWRITEPCX$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPCX$_Ld4$non_lazy_ptr:
.indirect_symbol _$FPWRITEPCX$_Ld4
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

