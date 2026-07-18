# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DBF_PRSDEF_EXPRCHARTOEXPRTYPE$CHAR$$TEXPRESSIONTYPE
_DBF_PRSDEF_EXPRCHARTOEXPRTYPE$CHAR$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movb	-4(%ebp),%al
	cmpb	$66,%al
	jb	Lj6
	subb	$66,%al
	je	Lj7
	subb	$2,%al
	je	Lj11
	subb	$2,%al
	je	Lj10
	subb	$3,%al
	je	Lj8
	subb	$3,%al
	je	Lj9
	subb	$7,%al
	je	Lj12
	jmp	Lj6
Lj7:
	movb	$2,-5(%ebp)
	jmp	Lj5
Lj8:
	movb	$0,-5(%ebp)
	jmp	Lj5
Lj9:
	movb	$3,-5(%ebp)
	jmp	Lj5
Lj10:
	movb	$4,-5(%ebp)
	jmp	Lj5
Lj11:
	movb	$5,-5(%ebp)
	jmp	Lj5
Lj12:
	movb	$1,-5(%ebp)
	jmp	Lj5
Lj6:
	movb	$9,-5(%ebp)
Lj5:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF__FLOATVARIABLE$PEXPRESSIONREC
_DBF_PRSDEF__FLOATVARIABLE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%ebx
	movl	(%ecx),%edx
	movl	%edx,(%ebx)
	movl	4(%ecx),%edx
	movl	%edx,4(%ebx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF__BOOLEANVARIABLE$PEXPRESSIONREC
_DBF_PRSDEF__BOOLEANVARIABLE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	movb	(%ecx),%cl
	movb	%cl,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF__STRINGCONSTANT$PEXPRESSIONREC
_DBF_PRSDEF__STRINGCONSTANT$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	24(%ebx),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,%ecx
	movl	24(%ebx),%edx
	movl	8(%ebx),%eax
	call	L_DBF_PRSDEF_TDYNAMICTYPE_$__APPEND$PCHAR$LONGINT$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF__STRINGVARIABLE$PEXPRESSIONREC
_DBF_PRSDEF__STRINGVARIABLE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj57
	jmp	Lj58
Lj57:
	movl	24(%ebx),%eax
	movl	(%eax),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-8(%ebp)
Lj58:
	movl	24(%ebx),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	8(%ebx),%eax
	call	L_DBF_PRSDEF_TDYNAMICTYPE_$__APPEND$PCHAR$LONGINT$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF__DATETIMEVARIABLE$PEXPRESSIONREC
_DBF_PRSDEF__DATETIMEVARIABLE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%ebx
	movl	(%ecx),%edx
	movl	%edx,(%ebx)
	movl	4(%ecx),%edx
	movl	%edx,4(%ebx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF__INTEGERVARIABLE$PEXPRESSIONREC
_DBF_PRSDEF__INTEGERVARIABLE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ebx
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%ecx
	movl	(%ebx),%edx
	movl	%edx,(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF__LARGEINTVARIABLE$PEXPRESSIONREC
_DBF_PRSDEF__LARGEINTVARIABLE$PEXPRESSIONREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	8(%eax),%edx
	movl	8(%edx),%edx
	movl	(%edx),%ebx
	movl	(%ecx),%edx
	movl	%edx,(%ebx)
	movl	4(%ecx),%edx
	movl	%edx,4(%ebx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRWORD_$__CREATE$ANSISTRING$TEXPRFUNC$$TEXPRWORD
_DBF_PRSDEF_TEXPRWORD_$__CREATE$ANSISTRING$TEXPRFUNC$$TEXPRWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj89
	jmp	Lj90
Lj89:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj90:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj95
	jmp	Lj96
Lj95:
	jmp	Lj87
Lj96:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj99
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj103
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,4(%ebx)
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
Lj103:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj104
	call	LFPC_RERAISE$stub
Lj104:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj112
	jmp	Lj111
Lj112:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj110
	jmp	Lj111
Lj110:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj111:
Lj99:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj101
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj116
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj117
	jmp	Lj118
Lj117:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj118:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj116:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj115
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj115:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj101
Lj101:
Lj87:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRWORD_$__GETCANVARY$$BOOLEAN
_DBF_PRSDEF_TEXPRWORD_$__GETCANVARY$$BOOLEAN:
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
.globl	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj128
Lj128:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj128(%esi),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj128(%esi),%eax
	movl	(%eax),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj132
Lj132:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj132(%esi),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj132(%esi),%eax
	movl	(%eax),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN:
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
.globl	_DBF_PRSDEF_TEXPRWORD_$__GETISVARIABLE$$BOOLEAN
_DBF_PRSDEF_TEXPRWORD_$__GETISVARIABLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj140
Lj140:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_DBF_PRSDEF__STRINGVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj140(%edx),%eax
	cmpl	8(%ecx),%eax
	je	Lj141
	jmp	Lj148
Lj148:
	movl	-4(%ebp),%ecx
	movl	L_DBF_PRSDEF__STRINGCONSTANT$PEXPRESSIONREC$non_lazy_ptr-Lj140(%edx),%eax
	cmpl	8(%ecx),%eax
	je	Lj141
	jmp	Lj147
Lj147:
	movl	-4(%ebp),%ecx
	movl	L_DBF_PRSDEF__FLOATVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj140(%edx),%eax
	cmpl	8(%ecx),%eax
	je	Lj141
	jmp	Lj146
Lj146:
	movl	-4(%ebp),%ecx
	movl	L_DBF_PRSDEF__INTEGERVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj140(%edx),%eax
	cmpl	8(%ecx),%eax
	je	Lj141
	jmp	Lj145
Lj145:
	movl	-4(%ebp),%ecx
	movl	L_DBF_PRSDEF__LARGEINTVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj140(%edx),%eax
	cmpl	8(%ecx),%eax
	je	Lj141
	jmp	Lj144
Lj144:
	movl	-4(%ebp),%ecx
	movl	L_DBF_PRSDEF__DATETIMEVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj140(%edx),%eax
	cmpl	8(%ecx),%eax
	je	Lj141
	jmp	Lj143
Lj143:
	movl	-4(%ebp),%ecx
	movl	L_DBF_PRSDEF__BOOLEANVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj140(%edx),%eax
	cmpl	8(%ecx),%eax
	je	Lj141
	jmp	Lj142
Lj141:
	movb	$1,-5(%ebp)
	jmp	Lj149
Lj142:
	movb	$0,-5(%ebp)
Lj149:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRWORD_$__GETNEEDSCOPY$$BOOLEAN
_DBF_PRSDEF_TEXPRWORD_$__GETNEEDSCOPY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj151
Lj151:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_DBF_PRSDEF__STRINGCONSTANT$PEXPRESSIONREC$non_lazy_ptr-Lj151(%edx),%eax
	cmpl	8(%ecx),%eax
	jne	Lj158
	jmp	Lj153
Lj158:
	movl	-4(%ebp),%ecx
	movl	L_DBF_PRSDEF__FLOATVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj151(%edx),%eax
	cmpl	8(%ecx),%eax
	jne	Lj157
	jmp	Lj153
Lj157:
	movl	-4(%ebp),%ecx
	movl	L_DBF_PRSDEF__INTEGERVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj151(%edx),%eax
	cmpl	8(%ecx),%eax
	jne	Lj156
	jmp	Lj153
Lj156:
	movl	-4(%ebp),%ecx
	movl	L_DBF_PRSDEF__LARGEINTVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj151(%edx),%eax
	cmpl	8(%ecx),%eax
	jne	Lj155
	jmp	Lj153
Lj155:
	movl	-4(%ebp),%ecx
	movl	L_DBF_PRSDEF__DATETIMEVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj151(%edx),%eax
	cmpl	8(%ecx),%eax
	jne	Lj154
	jmp	Lj153
Lj154:
	movl	-4(%ebp),%ecx
	movl	L_DBF_PRSDEF__BOOLEANVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj151(%edx),%eax
	cmpl	8(%ecx),%eax
	jne	Lj152
	jmp	Lj153
Lj152:
	movb	$1,-5(%ebp)
	jmp	Lj159
Lj153:
	movb	$0,-5(%ebp)
Lj159:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$-1,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRWORD_$__GETRESULTTYPE$$TEXPRESSIONTYPE
_DBF_PRSDEF_TEXPRWORD_$__GETRESULTTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$9,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj177
Lj177:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj177(%esi),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj177(%esi),%eax
	movl	(%eax),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRWORD_$__ASPOINTER$$PCHAR
_DBF_PRSDEF_TEXPRWORD_$__ASPOINTER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN:
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
.globl	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TCONSTANT_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TCONSTANT
_DBF_PRSDEF_TCONSTANT_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TCONSTANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj196
	jmp	Lj197
Lj196:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj197:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj202
	jmp	Lj203
Lj202:
	jmp	Lj194
Lj203:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj206
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj210
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSDEF_TEXPRWORD_$__CREATE$ANSISTRING$TEXPRFUNC$$TEXPRWORD$stub
	movl	-12(%ebp),%eax
	movb	12(%ebp),%dl
	movb	%dl,16(%eax)
Lj210:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj211
	call	LFPC_RERAISE$stub
Lj211:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj225
	jmp	Lj224
Lj225:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj223
	jmp	Lj224
Lj223:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj224:
Lj206:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj208
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj229
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj230
	jmp	Lj231
Lj230:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj231:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj229:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj228
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj228:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj208
Lj208:
Lj194:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TCONSTANT_$__GETRESULTTYPE$$TEXPRESSIONTYPE
_DBF_PRSDEF_TCONSTANT_$__GETRESULTTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	16(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFLOATCONSTANT_$__CREATE$ANSISTRING$ANSISTRING$$TFLOATCONSTANT
_DBF_PRSDEF_TFLOATCONSTANT_$__CREATE$ANSISTRING$ANSISTRING$$TFLOATCONSTANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj241
Lj241:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj242
	jmp	Lj243
Lj242:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj243:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj248
	jmp	Lj249
Lj248:
	jmp	Lj240
Lj249:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj252
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj256
	movb	$4,4(%esp)
	movl	L_DBF_PRSDEF__FLOATVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj241(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSDEF_TCONSTANT_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TCONSTANT$stub
	movl	8(%ebp),%eax
	testl	%eax,%eax
	je	Lj271
	movl	-4(%eax),%eax
Lj271:
	cmpl	$0,%eax
	jg	Lj269
	jmp	Lj270
Lj269:
	movl	8(%ebp),%eax
	call	L_SYSUTILS_STRTOFLOAT$ANSISTRING$$EXTENDED$stub
	movl	-12(%ebp),%eax
	fstpl	20(%eax)
	jmp	Lj276
Lj270:
	movl	-12(%ebp),%eax
	fldz
	fstpl	20(%eax)
Lj276:
Lj256:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj257
	call	LFPC_RERAISE$stub
Lj257:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj281
	jmp	Lj280
Lj281:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj279
	jmp	Lj280
Lj279:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj280:
Lj252:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj254
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj285
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj286
	jmp	Lj287
Lj286:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj287:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj285:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj284
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj284:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj254
Lj254:
Lj240:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFLOATCONSTANT_$__CREATEASDOUBLE$ANSISTRING$DOUBLE$$TFLOATCONSTANT
_DBF_PRSDEF_TFLOATCONSTANT_$__CREATEASDOUBLE$ANSISTRING$DOUBLE$$TFLOATCONSTANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj293
Lj293:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj294
	jmp	Lj295
Lj294:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj295:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj300
	jmp	Lj301
Lj300:
	jmp	Lj292
Lj301:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj304
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj308
	movb	$4,4(%esp)
	movl	L_DBF_PRSDEF__FLOATVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj293(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSDEF_TCONSTANT_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TCONSTANT$stub
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,20(%edx)
	movl	12(%ebp),%eax
	movl	%eax,24(%edx)
Lj308:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj309
	call	LFPC_RERAISE$stub
Lj309:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj325
	jmp	Lj324
Lj325:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj323
	jmp	Lj324
Lj323:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj324:
Lj304:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj306
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj329
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj330
	jmp	Lj331
Lj330:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj331:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj329:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj328
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj328:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj306
Lj306:
Lj292:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFLOATCONSTANT_$__ASPOINTER$$PCHAR
_DBF_PRSDEF_TFLOATCONSTANT_$__ASPOINTER$$PCHAR:
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
.globl	_DBF_PRSDEF_TUSERCONSTANT_$__CREATEASDOUBLE$ANSISTRING$ANSISTRING$DOUBLE$$TUSERCONSTANT
_DBF_PRSDEF_TUSERCONSTANT_$__CREATEASDOUBLE$ANSISTRING$ANSISTRING$DOUBLE$$TUSERCONSTANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj342
	jmp	Lj343
Lj342:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj343:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj348
	jmp	Lj349
Lj348:
	jmp	Lj340
Lj349:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj352
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj356
	movl	16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	28(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%ebp),%eax
	movl	%eax,28(%ebx)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSDEF_TFLOATCONSTANT_$__CREATEASDOUBLE$ANSISTRING$DOUBLE$$TFLOATCONSTANT$stub
Lj356:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj357
	call	LFPC_RERAISE$stub
Lj357:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj371
	jmp	Lj370
Lj371:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj369
	jmp	Lj370
Lj369:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj370:
Lj352:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj354
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj375
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj376
	jmp	Lj377
Lj376:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj377:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj375:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj374
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj374:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj354
Lj354:
Lj340:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TUSERCONSTANT_$__GETDESCRIPTION$$ANSISTRING
_DBF_PRSDEF_TUSERCONSTANT_$__GETDESCRIPTION$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	28(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	28(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TSTRINGCONSTANT_$__CREATE$ANSISTRING$$TSTRINGCONSTANT
_DBF_PRSDEF_TSTRINGCONSTANT_$__CREATE$ANSISTRING$$TSTRINGCONSTANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	call	Lj387
Lj387:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-100(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj388
	jmp	Lj389
Lj388:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj389:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj394
	jmp	Lj395
Lj394:
	jmp	Lj386
Lj395:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj398
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj402
	movb	$1,4(%esp)
	movl	L_DBF_PRSDEF__STRINGCONSTANT$PEXPRESSIONREC$non_lazy_ptr-Lj387(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSDEF_TCONSTANT_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TCONSTANT$stub
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-13(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj419
	movl	-4(%eax),%eax
Lj419:
	movb	-1(%edx,%eax,1),%al
	movb	%al,-14(%ebp)
	movb	-13(%ebp),%al
	cmpb	-14(%ebp),%al
	je	Lj422
	jmp	Lj421
Lj422:
	movb	-13(%ebp),%al
	cmpb	$39,%al
	je	Lj420
	jmp	Lj423
Lj423:
	movb	-13(%ebp),%al
	cmpb	$34,%al
	je	Lj420
	jmp	Lj421
Lj420:
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-100(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj430
	movl	-4(%ecx),%ecx
Lj430:
	subl	$2,%ecx
	movl	-4(%ebp),%eax
	movl	$2,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-100(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	20(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-100(%ebp),%eax
	movl	%eax,20(%esi)
	jmp	Lj435
Lj421:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	20(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,20(%esi)
Lj435:
Lj402:
	call	LFPC_POPADDRSTACK$stub
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj403
	call	LFPC_RERAISE$stub
Lj403:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj440
	jmp	Lj439
Lj440:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj438
	jmp	Lj439
Lj438:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj439:
Lj398:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj400
	leal	-68(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj444
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj445
	jmp	Lj446
Lj445:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj446:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj444:
	call	LFPC_POPADDRSTACK$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj443
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj443:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj400
Lj400:
Lj386:
	movl	-12(%ebp),%eax
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TSTRINGCONSTANT_$__ASPOINTER$$PCHAR
_DBF_PRSDEF_TSTRINGCONSTANT_$__ASPOINTER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj452
Lj452:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj455
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj452(%ecx),%edx
	movl	%edx,%eax
Lj455:
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TBOOLEANCONSTANT_$__CREATE$ANSISTRING$BOOLEAN$$TBOOLEANCONSTANT
_DBF_PRSDEF_TBOOLEANCONSTANT_$__CREATE$ANSISTRING$BOOLEAN$$TBOOLEANCONSTANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj457
Lj457:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj458
	jmp	Lj459
Lj458:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj459:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj464
	jmp	Lj465
Lj464:
	jmp	Lj456
Lj465:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj468
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj472
	movb	$2,4(%esp)
	movl	L_DBF_PRSDEF__BOOLEANVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj457(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSDEF_TCONSTANT_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TCONSTANT$stub
	movl	-12(%ebp),%eax
	movb	8(%ebp),%dl
	movb	%dl,20(%eax)
Lj472:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj473
	call	LFPC_RERAISE$stub
Lj473:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj489
	jmp	Lj488
Lj489:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj487
	jmp	Lj488
Lj487:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj488:
Lj468:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj470
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj493
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj494
	jmp	Lj495
Lj494:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj495:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj493:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj492
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj492:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj470
Lj470:
Lj456:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TBOOLEANCONSTANT_$__ASPOINTER$$PCHAR
_DBF_PRSDEF_TBOOLEANCONSTANT_$__ASPOINTER$$PCHAR:
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
.globl	_DBF_PRSDEF_TINTEGERCONSTANT_$__CREATE$LONGINT$$TINTEGERCONSTANT
_DBF_PRSDEF_TINTEGERCONSTANT_$__CREATE$LONGINT$$TINTEGERCONSTANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-100(%ebp)
	call	Lj505
Lj505:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	$0,-96(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj506
	jmp	Lj507
Lj506:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj507:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj512
	jmp	Lj513
Lj512:
	jmp	Lj504
Lj513:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj516
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj520
	movb	$0,4(%esp)
	movl	L_DBF_PRSDEF__INTEGERVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj505(%ebx),%eax
	movl	%eax,(%esp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-96(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSDEF_TCONSTANT_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TCONSTANT$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,20(%edx)
Lj520:
	call	LFPC_POPADDRSTACK$stub
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj521
	call	LFPC_RERAISE$stub
Lj521:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj541
	jmp	Lj540
Lj541:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj539
	jmp	Lj540
Lj539:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj540:
Lj516:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj518
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj545
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj546
	jmp	Lj547
Lj546:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj547:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj545:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj544
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj544:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj518
Lj518:
Lj504:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TINTEGERCONSTANT_$__ASPOINTER$$PCHAR
_DBF_PRSDEF_TINTEGERCONSTANT_$__ASPOINTER$$PCHAR:
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
.globl	_DBF_PRSDEF_TVARIABLE_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TVARIABLE
_DBF_PRSDEF_TVARIABLE_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TVARIABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj558
	jmp	Lj559
Lj558:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj559:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj564
	jmp	Lj565
Lj564:
	jmp	Lj556
Lj565:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj568
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj572
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSDEF_TEXPRWORD_$__CREATE$ANSISTRING$TEXPRFUNC$$TEXPRWORD$stub
	movl	-12(%ebp),%eax
	movb	12(%ebp),%dl
	movb	%dl,16(%eax)
Lj572:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj573
	call	LFPC_RERAISE$stub
Lj573:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj587
	jmp	Lj586
Lj587:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj585
	jmp	Lj586
Lj585:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj586:
Lj568:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj570
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj591
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj592
	jmp	Lj593
Lj592:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj593:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj591:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj590
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj590:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj570
Lj570:
Lj556:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TVARIABLE_$__GETCANVARY$$BOOLEAN
_DBF_PRSDEF_TVARIABLE_$__GETCANVARY$$BOOLEAN:
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
.globl	_DBF_PRSDEF_TVARIABLE_$__GETRESULTTYPE$$TEXPRESSIONTYPE
_DBF_PRSDEF_TVARIABLE_$__GETRESULTTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	16(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFLOATVARIABLE_$__CREATE$ANSISTRING$PDOUBLE$$TFLOATVARIABLE
_DBF_PRSDEF_TFLOATVARIABLE_$__CREATE$ANSISTRING$PDOUBLE$$TFLOATVARIABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj607
Lj607:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj608
	jmp	Lj609
Lj608:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj609:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj614
	jmp	Lj615
Lj614:
	jmp	Lj606
Lj615:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj618
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj622
	movb	$4,4(%esp)
	movl	L_DBF_PRSDEF__FLOATVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj607(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSDEF_TVARIABLE_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TVARIABLE$stub
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,20(%edx)
Lj622:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj623
	call	LFPC_RERAISE$stub
Lj623:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj639
	jmp	Lj638
Lj639:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj637
	jmp	Lj638
Lj637:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj638:
Lj618:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj620
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj643
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj644
	jmp	Lj645
Lj644:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj645:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj643:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj642
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj642:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj620
Lj620:
Lj606:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFLOATVARIABLE_$__ASPOINTER$$PCHAR
_DBF_PRSDEF_TFLOATVARIABLE_$__ASPOINTER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TSTRINGVARIABLE_$__CREATE$ANSISTRING$PPCHAR$$TSTRINGVARIABLE
_DBF_PRSDEF_TSTRINGVARIABLE_$__CREATE$ANSISTRING$PPCHAR$$TSTRINGVARIABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj655
Lj655:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj656
	jmp	Lj657
Lj656:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj657:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj662
	jmp	Lj663
Lj662:
	jmp	Lj654
Lj663:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj666
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj670
	movb	$1,4(%esp)
	movl	L_DBF_PRSDEF__STRINGVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj655(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSDEF_TVARIABLE_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TVARIABLE$stub
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,24(%eax)
Lj670:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj671
	call	LFPC_RERAISE$stub
Lj671:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj689
	jmp	Lj688
Lj689:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj687
	jmp	Lj688
Lj687:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj688:
Lj666:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj668
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj693
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj694
	jmp	Lj695
Lj694:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj695:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj693:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj692
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj692:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj668
Lj668:
Lj654:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TSTRINGVARIABLE_$__ASPOINTER$$PCHAR
_DBF_PRSDEF_TSTRINGVARIABLE_$__ASPOINTER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TSTRINGVARIABLE_$__GETFIXEDLEN$$LONGINT
_DBF_PRSDEF_TSTRINGVARIABLE_$__GETFIXEDLEN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TSTRINGVARIABLE_$__LENASPOINTER$$PINTEGER
_DBF_PRSDEF_TSTRINGVARIABLE_$__LENASPOINTER$$PINTEGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	24(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TSTRINGVARIABLE_$__SETFIXEDLEN$LONGINT
_DBF_PRSDEF_TSTRINGVARIABLE_$__SETFIXEDLEN$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,24(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TDATETIMEVARIABLE_$__CREATE$ANSISTRING$PDATETIMEREC$$TDATETIMEVARIABLE
_DBF_PRSDEF_TDATETIMEVARIABLE_$__CREATE$ANSISTRING$PDATETIMEREC$$TDATETIMEVARIABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj717
Lj717:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj718
	jmp	Lj719
Lj718:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj719:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj724
	jmp	Lj725
Lj724:
	jmp	Lj716
Lj725:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj728
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj732
	movb	$5,4(%esp)
	movl	L_DBF_PRSDEF__DATETIMEVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj717(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSDEF_TVARIABLE_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TVARIABLE$stub
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,20(%edx)
Lj732:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj733
	call	LFPC_RERAISE$stub
Lj733:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj749
	jmp	Lj748
Lj749:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj747
	jmp	Lj748
Lj747:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj748:
Lj728:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj730
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj753
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj754
	jmp	Lj755
Lj754:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj755:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj753:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj752
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj752:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj730
Lj730:
Lj716:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TDATETIMEVARIABLE_$__ASPOINTER$$PCHAR
_DBF_PRSDEF_TDATETIMEVARIABLE_$__ASPOINTER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TINTEGERVARIABLE_$__CREATE$ANSISTRING$PINTEGER$$TINTEGERVARIABLE
_DBF_PRSDEF_TINTEGERVARIABLE_$__CREATE$ANSISTRING$PINTEGER$$TINTEGERVARIABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj765
Lj765:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj766
	jmp	Lj767
Lj766:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj767:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj772
	jmp	Lj773
Lj772:
	jmp	Lj764
Lj773:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj776
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj780
	movb	$0,4(%esp)
	movl	L_DBF_PRSDEF__INTEGERVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj765(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSDEF_TVARIABLE_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TVARIABLE$stub
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,20(%edx)
Lj780:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj781
	call	LFPC_RERAISE$stub
Lj781:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj797
	jmp	Lj796
Lj797:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj795
	jmp	Lj796
Lj795:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj796:
Lj776:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj778
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj801
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj802
	jmp	Lj803
Lj802:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj803:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj801:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj800
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj800:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj778
Lj778:
Lj764:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TINTEGERVARIABLE_$__ASPOINTER$$PCHAR
_DBF_PRSDEF_TINTEGERVARIABLE_$__ASPOINTER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TLARGEINTVARIABLE_$__CREATE$ANSISTRING$PLARGEINT$$TLARGEINTVARIABLE
_DBF_PRSDEF_TLARGEINTVARIABLE_$__CREATE$ANSISTRING$PLARGEINT$$TLARGEINTVARIABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj813
Lj813:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj814
	jmp	Lj815
Lj814:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj815:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj820
	jmp	Lj821
Lj820:
	jmp	Lj812
Lj821:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj824
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj828
	movb	$3,4(%esp)
	movl	L_DBF_PRSDEF__LARGEINTVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj813(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSDEF_TVARIABLE_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TVARIABLE$stub
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,20(%edx)
Lj828:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj829
	call	LFPC_RERAISE$stub
Lj829:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj845
	jmp	Lj844
Lj845:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj843
	jmp	Lj844
Lj843:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj844:
Lj824:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj826
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj849
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj850
	jmp	Lj851
Lj850:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj851:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj849:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj848
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj848:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj826
Lj826:
Lj812:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TLARGEINTVARIABLE_$__ASPOINTER$$PCHAR
_DBF_PRSDEF_TLARGEINTVARIABLE_$__ASPOINTER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TBOOLEANVARIABLE_$__CREATE$ANSISTRING$PBOOLEAN$$TBOOLEANVARIABLE
_DBF_PRSDEF_TBOOLEANVARIABLE_$__CREATE$ANSISTRING$PBOOLEAN$$TBOOLEANVARIABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj861
Lj861:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj862
	jmp	Lj863
Lj862:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj863:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj868
	jmp	Lj869
Lj868:
	jmp	Lj860
Lj869:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj872
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj876
	movb	$2,4(%esp)
	movl	L_DBF_PRSDEF__BOOLEANVARIABLE$PEXPRESSIONREC$non_lazy_ptr-Lj861(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSDEF_TVARIABLE_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TVARIABLE$stub
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,20(%edx)
Lj876:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj877
	call	LFPC_RERAISE$stub
Lj877:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj893
	jmp	Lj892
Lj893:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj891
	jmp	Lj892
Lj891:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj892:
Lj872:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj874
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj897
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj898
	jmp	Lj899
Lj898:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj899:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj897:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj896
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj896:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj874
Lj874:
Lj860:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TBOOLEANVARIABLE_$__ASPOINTER$$PCHAR
_DBF_PRSDEF_TBOOLEANVARIABLE_$__ASPOINTER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TLEFTBRACKET_$__GETRESULTTYPE$$TEXPRESSIONTYPE
_DBF_PRSDEF_TLEFTBRACKET_$__GETRESULTTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$6,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TRIGHTBRACKET_$__GETRESULTTYPE$$TEXPRESSIONTYPE
_DBF_PRSDEF_TRIGHTBRACKET_$__GETRESULTTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$7,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TCOMMA_$__GETRESULTTYPE$$TEXPRESSIONTYPE
_DBF_PRSDEF_TCOMMA_$__GETRESULTTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$8,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRESSLIST_$__CREATE$$TEXPRESSLIST
_DBF_PRSDEF_TEXPRESSLIST_$__CREATE$$TEXPRESSLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj921
Lj921:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj922
	jmp	Lj923
Lj922:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj923:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj928
	jmp	Lj929
Lj928:
	jmp	Lj920
Lj929:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj932
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj936
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	L_VMT_DBF_PRSDEF_TEXPRESSSHORTLIST$non_lazy_ptr-Lj921(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-8(%ebp),%edx
	movl	%eax,16(%edx)
Lj936:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj937
	call	LFPC_RERAISE$stub
Lj937:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj951
	jmp	Lj950
Lj951:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj949
	jmp	Lj950
Lj949:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj950:
Lj932:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj934
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj955
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj956
	jmp	Lj957
Lj956:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj957:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj955:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj954
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj954:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj934
Lj934:
Lj920:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRESSLIST_$__DESTROY
_DBF_PRSDEF_TEXPRESSLIST_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj964
	jmp	Lj965
Lj964:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj965:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSSUPP_TOCOLLECTION_$__DESTROY$stub
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj976
	jmp	Lj975
Lj976:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj974
	jmp	Lj975
Lj974:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj975:
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRESSLIST_$__ADD$POINTER
_DBF_PRSDEF_TEXPRESSLIST_$__ADD$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj981
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADD$POINTER$stub
	movl	-4(%ebp),%eax
	incl	12(%eax)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj994
	movl	-4(%eax),%eax
Lj994:
	cmpl	$0,%eax
	jg	Lj988
	jmp	Lj989
Lj988:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	16(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	leal	-12(%ebp),%ecx
	movl	-8(%ebp),%ebx
	movl	16(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	L_CLASSES_TLIST_$__INSERT$LONGINT$POINTER$stub
Lj989:
Lj981:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj982
	call	LFPC_RERAISE$stub
Lj982:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRESSLIST_$__COMPARE$POINTER$POINTER$$LONGINT
_DBF_PRSDEF_TEXPRESSLIST_$__COMPARE$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_STRICOMP$PCHAR$PCHAR$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRESSLIST_$__KEYOF$POINTER$$POINTER
_DBF_PRSDEF_TEXPRESSLIST_$__KEYOF$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj1020
Lj1020:
	popl	%ecx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1023
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1020(%ecx),%edx
	movl	%edx,%eax
Lj1023:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRESSLIST_$__FREEITEM$POINTER
_DBF_PRSDEF_TEXPRESSLIST_$__FREEITEM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	decl	12(%eax)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TLIST_$__REMOVE$POINTER$$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj1030
	jmp	Lj1031
Lj1030:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSSUPP_TOCOLLECTION_$__FREEITEM$POINTER$stub
Lj1031:
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRESSLIST_$__SEARCH$POINTER$LONGINT$$BOOLEAN
_DBF_PRSDEF_TEXPRESSLIST_$__SEARCH$POINTER$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__SEARCH$POINTER$LONGINT$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj1046
	jmp	Lj1047
Lj1046:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	16(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj1056
	jmp	Lj1057
Lj1056:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj1057:
Lj1047:
	movb	-13(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRESSSHORTLIST_$__COMPARE$POINTER$POINTER$$LONGINT
_DBF_PRSDEF_TEXPRESSSHORTLIST_$__COMPARE$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_STRICOMP$PCHAR$PCHAR$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRESSSHORTLIST_$__KEYOF$POINTER$$POINTER
_DBF_PRSDEF_TEXPRESSSHORTLIST_$__KEYOF$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj1077
Lj1077:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1078
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1087
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1077(%ebx),%edx
	movl	%edx,%eax
Lj1087:
	movl	%eax,-12(%ebp)
Lj1078:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1079
	call	LFPC_RERAISE$stub
Lj1079:
	movl	-12(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRESSSHORTLIST_$__FREEITEM$POINTER
_DBF_PRSDEF_TEXPRESSSHORTLIST_$__FREEITEM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRCOLLECTION_$__CHECK
_DBF_PRSDEF_TEXPRCOLLECTION_$__CHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj1091
Lj1091:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%esi
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj1095
	decl	-12(%ebp)
	.align 2
Lj1096:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$6,%al
	jb	Lj1100
	subb	$6,%al
	je	Lj1101
	decb	%al
	je	Lj1102
	jmp	Lj1100
Lj1101:
	incl	-8(%ebp)
	jmp	Lj1099
Lj1102:
	decl	-8(%ebp)
	jmp	Lj1099
Lj1100:
Lj1099:
	cmpl	-12(%ebp),%esi
	jg	Lj1096
Lj1095:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1111
	jmp	Lj1112
Lj1111:
	movl	L_VMT_DBF_PRSDEF_EPARSEREXCEPTION$non_lazy_ptr-Lj1091(%edi),%edx
	movl	L_$DBF_PRSDEF$_Ld1$non_lazy_ptr-Lj1091(%edi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj1091(%edi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1112:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TEXPRCOLLECTION_$__ERASEEXTRABRACKETS
_DBF_PRSDEF_TEXPRCOLLECTION_$__ERASEEXTRABRACKETS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$6,%al
	je	Lj1121
	jmp	Lj1122
Lj1121:
	movl	$1,-12(%ebp)
	movl	$1,-8(%ebp)
	jmp	Lj1136
	.align 2
Lj1135:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$6,%al
	jb	Lj1139
	subb	$6,%al
	je	Lj1140
	decb	%al
	je	Lj1141
	jmp	Lj1139
Lj1140:
	incl	-12(%ebp)
	jmp	Lj1138
Lj1141:
	decl	-12(%ebp)
	jmp	Lj1138
Lj1139:
Lj1138:
	incl	-8(%ebp)
Lj1136:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-8(%ebp),%eax
	jg	Lj1150
	jmp	Lj1137
Lj1150:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1135
	jmp	Lj1137
Lj1137:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1156
	jmp	Lj1154
Lj1156:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-8(%ebp),%eax
	je	Lj1155
	jmp	Lj1154
Lj1155:
	movl	-8(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpb	$7,%al
	je	Lj1153
	jmp	Lj1154
Lj1153:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	subl	$3,%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj1168
	decl	-8(%ebp)
	.align 2
Lj1169:
	incl	-8(%ebp)
	movl	-8(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__PUT$LONGINT$POINTER$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj1169
Lj1168:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	subl	$2,%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__SETCOUNT$LONGINT$stub
	movl	-4(%ebp),%eax
	call	L_DBF_PRSDEF_TEXPRCOLLECTION_$__ERASEEXTRABRACKETS$stub
Lj1154:
Lj1122:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFUNCTION_$__CREATE$crcB9F63122
_DBF_PRSDEF_TFUNCTION_$__CREATE$crcB9F63122:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	28(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	24(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1192
	jmp	Lj1193
Lj1192:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1193:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1198
	jmp	Lj1199
Lj1198:
	jmp	Lj1190
Lj1199:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1202
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1206
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	32(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,32(%ebx)
	movl	28(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	40(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	28(%ebp),%eax
	movl	%eax,40(%ebx)
	movl	$0,(%esp)
	movb	$0,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movb	16(%ebp),%al
	movb	%al,12(%esp)
	movl	20(%ebp),%eax
	movl	%eax,16(%esp)
	movl	24(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__INTERNALCREATE$crcDAA609E3$stub
Lj1206:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1207
	call	LFPC_RERAISE$stub
Lj1207:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1231
	jmp	Lj1230
Lj1231:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1229
	jmp	Lj1230
Lj1229:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1230:
Lj1202:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1204
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1235
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1236
	jmp	Lj1237
Lj1236:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1237:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1235:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1234
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1234:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1204
Lj1204:
Lj1190:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60
_DBF_PRSDEF_TFUNCTION_$__CREATEOPER$crc526ECB60:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	20(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1244
	jmp	Lj1245
Lj1244:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1245:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1250
	jmp	Lj1251
Lj1250:
	jmp	Lj1242
Lj1251:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1254
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1258
	movb	$1,4(%esp)
	movl	$-1,16(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movb	16(%ebp),%al
	movb	%al,12(%esp)
	movl	20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PRSDEF_TFUNCTION_$__INTERNALCREATE$crcDAA609E3$stub
Lj1258:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1259
	call	LFPC_RERAISE$stub
Lj1259:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1279
	jmp	Lj1278
Lj1279:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1277
	jmp	Lj1278
Lj1277:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1278:
Lj1254:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1256
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1283
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1284
	jmp	Lj1285
Lj1284:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1285:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1283:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1282
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1282:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1256
Lj1256:
Lj1242:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFUNCTION_$__INTERNALCREATE$crcDAA609E3
_DBF_PRSDEF_TFUNCTION_$__INTERNALCREATE$crcDAA609E3:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj1291
Lj1291:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1292
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PRSDEF_TEXPRWORD_$__CREATE$ANSISTRING$TEXPRFUNC$$TEXPRWORD$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1305
	movl	-4(%eax),%eax
Lj1305:
	movl	%eax,28(%edx)
	movl	-12(%ebp),%eax
	movl	24(%ebp),%edx
	movl	%edx,24(%eax)
	movl	24(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1308
	jmp	Lj1309
Lj1308:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,24(%edx)
Lj1309:
	movl	-12(%ebp),%eax
	movb	12(%ebp),%dl
	movb	%dl,16(%eax)
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	36(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,36(%esi)
	movl	-12(%ebp),%eax
	movb	20(%ebp),%dl
	movb	%dl,44(%eax)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	$6,%eax
	jg	Lj1320
	jmp	Lj1321
Lj1320:
	movl	L_VMT_DBF_PRSDEF_EPARSEREXCEPTION$non_lazy_ptr-Lj1291(%ebx),%edx
	movl	L_$DBF_PRSDEF$_Ld3$non_lazy_ptr-Lj1291(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj1291(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1321:
Lj1292:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1293
	call	LFPC_RERAISE$stub
Lj1293:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFUNCTION_$__GETDESCRIPTION$$ANSISTRING
_DBF_PRSDEF_TFUNCTION_$__GETDESCRIPTION$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	32(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	32(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFUNCTION_$__GETISOPERATOR$$BOOLEAN
_DBF_PRSDEF_TFUNCTION_$__GETISOPERATOR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	16(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFUNCTION_$__GETMINFUNCTIONARG$$LONGINT
_DBF_PRSDEF_TFUNCTION_$__GETMINFUNCTIONARG$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFUNCTION_$__GETMAXFUNCTIONARG$$LONGINT
_DBF_PRSDEF_TFUNCTION_$__GETMAXFUNCTIONARG$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFUNCTION_$__GETRESULTTYPE$$TEXPRESSIONTYPE
_DBF_PRSDEF_TFUNCTION_$__GETRESULTTYPE$$TEXPRESSIONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	44(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFUNCTION_$__GETSHORTNAME$$ANSISTRING
_DBF_PRSDEF_TFUNCTION_$__GETSHORTNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	40(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	40(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFUNCTION_$__GETTYPESPEC$$ANSISTRING
_DBF_PRSDEF_TFUNCTION_$__GETTYPESPEC$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	36(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	36(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TFUNCTION_$__ISFUNCTION$$BOOLEAN
_DBF_PRSDEF_TFUNCTION_$__ISFUNCTION$$BOOLEAN:
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
.globl	_DBF_PRSDEF_TVARYINGFUNCTION_$__GETCANVARY$$BOOLEAN
_DBF_PRSDEF_TVARYINGFUNCTION_$__GETCANVARY$$BOOLEAN:
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
.globl	_DBF_PRSDEF_TDYNAMICTYPE_$__CREATE$PPCHAR$PPCHAR$PINTEGER$$TDYNAMICTYPE
_DBF_PRSDEF_TDYNAMICTYPE_$__CREATE$PPCHAR$PPCHAR$PINTEGER$$TDYNAMICTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1366
	jmp	Lj1367
Lj1366:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1367:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1372
	jmp	Lj1373
Lj1372:
	jmp	Lj1364
Lj1373:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1376
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1380
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%edx
	movl	12(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,12(%edx)
Lj1380:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1381
	call	LFPC_RERAISE$stub
Lj1381:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1395
	jmp	Lj1394
Lj1395:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1393
	jmp	Lj1394
Lj1393:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1394:
Lj1376:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1378
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1399
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1400
	jmp	Lj1401
Lj1400:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1401:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1399:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1398
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1398:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1378
Lj1378:
Lj1364:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TDYNAMICTYPE_$__REWIND
_DBF_PRSDEF_TDYNAMICTYPE_$__REWIND:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TDYNAMICTYPE_$__ASSURESPACE$LONGINT
_DBF_PRSDEF_TDYNAMICTYPE_$__ASSURESPACE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%edx),%edx
	movl	(%eax),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	(%eax),%edx
	jg	Lj1412
	jmp	Lj1413
Lj1412:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%edx),%edx
	movl	(%eax),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_DBF_PRSDEF_TDYNAMICTYPE_$__RESIZE$LONGINT$BOOLEAN$stub
Lj1413:
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TDYNAMICTYPE_$__RESIZE$LONGINT$BOOLEAN
_DBF_PRSDEF_TDYNAMICTYPE_$__RESIZE$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj1422
	jmp	Lj1423
Lj1422:
	movl	-4(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$31,%eax
	addl	%eax,%edx
	sarl	$5,%edx
	shll	$5,%edx
	addl	$32,%edx
	movl	%edx,-4(%ebp)
Lj1423:
	movl	-4(%ebp),%edx
	leal	-16(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj1432
	jmp	Lj1433
Lj1432:
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj1433:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%edx),%edx
	movl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%edx,(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TDYNAMICTYPE_$__APPEND$PCHAR$LONGINT
_DBF_PRSDEF_TDYNAMICTYPE_$__APPEND$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	addl	$4,%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PRSDEF_TDYNAMICTYPE_$__ASSURESPACE$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movb	$0,(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSDEF_TDYNAMICTYPE_$__APPENDINTEGER$LONGINT
_DBF_PRSDEF_TDYNAMICTYPE_$__APPENDINTEGER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	$12,%edx
	call	L_DBF_PRSDEF_TDYNAMICTYPE_$__ASSURESPACE$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_PRSSUPP_GETSTRFROMINT$LONGINT$PCHAR$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	8(%edx),%edx
	addl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movb	$0,(%eax)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld5
_$DBF_PRSDEF$_Ld5:
	.byte	16
	.ascii	"EParserException"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_EPARSEREXCEPTION
_VMT_DBF_PRSDEF_EPARSEREXCEPTION:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$DBF_PRSDEF$_Ld5
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld6
	.long	_RTTI_DBF_PRSDEF_EPARSEREXCEPTION
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
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld8
_$DBF_PRSDEF$_Ld8:
	.byte	9
	.ascii	"TExprWord"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TEXPRWORD
_VMT_DBF_PRSDEF_TEXPRWORD:
	.long	16,-16
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DBF_PRSDEF$_Ld8
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld9
	.long	_RTTI_DBF_PRSDEF_TEXPRWORD
	.long	_INIT_DBF_PRSDEF_TEXPRWORD
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TEXPRWORD_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld11
_$DBF_PRSDEF$_Ld11:
	.byte	12
	.ascii	"TDynamicType"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TDYNAMICTYPE
_VMT_DBF_PRSDEF_TDYNAMICTYPE:
	.long	16,-16
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DBF_PRSDEF$_Ld11
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld12
	.long	_RTTI_DBF_PRSDEF_TDYNAMICTYPE
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
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld14
_$DBF_PRSDEF$_Ld14:
	.byte	15
	.ascii	"TExprCollection"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TEXPRCOLLECTION
_VMT_DBF_PRSDEF_TEXPRCOLLECTION:
	.long	16,-16
	.long	_VMT_DBF_PRSSUPP_TNOOWNERCOLLECTION
	.long	_$DBF_PRSDEF$_Ld14
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld15
	.long	_RTTI_DBF_PRSDEF_TEXPRCOLLECTION
	.long	0,0,0,0
	.long	_DBF_PRSSUPP_TOCOLLECTION_$__DESTROY
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
	.long	_CLASSES_TLIST_$__GROW
	.long	_CLASSES_TLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
	.long	_CLASSES_TLIST_$__CLEAR
	.long	_CLASSES_TLIST_$__ERROR$ANSISTRING$LONGINT
	.long	_DBF_PRSSUPP_TNOOWNERCOLLECTION_$__FREEITEM$POINTER
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld17
_$DBF_PRSDEF$_Ld17:
	.byte	17
	.ascii	"TExpressShortList"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TEXPRESSSHORTLIST
_VMT_DBF_PRSDEF_TEXPRESSSHORTLIST:
	.long	16,-16
	.long	_VMT_DBF_PRSSUPP_TSORTEDCOLLECTION
	.long	_$DBF_PRSDEF$_Ld17
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld18
	.long	_RTTI_DBF_PRSDEF_TEXPRESSSHORTLIST
	.long	0,0,0,0
	.long	_DBF_PRSSUPP_TOCOLLECTION_$__DESTROY
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
	.long	_CLASSES_TLIST_$__GROW
	.long	_CLASSES_TLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
	.long	_CLASSES_TLIST_$__CLEAR
	.long	_CLASSES_TLIST_$__ERROR$ANSISTRING$LONGINT
	.long	_DBF_PRSDEF_TEXPRESSSHORTLIST_$__FREEITEM$POINTER
	.long	_DBF_PRSDEF_TEXPRESSSHORTLIST_$__COMPARE$POINTER$POINTER$$LONGINT
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__INDEXOF$POINTER$$LONGINT
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADD$POINTER
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDREPLACE$POINTER
	.long	_DBF_PRSDEF_TEXPRESSSHORTLIST_$__KEYOF$POINTER$$POINTER
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__SEARCH$POINTER$LONGINT$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld20
_$DBF_PRSDEF$_Ld20:
	.byte	12
	.ascii	"TExpressList"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TEXPRESSLIST
_VMT_DBF_PRSDEF_TEXPRESSLIST:
	.long	20,-20
	.long	_VMT_DBF_PRSSUPP_TSORTEDCOLLECTION
	.long	_$DBF_PRSDEF$_Ld20
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld21
	.long	_RTTI_DBF_PRSDEF_TEXPRESSLIST
	.long	0,0,0,0
	.long	_DBF_PRSDEF_TEXPRESSLIST_$__DESTROY
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
	.long	_CLASSES_TLIST_$__GROW
	.long	_CLASSES_TLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
	.long	_CLASSES_TLIST_$__CLEAR
	.long	_CLASSES_TLIST_$__ERROR$ANSISTRING$LONGINT
	.long	_DBF_PRSDEF_TEXPRESSLIST_$__FREEITEM$POINTER
	.long	_DBF_PRSDEF_TEXPRESSLIST_$__COMPARE$POINTER$POINTER$$LONGINT
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__INDEXOF$POINTER$$LONGINT
	.long	_DBF_PRSDEF_TEXPRESSLIST_$__ADD$POINTER
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDREPLACE$POINTER
	.long	_DBF_PRSDEF_TEXPRESSLIST_$__KEYOF$POINTER$$POINTER
	.long	_DBF_PRSDEF_TEXPRESSLIST_$__SEARCH$POINTER$LONGINT$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld23
_$DBF_PRSDEF$_Ld23:
	.byte	9
	.ascii	"TConstant"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TCONSTANT
_VMT_DBF_PRSDEF_TCONSTANT:
	.long	20,-20
	.long	_VMT_DBF_PRSDEF_TEXPRWORD
	.long	_$DBF_PRSDEF$_Ld23
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld24
	.long	_RTTI_DBF_PRSDEF_TCONSTANT
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TCONSTANT_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TEXPRWORD_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld26
_$DBF_PRSDEF$_Ld26:
	.byte	14
	.ascii	"TFloatConstant"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TFLOATCONSTANT
_VMT_DBF_PRSDEF_TFLOATCONSTANT:
	.long	28,-28
	.long	_VMT_DBF_PRSDEF_TCONSTANT
	.long	_$DBF_PRSDEF$_Ld26
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld27
	.long	_RTTI_DBF_PRSDEF_TFLOATCONSTANT
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TCONSTANT_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TFLOATCONSTANT_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld29
_$DBF_PRSDEF$_Ld29:
	.byte	13
	.ascii	"TUserConstant"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TUSERCONSTANT
_VMT_DBF_PRSDEF_TUSERCONSTANT:
	.long	32,-32
	.long	_VMT_DBF_PRSDEF_TFLOATCONSTANT
	.long	_$DBF_PRSDEF$_Ld29
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld30
	.long	_RTTI_DBF_PRSDEF_TUSERCONSTANT
	.long	_INIT_DBF_PRSDEF_TUSERCONSTANT
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TCONSTANT_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TUSERCONSTANT_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TFLOATCONSTANT_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld32
_$DBF_PRSDEF$_Ld32:
	.byte	15
	.ascii	"TStringConstant"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TSTRINGCONSTANT
_VMT_DBF_PRSDEF_TSTRINGCONSTANT:
	.long	24,-24
	.long	_VMT_DBF_PRSDEF_TCONSTANT
	.long	_$DBF_PRSDEF$_Ld32
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld33
	.long	_RTTI_DBF_PRSDEF_TSTRINGCONSTANT
	.long	_INIT_DBF_PRSDEF_TSTRINGCONSTANT
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TCONSTANT_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TSTRINGCONSTANT_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld35
_$DBF_PRSDEF$_Ld35:
	.byte	16
	.ascii	"TIntegerConstant"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TINTEGERCONSTANT
_VMT_DBF_PRSDEF_TINTEGERCONSTANT:
	.long	24,-24
	.long	_VMT_DBF_PRSDEF_TCONSTANT
	.long	_$DBF_PRSDEF$_Ld35
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld36
	.long	_RTTI_DBF_PRSDEF_TINTEGERCONSTANT
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TCONSTANT_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TINTEGERCONSTANT_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld38
_$DBF_PRSDEF$_Ld38:
	.byte	16
	.ascii	"TBooleanConstant"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TBOOLEANCONSTANT
_VMT_DBF_PRSDEF_TBOOLEANCONSTANT:
	.long	24,-24
	.long	_VMT_DBF_PRSDEF_TCONSTANT
	.long	_$DBF_PRSDEF$_Ld38
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld39
	.long	_RTTI_DBF_PRSDEF_TBOOLEANCONSTANT
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TCONSTANT_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TBOOLEANCONSTANT_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld41
_$DBF_PRSDEF$_Ld41:
	.byte	9
	.ascii	"TVariable"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TVARIABLE
_VMT_DBF_PRSDEF_TVARIABLE:
	.long	20,-20
	.long	_VMT_DBF_PRSDEF_TEXPRWORD
	.long	_$DBF_PRSDEF$_Ld41
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld42
	.long	_RTTI_DBF_PRSDEF_TVARIABLE
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TVARIABLE_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TVARIABLE_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TEXPRWORD_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld44
_$DBF_PRSDEF$_Ld44:
	.byte	14
	.ascii	"TFloatVariable"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TFLOATVARIABLE
_VMT_DBF_PRSDEF_TFLOATVARIABLE:
	.long	24,-24
	.long	_VMT_DBF_PRSDEF_TVARIABLE
	.long	_$DBF_PRSDEF$_Ld44
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld45
	.long	_RTTI_DBF_PRSDEF_TFLOATVARIABLE
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TVARIABLE_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TVARIABLE_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TFLOATVARIABLE_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld47
_$DBF_PRSDEF$_Ld47:
	.byte	15
	.ascii	"TStringVariable"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TSTRINGVARIABLE
_VMT_DBF_PRSDEF_TSTRINGVARIABLE:
	.long	28,-28
	.long	_VMT_DBF_PRSDEF_TVARIABLE
	.long	_$DBF_PRSDEF$_Ld47
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld48
	.long	_RTTI_DBF_PRSDEF_TSTRINGVARIABLE
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TSTRINGVARIABLE_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TVARIABLE_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TVARIABLE_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TSTRINGVARIABLE_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TSTRINGVARIABLE_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TSTRINGVARIABLE_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld50
_$DBF_PRSDEF$_Ld50:
	.byte	17
	.ascii	"TDateTimeVariable"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TDATETIMEVARIABLE
_VMT_DBF_PRSDEF_TDATETIMEVARIABLE:
	.long	24,-24
	.long	_VMT_DBF_PRSDEF_TVARIABLE
	.long	_$DBF_PRSDEF$_Ld50
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld51
	.long	_RTTI_DBF_PRSDEF_TDATETIMEVARIABLE
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TVARIABLE_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TVARIABLE_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TDATETIMEVARIABLE_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld53
_$DBF_PRSDEF$_Ld53:
	.byte	16
	.ascii	"TIntegerVariable"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TINTEGERVARIABLE
_VMT_DBF_PRSDEF_TINTEGERVARIABLE:
	.long	24,-24
	.long	_VMT_DBF_PRSDEF_TVARIABLE
	.long	_$DBF_PRSDEF$_Ld53
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld54
	.long	_RTTI_DBF_PRSDEF_TINTEGERVARIABLE
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TVARIABLE_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TVARIABLE_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TINTEGERVARIABLE_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld56
_$DBF_PRSDEF$_Ld56:
	.byte	17
	.ascii	"TLargeIntVariable"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TLARGEINTVARIABLE
_VMT_DBF_PRSDEF_TLARGEINTVARIABLE:
	.long	24,-24
	.long	_VMT_DBF_PRSDEF_TVARIABLE
	.long	_$DBF_PRSDEF$_Ld56
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld57
	.long	_RTTI_DBF_PRSDEF_TLARGEINTVARIABLE
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TVARIABLE_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TVARIABLE_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TLARGEINTVARIABLE_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld59
_$DBF_PRSDEF$_Ld59:
	.byte	16
	.ascii	"TBooleanVariable"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TBOOLEANVARIABLE
_VMT_DBF_PRSDEF_TBOOLEANVARIABLE:
	.long	24,-24
	.long	_VMT_DBF_PRSDEF_TVARIABLE
	.long	_$DBF_PRSDEF$_Ld59
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld60
	.long	_RTTI_DBF_PRSDEF_TBOOLEANVARIABLE
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TVARIABLE_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TVARIABLE_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TBOOLEANVARIABLE_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld62
_$DBF_PRSDEF$_Ld62:
	.byte	12
	.ascii	"TLeftBracket"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TLEFTBRACKET
_VMT_DBF_PRSDEF_TLEFTBRACKET:
	.long	16,-16
	.long	_VMT_DBF_PRSDEF_TEXPRWORD
	.long	_$DBF_PRSDEF$_Ld62
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld63
	.long	_RTTI_DBF_PRSDEF_TLEFTBRACKET
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TLEFTBRACKET_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TEXPRWORD_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld65
_$DBF_PRSDEF$_Ld65:
	.byte	13
	.ascii	"TRightBracket"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TRIGHTBRACKET
_VMT_DBF_PRSDEF_TRIGHTBRACKET:
	.long	16,-16
	.long	_VMT_DBF_PRSDEF_TEXPRWORD
	.long	_$DBF_PRSDEF$_Ld65
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld66
	.long	_RTTI_DBF_PRSDEF_TRIGHTBRACKET
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TRIGHTBRACKET_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TEXPRWORD_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld68
_$DBF_PRSDEF$_Ld68:
	.byte	6
	.ascii	"TComma"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TCOMMA
_VMT_DBF_PRSDEF_TCOMMA:
	.long	16,-16
	.long	_VMT_DBF_PRSDEF_TEXPRWORD
	.long	_$DBF_PRSDEF$_Ld68
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld69
	.long	_RTTI_DBF_PRSDEF_TCOMMA
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
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TCOMMA_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TEXPRWORD_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TEXPRWORD_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld71
_$DBF_PRSDEF$_Ld71:
	.byte	9
	.ascii	"TFunction"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TFUNCTION
_VMT_DBF_PRSDEF_TFUNCTION:
	.long	48,-48
	.long	_VMT_DBF_PRSDEF_TEXPRWORD
	.long	_$DBF_PRSDEF$_Ld71
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld72
	.long	_RTTI_DBF_PRSDEF_TFUNCTION
	.long	_INIT_DBF_PRSDEF_TFUNCTION
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
	.long	_DBF_PRSDEF_TFUNCTION_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TFUNCTION_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TFUNCTION_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TFUNCTION_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TFUNCTION_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TFUNCTION_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TFUNCTION_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TEXPRWORD_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TFUNCTION_$__ISFUNCTION$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld74
_$DBF_PRSDEF$_Ld74:
	.byte	16
	.ascii	"TVaryingFunction"

.const_data
	.align 2
.globl	_VMT_DBF_PRSDEF_TVARYINGFUNCTION
_VMT_DBF_PRSDEF_TVARYINGFUNCTION:
	.long	48,-48
	.long	_VMT_DBF_PRSDEF_TFUNCTION
	.long	_$DBF_PRSDEF$_Ld74
	.long	0,0
	.long	_$DBF_PRSDEF$_Ld75
	.long	_RTTI_DBF_PRSDEF_TVARYINGFUNCTION
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
	.long	_DBF_PRSDEF_TFUNCTION_$__GETISOPERATOR$$BOOLEAN
	.long	_DBF_PRSDEF_TEXPRWORD_$__GETFIXEDLEN$$LONGINT
	.long	_DBF_PRSDEF_TVARYINGFUNCTION_$__GETCANVARY$$BOOLEAN
	.long	_DBF_PRSDEF_TFUNCTION_$__GETRESULTTYPE$$TEXPRESSIONTYPE
	.long	_DBF_PRSDEF_TFUNCTION_$__GETMINFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TFUNCTION_$__GETMAXFUNCTIONARG$$LONGINT
	.long	_DBF_PRSDEF_TFUNCTION_$__GETDESCRIPTION$$ANSISTRING
	.long	_DBF_PRSDEF_TFUNCTION_$__GETTYPESPEC$$ANSISTRING
	.long	_DBF_PRSDEF_TFUNCTION_$__GETSHORTNAME$$ANSISTRING
	.long	_DBF_PRSDEF_TEXPRWORD_$__SETFIXEDLEN$LONGINT
	.long	_DBF_PRSDEF_TEXPRWORD_$__LENASPOINTER$$PINTEGER
	.long	_DBF_PRSDEF_TEXPRWORD_$__ASPOINTER$$PCHAR
	.long	_DBF_PRSDEF_TFUNCTION_$__ISFUNCTION$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_DBF_PRSDEF
_THREADVARLIST_DBF_PRSDEF:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld2
_$DBF_PRSDEF$_Ld2:
	.short	0,1
	.long	0,-1,16
.reference _$DBF_PRSDEF$_Ld1
.globl	_$DBF_PRSDEF$_Ld1
_$DBF_PRSDEF$_Ld1:
.reference _$DBF_PRSDEF$_Ld2
	.ascii	"Unequal brackets\000"

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld4
_$DBF_PRSDEF$_Ld4:
	.short	0,1
	.long	0,-1,18
.reference _$DBF_PRSDEF$_Ld3
.globl	_$DBF_PRSDEF$_Ld3
_$DBF_PRSDEF$_Ld3:
.reference _$DBF_PRSDEF$_Ld4
	.ascii	"Too many arguments\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PCHAR_LENGTH$stub:
.indirect_symbol FPC_PCHAR_LENGTH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TDYNAMICTYPE_$__APPEND$PCHAR$LONGINT$stub:
.indirect_symbol _DBF_PRSDEF_TDYNAMICTYPE_$__APPEND$PCHAR$LONGINT
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

L_DBF_PRSDEF_TEXPRWORD_$__CREATE$ANSISTRING$TEXPRFUNC$$TEXPRWORD$stub:
.indirect_symbol _DBF_PRSDEF_TEXPRWORD_$__CREATE$ANSISTRING$TEXPRFUNC$$TEXPRWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TCONSTANT_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TCONSTANT$stub:
.indirect_symbol _DBF_PRSDEF_TCONSTANT_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TCONSTANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOFLOAT$ANSISTRING$$EXTENDED$stub:
.indirect_symbol _SYSUTILS_STRTOFLOAT$ANSISTRING$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TFLOATCONSTANT_$__CREATEASDOUBLE$ANSISTRING$DOUBLE$$TFLOATCONSTANT$stub:
.indirect_symbol _DBF_PRSDEF_TFLOATCONSTANT_$__CREATEASDOUBLE$ANSISTRING$DOUBLE$$TFLOATCONSTANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_copy$stub:
.indirect_symbol fpc_ansistr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TVARIABLE_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TVARIABLE$stub:
.indirect_symbol _DBF_PRSDEF_TVARIABLE_$__CREATE$ANSISTRING$TEXPRESSIONTYPE$TEXPRFUNC$$TVARIABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__CREATE$$TLIST$stub:
.indirect_symbol _CLASSES_TLIST_$__CREATE$$TLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSSUPP_TOCOLLECTION_$__DESTROY$stub:
.indirect_symbol _DBF_PRSSUPP_TOCOLLECTION_$__DESTROY
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

L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADD$POINTER$stub:
.indirect_symbol _DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADD$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__INSERT$LONGINT$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__INSERT$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRICOMP$PCHAR$PCHAR$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRICOMP$PCHAR$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__REMOVE$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__REMOVE$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSSUPP_TOCOLLECTION_$__FREEITEM$POINTER$stub:
.indirect_symbol _DBF_PRSSUPP_TOCOLLECTION_$__FREEITEM$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSSUPP_TSORTEDCOLLECTION_$__SEARCH$POINTER$LONGINT$$BOOLEAN$stub:
.indirect_symbol _DBF_PRSSUPP_TSORTEDCOLLECTION_$__SEARCH$POINTER$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__GET$LONGINT$$POINTER
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

L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
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

L_CLASSES_TLIST_$__PUT$LONGINT$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__PUT$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__SETCOUNT$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__SETCOUNT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TEXPRCOLLECTION_$__ERASEEXTRABRACKETS$stub:
.indirect_symbol _DBF_PRSDEF_TEXPRCOLLECTION_$__ERASEEXTRABRACKETS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSDEF_TFUNCTION_$__INTERNALCREATE$crcDAA609E3$stub:
.indirect_symbol _DBF_PRSDEF_TFUNCTION_$__INTERNALCREATE$crcDAA609E3
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

L_DBF_PRSDEF_TDYNAMICTYPE_$__RESIZE$LONGINT$BOOLEAN$stub:
.indirect_symbol _DBF_PRSDEF_TDYNAMICTYPE_$__RESIZE$LONGINT$BOOLEAN
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

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
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

L_DBF_PRSDEF_TDYNAMICTYPE_$__ASSURESPACE$LONGINT$stub:
.indirect_symbol _DBF_PRSDEF_TDYNAMICTYPE_$__ASSURESPACE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSSUPP_GETSTRFROMINT$LONGINT$PCHAR$$LONGINT$stub:
.indirect_symbol _DBF_PRSSUPP_GETSTRFROMINT$LONGINT$PCHAR$$LONGINT
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
.globl	_INIT_DBF_PRSDEF_TEXPRESSIONTYPE
_INIT_DBF_PRSDEF_TEXPRESSIONTYPE:
	.byte	3,15
	.ascii	"TExpressionType"
	.byte	1
	.long	0,9,0
	.byte	9
	.ascii	"etInteger"
	.byte	8
	.ascii	"etString"
	.byte	9
	.ascii	"etBoolean"
	.byte	10
	.ascii	"etLargeInt"
	.byte	7
	.ascii	"etFloat"
	.byte	10
	.ascii	"etDateTime"
	.byte	13
	.ascii	"etLeftBracket"
	.byte	14
	.ascii	"etRightBracket"
	.byte	7
	.ascii	"etComma"
	.byte	9
	.ascii	"etUnknown"
	.byte	10
	.ascii	"dbf_prsdef"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE
_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE:
	.byte	3,15
	.ascii	"TExpressionType"
	.byte	1
	.long	0,9,0
	.byte	9
	.ascii	"etInteger"
	.byte	8
	.ascii	"etString"
	.byte	9
	.ascii	"etBoolean"
	.byte	10
	.ascii	"etLargeInt"
	.byte	7
	.ascii	"etFloat"
	.byte	10
	.ascii	"etDateTime"
	.byte	13
	.ascii	"etLeftBracket"
	.byte	14
	.ascii	"etRightBracket"
	.byte	7
	.ascii	"etComma"
	.byte	9
	.ascii	"etUnknown"
	.byte	10
	.ascii	"dbf_prsdef"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE_s2o
_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE_s2o:
	.long	10,2
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+49
	.long	8
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+118
	.long	5
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+78
	.long	4
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+70
	.long	0
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+30
	.long	3
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+59
	.long	6
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+89
	.long	7
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+103
	.long	1
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+40
	.long	9
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+126

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE_o2s
_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE_o2s:
	.long	0
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+30
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+40
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+49
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+59
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+70
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+78
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+89
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+103
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+118
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE+126

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld6
_$DBF_PRSDEF$_Ld6:
	.short	0
	.long	_$DBF_PRSDEF$_Ld7
	.align 2
.globl	_$DBF_PRSDEF$_Ld7
_$DBF_PRSDEF$_Ld7:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_EPARSEREXCEPTION
_INIT_DBF_PRSDEF_EPARSEREXCEPTION:
	.byte	15,16
	.ascii	"EParserException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_EPARSEREXCEPTION
_RTTI_DBF_PRSDEF_EPARSEREXCEPTION:
	.byte	15,16
	.ascii	"EParserException"
	.long	_VMT_DBF_PRSDEF_EPARSEREXCEPTION
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_PEXPRESSIONREC
_INIT_DBF_PRSDEF_PEXPRESSIONREC:
	.byte	0
	.ascii	"\016PExpressionRec"

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_PEXPRESSIONREC
_RTTI_DBF_PRSDEF_PEXPRESSIONREC:
	.byte	0
	.ascii	"\016PExpressionRec"

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_PDYNAMICTYPE
_INIT_DBF_PRSDEF_PDYNAMICTYPE:
	.byte	0
	.ascii	"\014PDynamicType"

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_PDYNAMICTYPE
_RTTI_DBF_PRSDEF_PDYNAMICTYPE:
	.byte	0
	.ascii	"\014PDynamicType"

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_PDATETIMEREC
_INIT_DBF_PRSDEF_PDATETIMEREC:
	.byte	0
	.ascii	"\014PDateTimeRec"

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_PDATETIMEREC
_RTTI_DBF_PRSDEF_PDATETIMEREC:
	.byte	0
	.ascii	"\014PDateTimeRec"

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_PLARGEINT
_INIT_DBF_PRSDEF_PLARGEINT:
	.byte	0
	.ascii	"\011PLargeInt"

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_PLARGEINT
_RTTI_DBF_PRSDEF_PLARGEINT:
	.byte	0
	.ascii	"\011PLargeInt"

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld9
_$DBF_PRSDEF$_Ld9:
	.short	0
	.long	_$DBF_PRSDEF$_Ld10
	.align 2
.globl	_$DBF_PRSDEF$_Ld10
_$DBF_PRSDEF$_Ld10:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TEXPRWORD
_INIT_DBF_PRSDEF_TEXPRWORD:
	.byte	15,9
	.ascii	"TExprWord"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	4

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TEXPRWORD
_RTTI_DBF_PRSDEF_TEXPRWORD:
	.byte	15,9
	.ascii	"TExprWord"
	.long	_VMT_DBF_PRSDEF_TEXPRWORD
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TEXPRFUNC
_INIT_DBF_PRSDEF_TEXPRFUNC:
	.byte	23,9
	.ascii	"TExprFunc"

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TEXPRFUNC
_RTTI_DBF_PRSDEF_TEXPRFUNC:
	.byte	23,9
	.ascii	"TExprFunc"

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld12
_$DBF_PRSDEF$_Ld12:
	.short	0
	.long	_$DBF_PRSDEF$_Ld13
	.align 2
.globl	_$DBF_PRSDEF$_Ld13
_$DBF_PRSDEF$_Ld13:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TDYNAMICTYPE
_INIT_DBF_PRSDEF_TDYNAMICTYPE:
	.byte	15,12
	.ascii	"TDynamicType"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TDYNAMICTYPE
_RTTI_DBF_PRSDEF_TDYNAMICTYPE:
	.byte	15,12
	.ascii	"TDynamicType"
	.long	_VMT_DBF_PRSDEF_TDYNAMICTYPE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TEXPRESSIONREC
_INIT_DBF_PRSDEF_TEXPRESSIONREC:
	.byte	13,14
	.ascii	"TExpressionRec"
	.long	128,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_DEF22
_RTTI_DBF_PRSDEF_DEF22:
	.byte	12
	.ascii	"\000"
	.long	4,6
	.long	_RTTI_SYSTEM_PCHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_DEF23
_RTTI_DBF_PRSDEF_DEF23:
	.byte	12
	.ascii	"\000"
	.long	4,6
	.long	_RTTI_SYSTEM_PCHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_DEF24
_RTTI_DBF_PRSDEF_DEF24:
	.byte	12
	.ascii	"\000"
	.long	4,6
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_DEF25
_RTTI_DBF_PRSDEF_DEF25:
	.byte	12
	.ascii	"\000"
	.long	1,6
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE
	.long	-1

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_DEF26
_RTTI_DBF_PRSDEF_DEF26:
	.byte	12
	.ascii	"\000"
	.long	4,6
	.long	_RTTI_DBF_PRSDEF_PEXPRESSIONREC
	.long	-1

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TEXPRESSIONREC
_RTTI_DBF_PRSDEF_TEXPRESSIONREC:
	.byte	13,14
	.ascii	"TExpressionRec"
	.long	128,12
	.long	_RTTI_DBF_PRSDEF_TEXPRFUNC
	.long	0
	.long	_RTTI_DBF_PRSDEF_PEXPRESSIONREC
	.long	4
	.long	_RTTI_DBF_PRSDEF_TDYNAMICTYPE
	.long	8
	.long	_RTTI_DBF_PRSDEF_TEXPRWORD
	.long	12
	.long	_RTTI_SYSTEM_POINTER
	.long	16
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	20
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	21
	.long	_RTTI_DBF_PRSDEF_DEF22
	.long	24
	.long	_RTTI_DBF_PRSDEF_DEF23
	.long	48
	.long	_RTTI_DBF_PRSDEF_DEF24
	.long	72
	.long	_RTTI_DBF_PRSDEF_DEF25
	.long	96
	.long	_RTTI_DBF_PRSDEF_DEF26
	.long	104

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld15
_$DBF_PRSDEF$_Ld15:
	.short	0
	.long	_$DBF_PRSDEF$_Ld16
	.align 2
.globl	_$DBF_PRSDEF$_Ld16
_$DBF_PRSDEF$_Ld16:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TEXPRCOLLECTION
_INIT_DBF_PRSDEF_TEXPRCOLLECTION:
	.byte	15,15
	.ascii	"TExprCollection"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TEXPRCOLLECTION
_RTTI_DBF_PRSDEF_TEXPRCOLLECTION:
	.byte	15,15
	.ascii	"TExprCollection"
	.long	_VMT_DBF_PRSDEF_TEXPRCOLLECTION
	.long	_RTTI_DBF_PRSSUPP_TNOOWNERCOLLECTION
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TEXPRWORDREC
_INIT_DBF_PRSDEF_TEXPRWORDREC:
	.byte	13,12
	.ascii	"TExprWordRec"
	.long	36,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TEXPRWORDREC
_RTTI_DBF_PRSDEF_TEXPRWORDREC:
	.byte	13,12
	.ascii	"TExprWordRec"
	.long	36,14
	.long	_RTTI_SYSTEM_PCHAR
	.long	0
	.long	_RTTI_SYSTEM_PCHAR
	.long	4
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	8
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	9
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	10
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	11
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	12
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	13
	.long	_RTTI_DBF_PRSDEF_TEXPRESSIONTYPE
	.long	14
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_SYSTEM_PCHAR
	.long	24
	.long	_RTTI_SYSTEM_PCHAR
	.long	28
	.long	_RTTI_DBF_PRSDEF_TEXPRFUNC
	.long	32

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld18
_$DBF_PRSDEF$_Ld18:
	.short	0
	.long	_$DBF_PRSDEF$_Ld19
	.align 2
.globl	_$DBF_PRSDEF$_Ld19
_$DBF_PRSDEF$_Ld19:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TEXPRESSSHORTLIST
_INIT_DBF_PRSDEF_TEXPRESSSHORTLIST:
	.byte	15,17
	.ascii	"TExpressShortList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TEXPRESSSHORTLIST
_RTTI_DBF_PRSDEF_TEXPRESSSHORTLIST:
	.byte	15,17
	.ascii	"TExpressShortList"
	.long	_VMT_DBF_PRSDEF_TEXPRESSSHORTLIST
	.long	_RTTI_DBF_PRSSUPP_TSORTEDCOLLECTION
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld21
_$DBF_PRSDEF$_Ld21:
	.short	0
	.long	_$DBF_PRSDEF$_Ld22
	.align 2
.globl	_$DBF_PRSDEF$_Ld22
_$DBF_PRSDEF$_Ld22:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TEXPRESSLIST
_INIT_DBF_PRSDEF_TEXPRESSLIST:
	.byte	15,12
	.ascii	"TExpressList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TEXPRESSLIST
_RTTI_DBF_PRSDEF_TEXPRESSLIST:
	.byte	15,12
	.ascii	"TExpressList"
	.long	_VMT_DBF_PRSDEF_TEXPRESSLIST
	.long	_RTTI_DBF_PRSSUPP_TSORTEDCOLLECTION
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld24
_$DBF_PRSDEF$_Ld24:
	.short	0
	.long	_$DBF_PRSDEF$_Ld25
	.align 2
.globl	_$DBF_PRSDEF$_Ld25
_$DBF_PRSDEF$_Ld25:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TCONSTANT
_INIT_DBF_PRSDEF_TCONSTANT:
	.byte	15,9
	.ascii	"TConstant"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TCONSTANT
_RTTI_DBF_PRSDEF_TCONSTANT:
	.byte	15,9
	.ascii	"TConstant"
	.long	_VMT_DBF_PRSDEF_TCONSTANT
	.long	_RTTI_DBF_PRSDEF_TEXPRWORD
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld27
_$DBF_PRSDEF$_Ld27:
	.short	0
	.long	_$DBF_PRSDEF$_Ld28
	.align 2
.globl	_$DBF_PRSDEF$_Ld28
_$DBF_PRSDEF$_Ld28:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TFLOATCONSTANT
_INIT_DBF_PRSDEF_TFLOATCONSTANT:
	.byte	15,14
	.ascii	"TFloatConstant"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TFLOATCONSTANT
_RTTI_DBF_PRSDEF_TFLOATCONSTANT:
	.byte	15,14
	.ascii	"TFloatConstant"
	.long	_VMT_DBF_PRSDEF_TFLOATCONSTANT
	.long	_RTTI_DBF_PRSDEF_TCONSTANT
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld30
_$DBF_PRSDEF$_Ld30:
	.short	0
	.long	_$DBF_PRSDEF$_Ld31
	.align 2
.globl	_$DBF_PRSDEF$_Ld31
_$DBF_PRSDEF$_Ld31:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TUSERCONSTANT
_INIT_DBF_PRSDEF_TUSERCONSTANT:
	.byte	15,13
	.ascii	"TUserConstant"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	28

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TUSERCONSTANT
_RTTI_DBF_PRSDEF_TUSERCONSTANT:
	.byte	15,13
	.ascii	"TUserConstant"
	.long	_VMT_DBF_PRSDEF_TUSERCONSTANT
	.long	_RTTI_DBF_PRSDEF_TFLOATCONSTANT
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld33
_$DBF_PRSDEF$_Ld33:
	.short	0
	.long	_$DBF_PRSDEF$_Ld34
	.align 2
.globl	_$DBF_PRSDEF$_Ld34
_$DBF_PRSDEF$_Ld34:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TSTRINGCONSTANT
_INIT_DBF_PRSDEF_TSTRINGCONSTANT:
	.byte	15,15
	.ascii	"TStringConstant"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	20

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TSTRINGCONSTANT
_RTTI_DBF_PRSDEF_TSTRINGCONSTANT:
	.byte	15,15
	.ascii	"TStringConstant"
	.long	_VMT_DBF_PRSDEF_TSTRINGCONSTANT
	.long	_RTTI_DBF_PRSDEF_TCONSTANT
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld36
_$DBF_PRSDEF$_Ld36:
	.short	0
	.long	_$DBF_PRSDEF$_Ld37
	.align 2
.globl	_$DBF_PRSDEF$_Ld37
_$DBF_PRSDEF$_Ld37:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TINTEGERCONSTANT
_INIT_DBF_PRSDEF_TINTEGERCONSTANT:
	.byte	15,16
	.ascii	"TIntegerConstant"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TINTEGERCONSTANT
_RTTI_DBF_PRSDEF_TINTEGERCONSTANT:
	.byte	15,16
	.ascii	"TIntegerConstant"
	.long	_VMT_DBF_PRSDEF_TINTEGERCONSTANT
	.long	_RTTI_DBF_PRSDEF_TCONSTANT
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld39
_$DBF_PRSDEF$_Ld39:
	.short	0
	.long	_$DBF_PRSDEF$_Ld40
	.align 2
.globl	_$DBF_PRSDEF$_Ld40
_$DBF_PRSDEF$_Ld40:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TBOOLEANCONSTANT
_INIT_DBF_PRSDEF_TBOOLEANCONSTANT:
	.byte	15,16
	.ascii	"TBooleanConstant"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TBOOLEANCONSTANT
_RTTI_DBF_PRSDEF_TBOOLEANCONSTANT:
	.byte	15,16
	.ascii	"TBooleanConstant"
	.long	_VMT_DBF_PRSDEF_TBOOLEANCONSTANT
	.long	_RTTI_DBF_PRSDEF_TCONSTANT
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld42
_$DBF_PRSDEF$_Ld42:
	.short	0
	.long	_$DBF_PRSDEF$_Ld43
	.align 2
.globl	_$DBF_PRSDEF$_Ld43
_$DBF_PRSDEF$_Ld43:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TVARIABLE
_INIT_DBF_PRSDEF_TVARIABLE:
	.byte	15,9
	.ascii	"TVariable"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TVARIABLE
_RTTI_DBF_PRSDEF_TVARIABLE:
	.byte	15,9
	.ascii	"TVariable"
	.long	_VMT_DBF_PRSDEF_TVARIABLE
	.long	_RTTI_DBF_PRSDEF_TEXPRWORD
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld45
_$DBF_PRSDEF$_Ld45:
	.short	0
	.long	_$DBF_PRSDEF$_Ld46
	.align 2
.globl	_$DBF_PRSDEF$_Ld46
_$DBF_PRSDEF$_Ld46:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TFLOATVARIABLE
_INIT_DBF_PRSDEF_TFLOATVARIABLE:
	.byte	15,14
	.ascii	"TFloatVariable"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TFLOATVARIABLE
_RTTI_DBF_PRSDEF_TFLOATVARIABLE:
	.byte	15,14
	.ascii	"TFloatVariable"
	.long	_VMT_DBF_PRSDEF_TFLOATVARIABLE
	.long	_RTTI_DBF_PRSDEF_TVARIABLE
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld48
_$DBF_PRSDEF$_Ld48:
	.short	0
	.long	_$DBF_PRSDEF$_Ld49
	.align 2
.globl	_$DBF_PRSDEF$_Ld49
_$DBF_PRSDEF$_Ld49:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TSTRINGVARIABLE
_INIT_DBF_PRSDEF_TSTRINGVARIABLE:
	.byte	15,15
	.ascii	"TStringVariable"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TSTRINGVARIABLE
_RTTI_DBF_PRSDEF_TSTRINGVARIABLE:
	.byte	15,15
	.ascii	"TStringVariable"
	.long	_VMT_DBF_PRSDEF_TSTRINGVARIABLE
	.long	_RTTI_DBF_PRSDEF_TVARIABLE
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld51
_$DBF_PRSDEF$_Ld51:
	.short	0
	.long	_$DBF_PRSDEF$_Ld52
	.align 2
.globl	_$DBF_PRSDEF$_Ld52
_$DBF_PRSDEF$_Ld52:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TDATETIMEVARIABLE
_INIT_DBF_PRSDEF_TDATETIMEVARIABLE:
	.byte	15,17
	.ascii	"TDateTimeVariable"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TDATETIMEVARIABLE
_RTTI_DBF_PRSDEF_TDATETIMEVARIABLE:
	.byte	15,17
	.ascii	"TDateTimeVariable"
	.long	_VMT_DBF_PRSDEF_TDATETIMEVARIABLE
	.long	_RTTI_DBF_PRSDEF_TVARIABLE
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld54
_$DBF_PRSDEF$_Ld54:
	.short	0
	.long	_$DBF_PRSDEF$_Ld55
	.align 2
.globl	_$DBF_PRSDEF$_Ld55
_$DBF_PRSDEF$_Ld55:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TINTEGERVARIABLE
_INIT_DBF_PRSDEF_TINTEGERVARIABLE:
	.byte	15,16
	.ascii	"TIntegerVariable"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TINTEGERVARIABLE
_RTTI_DBF_PRSDEF_TINTEGERVARIABLE:
	.byte	15,16
	.ascii	"TIntegerVariable"
	.long	_VMT_DBF_PRSDEF_TINTEGERVARIABLE
	.long	_RTTI_DBF_PRSDEF_TVARIABLE
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld57
_$DBF_PRSDEF$_Ld57:
	.short	0
	.long	_$DBF_PRSDEF$_Ld58
	.align 2
.globl	_$DBF_PRSDEF$_Ld58
_$DBF_PRSDEF$_Ld58:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TLARGEINTVARIABLE
_INIT_DBF_PRSDEF_TLARGEINTVARIABLE:
	.byte	15,17
	.ascii	"TLargeIntVariable"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TLARGEINTVARIABLE
_RTTI_DBF_PRSDEF_TLARGEINTVARIABLE:
	.byte	15,17
	.ascii	"TLargeIntVariable"
	.long	_VMT_DBF_PRSDEF_TLARGEINTVARIABLE
	.long	_RTTI_DBF_PRSDEF_TVARIABLE
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld60
_$DBF_PRSDEF$_Ld60:
	.short	0
	.long	_$DBF_PRSDEF$_Ld61
	.align 2
.globl	_$DBF_PRSDEF$_Ld61
_$DBF_PRSDEF$_Ld61:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TBOOLEANVARIABLE
_INIT_DBF_PRSDEF_TBOOLEANVARIABLE:
	.byte	15,16
	.ascii	"TBooleanVariable"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TBOOLEANVARIABLE
_RTTI_DBF_PRSDEF_TBOOLEANVARIABLE:
	.byte	15,16
	.ascii	"TBooleanVariable"
	.long	_VMT_DBF_PRSDEF_TBOOLEANVARIABLE
	.long	_RTTI_DBF_PRSDEF_TVARIABLE
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld63
_$DBF_PRSDEF$_Ld63:
	.short	0
	.long	_$DBF_PRSDEF$_Ld64
	.align 2
.globl	_$DBF_PRSDEF$_Ld64
_$DBF_PRSDEF$_Ld64:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TLEFTBRACKET
_INIT_DBF_PRSDEF_TLEFTBRACKET:
	.byte	15,12
	.ascii	"TLeftBracket"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TLEFTBRACKET
_RTTI_DBF_PRSDEF_TLEFTBRACKET:
	.byte	15,12
	.ascii	"TLeftBracket"
	.long	_VMT_DBF_PRSDEF_TLEFTBRACKET
	.long	_RTTI_DBF_PRSDEF_TEXPRWORD
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld66
_$DBF_PRSDEF$_Ld66:
	.short	0
	.long	_$DBF_PRSDEF$_Ld67
	.align 2
.globl	_$DBF_PRSDEF$_Ld67
_$DBF_PRSDEF$_Ld67:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TRIGHTBRACKET
_INIT_DBF_PRSDEF_TRIGHTBRACKET:
	.byte	15,13
	.ascii	"TRightBracket"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TRIGHTBRACKET
_RTTI_DBF_PRSDEF_TRIGHTBRACKET:
	.byte	15,13
	.ascii	"TRightBracket"
	.long	_VMT_DBF_PRSDEF_TRIGHTBRACKET
	.long	_RTTI_DBF_PRSDEF_TEXPRWORD
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld69
_$DBF_PRSDEF$_Ld69:
	.short	0
	.long	_$DBF_PRSDEF$_Ld70
	.align 2
.globl	_$DBF_PRSDEF$_Ld70
_$DBF_PRSDEF$_Ld70:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TCOMMA
_INIT_DBF_PRSDEF_TCOMMA:
	.byte	15,6
	.ascii	"TComma"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TCOMMA
_RTTI_DBF_PRSDEF_TCOMMA:
	.byte	15,6
	.ascii	"TComma"
	.long	_VMT_DBF_PRSDEF_TCOMMA
	.long	_RTTI_DBF_PRSDEF_TEXPRWORD
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld72
_$DBF_PRSDEF$_Ld72:
	.short	0
	.long	_$DBF_PRSDEF$_Ld73
	.align 2
.globl	_$DBF_PRSDEF$_Ld73
_$DBF_PRSDEF$_Ld73:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TFUNCTION
_INIT_DBF_PRSDEF_TFUNCTION:
	.byte	15,9
	.ascii	"TFunction"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	32
	.long	_INIT_SYSTEM_ANSISTRING
	.long	36
	.long	_INIT_SYSTEM_ANSISTRING
	.long	40

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TFUNCTION
_RTTI_DBF_PRSDEF_TFUNCTION:
	.byte	15,9
	.ascii	"TFunction"
	.long	_VMT_DBF_PRSDEF_TFUNCTION
	.long	_RTTI_DBF_PRSDEF_TEXPRWORD
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSDEF$_Ld75
_$DBF_PRSDEF$_Ld75:
	.short	0
	.long	_$DBF_PRSDEF$_Ld76
	.align 2
.globl	_$DBF_PRSDEF$_Ld76
_$DBF_PRSDEF$_Ld76:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSDEF_TVARYINGFUNCTION
_INIT_DBF_PRSDEF_TVARYINGFUNCTION:
	.byte	15,16
	.ascii	"TVaryingFunction"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSDEF_TVARYINGFUNCTION
_RTTI_DBF_PRSDEF_TVARYINGFUNCTION:
	.byte	15,16
	.ascii	"TVaryingFunction"
	.long	_VMT_DBF_PRSDEF_TVARYINGFUNCTION
	.long	_RTTI_DBF_PRSDEF_TFUNCTION
	.short	0
	.byte	10
	.ascii	"dbf_prsdef"
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
L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_EMPTYSTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSDEF__STRINGVARIABLE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSDEF__STRINGVARIABLE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSDEF__STRINGCONSTANT$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSDEF__STRINGCONSTANT$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSDEF__FLOATVARIABLE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSDEF__FLOATVARIABLE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSDEF__INTEGERVARIABLE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSDEF__INTEGERVARIABLE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSDEF__LARGEINTVARIABLE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSDEF__LARGEINTVARIABLE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSDEF__DATETIMEVARIABLE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSDEF__DATETIMEVARIABLE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_PRSDEF__BOOLEANVARIABLE$PEXPRESSIONREC$non_lazy_ptr:
.indirect_symbol _DBF_PRSDEF__BOOLEANVARIABLE$PEXPRESSIONREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_TEXPRESSSHORTLIST$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_TEXPRESSSHORTLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PRSDEF_EPARSEREXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PRSDEF_EPARSEREXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSDEF$_Ld1$non_lazy_ptr:
.indirect_symbol _$DBF_PRSDEF$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF_PRSDEF$_Ld3$non_lazy_ptr:
.indirect_symbol _$DBF_PRSDEF$_Ld3
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

