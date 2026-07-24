# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__CREATE$TINDEXFILE$$TINDEXCURSOR
_DBF_IDXCUR_TINDEXCURSOR_$__CREATE$TINDEXFILE$$TINDEXCURSOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj5
	jmp	Lj6
Lj5:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj6:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj11
	jmp	Lj12
Lj11:
	jmp	Lj3
Lj12:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj15
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj19
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_CURSOR_TVIRTUALCURSOR_$__CREATE$TPAGEDFILE$$TVIRTUALCURSOR$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,8(%edx)
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj32
	jmp	Lj31
Lj32:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj30
	jmp	Lj31
Lj30:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj31:
Lj15:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj36
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj37
	jmp	Lj38
Lj37:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj38:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj36:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj35
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj35:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__DESTROY
_DBF_IDXCUR_TINDEXCURSOR_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj45
	jmp	Lj46
Lj45:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj46:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_CURSOR_TVIRTUALCURSOR_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj55
	jmp	Lj54
Lj55:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj53
	jmp	Lj54
Lj53:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj54:
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__INSERT$LONGINT$PCHAR
_DBF_IDXCUR_TINDEXCURSOR_$__INSERT$LONGINT$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_DBF_IDXFILE_TINDEXFILE_$__INSERT$LONGINT$PCHAR$$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__UPDATE$LONGINT$PCHAR$PCHAR
_DBF_IDXCUR_TINDEXCURSOR_$__UPDATE$LONGINT$PCHAR$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_DBF_IDXFILE_TINDEXFILE_$__UPDATE$LONGINT$PCHAR$PCHAR$$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__FIRST
_DBF_IDXCUR_TINDEXCURSOR_$__FIRST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__FIRST$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__LAST
_DBF_IDXCUR_TINDEXCURSOR_$__LAST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__LAST$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__PREV$$BOOLEAN
_DBF_IDXCUR_TINDEXCURSOR_$__PREV$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__PREV$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__NEXT$$BOOLEAN
_DBF_IDXCUR_TINDEXCURSOR_$__NEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__NEXT$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__GETPHYSICALRECNO$$LONGINT
_DBF_IDXCUR_TINDEXCURSOR_$__GETPHYSICALRECNO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETPHYSICALRECNO$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__SETPHYSICALRECNO$LONGINT
_DBF_IDXCUR_TINDEXCURSOR_$__SETPHYSICALRECNO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETPHYSICALRECNO$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__GETSEQUENTIALRECORDCOUNT$$LONGINT
_DBF_IDXCUR_TINDEXCURSOR_$__GETSEQUENTIALRECORDCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETSEQUENTIALRECORDCOUNT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__GETSEQUENTIALRECNO$$LONGINT
_DBF_IDXCUR_TINDEXCURSOR_$__GETSEQUENTIALRECNO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETSEQUENTIALRECNO$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__SETSEQUENTIALRECNO$LONGINT
_DBF_IDXCUR_TINDEXCURSOR_$__SETSEQUENTIALRECNO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETSEQUENTIALRECNO$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__VARIANTSTRTOBUFFER$VARIANT$PCHAR
_DBF_IDXCUR_TINDEXCURSOR_$__VARIANTSTRTOBUFFER$VARIANT$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	call	Lj127
Lj127:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	-40(%ebp),%edx
	call	LFPC_VARIANT_COPY_OVERWRITE$stub
	movl	$0,-20(%ebp)
	leal	-52(%ebp),%ecx
	leal	-76(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-4(%ebp)
	testl	%eax,%eax
	jne	Lj128
	leal	-20(%ebp),%edx
	leal	-40(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$ANSISTRING$stub
	movl	$-1,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DBF_WTIL_GETACP$$LONGWORD$stub
	movl	-12(%ebp),%edx
	movl	8(%edx),%edx
	movl	1316(%edx),%edx
	movl	-20(%ebp),%ecx
	testl	%ecx,%ecx
	jne	Lj147
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj127(%ebx),%esi
	movl	%esi,%ecx
Lj147:
	call	L_DBF_COMMON_TRANSLATESTRING$LONGWORD$LONGWORD$PCHAR$PCHAR$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT$stub
	movl	%eax,%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ecx
	leal	(%eax,%ecx,1),%eax
	movb	$32,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
Lj128:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj127(%ebx),%eax
	movl	%eax,%edx
	leal	-40(%ebp),%eax
	call	LFPC_DECREF$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj129
	call	LFPC_RERAISE$stub
Lj129:
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__VARIANTTOBUFFER$VARIANT$PCHAR$$TEXPRESSIONTYPE
_DBF_IDXCUR_TINDEXCURSOR_$__VARIANTTOBUFFER$VARIANT$PCHAR$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj163
Lj163:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	-32(%ebp),%edx
	call	LFPC_VARIANT_COPY_OVERWRITE$stub
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-4(%ebp)
	testl	%eax,%eax
	jne	Lj164
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETKEYTYPE$$CHAR$stub
	cmpb	$78,%al
	je	Lj167
	jmp	Lj168
Lj167:
	leal	-32(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$DOUBLE$stub
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movb	528(%eax),%al
	cmpb	$2,%al
	jne	Lj175
	jmp	Lj176
Lj175:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movb	$4,%cl
	call	L_DBF_IDXFILE_TINDEXFILE_$__PREPAREKEY$PCHAR$TEXPRESSIONTYPE$$PCHAR$stub
	movl	-8(%ebp),%edx
	movl	$11,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj176:
	movb	$0,-13(%ebp)
	jmp	Lj191
Lj168:
	movl	-8(%ebp),%ecx
	leal	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_IDXCUR_TINDEXCURSOR_$__VARIANTSTRTOBUFFER$VARIANT$PCHAR$stub
	movb	$1,-13(%ebp)
Lj191:
Lj164:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj163(%ebx),%eax
	movl	%eax,%edx
	leal	-32(%ebp),%eax
	call	LFPC_DECREF$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj165
	call	LFPC_RERAISE$stub
Lj165:
	movb	-13(%ebp),%al
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_IDXCUR_TINDEXCURSOR_$__CHECKUSERKEY$PCHAR$PCHAR$$PCHAR
_DBF_IDXCUR_TINDEXCURSOR_$__CHECKUSERKEY$PCHAR$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETKEYTYPE$$CHAR$stub
	cmpb	$78,%al
	je	Lj204
	jmp	Lj205
Lj204:
	jmp	Lj208
Lj205:
	movl	-4(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj217
	jmp	Lj218
Lj217:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%eax
	leal	(%ecx,%eax,1),%eax
	movb	$32,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj218:
Lj208:
	movl	-16(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$DBF_IDXCUR$_Ld1
_$DBF_IDXCUR$_Ld1:
	.byte	12
	.ascii	"TIndexCursor"

.const_data
	.align 2
.globl	_VMT_DBF_IDXCUR_TINDEXCURSOR
_VMT_DBF_IDXCUR_TINDEXCURSOR:
	.long	12,-12
	.long	_VMT_DBF_CURSOR_TVIRTUALCURSOR
	.long	_$DBF_IDXCUR$_Ld1
	.long	0,0
	.long	_$DBF_IDXCUR$_Ld2
	.long	_RTTI_DBF_IDXCUR_TINDEXCURSOR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_IDXCUR_TINDEXCURSOR_$__DESTROY
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
	.long	_DBF_IDXCUR_TINDEXCURSOR_$__GETPHYSICALRECNO$$LONGINT
	.long	_DBF_IDXCUR_TINDEXCURSOR_$__GETSEQUENTIALRECNO$$LONGINT
	.long	_DBF_IDXCUR_TINDEXCURSOR_$__GETSEQUENTIALRECORDCOUNT$$LONGINT
	.long	_DBF_IDXCUR_TINDEXCURSOR_$__SETPHYSICALRECNO$LONGINT
	.long	_DBF_IDXCUR_TINDEXCURSOR_$__SETSEQUENTIALRECNO$LONGINT
	.long	_DBF_IDXCUR_TINDEXCURSOR_$__NEXT$$BOOLEAN
	.long	_DBF_IDXCUR_TINDEXCURSOR_$__PREV$$BOOLEAN
	.long	_DBF_IDXCUR_TINDEXCURSOR_$__FIRST
	.long	_DBF_IDXCUR_TINDEXCURSOR_$__LAST
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_DBF_IDXCUR
_THREADVARLIST_DBF_IDXCUR:
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

L_DBF_CURSOR_TVIRTUALCURSOR_$__CREATE$TPAGEDFILE$$TVIRTUALCURSOR$stub:
.indirect_symbol _DBF_CURSOR_TVIRTUALCURSOR_$__CREATE$TPAGEDFILE$$TVIRTUALCURSOR
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

LFPC_POPSECONDOBJECTSTACK$stub:
.indirect_symbol FPC_POPSECONDOBJECTSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DESTROYEXCEPTION$stub:
.indirect_symbol FPC_DESTROYEXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPOBJECTSTACK$stub:
.indirect_symbol FPC_POPOBJECTSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_CURSOR_TVIRTUALCURSOR_$__DESTROY$stub:
.indirect_symbol _DBF_CURSOR_TVIRTUALCURSOR_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__INSERT$LONGINT$PCHAR$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__INSERT$LONGINT$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__UPDATE$LONGINT$PCHAR$PCHAR$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__UPDATE$LONGINT$PCHAR$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__FIRST$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__FIRST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__LAST$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__LAST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__PREV$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__PREV$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__NEXT$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__NEXT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETPHYSICALRECNO$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETPHYSICALRECNO$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__SETPHYSICALRECNO$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__SETPHYSICALRECNO$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETSEQUENTIALRECORDCOUNT$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETSEQUENTIALRECORDCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETSEQUENTIALRECNO$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETSEQUENTIALRECNO$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__SETSEQUENTIALRECNO$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__SETSEQUENTIALRECNO$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_VARIANT_COPY_OVERWRITE$stub:
.indirect_symbol FPC_VARIANT_COPY_OVERWRITE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$ANSISTRING$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_GETACP$$LONGWORD$stub:
.indirect_symbol _DBF_WTIL_GETACP$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_TRANSLATESTRING$LONGWORD$LONGWORD$PCHAR$PCHAR$LONGINT$$LONGINT$stub:
.indirect_symbol _DBF_COMMON_TRANSLATESTRING$LONGWORD$LONGWORD$PCHAR$PCHAR$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DECREF$stub:
.indirect_symbol FPC_DECREF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETKEYTYPE$$CHAR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETKEYTYPE$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$DOUBLE$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__PREPAREKEY$PCHAR$TEXPRESSIONTYPE$$PCHAR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__PREPAREKEY$PCHAR$TEXPRESSIONTYPE$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXCUR_TINDEXCURSOR_$__VARIANTSTRTOBUFFER$VARIANT$PCHAR$stub:
.indirect_symbol _DBF_IDXCUR_TINDEXCURSOR_$__VARIANTSTRTOBUFFER$VARIANT$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PCHAR_LENGTH$stub:
.indirect_symbol FPC_PCHAR_LENGTH
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
.globl	_$DBF_IDXCUR$_Ld2
_$DBF_IDXCUR$_Ld2:
	.short	0
	.long	_$DBF_IDXCUR$_Ld3
	.align 2
.globl	_$DBF_IDXCUR$_Ld3
_$DBF_IDXCUR$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_IDXCUR_TINDEXCURSOR
_INIT_DBF_IDXCUR_TINDEXCURSOR:
	.byte	15,12
	.ascii	"TIndexCursor"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_IDXCUR_TINDEXCURSOR
_RTTI_DBF_IDXCUR_TINDEXCURSOR:
	.byte	15,12
	.ascii	"TIndexCursor"
	.long	_VMT_DBF_IDXCUR_TINDEXCURSOR
	.long	_RTTI_DBF_CURSOR_TVIRTUALCURSOR
	.short	0
	.byte	10
	.ascii	"dbf_idxcur"
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_IDXCUR_PINDEXPOSINFO
_INIT_DBF_IDXCUR_PINDEXPOSINFO:
	.byte	0
	.ascii	"\015PIndexPosInfo"

.const_data
	.align 2
.globl	_RTTI_DBF_IDXCUR_PINDEXPOSINFO
_RTTI_DBF_IDXCUR_PINDEXPOSINFO:
	.byte	0
	.ascii	"\015PIndexPosInfo"
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
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_SYSTEM_VARIANT$non_lazy_ptr:
.indirect_symbol _INIT_SYSTEM_VARIANT
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

