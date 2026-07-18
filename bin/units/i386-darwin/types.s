# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_TYPES_EQUALRECT$TRECT$TRECT$$BOOLEAN
_TYPES_EQUALRECT$TRECT$TRECT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	je	Lj9
	jmp	Lj6
Lj9:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	8(%edx),%eax
	je	Lj8
	jmp	Lj6
Lj8:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	4(%edx),%eax
	je	Lj7
	jmp	Lj6
Lj7:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	12(%edx),%eax
	je	Lj5
	jmp	Lj6
Lj5:
	movb	$1,-9(%ebp)
	jmp	Lj10
Lj6:
	movb	$0,-9(%ebp)
Lj10:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_TYPES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT
_TYPES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	movl	8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,4(%eax)
	movl	8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_TYPES_BOUNDS$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT
_TYPES_BOUNDS$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	movl	8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	8(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-8(%ebp),%edx
	movl	12(%ebp),%eax
	addl	%eax,%edx
	movl	8(%ebp),%eax
	movl	%edx,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_TYPES_POINT$LONGINT$LONGINT$$TPOINT
_TYPES_POINT$LONGINT$LONGINT$$TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_TYPES_PTINRECT$TRECT$TPOINT$$BOOLEAN
_TYPES_PTINRECT$TRECT$TPOINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	4(%edx),%eax
	jge	Lj43
	jmp	Lj40
Lj43:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	12(%edx),%eax
	jl	Lj42
	jmp	Lj40
Lj42:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	jge	Lj41
	jmp	Lj40
Lj41:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%eax
	cmpl	8(%edx),%eax
	jl	Lj39
	jmp	Lj40
Lj39:
	movb	$1,-9(%ebp)
	jmp	Lj44
Lj40:
	movb	$0,-9(%ebp)
Lj44:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_TYPES_INTERSECTRECT$TRECT$TRECT$TRECT$$BOOLEAN
_TYPES_INTERSECTRECT$TRECT$TRECT$TRECT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%esi
	leal	-32(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	jg	Lj49
	jmp	Lj50
Lj49:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
Lj50:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	4(%edx),%eax
	jg	Lj53
	jmp	Lj54
Lj53:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
Lj54:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	8(%edx),%eax
	jl	Lj57
	jmp	Lj58
Lj57:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
Lj58:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	12(%edx),%eax
	jl	Lj61
	jmp	Lj62
Lj61:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
Lj62:
	leal	-32(%ebp),%eax
	call	L_TYPES_ISRECTEMPTY$TRECT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj65
	jmp	Lj66
Lj65:
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$16,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movb	$0,-13(%ebp)
	jmp	Lj77
Lj66:
	movb	$1,-13(%ebp)
	movl	-4(%ebp),%edi
	leal	-32(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
Lj77:
	movb	-13(%ebp),%al
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_TYPES_UNIONRECT$TRECT$TRECT$TRECT$$BOOLEAN
_TYPES_UNIONRECT$TRECT$TRECT$TRECT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%esi
	leal	-32(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	jl	Lj86
	jmp	Lj87
Lj86:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
Lj87:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	4(%edx),%eax
	jl	Lj90
	jmp	Lj91
Lj90:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
Lj91:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	8(%edx),%eax
	jg	Lj94
	jmp	Lj95
Lj94:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
Lj95:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	12(%edx),%eax
	jg	Lj98
	jmp	Lj99
Lj98:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
Lj99:
	leal	-32(%ebp),%eax
	call	L_TYPES_ISRECTEMPTY$TRECT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj102
	jmp	Lj103
Lj102:
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$16,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movb	$0,-13(%ebp)
	jmp	Lj114
Lj103:
	movl	-4(%ebp),%edi
	leal	-32(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movb	$1,-13(%ebp)
Lj114:
	movb	-13(%ebp),%al
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_TYPES_ISRECTEMPTY$TRECT$$BOOLEAN
_TYPES_ISRECTEMPTY$TRECT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	(%edx),%eax
	jle	Lj121
	jmp	Lj123
Lj123:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	4(%edx),%eax
	jle	Lj121
	jmp	Lj122
Lj121:
	movb	$1,-5(%ebp)
	jmp	Lj124
Lj122:
	movb	$0,-5(%ebp)
Lj124:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_TYPES_OFFSETRECT$TRECT$LONGINT$LONGINT$$BOOLEAN
_TYPES_OFFSETRECT$TRECT$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj127
	jmp	Lj128
Lj127:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,12(%eax)
	movb	$1,-13(%ebp)
	jmp	Lj131
Lj128:
	movb	$0,-13(%ebp)
Lj131:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_TYPES_AVG$LONGINT$LONGINT$$LONGINT
_TYPES_AVG$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj136
	jmp	Lj137
Lj136:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	subl	%edx,%eax
	shrl	$1,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj140
Lj137:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	shrl	$1,%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj140:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TYPES_CENTERPOINT$TRECT$$TPOINT
_TYPES_CENTERPOINT$TRECT$$TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_TYPES_AVG$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_TYPES_AVG$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_TYPES_INFLATERECT$TRECT$LONGINT$LONGINT$$BOOLEAN
_TYPES_INFLATERECT$TRECT$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj159
	jmp	Lj160
Lj159:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	subl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,12(%eax)
	movb	$1,-13(%ebp)
	jmp	Lj163
Lj160:
	movb	$0,-13(%ebp)
Lj163:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_TYPES_SIZE$LONGINT$LONGINT$$TSIZE
_TYPES_SIZE$LONGINT$LONGINT$$TSIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_TYPES_SIZE$TRECT$$TSIZE
_TYPES_SIZE$TRECT$$TSIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	8(%eax),%edx
	movl	(%ecx),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	12(%eax),%edx
	movl	4(%ecx),%eax
	subl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_IID_TYPES_ICLASSFACTORY
_IID_TYPES_ICLASSFACTORY:
	.long	1
	.short	0,0
	.byte	192,0,0,0,0,0,0,70

.const_data
.globl	_IIDSTR_TYPES_ICLASSFACTORY
_IIDSTR_TYPES_ICLASSFACTORY:
	.byte	38
	.ascii	"{00000001-0000-0000-C000-000000000046}"

.const_data
	.align 2
.globl	_IID_TYPES_ISEQUENTIALSTREAM
_IID_TYPES_ISEQUENTIALSTREAM:
	.long	208878128
	.short	10780,4558
	.byte	173,229,0,170,0,68,119,61

.const_data
.globl	_IIDSTR_TYPES_ISEQUENTIALSTREAM
_IIDSTR_TYPES_ISEQUENTIALSTREAM:
	.byte	38
	.ascii	"{0c733a30-2a1c-11ce-ade5-00aa0044773d}"

.const_data
	.align 2
.globl	_IID_TYPES_ISTREAM
_IID_TYPES_ISTREAM:
	.long	12
	.short	0,0
	.byte	192,0,0,0,0,0,0,70

.const_data
.globl	_IIDSTR_TYPES_ISTREAM
_IIDSTR_TYPES_ISTREAM:
	.byte	38
	.ascii	"{0000000C-0000-0000-C000-000000000046}"

.data
	.align 2
.globl	_THREADVARLIST_TYPES
_THREADVARLIST_TYPES:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_TYPES_GUID_NULL
_TC_TYPES_GUID_NULL:
	.long	0
	.short	0,0
	.byte	0,0,0,0,0,0,0,0
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPES_ISRECTEMPTY$TRECT$$BOOLEAN$stub:
.indirect_symbol _TYPES_ISRECTEMPTY$TRECT$$BOOLEAN
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

L_TYPES_AVG$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _TYPES_AVG$LONGINT$LONGINT$$LONGINT
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
.globl	_INIT_TYPES_PLARGEINT
_INIT_TYPES_PLARGEINT:
	.byte	0
	.ascii	"\011PLargeInt"

.const_data
	.align 2
.globl	_RTTI_TYPES_PLARGEINT
_RTTI_TYPES_PLARGEINT:
	.byte	0
	.ascii	"\011PLargeInt"

.const_data
	.align 2
.globl	_INIT_TYPES_PLARGEUINT
_INIT_TYPES_PLARGEUINT:
	.byte	0
	.ascii	"\012PLargeuInt"

.const_data
	.align 2
.globl	_RTTI_TYPES_PLARGEUINT
_RTTI_TYPES_PLARGEUINT:
	.byte	0
	.ascii	"\012PLargeuInt"

.const_data
	.align 2
.globl	_INIT_TYPES_TINTEGERDYNARRAY
_INIT_TYPES_TINTEGERDYNARRAY:
	.byte	21
	.ascii	"\020TIntegerDynArray"
	.long	4
	.long	_INIT_SYSTEM_LONGINT
	.long	3,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_RTTI_TYPES_TINTEGERDYNARRAY
_RTTI_TYPES_TINTEGERDYNARRAY:
	.byte	21
	.ascii	"\020TIntegerDynArray"
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	3,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_INIT_TYPES_TCARDINALDYNARRAY
_INIT_TYPES_TCARDINALDYNARRAY:
	.byte	21
	.ascii	"\021TCardinalDynArray"
	.long	4
	.long	_INIT_SYSTEM_LONGWORD
	.long	19,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_RTTI_TYPES_TCARDINALDYNARRAY
_RTTI_TYPES_TCARDINALDYNARRAY:
	.byte	21
	.ascii	"\021TCardinalDynArray"
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_INIT_TYPES_TWORDDYNARRAY
_INIT_TYPES_TWORDDYNARRAY:
	.byte	21
	.ascii	"\015TWordDynArray"
	.long	2
	.long	_INIT_SYSTEM_WORD
	.long	18,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_RTTI_TYPES_TWORDDYNARRAY
_RTTI_TYPES_TWORDDYNARRAY:
	.byte	21
	.ascii	"\015TWordDynArray"
	.long	2
	.long	_RTTI_SYSTEM_WORD
	.long	18,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_INIT_TYPES_TSMALLINTDYNARRAY
_INIT_TYPES_TSMALLINTDYNARRAY:
	.byte	21
	.ascii	"\021TSmallIntDynArray"
	.long	2
	.long	_INIT_SYSTEM_SMALLINT
	.long	2,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_RTTI_TYPES_TSMALLINTDYNARRAY
_RTTI_TYPES_TSMALLINTDYNARRAY:
	.byte	21
	.ascii	"\021TSmallIntDynArray"
	.long	2
	.long	_RTTI_SYSTEM_SMALLINT
	.long	2,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_INIT_TYPES_TBYTEDYNARRAY
_INIT_TYPES_TBYTEDYNARRAY:
	.byte	21
	.ascii	"\015TByteDynArray"
	.long	1
	.long	_INIT_SYSTEM_BYTE
	.long	17,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_RTTI_TYPES_TBYTEDYNARRAY
_RTTI_TYPES_TBYTEDYNARRAY:
	.byte	21
	.ascii	"\015TByteDynArray"
	.long	1
	.long	_RTTI_SYSTEM_BYTE
	.long	17,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_INIT_TYPES_TSHORTINTDYNARRAY
_INIT_TYPES_TSHORTINTDYNARRAY:
	.byte	21
	.ascii	"\021TShortIntDynArray"
	.long	1
	.long	_INIT_SYSTEM_SHORTINT
	.long	16,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_RTTI_TYPES_TSHORTINTDYNARRAY
_RTTI_TYPES_TSHORTINTDYNARRAY:
	.byte	21
	.ascii	"\021TShortIntDynArray"
	.long	1
	.long	_RTTI_SYSTEM_SHORTINT
	.long	16,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_INIT_TYPES_TINT64DYNARRAY
_INIT_TYPES_TINT64DYNARRAY:
	.byte	21
	.ascii	"\016TInt64DynArray"
	.long	8
	.long	_INIT_SYSTEM_INT64
	.long	20,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_RTTI_TYPES_TINT64DYNARRAY
_RTTI_TYPES_TINT64DYNARRAY:
	.byte	21
	.ascii	"\016TInt64DynArray"
	.long	8
	.long	_RTTI_SYSTEM_INT64
	.long	20,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_INIT_TYPES_TQWORDDYNARRAY
_INIT_TYPES_TQWORDDYNARRAY:
	.byte	21
	.ascii	"\016TQWordDynArray"
	.long	8
	.long	_INIT_SYSTEM_QWORD
	.long	21,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_RTTI_TYPES_TQWORDDYNARRAY
_RTTI_TYPES_TQWORDDYNARRAY:
	.byte	21
	.ascii	"\016TQWordDynArray"
	.long	8
	.long	_RTTI_SYSTEM_QWORD
	.long	21,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_INIT_TYPES_TLONGWORDDYNARRAY
_INIT_TYPES_TLONGWORDDYNARRAY:
	.byte	21
	.ascii	"\021TLongWordDynArray"
	.long	4
	.long	_INIT_SYSTEM_LONGWORD
	.long	19,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_RTTI_TYPES_TLONGWORDDYNARRAY
_RTTI_TYPES_TLONGWORDDYNARRAY:
	.byte	21
	.ascii	"\021TLongWordDynArray"
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_INIT_TYPES_TSINGLEDYNARRAY
_INIT_TYPES_TSINGLEDYNARRAY:
	.byte	21
	.ascii	"\017TSingleDynArray"
	.long	4
	.long	_INIT_SYSTEM_SINGLE
	.long	4,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_RTTI_TYPES_TSINGLEDYNARRAY
_RTTI_TYPES_TSINGLEDYNARRAY:
	.byte	21
	.ascii	"\017TSingleDynArray"
	.long	4
	.long	_RTTI_SYSTEM_SINGLE
	.long	4,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_INIT_TYPES_TDOUBLEDYNARRAY
_INIT_TYPES_TDOUBLEDYNARRAY:
	.byte	21
	.ascii	"\017TDoubleDynArray"
	.long	8
	.long	_INIT_SYSTEM_DOUBLE
	.long	5,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_RTTI_TYPES_TDOUBLEDYNARRAY
_RTTI_TYPES_TDOUBLEDYNARRAY:
	.byte	21
	.ascii	"\017TDoubleDynArray"
	.long	8
	.long	_RTTI_SYSTEM_DOUBLE
	.long	5,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_INIT_TYPES_TBOOLEANDYNARRAY
_INIT_TYPES_TBOOLEANDYNARRAY:
	.byte	21
	.ascii	"\020TBooleanDynArray"
	.long	1
	.long	_INIT_SYSTEM_BOOLEAN
	.long	11,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_RTTI_TYPES_TBOOLEANDYNARRAY
_RTTI_TYPES_TBOOLEANDYNARRAY:
	.byte	21
	.ascii	"\020TBooleanDynArray"
	.long	1
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	11,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_INIT_TYPES_TSTRINGDYNARRAY
_INIT_TYPES_TSTRINGDYNARRAY:
	.byte	21
	.ascii	"\017TStringDynArray"
	.long	4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256
	.long	_INIT_SYSTEM_ANSISTRING
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_RTTI_TYPES_TSTRINGDYNARRAY
_RTTI_TYPES_TSTRINGDYNARRAY:
	.byte	21
	.ascii	"\017TStringDynArray"
	.long	4
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	256
	.long	_RTTI_SYSTEM_ANSISTRING
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_INIT_TYPES_TWIDESTRINGDYNARRAY
_INIT_TYPES_TWIDESTRINGDYNARRAY:
	.byte	21
	.ascii	"\023TWideStringDynArray"
	.long	4
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258
	.long	_INIT_SYSTEM_WIDESTRING
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_RTTI_TYPES_TWIDESTRINGDYNARRAY
_RTTI_TYPES_TWIDESTRINGDYNARRAY:
	.byte	21
	.ascii	"\023TWideStringDynArray"
	.long	4
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	258
	.long	_RTTI_SYSTEM_WIDESTRING
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_INIT_TYPES_TPOINTERDYNARRAY
_INIT_TYPES_TPOINTERDYNARRAY:
	.byte	21
	.ascii	"\020TPointerDynArray"
	.long	4
	.long	_INIT_SYSTEM_POINTER
	.long	-1,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_RTTI_TYPES_TPOINTERDYNARRAY
_RTTI_TYPES_TPOINTERDYNARRAY:
	.byte	21
	.ascii	"\020TPointerDynArray"
	.long	4
	.long	_RTTI_SYSTEM_POINTER
	.long	-1,0
	.byte	5
	.ascii	"types"

.const_data
	.align 2
.globl	_INIT_TYPES_TPOINT
_INIT_TYPES_TPOINT:
	.byte	13,6
	.ascii	"TPoint"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_TYPES_TPOINT
_RTTI_TYPES_TPOINT:
	.byte	13,6
	.ascii	"TPoint"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_TYPES_PPOINT
_INIT_TYPES_PPOINT:
	.byte	0
	.ascii	"\006PPoint"

.const_data
	.align 2
.globl	_RTTI_TYPES_PPOINT
_RTTI_TYPES_PPOINT:
	.byte	0
	.ascii	"\006PPoint"

.const_data
	.align 2
.globl	_INIT_TYPES_TRECT
_INIT_TYPES_TRECT:
	.byte	13,5
	.ascii	"TRect"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_TYPES_TRECT
_RTTI_TYPES_TRECT:
	.byte	13,5
	.ascii	"TRect"
	.long	16,6
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_TYPES_TPOINT
	.long	0
	.long	_RTTI_TYPES_TPOINT
	.long	8

.const_data
	.align 2
.globl	_INIT_TYPES_PRECT
_INIT_TYPES_PRECT:
	.byte	0
	.ascii	"\005PRect"

.const_data
	.align 2
.globl	_RTTI_TYPES_PRECT
_RTTI_TYPES_PRECT:
	.byte	0
	.ascii	"\005PRect"

.const_data
	.align 2
.globl	_INIT_TYPES_TSIZE
_INIT_TYPES_TSIZE:
	.byte	13,5
	.ascii	"TSize"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_TYPES_TSIZE
_RTTI_TYPES_TSIZE:
	.byte	13,5
	.ascii	"TSize"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_TYPES_PSIZE
_INIT_TYPES_PSIZE:
	.byte	0
	.ascii	"\005PSize"

.const_data
	.align 2
.globl	_RTTI_TYPES_PSIZE
_RTTI_TYPES_PSIZE:
	.byte	0
	.ascii	"\005PSize"

.const_data
	.align 2
.globl	_INIT_TYPES_TSMALLPOINT
_INIT_TYPES_TSMALLPOINT:
	.byte	13,11
	.ascii	"TSmallPoint"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_TYPES_TSMALLPOINT
_RTTI_TYPES_TSMALLPOINT:
	.byte	13,11
	.ascii	"TSmallPoint"
	.long	4,2
	.long	_RTTI_SYSTEM_SMALLINT
	.long	0
	.long	_RTTI_SYSTEM_SMALLINT
	.long	2

.const_data
	.align 2
.globl	_INIT_TYPES_PSMALLPOINT
_INIT_TYPES_PSMALLPOINT:
	.byte	0
	.ascii	"\013PSmallPoint"

.const_data
	.align 2
.globl	_RTTI_TYPES_PSMALLPOINT
_RTTI_TYPES_PSMALLPOINT:
	.byte	0
	.ascii	"\013PSmallPoint"

.const_data
	.align 2
.globl	_INIT_TYPES_TDUPLICATES
_INIT_TYPES_TDUPLICATES:
	.byte	3,11
	.ascii	"TDuplicates"
	.byte	5
	.long	0,2,0
	.byte	9
	.ascii	"dupIgnore"
	.byte	9
	.ascii	"dupAccept"
	.byte	8
	.ascii	"dupError"
	.byte	5
	.ascii	"types"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_TYPES_TDUPLICATES
_RTTI_TYPES_TDUPLICATES:
	.byte	3,11
	.ascii	"TDuplicates"
	.byte	5
	.long	0,2,0
	.byte	9
	.ascii	"dupIgnore"
	.byte	9
	.ascii	"dupAccept"
	.byte	8
	.ascii	"dupError"
	.byte	5
	.ascii	"types"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_TYPES_TDUPLICATES_s2o
_RTTI_TYPES_TDUPLICATES_s2o:
	.long	3,1
	.long	_RTTI_TYPES_TDUPLICATES+36
	.long	2
	.long	_RTTI_TYPES_TDUPLICATES+46
	.long	0
	.long	_RTTI_TYPES_TDUPLICATES+26

.const_data
	.align 2
.globl	_RTTI_TYPES_TDUPLICATES_o2s
_RTTI_TYPES_TDUPLICATES_o2s:
	.long	0
	.long	_RTTI_TYPES_TDUPLICATES+26
	.long	_RTTI_TYPES_TDUPLICATES+36
	.long	_RTTI_TYPES_TDUPLICATES+46

.const_data
	.align 2
.globl	_INIT_TYPES_PPOLESTR
_INIT_TYPES_PPOLESTR:
	.byte	0
	.ascii	"\010PPOleStr"

.const_data
	.align 2
.globl	_RTTI_TYPES_PPOLESTR
_RTTI_TYPES_PPOLESTR:
	.byte	0
	.ascii	"\010PPOleStr"

.const_data
	.align 2
.globl	_INIT_TYPES_TLISTCALLBACK
_INIT_TYPES_TLISTCALLBACK:
	.byte	6,13
	.ascii	"TListCallback"
	.byte	0,2,0,4
	.ascii	"data"
	.ascii	"\007Pointer"
	.byte	0,3
	.ascii	"arg"
	.ascii	"\007Pointer"
	.byte	0
	.long	_RTTI_SYSTEM_POINTER
	.long	_RTTI_SYSTEM_POINTER

.const_data
	.align 2
.globl	_RTTI_TYPES_TLISTCALLBACK
_RTTI_TYPES_TLISTCALLBACK:
	.byte	6,13
	.ascii	"TListCallback"
	.byte	0,2,0,4
	.ascii	"data"
	.ascii	"\007Pointer"
	.byte	0,3
	.ascii	"arg"
	.ascii	"\007Pointer"
	.byte	0
	.long	_RTTI_SYSTEM_POINTER
	.long	_RTTI_SYSTEM_POINTER

.const_data
	.align 2
.globl	_INIT_TYPES_TLISTSTATICCALLBACK
_INIT_TYPES_TLISTSTATICCALLBACK:
	.byte	23,19
	.ascii	"TListStaticCallback"

.const_data
	.align 2
.globl	_RTTI_TYPES_TLISTSTATICCALLBACK
_RTTI_TYPES_TLISTSTATICCALLBACK:
	.byte	23,19
	.ascii	"TListStaticCallback"

.const_data
	.align 2
.globl	_INIT_TYPES_PDWORD
_INIT_TYPES_PDWORD:
	.byte	0
	.ascii	"\006PDWord"

.const_data
	.align 2
.globl	_RTTI_TYPES_PDWORD
_RTTI_TYPES_PDWORD:
	.byte	0
	.ascii	"\006PDWord"

.const_data
	.align 2
.globl	_INIT_TYPES_TXRMOPTIONDESCREC
_INIT_TYPES_TXRMOPTIONDESCREC:
	.byte	13,17
	.ascii	"TXrmOptionDescRec"
	.long	0,0

.const_data
	.align 2
.globl	_RTTI_TYPES_TXRMOPTIONDESCREC
_RTTI_TYPES_TXRMOPTIONDESCREC:
	.byte	13,17
	.ascii	"TXrmOptionDescRec"
	.long	0,0

.const_data
	.align 2
.globl	_INIT_TYPES_PXRMOPTIONDESCREC
_INIT_TYPES_PXRMOPTIONDESCREC:
	.byte	0
	.ascii	"\021PXrmOptionDescRec"

.const_data
	.align 2
.globl	_RTTI_TYPES_PXRMOPTIONDESCREC
_RTTI_TYPES_PXRMOPTIONDESCREC:
	.byte	0
	.ascii	"\021PXrmOptionDescRec"

.const_data
	.align 2
.globl	_INIT_TYPES__FILETIME
_INIT_TYPES__FILETIME:
	.byte	13,9
	.ascii	"_FILETIME"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_TYPES__FILETIME
_RTTI_TYPES__FILETIME:
	.byte	13,9
	.ascii	"_FILETIME"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_INIT_TYPES_PFILETIME
_INIT_TYPES_PFILETIME:
	.byte	0
	.ascii	"\011PFileTime"

.const_data
	.align 2
.globl	_RTTI_TYPES_PFILETIME
_RTTI_TYPES_PFILETIME:
	.byte	0
	.ascii	"\011PFileTime"

.const_data
	.align 2
.globl	_INIT_TYPES_TAGSTATSTG
_INIT_TYPES_TAGSTATSTG:
	.byte	13,10
	.ascii	"tagSTATSTG"
	.long	72,0

.const_data
	.align 2
.globl	_RTTI_TYPES_TAGSTATSTG
_RTTI_TYPES_TAGSTATSTG:
	.byte	13,10
	.ascii	"tagSTATSTG"
	.long	72,11
	.long	_RTTI_SYSTEM_PWIDECHAR
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_QWORD
	.long	8
	.long	_RTTI_TYPES__FILETIME
	.long	16
	.long	_RTTI_TYPES__FILETIME
	.long	24
	.long	_RTTI_TYPES__FILETIME
	.long	32
	.long	_RTTI_SYSTEM_LONGWORD
	.long	40
	.long	_RTTI_SYSTEM_LONGWORD
	.long	44
	.long	_RTTI_SYSTEM_TGUID
	.long	48
	.long	_RTTI_SYSTEM_LONGWORD
	.long	64
	.long	_RTTI_SYSTEM_LONGWORD
	.long	68

.const_data
	.align 2
.globl	_INIT_TYPES_PSTATSTG
_INIT_TYPES_PSTATSTG:
	.byte	0
	.ascii	"\010PStatStg"

.const_data
	.align 2
.globl	_RTTI_TYPES_PSTATSTG
_RTTI_TYPES_PSTATSTG:
	.byte	0
	.ascii	"\010PStatStg"

.const_data
	.align 2
.globl	_INIT_TYPES_ICLASSFACTORY
_INIT_TYPES_ICLASSFACTORY:
	.byte	14,13
	.ascii	"IClassFactory"
	.long	4

.const_data
	.align 2
.globl	_RTTI_TYPES_ICLASSFACTORY
_RTTI_TYPES_ICLASSFACTORY:
	.byte	14,13
	.ascii	"IClassFactory"
	.long	_RTTI_SYSTEM_IUNKNOWN
	.byte	9
	.long	1
	.short	0,0
	.byte	192,0,0,0,0,0,0,70,5
	.ascii	"types"
	.byte	38
	.ascii	"{00000001-0000-0000-C000-000000000046}"

.const_data
	.align 2
.globl	_INIT_TYPES_ISEQUENTIALSTREAM
_INIT_TYPES_ISEQUENTIALSTREAM:
	.byte	14,17
	.ascii	"ISequentialStream"
	.long	4

.const_data
	.align 2
.globl	_RTTI_TYPES_ISEQUENTIALSTREAM
_RTTI_TYPES_ISEQUENTIALSTREAM:
	.byte	14,17
	.ascii	"ISequentialStream"
	.long	_RTTI_SYSTEM_IUNKNOWN
	.byte	9
	.long	208878128
	.short	10780,4558
	.byte	173,229,0,170,0,68,119,61,5
	.ascii	"types"
	.byte	38
	.ascii	"{0c733a30-2a1c-11ce-ade5-00aa0044773d}"

.const_data
	.align 2
.globl	_INIT_TYPES_ISTREAM
_INIT_TYPES_ISTREAM:
	.byte	14,7
	.ascii	"IStream"
	.long	4

.const_data
	.align 2
.globl	_RTTI_TYPES_ISTREAM
_RTTI_TYPES_ISTREAM:
	.byte	14,7
	.ascii	"IStream"
	.long	_RTTI_TYPES_ISEQUENTIALSTREAM
	.byte	9
	.long	12
	.short	0,0
	.byte	192,0,0,0,0,0,0,70,5
	.ascii	"types"
	.byte	38
	.ascii	"{0000000C-0000-0000-C000-000000000046}"
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

