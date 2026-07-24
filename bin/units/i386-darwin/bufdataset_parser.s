# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_BUFDATASET_PARSER_TFIELDVAR_$__CREATE$TFIELD$$TFIELDVAR
_BUFDATASET_PARSER_TFIELDVAR_$__CREATE$TFIELD$$TFIELDVAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
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
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%esi
	movl	100(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	100(%esi),%eax
	movl	%eax,8(%ebx)
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
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__GETFIELDVAL$$POINTER
_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__GETFIELDVAL$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$1,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__CREATE$TFIELD$$TSTRINGFIELDVAR
_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__CREATE$TFIELD$$TSTRINGFIELDVAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj53
	jmp	Lj54
Lj53:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj54:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj59
	jmp	Lj60
Lj59:
	jmp	Lj51
Lj60:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj63
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj67
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_BUFDATASET_PARSER_TFIELDVAR_$__CREATE$TFIELD$$TFIELDVAR$stub
	movl	-12(%ebp),%eax
	leal	16(%eax),%eax
	movl	$8193,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
Lj67:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj68
	call	LFPC_RERAISE$stub
Lj68:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj82
	jmp	Lj81
Lj82:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj80
	jmp	Lj81
Lj80:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj81:
Lj63:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj65
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj86
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj87
	jmp	Lj88
Lj87:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj88:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj86:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj85
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj85:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj65
Lj65:
Lj51:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__DESTROY
_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj95
	jmp	Lj96
Lj95:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj96:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj107
	jmp	Lj106
Lj107:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj105
	jmp	Lj106
Lj105:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj106:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__REFRESH$PCHAR
_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__REFRESH$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8216,%esp
	movl	%ebx,-8208(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-8201(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	72(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	-8(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	72(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*660(%ebx)
	testb	%al,%al
	je	Lj112
	jmp	Lj113
Lj112:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movb	$0,(%eax)
	jmp	Lj122
Lj113:
	leal	-8201(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	call	L_SYSUTILS_STRCOPY$PCHAR$PCHAR$$PCHAR$stub
Lj122:
	movl	-8208(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TFLOATFIELDVAR_$__GETFIELDVAL$$POINTER
_BUFDATASET_PARSER_TFLOATFIELDVAR_$__GETFIELDVAL$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TFLOATFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
_BUFDATASET_PARSER_TFLOATFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$4,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TFLOATFIELDVAR_$__REFRESH$PCHAR
_BUFDATASET_PARSER_TFLOATFIELDVAR_$__REFRESH$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	leal	16(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	72(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	-8(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	72(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*660(%ebx)
	testb	%al,%al
	je	Lj137
	jmp	Lj138
Lj137:
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
Lj138:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TINTEGERFIELDVAR_$__GETFIELDVAL$$POINTER
_BUFDATASET_PARSER_TINTEGERFIELDVAR_$__GETFIELDVAL$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TINTEGERFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
_BUFDATASET_PARSER_TINTEGERFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TINTEGERFIELDVAR_$__REFRESH$PCHAR
_BUFDATASET_PARSER_TINTEGERFIELDVAR_$__REFRESH$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	leal	16(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	72(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	-8(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	72(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*660(%ebx)
	testb	%al,%al
	je	Lj157
	jmp	Lj158
Lj157:
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
Lj158:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TLARGEINTFIELDVAR_$__GETFIELDVAL$$POINTER
_BUFDATASET_PARSER_TLARGEINTFIELDVAR_$__GETFIELDVAL$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TLARGEINTFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
_BUFDATASET_PARSER_TLARGEINTFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$3,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TLARGEINTFIELDVAR_$__REFRESH$PCHAR
_BUFDATASET_PARSER_TLARGEINTFIELDVAR_$__REFRESH$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	leal	16(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	72(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	-8(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	72(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*660(%ebx)
	testb	%al,%al
	je	Lj177
	jmp	Lj178
Lj177:
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	$0,20(%eax)
Lj178:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TDATETIMEFIELDVAR_$__GETFIELDVAL$$POINTER
_BUFDATASET_PARSER_TDATETIMEFIELDVAR_$__GETFIELDVAL$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TDATETIMEFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
_BUFDATASET_PARSER_TDATETIMEFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$5,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TDATETIMEFIELDVAR_$__REFRESH$PCHAR
_BUFDATASET_PARSER_TDATETIMEFIELDVAR_$__REFRESH$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	leal	16(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	72(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	-8(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	72(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*660(%ebx)
	testb	%al,%al
	je	Lj197
	jmp	Lj198
Lj197:
	movl	-8(%ebp),%eax
	fldz
	fstpl	16(%eax)
Lj198:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TBOOLEANFIELDVAR_$__GETFIELDVAL$$POINTER
_BUFDATASET_PARSER_TBOOLEANFIELDVAR_$__GETFIELDVAL$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TBOOLEANFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
_BUFDATASET_PARSER_TBOOLEANFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$2,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TBOOLEANFIELDVAR_$__REFRESH$PCHAR
_BUFDATASET_PARSER_TBOOLEANFIELDVAR_$__REFRESH$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	leal	16(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	72(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	-8(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	72(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*660(%ebx)
	testb	%al,%al
	je	Lj217
	jmp	Lj218
Lj217:
	movl	-8(%ebp),%eax
	movw	$0,16(%eax)
Lj218:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__CREATE$TDATASET$$TBUFDATASETPARSER
_BUFDATASET_PARSER_TBUFDATASETPARSER_$__CREATE$TDATASET$$TBUFDATASETPARSER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj228
Lj228:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj229
	jmp	Lj230
Lj229:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj230:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj235
	jmp	Lj236
Lj235:
	jmp	Lj227
Lj236:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj239
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj243
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,36(%eax)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj228(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-12(%ebp),%eax
	movb	$1,50(%eax)
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CREATE$$TCUSTOMEXPRESSIONPARSER$stub
Lj243:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj244
	call	LFPC_RERAISE$stub
Lj244:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj262
	jmp	Lj261
Lj262:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj260
	jmp	Lj261
Lj260:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj261:
Lj239:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj241
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj266
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj267
	jmp	Lj268
Lj267:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj268:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj266:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj265
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj265:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj241
Lj241:
Lj227:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__DESTROY
_BUFDATASET_PARSER_TBUFDATASETPARSER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj275
	jmp	Lj276
Lj275:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj276:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DESTROY$stub
	movl	-8(%ebp),%eax
	leal	40(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj289
	jmp	Lj288
Lj289:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj287
	jmp	Lj288
Lj287:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj288:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__GETRESULTTYPE$$TEXPRESSIONTYPE
_BUFDATASET_PARSER_TBUFDATASETPARSER_$__GETRESULTTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,48(%eax)
	jne	Lj294
	jmp	Lj295
Lj294:
	movl	-4(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__GETRESULTTYPE$$TEXPRESSIONTYPE$stub
	movb	%al,-5(%ebp)
	jmp	Lj300
Lj295:
	movl	-4(%ebp),%eax
	movb	49(%eax),%al
	movb	%al,-5(%ebp)
Lj300:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__SETCASEINSENSITIVE$BOOLEAN
_BUFDATASET_PARSER_TBUFDATASETPARSER_$__SETCASEINSENSITIVE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	50(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj305
	jmp	Lj306
Lj305:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,50(%eax)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
Lj306:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__SETPARTIALMATCH$BOOLEAN
_BUFDATASET_PARSER_TBUFDATASETPARSER_$__SETPARTIALMATCH$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	51(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj313
	jmp	Lj314
Lj313:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,51(%eax)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
Lj314:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__FILLEXPRESSLIST
_BUFDATASET_PARSER_TBUFDATASETPARSER_$__FILLEXPRESSLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	call	Lj320
Lj320:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj321
	movl	-4(%ebp),%esi
	movl	52(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	52(%esi),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_DBF_PRSSUPP_TOCOLLECTION_$__FREEALL$stub
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj320(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj320(%ebx),%edx
	movl	(%edx),%edx
	movl	$0,%ecx
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT$stub
	movl	-4(%ebp),%eax
	cmpb	$0,50(%eax)
	jne	Lj340
	jmp	Lj341
Lj340:
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj320(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj320(%ebx),%edx
	movl	(%edx),%edx
	movl	$0,%ecx
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT$stub
	movl	-4(%ebp),%eax
	cmpb	$0,51(%eax)
	jne	Lj352
	jmp	Lj353
Lj352:
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSPARTIALLIST$non_lazy_ptr-Lj320(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSPARTIALLIST$non_lazy_ptr-Lj320(%ebx),%edx
	movl	(%edx),%edx
	movl	$0,%ecx
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT$stub
	jmp	Lj364
Lj353:
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSNOPARTIALLIST$non_lazy_ptr-Lj320(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSNOPARTIALLIST$non_lazy_ptr-Lj320(%ebx),%edx
	movl	(%edx),%edx
	movl	$0,%ecx
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT$stub
Lj364:
	jmp	Lj375
Lj341:
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj320(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj320(%ebx),%edx
	movl	(%edx),%edx
	movl	$0,%ecx
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT$stub
	movl	-4(%ebp),%eax
	cmpb	$0,51(%eax)
	jne	Lj386
	jmp	Lj387
Lj386:
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSPARTIALLIST$non_lazy_ptr-Lj320(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSPARTIALLIST$non_lazy_ptr-Lj320(%ebx),%edx
	movl	(%edx),%edx
	movl	$0,%ecx
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT$stub
	jmp	Lj398
Lj387:
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSNOPARTIALLIST$non_lazy_ptr-Lj320(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSNOPARTIALLIST$non_lazy_ptr-Lj320(%ebx),%edx
	movl	(%edx),%edx
	movl	$0,%ecx
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT$stub
Lj398:
Lj375:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj411
	movl	-4(%eax),%eax
Lj411:
	cmpl	$0,%eax
	jg	Lj409
	jmp	Lj410
Lj409:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
Lj410:
Lj321:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj322
	call	LFPC_RERAISE$stub
Lj322:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__GETVARIABLEINFO$ANSISTRING$$TFIELD
_BUFDATASET_PARSER_TBUFDATASETPARSER_$__GETVARIABLEINFO$ANSISTRING$$TFIELD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj424
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DB_TDATASET_$__FINDFIELD$ANSISTRING$$TFIELD$stub
	movl	%eax,-12(%ebp)
Lj424:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj425
	call	LFPC_RERAISE$stub
Lj425:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__CURRENTEXPRESSION$$ANSISTRING
_BUFDATASET_PARSER_TBUFDATASETPARSER_$__CURRENTEXPRESSION$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	52(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	52(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__HANDLEUNKNOWNVARIABLE$ANSISTRING
_BUFDATASET_PARSER_TBUFDATASETPARSER_$__HANDLEUNKNOWNVARIABLE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	call	Lj438
Lj438:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj439
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_PARSER_TBUFDATASETPARSER_$__GETVARIABLEINFO$ANSISTRING$$TFIELD$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj448
	jmp	Lj449
Lj448:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_DBCONST_SERRINDEXBASEDONUNKFIELD$non_lazy_ptr-Lj438(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_DB_EDATABASEERROR$non_lazy_ptr-Lj438(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj438(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj449:
	movl	-12(%ebp),%eax
	movl	76(%eax),%eax
	cmpl	$1,%eax
	jb	Lj461
	decl	%eax
	je	Lj462
	decl	%eax
	jb	Lj461
	subl	$1,%eax
	jbe	Lj465
	subl	$2,%eax
	je	Lj463
	decl	%eax
	je	Lj464
	subl	$3,%eax
	je	Lj467
	subl	$2,%eax
	je	Lj467
	subl	$3,%eax
	je	Lj465
	subl	$9,%eax
	je	Lj462
	subl	$2,%eax
	je	Lj466
	jmp	Lj461
Lj462:
	movl	-12(%ebp),%ecx
	movl	L_VMT_BUFDATASET_PARSER_TSTRINGFIELDVAR$non_lazy_ptr-Lj438(%ebx),%edx
	movl	$0,%eax
	call	L_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__CREATE$TFIELD$$TSTRINGFIELDVAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINESTRINGVARIABLE$ANSISTRING$PPCHAR$$TEXPRWORD$stub
	movl	-16(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	movl	192(%eax),%edx
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	12(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	jmp	Lj460
Lj463:
	movl	-12(%ebp),%ecx
	movl	L_VMT_BUFDATASET_PARSER_TBOOLEANFIELDVAR$non_lazy_ptr-Lj438(%ebx),%edx
	movl	$0,%eax
	call	L_BUFDATASET_PARSER_TFIELDVAR_$__CREATE$TFIELD$$TFIELDVAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEBOOLEANVARIABLE$ANSISTRING$PBOOLEAN$$TEXPRWORD$stub
	movl	-16(%ebp),%edx
	movl	%eax,12(%edx)
	jmp	Lj460
Lj464:
	movl	-12(%ebp),%ecx
	movl	L_VMT_BUFDATASET_PARSER_TFLOATFIELDVAR$non_lazy_ptr-Lj438(%ebx),%edx
	movl	$0,%eax
	call	L_BUFDATASET_PARSER_TFIELDVAR_$__CREATE$TFIELD$$TFIELDVAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEFLOATVARIABLE$ANSISTRING$PDOUBLE$$TEXPRWORD$stub
	movl	-16(%ebp),%edx
	movl	%eax,12(%edx)
	jmp	Lj460
Lj465:
	movl	-12(%ebp),%ecx
	movl	L_VMT_BUFDATASET_PARSER_TINTEGERFIELDVAR$non_lazy_ptr-Lj438(%ebx),%edx
	movl	$0,%eax
	call	L_BUFDATASET_PARSER_TFIELDVAR_$__CREATE$TFIELD$$TFIELDVAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEINTEGERVARIABLE$ANSISTRING$PINTEGER$$TEXPRWORD$stub
	movl	-16(%ebp),%edx
	movl	%eax,12(%edx)
	jmp	Lj460
Lj466:
	movl	-12(%ebp),%ecx
	movl	L_VMT_BUFDATASET_PARSER_TLARGEINTFIELDVAR$non_lazy_ptr-Lj438(%ebx),%edx
	movl	$0,%eax
	call	L_BUFDATASET_PARSER_TFIELDVAR_$__CREATE$TFIELD$$TFIELDVAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINELARGEINTVARIABLE$ANSISTRING$PLARGEINT$$TEXPRWORD$stub
	movl	-16(%ebp),%edx
	movl	%eax,12(%edx)
	jmp	Lj460
Lj467:
	movl	-12(%ebp),%ecx
	movl	L_VMT_BUFDATASET_PARSER_TDATETIMEFIELDVAR$non_lazy_ptr-Lj438(%ebx),%edx
	movl	$0,%eax
	call	L_BUFDATASET_PARSER_TFIELDVAR_$__CREATE$TFIELD$$TFIELDVAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEDATETIMEVARIABLE$ANSISTRING$PDATETIMEREC$$TEXPRWORD$stub
	movl	-16(%ebp),%edx
	movl	%eax,12(%edx)
	jmp	Lj460
Lj461:
	movl	$1,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$11,-80(%ebp)
	movl	-12(%ebp),%eax
	movl	76(%eax),%eax
	shll	$4,%eax
	movl	L_TC_DB_FIELDTYPENAMES$non_lazy_ptr-Lj438(%ebx),%edx
	leal	(%edx,%eax),%eax
	movl	%eax,-68(%ebp)
	movl	$4,-72(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_DBCONST_SERRINDEXBASEDONINVFIELD$non_lazy_ptr-Lj438(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_DB_EDATABASEERROR$non_lazy_ptr-Lj438(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj438(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj460:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%esi
	movl	40(%esi),%esi
	movl	(%esi),%esi
	call	*168(%esi)
Lj439:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj440
	call	LFPC_RERAISE$stub
Lj440:
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__CLEAREXPRESSIONS
_BUFDATASET_PARSER_TBUFDATASETPARSER_$__CLEAREXPRESSIONS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj597
Lj597:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CLEAREXPRESSIONS$stub
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	jne	Lj600
	jmp	Lj601
Lj600:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,%esi
	decl	%esi
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%esi
	jl	Lj603
	decl	-8(%ebp)
	.align 2
Lj604:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	40(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_DBF_PRSSUPP_TOCOLLECTION_$__DOFREE$POINTER$stub
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	40(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,%edi
	movl	%edi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	-8(%ebp),%esi
	jg	Lj604
Lj603:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	movl	(%edx),%edx
	call	*184(%edx)
Lj601:
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj597(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	leal	52(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj597(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,52(%esi)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__PARSEEXPRESSION$ANSISTRING
_BUFDATASET_PARSER_TBUFDATASETPARSER_$__PARSEEXPRESSION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj628
Lj628:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj629
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_PARSER_TBUFDATASETPARSER_$__GETVARIABLEINFO$ANSISTRING$$TFIELD$stub
	testl	%eax,%eax
	seteb	48(%esi)
	movl	-8(%ebp),%eax
	cmpb	$0,48(%eax)
	jne	Lj640
	jmp	Lj641
Lj640:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__COMPILEEXPRESSION$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	cmpb	$1,%al
	je	Lj646
	jmp	Lj647
Lj646:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-8(%ebp),%edx
	movl	36(%edx),%edx
	movl	(%edx),%edx
	call	*508(%edx)
	movw	%ax,%dx
	movzwl	%dx,%edx
	leal	-12(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj656
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-8(%ebp),%edx
	movl	36(%edx),%edx
	movl	(%edx),%edx
	call	*508(%edx)
	movw	%ax,%dx
	movzwl	%dx,%edx
	movl	-12(%ebp),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	call	LFPC_PCHAR_LENGTH$stub
	movl	-8(%ebp),%edx
	movl	%eax,44(%edx)
Lj656:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj657
	decl	%eax
	testl	%eax,%eax
	je	Lj658
Lj658:
	call	LFPC_RERAISE$stub
Lj657:
Lj647:
	jmp	Lj678
Lj641:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	40(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-8(%ebp),%edx
	movb	%al,49(%edx)
	movl	-8(%ebp),%eax
	movb	49(%eax),%al
	cmpb	$1,%al
	je	Lj693
	jmp	Lj694
Lj693:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	40(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	192(%eax),%eax
	movl	%eax,44(%edx)
Lj694:
Lj678:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	testb	%al,%al
	je	Lj704
	subb	$2,%al
	je	Lj703
	subb	$2,%al
	je	Lj705
	decb	%al
	je	Lj706
	jmp	Lj702
Lj703:
	movl	-8(%ebp),%eax
	movl	$1,44(%eax)
	jmp	Lj701
Lj704:
	movl	-8(%ebp),%eax
	movl	$4,44(%eax)
	jmp	Lj701
Lj705:
	movl	-8(%ebp),%eax
	movl	$8,44(%eax)
	jmp	Lj701
Lj706:
	movl	-8(%ebp),%eax
	movl	$8,44(%eax)
	jmp	Lj701
Lj702:
Lj701:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	cmpl	$100,%eax
	jg	Lj717
	jmp	Lj718
Lj717:
	movl	$1,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$11,-68(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	$0,-60(%ebp)
	leal	-68(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_DBCONST_SERRINDEXRESULTTOOLONG$non_lazy_ptr-Lj628(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_DB_EDATABASEERROR$non_lazy_ptr-Lj628(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj628(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj718:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	52(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,52(%esi)
Lj629:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj630
	call	LFPC_RERAISE$stub
Lj630:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__EXTRACTFROMBUFFER$PCHAR$$PCHAR
_BUFDATASET_PARSER_TBUFDATASETPARSER_$__EXTRACTFROMBUFFER$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	-8(%ebp),%edx
	movl	40(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj734
	decl	-16(%ebp)
	.align 2
Lj735:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	40(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,%esi
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	movl	%esi,%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	cmpl	-16(%ebp),%ebx
	jg	Lj735
Lj734:
	movl	-8(%ebp),%eax
	cmpb	$0,48(%eax)
	jne	Lj748
	jmp	Lj749
Lj748:
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__EVALUATECURRENT$stub
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj754
Lj749:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	40(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movb	49(%eax),%al
	cmpb	$1,%al
	je	Lj765
	jmp	Lj766
Lj765:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
Lj766:
Lj754:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld1
_$BUFDATASET_PARSER$_Ld1:
	.byte	17
	.ascii	"TBufDatasetParser"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_PARSER_TBUFDATASETPARSER
_VMT_BUFDATASET_PARSER_TBUFDATASETPARSER:
	.long	56,-56
	.long	_VMT_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER
	.long	_$BUFDATASET_PARSER$_Ld1
	.long	0,0
	.long	_$BUFDATASET_PARSER$_Ld2
	.long	_RTTI_BUFDATASET_PARSER_TBUFDATASETPARSER
	.long	_INIT_BUFDATASET_PARSER_TBUFDATASETPARSER
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__DESTROY
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
	.long	_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__MAKEREC$$PEXPRESSIONREC
	.long	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__FILLEXPRESSLIST
	.long	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__HANDLEUNKNOWNVARIABLE$ANSISTRING
	.long	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__CURRENTEXPRESSION$$ANSISTRING
	.long	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__CLEAREXPRESSIONS
	.long	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__PARSEEXPRESSION$ANSISTRING
	.long	_BUFDATASET_PARSER_TBUFDATASETPARSER_$__EXTRACTFROMBUFFER$PCHAR$$PCHAR
	.long	0

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld4
_$BUFDATASET_PARSER$_Ld4:
	.byte	9
	.ascii	"TFieldVar"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_PARSER_TFIELDVAR
_VMT_BUFDATASET_PARSER_TFIELDVAR:
	.long	16,-16
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$BUFDATASET_PARSER$_Ld4
	.long	0,0
	.long	_$BUFDATASET_PARSER$_Ld5
	.long	_RTTI_BUFDATASET_PARSER_TFIELDVAR
	.long	_INIT_BUFDATASET_PARSER_TFIELDVAR
	.long	0
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
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld7
_$BUFDATASET_PARSER$_Ld7:
	.byte	15
	.ascii	"TStringFieldVar"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_PARSER_TSTRINGFIELDVAR
_VMT_BUFDATASET_PARSER_TSTRINGFIELDVAR:
	.long	20,-20
	.long	_VMT_BUFDATASET_PARSER_TFIELDVAR
	.long	_$BUFDATASET_PARSER$_Ld7
	.long	0,0
	.long	_$BUFDATASET_PARSER$_Ld8
	.long	_RTTI_BUFDATASET_PARSER_TSTRINGFIELDVAR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__DESTROY
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
	.long	_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__GETFIELDVAL$$POINTER
	.long	_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
	.long	_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__REFRESH$PCHAR
	.long	0

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld10
_$BUFDATASET_PARSER$_Ld10:
	.byte	14
	.ascii	"TFloatFieldVar"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_PARSER_TFLOATFIELDVAR
_VMT_BUFDATASET_PARSER_TFLOATFIELDVAR:
	.long	24,-24
	.long	_VMT_BUFDATASET_PARSER_TFIELDVAR
	.long	_$BUFDATASET_PARSER$_Ld10
	.long	0,0
	.long	_$BUFDATASET_PARSER$_Ld11
	.long	_RTTI_BUFDATASET_PARSER_TFLOATFIELDVAR
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
	.long	_BUFDATASET_PARSER_TFLOATFIELDVAR_$__GETFIELDVAL$$POINTER
	.long	_BUFDATASET_PARSER_TFLOATFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
	.long	_BUFDATASET_PARSER_TFLOATFIELDVAR_$__REFRESH$PCHAR
	.long	0

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld13
_$BUFDATASET_PARSER$_Ld13:
	.byte	16
	.ascii	"TIntegerFieldVar"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_PARSER_TINTEGERFIELDVAR
_VMT_BUFDATASET_PARSER_TINTEGERFIELDVAR:
	.long	20,-20
	.long	_VMT_BUFDATASET_PARSER_TFIELDVAR
	.long	_$BUFDATASET_PARSER$_Ld13
	.long	0,0
	.long	_$BUFDATASET_PARSER$_Ld14
	.long	_RTTI_BUFDATASET_PARSER_TINTEGERFIELDVAR
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
	.long	_BUFDATASET_PARSER_TINTEGERFIELDVAR_$__GETFIELDVAL$$POINTER
	.long	_BUFDATASET_PARSER_TINTEGERFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
	.long	_BUFDATASET_PARSER_TINTEGERFIELDVAR_$__REFRESH$PCHAR
	.long	0

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld16
_$BUFDATASET_PARSER$_Ld16:
	.byte	17
	.ascii	"TLargeIntFieldVar"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_PARSER_TLARGEINTFIELDVAR
_VMT_BUFDATASET_PARSER_TLARGEINTFIELDVAR:
	.long	24,-24
	.long	_VMT_BUFDATASET_PARSER_TFIELDVAR
	.long	_$BUFDATASET_PARSER$_Ld16
	.long	0,0
	.long	_$BUFDATASET_PARSER$_Ld17
	.long	_RTTI_BUFDATASET_PARSER_TLARGEINTFIELDVAR
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
	.long	_BUFDATASET_PARSER_TLARGEINTFIELDVAR_$__GETFIELDVAL$$POINTER
	.long	_BUFDATASET_PARSER_TLARGEINTFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
	.long	_BUFDATASET_PARSER_TLARGEINTFIELDVAR_$__REFRESH$PCHAR
	.long	0

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld19
_$BUFDATASET_PARSER$_Ld19:
	.byte	17
	.ascii	"TDateTimeFieldVar"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_PARSER_TDATETIMEFIELDVAR
_VMT_BUFDATASET_PARSER_TDATETIMEFIELDVAR:
	.long	24,-24
	.long	_VMT_BUFDATASET_PARSER_TFIELDVAR
	.long	_$BUFDATASET_PARSER$_Ld19
	.long	0,0
	.long	_$BUFDATASET_PARSER$_Ld20
	.long	_RTTI_BUFDATASET_PARSER_TDATETIMEFIELDVAR
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
	.long	_BUFDATASET_PARSER_TDATETIMEFIELDVAR_$__GETFIELDVAL$$POINTER
	.long	_BUFDATASET_PARSER_TDATETIMEFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
	.long	_BUFDATASET_PARSER_TDATETIMEFIELDVAR_$__REFRESH$PCHAR
	.long	0

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld22
_$BUFDATASET_PARSER$_Ld22:
	.byte	16
	.ascii	"TBooleanFieldVar"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_PARSER_TBOOLEANFIELDVAR
_VMT_BUFDATASET_PARSER_TBOOLEANFIELDVAR:
	.long	20,-20
	.long	_VMT_BUFDATASET_PARSER_TFIELDVAR
	.long	_$BUFDATASET_PARSER$_Ld22
	.long	0,0
	.long	_$BUFDATASET_PARSER$_Ld23
	.long	_RTTI_BUFDATASET_PARSER_TBOOLEANFIELDVAR
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
	.long	_BUFDATASET_PARSER_TBOOLEANFIELDVAR_$__GETFIELDVAL$$POINTER
	.long	_BUFDATASET_PARSER_TBOOLEANFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
	.long	_BUFDATASET_PARSER_TBOOLEANFIELDVAR_$__REFRESH$PCHAR
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_BUFDATASET_PARSER
_THREADVARLIST_BUFDATASET_PARSER:
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

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
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

L_BUFDATASET_PARSER_TFIELDVAR_$__CREATE$TFIELD$$TFIELDVAR$stub:
.indirect_symbol _BUFDATASET_PARSER_TFIELDVAR_$__CREATE$TFIELD$$TFIELDVAR
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__DESTROY$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRCOPY$PCHAR$PCHAR$$PCHAR$stub:
.indirect_symbol _SYSUTILS_STRCOPY$PCHAR$PCHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CREATE$$TCUSTOMEXPRESSIONPARSER$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CREATE$$TCUSTOMEXPRESSIONPARSER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DESTROY$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FREEANDNIL$formal$stub:
.indirect_symbol _SYSUTILS_FREEANDNIL$formal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__GETRESULTTYPE$$TEXPRESSIONTYPE$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSSUPP_TOCOLLECTION_$__FREEALL$stub:
.indirect_symbol _DBF_PRSSUPP_TOCOLLECTION_$__FREEALL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT$stub:
.indirect_symbol _DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT
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

L_DB_TDATASET_$__FINDFIELD$ANSISTRING$$TFIELD$stub:
.indirect_symbol _DB_TDATASET_$__FINDFIELD$ANSISTRING$$TFIELD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_PARSER_TBUFDATASETPARSER_$__GETVARIABLEINFO$ANSISTRING$$TFIELD$stub:
.indirect_symbol _BUFDATASET_PARSER_TBUFDATASETPARSER_$__GETVARIABLEINFO$ANSISTRING$$TFIELD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RAISEEXCEPTION$stub:
.indirect_symbol FPC_RAISEEXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_PARSER_TSTRINGFIELDVAR_$__CREATE$TFIELD$$TSTRINGFIELDVAR$stub:
.indirect_symbol _BUFDATASET_PARSER_TSTRINGFIELDVAR_$__CREATE$TFIELD$$TSTRINGFIELDVAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINESTRINGVARIABLE$ANSISTRING$PPCHAR$$TEXPRWORD$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINESTRINGVARIABLE$ANSISTRING$PPCHAR$$TEXPRWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEBOOLEANVARIABLE$ANSISTRING$PBOOLEAN$$TEXPRWORD$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEBOOLEANVARIABLE$ANSISTRING$PBOOLEAN$$TEXPRWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEFLOATVARIABLE$ANSISTRING$PDOUBLE$$TEXPRWORD$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEFLOATVARIABLE$ANSISTRING$PDOUBLE$$TEXPRWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEINTEGERVARIABLE$ANSISTRING$PINTEGER$$TEXPRWORD$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEINTEGERVARIABLE$ANSISTRING$PINTEGER$$TEXPRWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINELARGEINTVARIABLE$ANSISTRING$PLARGEINT$$TEXPRWORD$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINELARGEINTVARIABLE$ANSISTRING$PLARGEINT$$TEXPRWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEDATETIMEVARIABLE$ANSISTRING$PDATETIMEREC$$TEXPRWORD$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEDATETIMEVARIABLE$ANSISTRING$PDATETIMEREC$$TEXPRWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CLEAREXPRESSIONS$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CLEAREXPRESSIONS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSSUPP_TOCOLLECTION_$__DOFREE$POINTER$stub:
.indirect_symbol _DBF_PRSSUPP_TOCOLLECTION_$__DOFREE$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__COMPILEEXPRESSION$ANSISTRING$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__COMPILEEXPRESSION$ANSISTRING
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

LFPC_PCHAR_LENGTH$stub:
.indirect_symbol FPC_PCHAR_LENGTH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__EVALUATECURRENT$stub:
.indirect_symbol _DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__EVALUATECURRENT
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
.globl	_INIT_BUFDATASET_PARSER_DEF112
_INIT_BUFDATASET_PARSER_DEF112:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_BUFDATASET_PARSER_DEF120
_INIT_BUFDATASET_PARSER_DEF120:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_BUFDATASET_PARSER_DEF124
_INIT_BUFDATASET_PARSER_DEF124:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld2
_$BUFDATASET_PARSER$_Ld2:
	.short	0
	.long	_$BUFDATASET_PARSER$_Ld3
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld3
_$BUFDATASET_PARSER$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_PARSER_TBUFDATASETPARSER
_INIT_BUFDATASET_PARSER_TBUFDATASETPARSER:
	.byte	15,17
	.ascii	"TBufDatasetParser"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	52

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_PARSER_TBUFDATASETPARSER
_RTTI_BUFDATASET_PARSER_TBUFDATASETPARSER:
	.byte	15,17
	.ascii	"TBufDatasetParser"
	.long	_VMT_BUFDATASET_PARSER_TBUFDATASETPARSER
	.long	_RTTI_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER
	.short	0
	.byte	17
	.ascii	"bufdataset_parser"
	.short	0

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld5
_$BUFDATASET_PARSER$_Ld5:
	.short	0
	.long	_$BUFDATASET_PARSER$_Ld6
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld6
_$BUFDATASET_PARSER$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_PARSER_TFIELDVAR
_INIT_BUFDATASET_PARSER_TFIELDVAR:
	.byte	15,9
	.ascii	"TFieldVar"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	8

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_PARSER_TFIELDVAR
_RTTI_BUFDATASET_PARSER_TFIELDVAR:
	.byte	15,9
	.ascii	"TFieldVar"
	.long	_VMT_BUFDATASET_PARSER_TFIELDVAR
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	17
	.ascii	"bufdataset_parser"
	.short	0

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld8
_$BUFDATASET_PARSER$_Ld8:
	.short	0
	.long	_$BUFDATASET_PARSER$_Ld9
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld9
_$BUFDATASET_PARSER$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_PARSER_TSTRINGFIELDVAR
_RTTI_BUFDATASET_PARSER_TSTRINGFIELDVAR:
	.byte	15,15
	.ascii	"TStringFieldVar"
	.long	_VMT_BUFDATASET_PARSER_TSTRINGFIELDVAR
	.long	_RTTI_BUFDATASET_PARSER_TFIELDVAR
	.short	0
	.byte	17
	.ascii	"bufdataset_parser"
	.short	0

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld11
_$BUFDATASET_PARSER$_Ld11:
	.short	0
	.long	_$BUFDATASET_PARSER$_Ld12
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld12
_$BUFDATASET_PARSER$_Ld12:
	.short	0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_PARSER_TFLOATFIELDVAR
_RTTI_BUFDATASET_PARSER_TFLOATFIELDVAR:
	.byte	15,14
	.ascii	"TFloatFieldVar"
	.long	_VMT_BUFDATASET_PARSER_TFLOATFIELDVAR
	.long	_RTTI_BUFDATASET_PARSER_TFIELDVAR
	.short	0
	.byte	17
	.ascii	"bufdataset_parser"
	.short	0

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld14
_$BUFDATASET_PARSER$_Ld14:
	.short	0
	.long	_$BUFDATASET_PARSER$_Ld15
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld15
_$BUFDATASET_PARSER$_Ld15:
	.short	0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_PARSER_TINTEGERFIELDVAR
_RTTI_BUFDATASET_PARSER_TINTEGERFIELDVAR:
	.byte	15,16
	.ascii	"TIntegerFieldVar"
	.long	_VMT_BUFDATASET_PARSER_TINTEGERFIELDVAR
	.long	_RTTI_BUFDATASET_PARSER_TFIELDVAR
	.short	0
	.byte	17
	.ascii	"bufdataset_parser"
	.short	0

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld17
_$BUFDATASET_PARSER$_Ld17:
	.short	0
	.long	_$BUFDATASET_PARSER$_Ld18
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld18
_$BUFDATASET_PARSER$_Ld18:
	.short	0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_PARSER_TLARGEINTFIELDVAR
_RTTI_BUFDATASET_PARSER_TLARGEINTFIELDVAR:
	.byte	15,17
	.ascii	"TLargeIntFieldVar"
	.long	_VMT_BUFDATASET_PARSER_TLARGEINTFIELDVAR
	.long	_RTTI_BUFDATASET_PARSER_TFIELDVAR
	.short	0
	.byte	17
	.ascii	"bufdataset_parser"
	.short	0

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld20
_$BUFDATASET_PARSER$_Ld20:
	.short	0
	.long	_$BUFDATASET_PARSER$_Ld21
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld21
_$BUFDATASET_PARSER$_Ld21:
	.short	0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_PARSER_TDATETIMEFIELDVAR
_RTTI_BUFDATASET_PARSER_TDATETIMEFIELDVAR:
	.byte	15,17
	.ascii	"TDateTimeFieldVar"
	.long	_VMT_BUFDATASET_PARSER_TDATETIMEFIELDVAR
	.long	_RTTI_BUFDATASET_PARSER_TFIELDVAR
	.short	0
	.byte	17
	.ascii	"bufdataset_parser"
	.short	0

.const_data
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld23
_$BUFDATASET_PARSER$_Ld23:
	.short	0
	.long	_$BUFDATASET_PARSER$_Ld24
	.align 2
.globl	_$BUFDATASET_PARSER$_Ld24
_$BUFDATASET_PARSER$_Ld24:
	.short	0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_PARSER_TBOOLEANFIELDVAR
_RTTI_BUFDATASET_PARSER_TBOOLEANFIELDVAR:
	.byte	15,16
	.ascii	"TBooleanFieldVar"
	.long	_VMT_BUFDATASET_PARSER_TBOOLEANFIELDVAR
	.long	_RTTI_BUFDATASET_PARSER_TFIELDVAR
	.short	0
	.byte	17
	.ascii	"bufdataset_parser"
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
L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr:
.indirect_symbol _U_DBF_PRSCORE_DBFWORDSGENERALLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr:
.indirect_symbol _U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_PRSCORE_DBFWORDSINSENSPARTIALLIST$non_lazy_ptr:
.indirect_symbol _U_DBF_PRSCORE_DBFWORDSINSENSPARTIALLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_PRSCORE_DBFWORDSINSENSNOPARTIALLIST$non_lazy_ptr:
.indirect_symbol _U_DBF_PRSCORE_DBFWORDSINSENSNOPARTIALLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr:
.indirect_symbol _U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_PRSCORE_DBFWORDSSENSPARTIALLIST$non_lazy_ptr:
.indirect_symbol _U_DBF_PRSCORE_DBFWORDSSENSPARTIALLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_PRSCORE_DBFWORDSSENSNOPARTIALLIST$non_lazy_ptr:
.indirect_symbol _U_DBF_PRSCORE_DBFWORDSSENSNOPARTIALLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SERRINDEXBASEDONUNKFIELD$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SERRINDEXBASEDONUNKFIELD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DB_EDATABASEERROR$non_lazy_ptr:
.indirect_symbol _VMT_DB_EDATABASEERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_BUFDATASET_PARSER_TSTRINGFIELDVAR$non_lazy_ptr:
.indirect_symbol _VMT_BUFDATASET_PARSER_TSTRINGFIELDVAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_BUFDATASET_PARSER_TBOOLEANFIELDVAR$non_lazy_ptr:
.indirect_symbol _VMT_BUFDATASET_PARSER_TBOOLEANFIELDVAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_BUFDATASET_PARSER_TFLOATFIELDVAR$non_lazy_ptr:
.indirect_symbol _VMT_BUFDATASET_PARSER_TFLOATFIELDVAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_BUFDATASET_PARSER_TINTEGERFIELDVAR$non_lazy_ptr:
.indirect_symbol _VMT_BUFDATASET_PARSER_TINTEGERFIELDVAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_BUFDATASET_PARSER_TLARGEINTFIELDVAR$non_lazy_ptr:
.indirect_symbol _VMT_BUFDATASET_PARSER_TLARGEINTFIELDVAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_BUFDATASET_PARSER_TDATETIMEFIELDVAR$non_lazy_ptr:
.indirect_symbol _VMT_BUFDATASET_PARSER_TDATETIMEFIELDVAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DB_FIELDTYPENAMES$non_lazy_ptr:
.indirect_symbol _TC_DB_FIELDTYPENAMES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SERRINDEXBASEDONINVFIELD$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SERRINDEXBASEDONINVFIELD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_EMPTYSTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SERRINDEXRESULTTOOLONG$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SERRINDEXRESULTTOOLONG
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

