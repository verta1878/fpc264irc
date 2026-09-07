	.file "types.pp"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
.globl	TYPES_EQUALRECT$TRECT$TRECT$$BOOLEAN
TYPES_EQUALRECT$TRECT$TRECT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
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
	.balign 4,0x90
.globl	TYPES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT
TYPES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
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
	ret	$8

.text
	.balign 4,0x90
.globl	TYPES_BOUNDS$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT
TYPES_BOUNDS$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
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
	ret	$8

.text
	.balign 4,0x90
.globl	TYPES_POINT$LONGINT$LONGINT$$TPOINT
TYPES_POINT$LONGINT$LONGINT$$TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,4(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPES_PTINRECT$TRECT$TPOINT$$BOOLEAN
TYPES_PTINRECT$TRECT$TPOINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
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
	.balign 4,0x90
.globl	TYPES_INTERSECTRECT$TRECT$TRECT$TRECT$$BOOLEAN
TYPES_INTERSECTRECT$TRECT$TRECT$TRECT$$BOOLEAN:
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
	call	TYPES_ISRECTEMPTY$TRECT$$BOOLEAN
	testb	%al,%al
	jne	Lj65
	jmp	Lj66
Lj65:
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$16,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
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
	.balign 4,0x90
.globl	TYPES_UNIONRECT$TRECT$TRECT$TRECT$$BOOLEAN
TYPES_UNIONRECT$TRECT$TRECT$TRECT$$BOOLEAN:
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
	call	TYPES_ISRECTEMPTY$TRECT$$BOOLEAN
	testb	%al,%al
	jne	Lj102
	jmp	Lj103
Lj102:
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$16,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
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
	.balign 4,0x90
.globl	TYPES_ISRECTEMPTY$TRECT$$BOOLEAN
TYPES_ISRECTEMPTY$TRECT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
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
	.balign 4,0x90
.globl	TYPES_OFFSETRECT$TRECT$LONGINT$LONGINT$$BOOLEAN
TYPES_OFFSETRECT$TRECT$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj127
	jmp	Lj128
Lj127:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,(%edx)
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
	.balign 4,0x90
TYPES_AVG$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
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
	.balign 4,0x90
.globl	TYPES_CENTERPOINT$TRECT$$TPOINT
TYPES_CENTERPOINT$TRECT$$TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	TYPES_AVG$LONGINT$LONGINT$$LONGINT
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	TYPES_AVG$LONGINT$LONGINT$$LONGINT
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPES_INFLATERECT$TRECT$LONGINT$LONGINT$$BOOLEAN
TYPES_INFLATERECT$TRECT$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj159
	jmp	Lj160
Lj159:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	subl	%eax,(%edx)
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
	.balign 4,0x90
.globl	TYPES_SIZE$LONGINT$LONGINT$$TSIZE
TYPES_SIZE$LONGINT$LONGINT$$TSIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,4(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPES_SIZE$TRECT$$TSIZE
TYPES_SIZE$TRECT$$TSIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%edx),%edx
	movl	(%eax),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	12(%eax),%ecx
	movl	4(%edx),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	%ecx,4(%eax)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	IID_TYPES_ICLASSFACTORY
IID_TYPES_ICLASSFACTORY:
	.long	1
	.short	0,0
	.byte	192,0,0,0,0,0,0,70

.data
.globl	IIDSTR_TYPES_ICLASSFACTORY
IIDSTR_TYPES_ICLASSFACTORY:
	.byte	38
	.ascii	"{00000001-0000-0000-C000-000000000046}"

.data
	.balign 4
.globl	IID_TYPES_ISEQUENTIALSTREAM
IID_TYPES_ISEQUENTIALSTREAM:
	.long	208878128
	.short	10780,4558
	.byte	173,229,0,170,0,68,119,61

.data
.globl	IIDSTR_TYPES_ISEQUENTIALSTREAM
IIDSTR_TYPES_ISEQUENTIALSTREAM:
	.byte	38
	.ascii	"{0c733a30-2a1c-11ce-ade5-00aa0044773d}"

.data
	.balign 4
.globl	IID_TYPES_ISTREAM
IID_TYPES_ISTREAM:
	.long	12
	.short	0,0
	.byte	192,0,0,0,0,0,0,70

.data
.globl	IIDSTR_TYPES_ISTREAM
IIDSTR_TYPES_ISTREAM:
	.byte	38
	.ascii	"{0000000C-0000-0000-C000-000000000046}"

.data
	.balign 4
.globl	THREADVARLIST_TYPES
THREADVARLIST_TYPES:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 4
.globl	TC_TYPES_GUID_NULL
TC_TYPES_GUID_NULL:
	.long	0
	.short	0,0
	.byte	0,0,0,0,0,0,0,0
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.data
	.balign 4
.globl	INIT_TYPES_PLARGEINT
INIT_TYPES_PLARGEINT:
	.byte	0
	.ascii	"\011PLargeInt"

.data
	.balign 4
.globl	RTTI_TYPES_PLARGEINT
RTTI_TYPES_PLARGEINT:
	.byte	0
	.ascii	"\011PLargeInt"

.data
	.balign 4
.globl	INIT_TYPES_PLARGEUINT
INIT_TYPES_PLARGEUINT:
	.byte	0
	.ascii	"\012PLargeuInt"

.data
	.balign 4
.globl	RTTI_TYPES_PLARGEUINT
RTTI_TYPES_PLARGEUINT:
	.byte	0
	.ascii	"\012PLargeuInt"

.data
	.balign 4
.globl	INIT_TYPES_TINTEGERDYNARRAY
INIT_TYPES_TINTEGERDYNARRAY:
	.byte	21
	.ascii	"\020TIntegerDynArray"
	.long	4
	.long	INIT_SYSTEM_LONGINT
	.long	3,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	RTTI_TYPES_TINTEGERDYNARRAY
RTTI_TYPES_TINTEGERDYNARRAY:
	.byte	21
	.ascii	"\020TIntegerDynArray"
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	3,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	INIT_TYPES_TCARDINALDYNARRAY
INIT_TYPES_TCARDINALDYNARRAY:
	.byte	21
	.ascii	"\021TCardinalDynArray"
	.long	4
	.long	INIT_SYSTEM_LONGWORD
	.long	19,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	RTTI_TYPES_TCARDINALDYNARRAY
RTTI_TYPES_TCARDINALDYNARRAY:
	.byte	21
	.ascii	"\021TCardinalDynArray"
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	19,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	INIT_TYPES_TWORDDYNARRAY
INIT_TYPES_TWORDDYNARRAY:
	.byte	21
	.ascii	"\015TWordDynArray"
	.long	2
	.long	INIT_SYSTEM_WORD
	.long	18,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	RTTI_TYPES_TWORDDYNARRAY
RTTI_TYPES_TWORDDYNARRAY:
	.byte	21
	.ascii	"\015TWordDynArray"
	.long	2
	.long	RTTI_SYSTEM_WORD
	.long	18,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	INIT_TYPES_TSMALLINTDYNARRAY
INIT_TYPES_TSMALLINTDYNARRAY:
	.byte	21
	.ascii	"\021TSmallIntDynArray"
	.long	2
	.long	INIT_SYSTEM_SMALLINT
	.long	2,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	RTTI_TYPES_TSMALLINTDYNARRAY
RTTI_TYPES_TSMALLINTDYNARRAY:
	.byte	21
	.ascii	"\021TSmallIntDynArray"
	.long	2
	.long	RTTI_SYSTEM_SMALLINT
	.long	2,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	INIT_TYPES_TBYTEDYNARRAY
INIT_TYPES_TBYTEDYNARRAY:
	.byte	21
	.ascii	"\015TByteDynArray"
	.long	1
	.long	INIT_SYSTEM_BYTE
	.long	17,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	RTTI_TYPES_TBYTEDYNARRAY
RTTI_TYPES_TBYTEDYNARRAY:
	.byte	21
	.ascii	"\015TByteDynArray"
	.long	1
	.long	RTTI_SYSTEM_BYTE
	.long	17,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	INIT_TYPES_TSHORTINTDYNARRAY
INIT_TYPES_TSHORTINTDYNARRAY:
	.byte	21
	.ascii	"\021TShortIntDynArray"
	.long	1
	.long	INIT_SYSTEM_SHORTINT
	.long	16,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	RTTI_TYPES_TSHORTINTDYNARRAY
RTTI_TYPES_TSHORTINTDYNARRAY:
	.byte	21
	.ascii	"\021TShortIntDynArray"
	.long	1
	.long	RTTI_SYSTEM_SHORTINT
	.long	16,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	INIT_TYPES_TINT64DYNARRAY
INIT_TYPES_TINT64DYNARRAY:
	.byte	21
	.ascii	"\016TInt64DynArray"
	.long	8
	.long	INIT_SYSTEM_INT64
	.long	20,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	RTTI_TYPES_TINT64DYNARRAY
RTTI_TYPES_TINT64DYNARRAY:
	.byte	21
	.ascii	"\016TInt64DynArray"
	.long	8
	.long	RTTI_SYSTEM_INT64
	.long	20,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	INIT_TYPES_TQWORDDYNARRAY
INIT_TYPES_TQWORDDYNARRAY:
	.byte	21
	.ascii	"\016TQWordDynArray"
	.long	8
	.long	INIT_SYSTEM_QWORD
	.long	21,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	RTTI_TYPES_TQWORDDYNARRAY
RTTI_TYPES_TQWORDDYNARRAY:
	.byte	21
	.ascii	"\016TQWordDynArray"
	.long	8
	.long	RTTI_SYSTEM_QWORD
	.long	21,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	INIT_TYPES_TLONGWORDDYNARRAY
INIT_TYPES_TLONGWORDDYNARRAY:
	.byte	21
	.ascii	"\021TLongWordDynArray"
	.long	4
	.long	INIT_SYSTEM_LONGWORD
	.long	19,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	RTTI_TYPES_TLONGWORDDYNARRAY
RTTI_TYPES_TLONGWORDDYNARRAY:
	.byte	21
	.ascii	"\021TLongWordDynArray"
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	19,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	INIT_TYPES_TSINGLEDYNARRAY
INIT_TYPES_TSINGLEDYNARRAY:
	.byte	21
	.ascii	"\017TSingleDynArray"
	.long	4
	.long	INIT_SYSTEM_SINGLE
	.long	4,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	RTTI_TYPES_TSINGLEDYNARRAY
RTTI_TYPES_TSINGLEDYNARRAY:
	.byte	21
	.ascii	"\017TSingleDynArray"
	.long	4
	.long	RTTI_SYSTEM_SINGLE
	.long	4,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	INIT_TYPES_TDOUBLEDYNARRAY
INIT_TYPES_TDOUBLEDYNARRAY:
	.byte	21
	.ascii	"\017TDoubleDynArray"
	.long	8
	.long	INIT_SYSTEM_DOUBLE
	.long	5,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	RTTI_TYPES_TDOUBLEDYNARRAY
RTTI_TYPES_TDOUBLEDYNARRAY:
	.byte	21
	.ascii	"\017TDoubleDynArray"
	.long	8
	.long	RTTI_SYSTEM_DOUBLE
	.long	5,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	INIT_TYPES_TBOOLEANDYNARRAY
INIT_TYPES_TBOOLEANDYNARRAY:
	.byte	21
	.ascii	"\020TBooleanDynArray"
	.long	1
	.long	INIT_SYSTEM_BOOLEAN
	.long	11,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	RTTI_TYPES_TBOOLEANDYNARRAY
RTTI_TYPES_TBOOLEANDYNARRAY:
	.byte	21
	.ascii	"\020TBooleanDynArray"
	.long	1
	.long	RTTI_SYSTEM_BOOLEAN
	.long	11,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	INIT_TYPES_TSTRINGDYNARRAY
INIT_TYPES_TSTRINGDYNARRAY:
	.byte	21
	.ascii	"\017TStringDynArray"
	.long	4
	.long	INIT_SYSTEM_ANSISTRING
	.long	256
	.long	INIT_SYSTEM_ANSISTRING
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	RTTI_TYPES_TSTRINGDYNARRAY
RTTI_TYPES_TSTRINGDYNARRAY:
	.byte	21
	.ascii	"\017TStringDynArray"
	.long	4
	.long	RTTI_SYSTEM_ANSISTRING
	.long	256
	.long	RTTI_SYSTEM_ANSISTRING
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	INIT_TYPES_TWIDESTRINGDYNARRAY
INIT_TYPES_TWIDESTRINGDYNARRAY:
	.byte	21
	.ascii	"\023TWideStringDynArray"
	.long	4
	.long	INIT_SYSTEM_WIDESTRING
	.long	258
	.long	INIT_SYSTEM_WIDESTRING
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	RTTI_TYPES_TWIDESTRINGDYNARRAY
RTTI_TYPES_TWIDESTRINGDYNARRAY:
	.byte	21
	.ascii	"\023TWideStringDynArray"
	.long	4
	.long	RTTI_SYSTEM_WIDESTRING
	.long	258
	.long	RTTI_SYSTEM_WIDESTRING
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	INIT_TYPES_TPOINTERDYNARRAY
INIT_TYPES_TPOINTERDYNARRAY:
	.byte	21
	.ascii	"\020TPointerDynArray"
	.long	4
	.long	INIT_SYSTEM_POINTER
	.long	-1,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	RTTI_TYPES_TPOINTERDYNARRAY
RTTI_TYPES_TPOINTERDYNARRAY:
	.byte	21
	.ascii	"\020TPointerDynArray"
	.long	4
	.long	RTTI_SYSTEM_POINTER
	.long	-1,0
	.byte	5
	.ascii	"types"

.data
	.balign 4
.globl	INIT_TYPES_TPOINT
INIT_TYPES_TPOINT:
	.byte	13,6
	.ascii	"TPoint"
	.long	8,0

.data
	.balign 4
.globl	RTTI_TYPES_TPOINT
RTTI_TYPES_TPOINT:
	.byte	13,6
	.ascii	"TPoint"
	.long	8,2
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4

.data
	.balign 4
.globl	INIT_TYPES_PPOINT
INIT_TYPES_PPOINT:
	.byte	0
	.ascii	"\006PPoint"

.data
	.balign 4
.globl	RTTI_TYPES_PPOINT
RTTI_TYPES_PPOINT:
	.byte	0
	.ascii	"\006PPoint"

.data
	.balign 4
.globl	INIT_TYPES_TRECT
INIT_TYPES_TRECT:
	.byte	13,5
	.ascii	"TRect"
	.long	16,0

.data
	.balign 4
.globl	RTTI_TYPES_TRECT
RTTI_TYPES_TRECT:
	.byte	13,5
	.ascii	"TRect"
	.long	16,6
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	8
	.long	RTTI_SYSTEM_LONGINT
	.long	12
	.long	RTTI_TYPES_TPOINT
	.long	0
	.long	RTTI_TYPES_TPOINT
	.long	8

.data
	.balign 4
.globl	INIT_TYPES_PRECT
INIT_TYPES_PRECT:
	.byte	0
	.ascii	"\005PRect"

.data
	.balign 4
.globl	RTTI_TYPES_PRECT
RTTI_TYPES_PRECT:
	.byte	0
	.ascii	"\005PRect"

.data
	.balign 4
.globl	INIT_TYPES_TSIZE
INIT_TYPES_TSIZE:
	.byte	13,5
	.ascii	"TSize"
	.long	8,0

.data
	.balign 4
.globl	RTTI_TYPES_TSIZE
RTTI_TYPES_TSIZE:
	.byte	13,5
	.ascii	"TSize"
	.long	8,2
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4

.data
	.balign 4
.globl	INIT_TYPES_PSIZE
INIT_TYPES_PSIZE:
	.byte	0
	.ascii	"\005PSize"

.data
	.balign 4
.globl	RTTI_TYPES_PSIZE
RTTI_TYPES_PSIZE:
	.byte	0
	.ascii	"\005PSize"

.data
	.balign 4
.globl	INIT_TYPES_TSMALLPOINT
INIT_TYPES_TSMALLPOINT:
	.byte	13,11
	.ascii	"TSmallPoint"
	.long	4,0

.data
	.balign 4
.globl	RTTI_TYPES_TSMALLPOINT
RTTI_TYPES_TSMALLPOINT:
	.byte	13,11
	.ascii	"TSmallPoint"
	.long	4,2
	.long	RTTI_SYSTEM_SMALLINT
	.long	0
	.long	RTTI_SYSTEM_SMALLINT
	.long	2

.data
	.balign 4
.globl	INIT_TYPES_PSMALLPOINT
INIT_TYPES_PSMALLPOINT:
	.byte	0
	.ascii	"\013PSmallPoint"

.data
	.balign 4
.globl	RTTI_TYPES_PSMALLPOINT
RTTI_TYPES_PSMALLPOINT:
	.byte	0
	.ascii	"\013PSmallPoint"

.data
	.balign 4
.globl	INIT_TYPES_TDUPLICATES
INIT_TYPES_TDUPLICATES:
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

.data
	.balign 4
.globl	RTTI_TYPES_TDUPLICATES
RTTI_TYPES_TDUPLICATES:
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

.data
	.balign 4
.globl	RTTI_TYPES_TDUPLICATES_s2o
RTTI_TYPES_TDUPLICATES_s2o:
	.long	3,1
	.long	RTTI_TYPES_TDUPLICATES+36
	.long	2
	.long	RTTI_TYPES_TDUPLICATES+46
	.long	0
	.long	RTTI_TYPES_TDUPLICATES+26

.data
	.balign 4
.globl	RTTI_TYPES_TDUPLICATES_o2s
RTTI_TYPES_TDUPLICATES_o2s:
	.long	0
	.long	RTTI_TYPES_TDUPLICATES+26
	.long	RTTI_TYPES_TDUPLICATES+36
	.long	RTTI_TYPES_TDUPLICATES+46

.data
	.balign 4
.globl	INIT_TYPES_PPOLESTR
INIT_TYPES_PPOLESTR:
	.byte	0
	.ascii	"\010PPOleStr"

.data
	.balign 4
.globl	RTTI_TYPES_PPOLESTR
RTTI_TYPES_PPOLESTR:
	.byte	0
	.ascii	"\010PPOleStr"

.data
	.balign 4
.globl	INIT_TYPES_TLISTCALLBACK
INIT_TYPES_TLISTCALLBACK:
	.byte	6,13
	.ascii	"TListCallback"
	.byte	0,2,0,4
	.ascii	"data"
	.ascii	"\007Pointer"
	.byte	0,3
	.ascii	"arg"
	.ascii	"\007Pointer"
	.byte	0
	.long	RTTI_SYSTEM_POINTER
	.long	RTTI_SYSTEM_POINTER

.data
	.balign 4
.globl	RTTI_TYPES_TLISTCALLBACK
RTTI_TYPES_TLISTCALLBACK:
	.byte	6,13
	.ascii	"TListCallback"
	.byte	0,2,0,4
	.ascii	"data"
	.ascii	"\007Pointer"
	.byte	0,3
	.ascii	"arg"
	.ascii	"\007Pointer"
	.byte	0
	.long	RTTI_SYSTEM_POINTER
	.long	RTTI_SYSTEM_POINTER

.data
	.balign 4
.globl	INIT_TYPES_TLISTSTATICCALLBACK
INIT_TYPES_TLISTSTATICCALLBACK:
	.byte	23,19
	.ascii	"TListStaticCallback"

.data
	.balign 4
.globl	RTTI_TYPES_TLISTSTATICCALLBACK
RTTI_TYPES_TLISTSTATICCALLBACK:
	.byte	23,19
	.ascii	"TListStaticCallback"

.data
	.balign 4
.globl	INIT_TYPES_PDWORD
INIT_TYPES_PDWORD:
	.byte	0
	.ascii	"\006PDWord"

.data
	.balign 4
.globl	RTTI_TYPES_PDWORD
RTTI_TYPES_PDWORD:
	.byte	0
	.ascii	"\006PDWord"

.data
	.balign 4
.globl	INIT_TYPES_TXRMOPTIONDESCREC
INIT_TYPES_TXRMOPTIONDESCREC:
	.byte	13,17
	.ascii	"TXrmOptionDescRec"
	.long	0,0

.data
	.balign 4
.globl	RTTI_TYPES_TXRMOPTIONDESCREC
RTTI_TYPES_TXRMOPTIONDESCREC:
	.byte	13,17
	.ascii	"TXrmOptionDescRec"
	.long	0,0

.data
	.balign 4
.globl	INIT_TYPES_PXRMOPTIONDESCREC
INIT_TYPES_PXRMOPTIONDESCREC:
	.byte	0
	.ascii	"\021PXrmOptionDescRec"

.data
	.balign 4
.globl	RTTI_TYPES_PXRMOPTIONDESCREC
RTTI_TYPES_PXRMOPTIONDESCREC:
	.byte	0
	.ascii	"\021PXrmOptionDescRec"

.data
	.balign 4
.globl	INIT_TYPES__FILETIME
INIT_TYPES__FILETIME:
	.byte	13,9
	.ascii	"_FILETIME"
	.long	8,0

.data
	.balign 4
.globl	RTTI_TYPES__FILETIME
RTTI_TYPES__FILETIME:
	.byte	13,9
	.ascii	"_FILETIME"
	.long	8,2
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4

.data
	.balign 4
.globl	INIT_TYPES_PFILETIME
INIT_TYPES_PFILETIME:
	.byte	0
	.ascii	"\011PFileTime"

.data
	.balign 4
.globl	RTTI_TYPES_PFILETIME
RTTI_TYPES_PFILETIME:
	.byte	0
	.ascii	"\011PFileTime"

.data
	.balign 4
.globl	INIT_TYPES_TAGSTATSTG
INIT_TYPES_TAGSTATSTG:
	.byte	13,10
	.ascii	"tagSTATSTG"
	.long	72,0

.data
	.balign 4
.globl	RTTI_TYPES_TAGSTATSTG
RTTI_TYPES_TAGSTATSTG:
	.byte	13,10
	.ascii	"tagSTATSTG"
	.long	72,11
	.long	RTTI_SYSTEM_PWIDECHAR
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_QWORD
	.long	8
	.long	RTTI_TYPES__FILETIME
	.long	16
	.long	RTTI_TYPES__FILETIME
	.long	24
	.long	RTTI_TYPES__FILETIME
	.long	32
	.long	RTTI_SYSTEM_LONGWORD
	.long	40
	.long	RTTI_SYSTEM_LONGWORD
	.long	44
	.long	RTTI_SYSTEM_TGUID
	.long	48
	.long	RTTI_SYSTEM_LONGWORD
	.long	64
	.long	RTTI_SYSTEM_LONGWORD
	.long	68

.data
	.balign 4
.globl	INIT_TYPES_PSTATSTG
INIT_TYPES_PSTATSTG:
	.byte	0
	.ascii	"\010PStatStg"

.data
	.balign 4
.globl	RTTI_TYPES_PSTATSTG
RTTI_TYPES_PSTATSTG:
	.byte	0
	.ascii	"\010PStatStg"

.data
	.balign 4
.globl	INIT_TYPES_ICLASSFACTORY
INIT_TYPES_ICLASSFACTORY:
	.byte	14,13
	.ascii	"IClassFactory"
	.long	4

.data
	.balign 4
.globl	RTTI_TYPES_ICLASSFACTORY
RTTI_TYPES_ICLASSFACTORY:
	.byte	14,13
	.ascii	"IClassFactory"
	.long	RTTI_SYSTEM_IUNKNOWN
	.byte	9
	.long	1
	.short	0,0
	.byte	192,0,0,0,0,0,0,70,5
	.ascii	"types"
	.byte	38
	.ascii	"{00000001-0000-0000-C000-000000000046}"

.data
	.balign 4
.globl	INIT_TYPES_ISEQUENTIALSTREAM
INIT_TYPES_ISEQUENTIALSTREAM:
	.byte	14,17
	.ascii	"ISequentialStream"
	.long	4

.data
	.balign 4
.globl	RTTI_TYPES_ISEQUENTIALSTREAM
RTTI_TYPES_ISEQUENTIALSTREAM:
	.byte	14,17
	.ascii	"ISequentialStream"
	.long	RTTI_SYSTEM_IUNKNOWN
	.byte	9
	.long	208878128
	.short	10780,4558
	.byte	173,229,0,170,0,68,119,61,5
	.ascii	"types"
	.byte	38
	.ascii	"{0c733a30-2a1c-11ce-ade5-00aa0044773d}"

.data
	.balign 4
.globl	INIT_TYPES_ISTREAM
INIT_TYPES_ISTREAM:
	.byte	14,7
	.ascii	"IStream"
	.long	4

.data
	.balign 4
.globl	RTTI_TYPES_ISTREAM
RTTI_TYPES_ISTREAM:
	.byte	14,7
	.ascii	"IStream"
	.long	RTTI_TYPES_ISEQUENTIALSTREAM
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

