# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DBF_PARSER_TFIELDVAR_$__CREATE$TDBFFIELDDEF$TDBFFILE$$TFIELDVAR
_DBF_PARSER_TFIELDVAR_$__CREATE$TDBFFIELDDEF$TDBFFILE$$TFIELDVAR:
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
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%esi
	movl	28(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	28(%esi),%eax
	movl	%eax,12(%ebx)
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj34
	jmp	Lj33
Lj34:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj32
	jmp	Lj33
Lj32:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj33:
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
	jne	Lj38
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj39
	jmp	Lj40
Lj39:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj40:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj38:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj37
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj37:
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
.globl	_DBF_PARSER_TFIELDVAR_$__SETEXPRWORD$TEXPRWORD
_DBF_PARSER_TFIELDVAR_$__SETEXPRWORD$TEXPRWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,16(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TSTRINGFIELDVAR_$__DESTROY
_DBF_PARSER_TSTRINGFIELDVAR_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj51
	jmp	Lj52
Lj51:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj52:
	movl	-8(%ebp),%eax
	movb	24(%eax),%al
	testb	%al,%al
	jne	Lj55
	jmp	Lj56
Lj55:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj56:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj65
	jmp	Lj64
Lj65:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj63
	jmp	Lj64
Lj63:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj64:
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TSTRINGFIELDVAR_$__GETFIELDVAL$$POINTER
_DBF_PARSER_TSTRINGFIELDVAR_$__GETFIELDVAL$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TSTRINGFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
_DBF_PARSER_TSTRINGFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE:
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
.globl	_DBF_PARSER_TSTRINGFIELDVAR_$__REFRESH$PCHAR
_DBF_PARSER_TSTRINGFIELDVAR_$__REFRESH$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	80(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movb	24(%eax),%al
	testb	%al,%al
	jne	Lj80
	jmp	Lj81
Lj80:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	60(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movb	24(%eax),%al
	cmpb	$2,%al
	je	Lj84
	jmp	Lj85
Lj84:
	jmp	Lj87
	.align 2
Lj86:
	decl	-12(%ebp)
Lj87:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jge	Lj89
	jmp	Lj88
Lj89:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movb	(%edx,%eax,1),%al
	cmpb	$32,%al
	je	Lj86
	jmp	Lj88
Lj88:
Lj85:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,4(%esp)
	call	L_DBF_WTIL_GETACP$$LONGWORD$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	144(%eax),%eax
	movl	-16(%ebp),%ecx
	call	L_DBF_COMMON_TRANSLATESTRING$LONGWORD$LONGWORD$PCHAR$PCHAR$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	movl	-12(%ebp),%eax
	movb	$0,(%edx,%eax,1)
	jmp	Lj104
Lj81:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,20(%eax)
Lj104:
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TSTRINGFIELDVAR_$__SETEXPRWORD$TEXPRWORD
_DBF_PARSER_TSTRINGFIELDVAR_$__SETEXPRWORD$TEXPRWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PARSER_TFIELDVAR_$__SETEXPRWORD$TEXPRWORD$stub
	movl	-8(%ebp),%eax
	call	L_DBF_PARSER_TSTRINGFIELDVAR_$__UPDATEEXPRWORD$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TSTRINGFIELDVAR_$__UPDATEEXPRWORD
_DBF_PARSER_TSTRINGFIELDVAR_$__UPDATEEXPRWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	24(%eax),%al
	cmpb	$2,%al
	jne	Lj117
	jmp	Lj118
Lj117:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	60(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	16(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	jmp	Lj123
Lj118:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	$-1,%edx
	movl	-4(%ebp),%ecx
	movl	16(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
Lj123:
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TSTRINGFIELDVAR_$__SETMODE$TSTRINGFIELDMODE
_DBF_PARSER_TSTRINGFIELDVAR_$__SETMODE$TSTRINGFIELDMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	24(%eax),%al
	cmpb	-4(%ebp),%al
	je	Lj130
	jmp	Lj131
Lj130:
	jmp	Lj128
Lj131:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,24(%eax)
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj134
	jmp	Lj135
Lj134:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	$0,20(%eax)
	jmp	Lj140
Lj135:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	60(%eax),%edx
	imull	$3,%edx
	incl	%edx
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
Lj140:
	movl	-8(%ebp),%eax
	call	L_DBF_PARSER_TSTRINGFIELDVAR_$__UPDATEEXPRWORD$stub
Lj128:
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TFLOATFIELDVAR_$__GETFIELDVAL$$POINTER
_DBF_PARSER_TFLOATFIELDVAR_$__GETFIELDVAL$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TFLOATFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
_DBF_PARSER_TFLOATFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE:
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
.globl	_DBF_PARSER_TFLOATFIELDVAR_$__REFRESH$PCHAR
_DBF_PARSER_TFLOATFIELDVAR_$__REFRESH$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	32(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATAFROMDEF$crc77AF605D$stub
	testb	%al,%al
	je	Lj157
	jmp	Lj158
Lj157:
	movl	-8(%ebp),%eax
	fldz
	fstpl	20(%eax)
Lj158:
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TINTEGERFIELDVAR_$__GETFIELDVAL$$POINTER
_DBF_PARSER_TINTEGERFIELDVAR_$__GETFIELDVAL$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TINTEGERFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
_DBF_PARSER_TINTEGERFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE:
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
.globl	_DBF_PARSER_TINTEGERFIELDVAR_$__REFRESH$PCHAR
_DBF_PARSER_TINTEGERFIELDVAR_$__REFRESH$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,20(%eax)
	movb	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	32(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATAFROMDEF$crc77AF605D$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TLARGEINTFIELDVAR_$__GETFIELDVAL$$POINTER
_DBF_PARSER_TLARGEINTFIELDVAR_$__GETFIELDVAL$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TLARGEINTFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
_DBF_PARSER_TLARGEINTFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE:
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
.globl	_DBF_PARSER_TLARGEINTFIELDVAR_$__REFRESH$PCHAR
_DBF_PARSER_TLARGEINTFIELDVAR_$__REFRESH$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	32(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATAFROMDEF$crc77AF605D$stub
	testb	%al,%al
	je	Lj207
	jmp	Lj208
Lj207:
	movl	-8(%ebp),%eax
	movl	$0,20(%eax)
	movl	$0,24(%eax)
Lj208:
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDATETIMEFIELDVAR_$__GETFIELDVAL$$POINTER
_DBF_PARSER_TDATETIMEFIELDVAR_$__GETFIELDVAL$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDATETIMEFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
_DBF_PARSER_TDATETIMEFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE:
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
.globl	_DBF_PARSER_TDATETIMEFIELDVAR_$__REFRESH$PCHAR
_DBF_PARSER_TDATETIMEFIELDVAR_$__REFRESH$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	$11,%ecx
	call	L_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATAFROMDEF$crc77AF605D$stub
	testb	%al,%al
	je	Lj233
	jmp	Lj234
Lj233:
	movl	-8(%ebp),%eax
	fldz
	fstpl	20(%eax)
Lj234:
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TBOOLEANFIELDVAR_$__GETFIELDVAL$$POINTER
_DBF_PARSER_TBOOLEANFIELDVAR_$__GETFIELDVAL$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TBOOLEANFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
_DBF_PARSER_TBOOLEANFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE:
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
.globl	_DBF_PARSER_TBOOLEANFIELDVAR_$__REFRESH$PCHAR
_DBF_PARSER_TBOOLEANFIELDVAR_$__REFRESH$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-10(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	$5,%ecx
	call	L_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATAFROMDEF$crc77AF605D$stub
	testb	%al,%al
	jne	Lj259
	jmp	Lj260
Lj259:
	movl	-8(%ebp),%edx
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	setneb	20(%edx)
	jmp	Lj275
Lj260:
	movl	-8(%ebp),%eax
	movb	$0,20(%eax)
Lj275:
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDBFPARSER_$__CREATE$POINTER$$TDBFPARSER
_DBF_PARSER_TDBFPARSER_$__CREATE$POINTER$$TDBFPARSER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj279
Lj279:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj280
	jmp	Lj281
Lj280:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj281:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj286
	jmp	Lj287
Lj286:
	jmp	Lj278
Lj287:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj290
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj294
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,36(%eax)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj279(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-12(%ebp),%eax
	movb	$1,46(%eax)
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CREATE$$TCUSTOMEXPRESSIONPARSER$stub
Lj294:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj295
	call	LFPC_RERAISE$stub
Lj295:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj313
	jmp	Lj312
Lj313:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj311
	jmp	Lj312
Lj311:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj312:
Lj290:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj292
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj317
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj318
	jmp	Lj319
Lj318:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj319:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj317:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj316
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj316:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj292
Lj292:
Lj278:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDBFPARSER_$__DESTROY
_DBF_PARSER_TDBFPARSER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj326
	jmp	Lj327
Lj326:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj327:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DESTROY$stub
	movl	-8(%ebp),%eax
	leal	40(%eax),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj340
	jmp	Lj339
Lj340:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj338
	jmp	Lj339
Lj338:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj339:
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDBFPARSER_$__GETRESULTTYPE$$TEXPRESSIONTYPE
_DBF_PARSER_TDBFPARSER_$__GETRESULTTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,44(%eax)
	jne	Lj345
	jmp	Lj346
Lj345:
	movl	-4(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__GETRESULTTYPE$$TEXPRESSIONTYPE$stub
	movb	%al,-5(%ebp)
	jmp	Lj351
Lj346:
	movl	-4(%ebp),%eax
	movb	45(%eax),%al
	movb	%al,-5(%ebp)
Lj351:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDBFPARSER_$__GETRESULTLEN$$LONGINT
_DBF_PARSER_TDBFPARSER_$__GETRESULTLEN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	testb	%al,%al
	je	Lj359
	decb	%al
	je	Lj362
	decb	%al
	je	Lj358
	subb	$2,%al
	je	Lj360
	decb	%al
	je	Lj361
	jmp	Lj357
Lj358:
	movl	$1,-8(%ebp)
	jmp	Lj356
Lj359:
	movl	$4,-8(%ebp)
	jmp	Lj356
Lj360:
	movl	$8,-8(%ebp)
	jmp	Lj356
Lj361:
	movl	$8,-8(%ebp)
	jmp	Lj356
Lj362:
	movl	-4(%ebp),%eax
	movb	44(%eax),%al
	testb	%al,%al
	je	Lj375
	jmp	Lj374
Lj375:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	40(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movb	24(%eax),%al
	cmpb	$2,%al
	jne	Lj373
	jmp	Lj374
Lj373:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	40(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	4(%eax),%eax
	movl	60(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj386
Lj374:
	movl	$-1,-8(%ebp)
Lj386:
	jmp	Lj356
Lj357:
	movl	$-1,-8(%ebp)
Lj356:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDBFPARSER_$__SETCASEINSENSITIVE$BOOLEAN
_DBF_PARSER_TDBFPARSER_$__SETCASEINSENSITIVE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	46(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj393
	jmp	Lj394
Lj393:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,46(%eax)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
Lj394:
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDBFPARSER_$__SETPARTIALMATCH$BOOLEAN
_DBF_PARSER_TDBFPARSER_$__SETPARTIALMATCH$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	48(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj401
	jmp	Lj402
Lj401:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,48(%eax)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
Lj402:
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDBFPARSER_$__SETSTRINGFIELDMODE$TSTRINGFIELDMODE
_DBF_PARSER_TDBFPARSER_$__SETSTRINGFIELDMODE$TSTRINGFIELDMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj408
Lj408:
	popl	%edi
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	47(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj409
	jmp	Lj410
Lj409:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,47(%eax)
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	-8(%ebp),%edx
	movl	40(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj414
	decl	-12(%ebp)
	.align 2
Lj415:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	40(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,%edx
	movl	L_VMT_DBF_PARSER_TSTRINGFIELDVAR$non_lazy_ptr-Lj408(%edi),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj418
	jmp	Lj419
Lj418:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	40(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,%esi
	movb	-4(%ebp),%dl
	movl	%esi,%eax
	call	L_DBF_PARSER_TSTRINGFIELDVAR_$__SETMODE$TSTRINGFIELDMODE$stub
Lj419:
	cmpl	-12(%ebp),%ebx
	jg	Lj415
Lj414:
Lj410:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDBFPARSER_$__FILLEXPRESSLIST
_DBF_PARSER_TDBFPARSER_$__FILLEXPRESSLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	call	Lj439
Lj439:
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
	jne	Lj440
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
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj439(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSGENERALLIST$non_lazy_ptr-Lj439(%ebx),%edx
	movl	(%edx),%edx
	movl	$0,%ecx
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT$stub
	movl	-4(%ebp),%eax
	cmpb	$0,46(%eax)
	jne	Lj459
	jmp	Lj460
Lj459:
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj439(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSGENERALLIST$non_lazy_ptr-Lj439(%ebx),%edx
	movl	(%edx),%edx
	movl	$0,%ecx
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT$stub
	movl	-4(%ebp),%eax
	cmpb	$0,48(%eax)
	jne	Lj471
	jmp	Lj472
Lj471:
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSPARTIALLIST$non_lazy_ptr-Lj439(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSPARTIALLIST$non_lazy_ptr-Lj439(%ebx),%edx
	movl	(%edx),%edx
	movl	$0,%ecx
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT$stub
	jmp	Lj483
Lj472:
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSNOPARTIALLIST$non_lazy_ptr-Lj439(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSINSENSNOPARTIALLIST$non_lazy_ptr-Lj439(%ebx),%edx
	movl	(%edx),%edx
	movl	$0,%ecx
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT$stub
Lj483:
	jmp	Lj494
Lj460:
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj439(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSGENERALLIST$non_lazy_ptr-Lj439(%ebx),%edx
	movl	(%edx),%edx
	movl	$0,%ecx
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT$stub
	movl	-4(%ebp),%eax
	cmpb	$0,48(%eax)
	jne	Lj505
	jmp	Lj506
Lj505:
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSPARTIALLIST$non_lazy_ptr-Lj439(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSPARTIALLIST$non_lazy_ptr-Lj439(%ebx),%edx
	movl	(%edx),%edx
	movl	$0,%ecx
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT$stub
	jmp	Lj517
Lj506:
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSNOPARTIALLIST$non_lazy_ptr-Lj439(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	L_U_DBF_PRSCORE_DBFWORDSSENSNOPARTIALLIST$non_lazy_ptr-Lj439(%ebx),%edx
	movl	(%edx),%edx
	movl	$0,%ecx
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT$stub
Lj517:
Lj494:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj530
	movl	-4(%eax),%eax
Lj530:
	cmpl	$0,%eax
	jg	Lj528
	jmp	Lj529
Lj528:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
Lj529:
Lj440:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj441
	call	LFPC_RERAISE$stub
Lj441:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDBFPARSER_$__GETVARIABLEINFO$ANSISTRING$$TDBFFIELDDEF
_DBF_PARSER_TDBFPARSER_$__GETVARIABLEINFO$ANSISTRING$$TDBFFIELDDEF:
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
	jne	Lj543
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_DBFFILE_TDBFFILE_$__GETFIELDINFO$ANSISTRING$$TDBFFIELDDEF$stub
	movl	%eax,-12(%ebp)
Lj543:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj544
	call	LFPC_RERAISE$stub
Lj544:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDBFPARSER_$__HANDLEUNKNOWNVARIABLE$ANSISTRING
_DBF_PARSER_TDBFPARSER_$__HANDLEUNKNOWNVARIABLE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj553
Lj553:
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
	jne	Lj554
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PARSER_TDBFPARSER_$__GETVARIABLEINFO$ANSISTRING$$TDBFFIELDDEF$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj563
	jmp	Lj564
Lj563:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_U_DBF_STR_STRING_INDEX_BASED_ON_UNKNOWN_FIELD$non_lazy_ptr-Lj553(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj553(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj553(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj564:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$1,%eax
	jb	Lj576
	decl	%eax
	je	Lj577
	decl	%eax
	jb	Lj576
	subl	$1,%eax
	jbe	Lj580
	subl	$2,%eax
	je	Lj578
	decl	%eax
	je	Lj579
	subl	$3,%eax
	je	Lj582
	subl	$2,%eax
	je	Lj582
	subl	$3,%eax
	je	Lj580
	subl	$11,%eax
	je	Lj581
	jmp	Lj576
Lj577:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	L_VMT_DBF_PARSER_TSTRINGFIELDVAR$non_lazy_ptr-Lj553(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PARSER_TFIELDVAR_$__CREATE$TDBFFIELDDEF$TDBFFILE$$TFIELDVAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINESTRINGVARIABLE$ANSISTRING$PPCHAR$$TEXPRWORD$stub
	movl	%eax,%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-8(%ebp),%eax
	movb	47(%eax),%dl
	movl	-16(%ebp),%eax
	call	L_DBF_PARSER_TSTRINGFIELDVAR_$__SETMODE$TSTRINGFIELDMODE$stub
	jmp	Lj575
Lj578:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	L_VMT_DBF_PARSER_TBOOLEANFIELDVAR$non_lazy_ptr-Lj553(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PARSER_TFIELDVAR_$__CREATE$TDBFFIELDDEF$TDBFFILE$$TFIELDVAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEBOOLEANVARIABLE$ANSISTRING$PBOOLEAN$$TEXPRWORD$stub
	movl	%eax,%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	jmp	Lj575
Lj579:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	L_VMT_DBF_PARSER_TFLOATFIELDVAR$non_lazy_ptr-Lj553(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PARSER_TFIELDVAR_$__CREATE$TDBFFIELDDEF$TDBFFILE$$TFIELDVAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEFLOATVARIABLE$ANSISTRING$PDOUBLE$$TEXPRWORD$stub
	movl	%eax,%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	jmp	Lj575
Lj580:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	L_VMT_DBF_PARSER_TINTEGERFIELDVAR$non_lazy_ptr-Lj553(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PARSER_TFIELDVAR_$__CREATE$TDBFFIELDDEF$TDBFFILE$$TFIELDVAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEINTEGERVARIABLE$ANSISTRING$PINTEGER$$TEXPRWORD$stub
	movl	%eax,%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	jmp	Lj575
Lj581:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	L_VMT_DBF_PARSER_TLARGEINTFIELDVAR$non_lazy_ptr-Lj553(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PARSER_TFIELDVAR_$__CREATE$TDBFFIELDDEF$TDBFFILE$$TFIELDVAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINELARGEINTVARIABLE$ANSISTRING$PLARGEINT$$TEXPRWORD$stub
	movl	%eax,%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	jmp	Lj575
Lj582:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	L_VMT_DBF_PARSER_TDATETIMEFIELDVAR$non_lazy_ptr-Lj553(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PARSER_TFIELDVAR_$__CREATE$TDBFFIELDDEF$TDBFFILE$$TFIELDVAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__DEFINEDATETIMEVARIABLE$ANSISTRING$PDATETIMEREC$$TEXPRWORD$stub
	movl	%eax,%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	jmp	Lj575
Lj576:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_U_DBF_STR_STRING_INDEX_BASED_ON_INVALID_FIELD$non_lazy_ptr-Lj553(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj553(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj553(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj575:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%esi
	movl	40(%esi),%esi
	movl	(%esi),%esi
	call	*168(%esi)
Lj554:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj555
	call	LFPC_RERAISE$stub
Lj555:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDBFPARSER_$__CURRENTEXPRESSION$$ANSISTRING
_DBF_PARSER_TDBFPARSER_$__CURRENTEXPRESSION$$ANSISTRING:
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
.globl	_DBF_PARSER_TDBFPARSER_$__CLEAREXPRESSIONS
_DBF_PARSER_TDBFPARSER_$__CLEAREXPRESSIONS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj740
Lj740:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__CLEAREXPRESSIONS$stub
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	jne	Lj743
	jmp	Lj744
Lj743:
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
	jl	Lj746
	decl	-8(%ebp)
	.align 2
Lj747:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	40(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	16(%eax),%edx
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
	jg	Lj747
Lj746:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	movl	(%edx),%edx
	call	*184(%edx)
Lj744:
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj740(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	leal	52(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj740(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,52(%esi)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDBFPARSER_$__VALIDATEEXPRESSION$ANSISTRING
_DBF_PARSER_TDBFPARSER_$__VALIDATEEXPRESSION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDBFPARSER_$__PARSEEXPRESSION$ANSISTRING
_DBF_PARSER_TDBFPARSER_$__PARSEEXPRESSION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj774
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PARSER_TDBFPARSER_$__GETVARIABLEINFO$ANSISTRING$$TDBFFIELDDEF$stub
	testl	%eax,%eax
	seteb	44(%ebx)
	movl	-8(%ebp),%eax
	cmpb	$0,44(%eax)
	jne	Lj785
	jmp	Lj786
Lj785:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__COMPILEEXPRESSION$ANSISTRING$stub
	jmp	Lj791
Lj786:
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
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-8(%ebp),%edx
	movb	%al,45(%edx)
Lj791:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	52(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,52(%ebx)
Lj774:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj775
	call	LFPC_RERAISE$stub
Lj775:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PARSER_TDBFPARSER_$__EXTRACTFROMBUFFER$PCHAR$$PCHAR
_DBF_PARSER_TDBFPARSER_$__EXTRACTFROMBUFFER$PCHAR$$PCHAR:
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
	jl	Lj815
	decl	-16(%ebp)
	.align 2
Lj816:
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
	call	*112(%ecx)
	cmpl	-16(%ebp),%ebx
	jg	Lj816
Lj815:
	movl	-8(%ebp),%eax
	cmpb	$0,44(%eax)
	jne	Lj829
	jmp	Lj830
Lj829:
	movl	-8(%ebp),%eax
	call	L_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER_$__EVALUATECURRENT$stub
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj835
Lj830:
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
	movb	45(%eax),%al
	cmpb	$1,%al
	je	Lj846
	jmp	Lj847
Lj846:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
Lj847:
Lj835:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld1
_$DBF_PARSER$_Ld1:
	.byte	10
	.ascii	"TDbfParser"

.const_data
	.align 2
.globl	_VMT_DBF_PARSER_TDBFPARSER
_VMT_DBF_PARSER_TDBFPARSER:
	.long	56,-56
	.long	_VMT_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER
	.long	_$DBF_PARSER$_Ld1
	.long	0,0
	.long	_$DBF_PARSER$_Ld2
	.long	_RTTI_DBF_PARSER_TDBFPARSER
	.long	_INIT_DBF_PARSER_TDBFPARSER
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_PARSER_TDBFPARSER_$__DESTROY
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
	.long	_DBF_PARSER_TDBFPARSER_$__FILLEXPRESSLIST
	.long	_DBF_PARSER_TDBFPARSER_$__HANDLEUNKNOWNVARIABLE$ANSISTRING
	.long	_DBF_PARSER_TDBFPARSER_$__CURRENTEXPRESSION$$ANSISTRING
	.long	_DBF_PARSER_TDBFPARSER_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PARSER_TDBFPARSER_$__CLEAREXPRESSIONS
	.long	_DBF_PARSER_TDBFPARSER_$__VALIDATEEXPRESSION$ANSISTRING
	.long	_DBF_PARSER_TDBFPARSER_$__PARSEEXPRESSION$ANSISTRING
	.long	_DBF_PARSER_TDBFPARSER_$__EXTRACTFROMBUFFER$PCHAR$$PCHAR
	.long	0

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld4
_$DBF_PARSER$_Ld4:
	.byte	9
	.ascii	"TFieldVar"

.const_data
	.align 2
.globl	_VMT_DBF_PARSER_TFIELDVAR
_VMT_DBF_PARSER_TFIELDVAR:
	.long	20,-20
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DBF_PARSER$_Ld4
	.long	0,0
	.long	_$DBF_PARSER$_Ld5
	.long	_RTTI_DBF_PARSER_TFIELDVAR
	.long	_INIT_DBF_PARSER_TFIELDVAR
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
	.long	_DBF_PARSER_TFIELDVAR_$__SETEXPRWORD$TEXPRWORD
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld7
_$DBF_PARSER$_Ld7:
	.byte	15
	.ascii	"TStringFieldVar"

.const_data
	.align 2
.globl	_VMT_DBF_PARSER_TSTRINGFIELDVAR
_VMT_DBF_PARSER_TSTRINGFIELDVAR:
	.long	28,-28
	.long	_VMT_DBF_PARSER_TFIELDVAR
	.long	_$DBF_PARSER$_Ld7
	.long	0,0
	.long	_$DBF_PARSER$_Ld8
	.long	_RTTI_DBF_PARSER_TSTRINGFIELDVAR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_PARSER_TSTRINGFIELDVAR_$__DESTROY
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
	.long	_DBF_PARSER_TSTRINGFIELDVAR_$__GETFIELDVAL$$POINTER
	.long	_DBF_PARSER_TSTRINGFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PARSER_TSTRINGFIELDVAR_$__SETEXPRWORD$TEXPRWORD
	.long	_DBF_PARSER_TSTRINGFIELDVAR_$__REFRESH$PCHAR
	.long	0

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld10
_$DBF_PARSER$_Ld10:
	.byte	14
	.ascii	"TFloatFieldVar"

.const_data
	.align 2
.globl	_VMT_DBF_PARSER_TFLOATFIELDVAR
_VMT_DBF_PARSER_TFLOATFIELDVAR:
	.long	28,-28
	.long	_VMT_DBF_PARSER_TFIELDVAR
	.long	_$DBF_PARSER$_Ld10
	.long	0,0
	.long	_$DBF_PARSER$_Ld11
	.long	_RTTI_DBF_PARSER_TFLOATFIELDVAR
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
	.long	_DBF_PARSER_TFLOATFIELDVAR_$__GETFIELDVAL$$POINTER
	.long	_DBF_PARSER_TFLOATFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PARSER_TFIELDVAR_$__SETEXPRWORD$TEXPRWORD
	.long	_DBF_PARSER_TFLOATFIELDVAR_$__REFRESH$PCHAR
	.long	0

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld13
_$DBF_PARSER$_Ld13:
	.byte	16
	.ascii	"TIntegerFieldVar"

.const_data
	.align 2
.globl	_VMT_DBF_PARSER_TINTEGERFIELDVAR
_VMT_DBF_PARSER_TINTEGERFIELDVAR:
	.long	24,-24
	.long	_VMT_DBF_PARSER_TFIELDVAR
	.long	_$DBF_PARSER$_Ld13
	.long	0,0
	.long	_$DBF_PARSER$_Ld14
	.long	_RTTI_DBF_PARSER_TINTEGERFIELDVAR
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
	.long	_DBF_PARSER_TINTEGERFIELDVAR_$__GETFIELDVAL$$POINTER
	.long	_DBF_PARSER_TINTEGERFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PARSER_TFIELDVAR_$__SETEXPRWORD$TEXPRWORD
	.long	_DBF_PARSER_TINTEGERFIELDVAR_$__REFRESH$PCHAR
	.long	0

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld16
_$DBF_PARSER$_Ld16:
	.byte	17
	.ascii	"TLargeIntFieldVar"

.const_data
	.align 2
.globl	_VMT_DBF_PARSER_TLARGEINTFIELDVAR
_VMT_DBF_PARSER_TLARGEINTFIELDVAR:
	.long	28,-28
	.long	_VMT_DBF_PARSER_TFIELDVAR
	.long	_$DBF_PARSER$_Ld16
	.long	0,0
	.long	_$DBF_PARSER$_Ld17
	.long	_RTTI_DBF_PARSER_TLARGEINTFIELDVAR
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
	.long	_DBF_PARSER_TLARGEINTFIELDVAR_$__GETFIELDVAL$$POINTER
	.long	_DBF_PARSER_TLARGEINTFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PARSER_TFIELDVAR_$__SETEXPRWORD$TEXPRWORD
	.long	_DBF_PARSER_TLARGEINTFIELDVAR_$__REFRESH$PCHAR
	.long	0

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld19
_$DBF_PARSER$_Ld19:
	.byte	17
	.ascii	"TDateTimeFieldVar"

.const_data
	.align 2
.globl	_VMT_DBF_PARSER_TDATETIMEFIELDVAR
_VMT_DBF_PARSER_TDATETIMEFIELDVAR:
	.long	28,-28
	.long	_VMT_DBF_PARSER_TFIELDVAR
	.long	_$DBF_PARSER$_Ld19
	.long	0,0
	.long	_$DBF_PARSER$_Ld20
	.long	_RTTI_DBF_PARSER_TDATETIMEFIELDVAR
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
	.long	_DBF_PARSER_TDATETIMEFIELDVAR_$__GETFIELDVAL$$POINTER
	.long	_DBF_PARSER_TDATETIMEFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PARSER_TFIELDVAR_$__SETEXPRWORD$TEXPRWORD
	.long	_DBF_PARSER_TDATETIMEFIELDVAR_$__REFRESH$PCHAR
	.long	0

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld22
_$DBF_PARSER$_Ld22:
	.byte	16
	.ascii	"TBooleanFieldVar"

.const_data
	.align 2
.globl	_VMT_DBF_PARSER_TBOOLEANFIELDVAR
_VMT_DBF_PARSER_TBOOLEANFIELDVAR:
	.long	24,-24
	.long	_VMT_DBF_PARSER_TFIELDVAR
	.long	_$DBF_PARSER$_Ld22
	.long	0,0
	.long	_$DBF_PARSER$_Ld23
	.long	_RTTI_DBF_PARSER_TBOOLEANFIELDVAR
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
	.long	_DBF_PARSER_TBOOLEANFIELDVAR_$__GETFIELDVAL$$POINTER
	.long	_DBF_PARSER_TBOOLEANFIELDVAR_$__GETFIELDTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PARSER_TFIELDVAR_$__SETEXPRWORD$TEXPRWORD
	.long	_DBF_PARSER_TBOOLEANFIELDVAR_$__REFRESH$PCHAR
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_DBF_PARSER
_THREADVARLIST_DBF_PARSER:
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

L_DBF_PARSER_TFIELDVAR_$__SETEXPRWORD$TEXPRWORD$stub:
.indirect_symbol _DBF_PARSER_TFIELDVAR_$__SETEXPRWORD$TEXPRWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PARSER_TSTRINGFIELDVAR_$__UPDATEEXPRWORD$stub:
.indirect_symbol _DBF_PARSER_TSTRINGFIELDVAR_$__UPDATEEXPRWORD
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

L_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATAFROMDEF$crc77AF605D$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__GETFIELDDATAFROMDEF$crc77AF605D
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

L_DBF_COMMON_FREEANDNIL$formal$stub:
.indirect_symbol _DBF_COMMON_FREEANDNIL$formal
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

Lfpc_do_is$stub:
.indirect_symbol fpc_do_is
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PARSER_TSTRINGFIELDVAR_$__SETMODE$TSTRINGFIELDMODE$stub:
.indirect_symbol _DBF_PARSER_TSTRINGFIELDVAR_$__SETMODE$TSTRINGFIELDMODE
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

L_DBF_DBFFILE_TDBFFILE_$__GETFIELDINFO$ANSISTRING$$TDBFFIELDDEF$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__GETFIELDINFO$ANSISTRING$$TDBFFIELDDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PARSER_TDBFPARSER_$__GETVARIABLEINFO$ANSISTRING$$TDBFFIELDDEF$stub:
.indirect_symbol _DBF_PARSER_TDBFPARSER_$__GETVARIABLEINFO$ANSISTRING$$TDBFFIELDDEF
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

L_DBF_PARSER_TFIELDVAR_$__CREATE$TDBFFIELDDEF$TDBFFILE$$TFIELDVAR$stub:
.indirect_symbol _DBF_PARSER_TFIELDVAR_$__CREATE$TDBFFIELDDEF$TDBFFILE$$TFIELDVAR
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
.globl	_INIT_DBF_PARSER_TSTRINGFIELDMODE
_INIT_DBF_PARSER_TSTRINGFIELDMODE:
	.byte	3,16
	.ascii	"TStringFieldMode"
	.byte	1
	.long	0,2,0
	.byte	5
	.ascii	"smRaw"
	.byte	6
	.ascii	"smAnsi"
	.byte	10
	.ascii	"smAnsiTrim"
	.byte	10
	.ascii	"dbf_parser"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_PARSER_TSTRINGFIELDMODE
_RTTI_DBF_PARSER_TSTRINGFIELDMODE:
	.byte	3,16
	.ascii	"TStringFieldMode"
	.byte	1
	.long	0,2,0
	.byte	5
	.ascii	"smRaw"
	.byte	6
	.ascii	"smAnsi"
	.byte	10
	.ascii	"smAnsiTrim"
	.byte	10
	.ascii	"dbf_parser"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_PARSER_TSTRINGFIELDMODE_s2o
_RTTI_DBF_PARSER_TSTRINGFIELDMODE_s2o:
	.long	3,1
	.long	_RTTI_DBF_PARSER_TSTRINGFIELDMODE+37
	.long	2
	.long	_RTTI_DBF_PARSER_TSTRINGFIELDMODE+44
	.long	0
	.long	_RTTI_DBF_PARSER_TSTRINGFIELDMODE+31

.const_data
	.align 2
.globl	_RTTI_DBF_PARSER_TSTRINGFIELDMODE_o2s
_RTTI_DBF_PARSER_TSTRINGFIELDMODE_o2s:
	.long	0
	.long	_RTTI_DBF_PARSER_TSTRINGFIELDMODE+31
	.long	_RTTI_DBF_PARSER_TSTRINGFIELDMODE+37
	.long	_RTTI_DBF_PARSER_TSTRINGFIELDMODE+44

.const_data
	.align 2
.globl	_INIT_DBF_PARSER_DEF129
_INIT_DBF_PARSER_DEF129:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DBF_PARSER_DEF137
_INIT_DBF_PARSER_DEF137:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld2
_$DBF_PARSER$_Ld2:
	.short	0
	.long	_$DBF_PARSER$_Ld3
	.align 2
.globl	_$DBF_PARSER$_Ld3
_$DBF_PARSER$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PARSER_TDBFPARSER
_INIT_DBF_PARSER_TDBFPARSER:
	.byte	15,10
	.ascii	"TDbfParser"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	52

.const_data
	.align 2
.globl	_RTTI_DBF_PARSER_TDBFPARSER
_RTTI_DBF_PARSER_TDBFPARSER:
	.byte	15,10
	.ascii	"TDbfParser"
	.long	_VMT_DBF_PARSER_TDBFPARSER
	.long	_RTTI_DBF_PRSCORE_TCUSTOMEXPRESSIONPARSER
	.short	0
	.byte	10
	.ascii	"dbf_parser"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld5
_$DBF_PARSER$_Ld5:
	.short	0
	.long	_$DBF_PARSER$_Ld6
	.align 2
.globl	_$DBF_PARSER$_Ld6
_$DBF_PARSER$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PARSER_TFIELDVAR
_INIT_DBF_PARSER_TFIELDVAR:
	.byte	15,9
	.ascii	"TFieldVar"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	12

.const_data
	.align 2
.globl	_RTTI_DBF_PARSER_TFIELDVAR
_RTTI_DBF_PARSER_TFIELDVAR:
	.byte	15,9
	.ascii	"TFieldVar"
	.long	_VMT_DBF_PARSER_TFIELDVAR
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	10
	.ascii	"dbf_parser"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld8
_$DBF_PARSER$_Ld8:
	.short	0
	.long	_$DBF_PARSER$_Ld9
	.align 2
.globl	_$DBF_PARSER$_Ld9
_$DBF_PARSER$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_RTTI_DBF_PARSER_TSTRINGFIELDVAR
_RTTI_DBF_PARSER_TSTRINGFIELDVAR:
	.byte	15,15
	.ascii	"TStringFieldVar"
	.long	_VMT_DBF_PARSER_TSTRINGFIELDVAR
	.long	_RTTI_DBF_PARSER_TFIELDVAR
	.short	0
	.byte	10
	.ascii	"dbf_parser"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld11
_$DBF_PARSER$_Ld11:
	.short	0
	.long	_$DBF_PARSER$_Ld12
	.align 2
.globl	_$DBF_PARSER$_Ld12
_$DBF_PARSER$_Ld12:
	.short	0

.const_data
	.align 2
.globl	_RTTI_DBF_PARSER_TFLOATFIELDVAR
_RTTI_DBF_PARSER_TFLOATFIELDVAR:
	.byte	15,14
	.ascii	"TFloatFieldVar"
	.long	_VMT_DBF_PARSER_TFLOATFIELDVAR
	.long	_RTTI_DBF_PARSER_TFIELDVAR
	.short	0
	.byte	10
	.ascii	"dbf_parser"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld14
_$DBF_PARSER$_Ld14:
	.short	0
	.long	_$DBF_PARSER$_Ld15
	.align 2
.globl	_$DBF_PARSER$_Ld15
_$DBF_PARSER$_Ld15:
	.short	0

.const_data
	.align 2
.globl	_RTTI_DBF_PARSER_TINTEGERFIELDVAR
_RTTI_DBF_PARSER_TINTEGERFIELDVAR:
	.byte	15,16
	.ascii	"TIntegerFieldVar"
	.long	_VMT_DBF_PARSER_TINTEGERFIELDVAR
	.long	_RTTI_DBF_PARSER_TFIELDVAR
	.short	0
	.byte	10
	.ascii	"dbf_parser"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld17
_$DBF_PARSER$_Ld17:
	.short	0
	.long	_$DBF_PARSER$_Ld18
	.align 2
.globl	_$DBF_PARSER$_Ld18
_$DBF_PARSER$_Ld18:
	.short	0

.const_data
	.align 2
.globl	_RTTI_DBF_PARSER_TLARGEINTFIELDVAR
_RTTI_DBF_PARSER_TLARGEINTFIELDVAR:
	.byte	15,17
	.ascii	"TLargeIntFieldVar"
	.long	_VMT_DBF_PARSER_TLARGEINTFIELDVAR
	.long	_RTTI_DBF_PARSER_TFIELDVAR
	.short	0
	.byte	10
	.ascii	"dbf_parser"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld20
_$DBF_PARSER$_Ld20:
	.short	0
	.long	_$DBF_PARSER$_Ld21
	.align 2
.globl	_$DBF_PARSER$_Ld21
_$DBF_PARSER$_Ld21:
	.short	0

.const_data
	.align 2
.globl	_RTTI_DBF_PARSER_TDATETIMEFIELDVAR
_RTTI_DBF_PARSER_TDATETIMEFIELDVAR:
	.byte	15,17
	.ascii	"TDateTimeFieldVar"
	.long	_VMT_DBF_PARSER_TDATETIMEFIELDVAR
	.long	_RTTI_DBF_PARSER_TFIELDVAR
	.short	0
	.byte	10
	.ascii	"dbf_parser"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PARSER$_Ld23
_$DBF_PARSER$_Ld23:
	.short	0
	.long	_$DBF_PARSER$_Ld24
	.align 2
.globl	_$DBF_PARSER$_Ld24
_$DBF_PARSER$_Ld24:
	.short	0

.const_data
	.align 2
.globl	_RTTI_DBF_PARSER_TBOOLEANFIELDVAR
_RTTI_DBF_PARSER_TBOOLEANFIELDVAR:
	.byte	15,16
	.ascii	"TBooleanFieldVar"
	.long	_VMT_DBF_PARSER_TBOOLEANFIELDVAR
	.long	_RTTI_DBF_PARSER_TFIELDVAR
	.short	0
	.byte	10
	.ascii	"dbf_parser"
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
L_VMT_DBF_PARSER_TSTRINGFIELDVAR$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PARSER_TSTRINGFIELDVAR
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
L_U_DBF_STR_STRING_INDEX_BASED_ON_UNKNOWN_FIELD$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INDEX_BASED_ON_UNKNOWN_FIELD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr:
.indirect_symbol _VMT_DBF_COMMON_EDBFERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PARSER_TBOOLEANFIELDVAR$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PARSER_TBOOLEANFIELDVAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PARSER_TFLOATFIELDVAR$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PARSER_TFLOATFIELDVAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PARSER_TINTEGERFIELDVAR$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PARSER_TINTEGERFIELDVAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PARSER_TLARGEINTFIELDVAR$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PARSER_TLARGEINTFIELDVAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PARSER_TDATETIMEFIELDVAR$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PARSER_TDATETIMEFIELDVAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INDEX_BASED_ON_INVALID_FIELD$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INDEX_BASED_ON_INVALID_FIELD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_EMPTYSTR
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

