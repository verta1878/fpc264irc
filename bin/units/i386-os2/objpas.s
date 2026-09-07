	.file "objpas.pp"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
.globl	OBJPAS_ASSIGNFILE$file$SHORTSTRING
OBJPAS_ASSIGNFILE$file$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$file$SHORTSTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_ASSIGNFILE$file$PCHAR
OBJPAS_ASSIGNFILE$file$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$file$PCHAR
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_ASSIGNFILE$file$CHAR
OBJPAS_ASSIGNFILE$file$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%dl
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$file$CHAR
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_CLOSEFILE$file
OBJPAS_CLOSEFILE$file:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_CLOSE$file
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_ASSIGNFILE$TEXT$SHORTSTRING
OBJPAS_ASSIGNFILE$TEXT$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$TEXT$SHORTSTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_ASSIGNFILE$TEXT$PCHAR
OBJPAS_ASSIGNFILE$TEXT$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$TEXT$PCHAR
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_ASSIGNFILE$TEXT$CHAR
OBJPAS_ASSIGNFILE$TEXT$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%dl
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$TEXT$CHAR
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_CLOSEFILE$TEXT
OBJPAS_CLOSEFILE$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_CLOSE$TEXT
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_ASSIGNFILE$TYPEDFILE$SHORTSTRING
OBJPAS_ASSIGNFILE$TYPEDFILE$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$TYPEDFILE$SHORTSTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_ASSIGNFILE$TYPEDFILE$PCHAR
OBJPAS_ASSIGNFILE$TYPEDFILE$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$TYPEDFILE$PCHAR
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_ASSIGNFILE$TYPEDFILE$CHAR
OBJPAS_ASSIGNFILE$TYPEDFILE$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%dl
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$TYPEDFILE$CHAR
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_PARAMSTR$LONGINT$$ANSISTRING
OBJPAS_PARAMSTR$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj67
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj70
	jmp	Lj71
Lj70:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-312(%ebp),%edx
	movl	$0,%eax
	call	SYSTEM_PARAMSTR$LONGINT$$SHORTSTRING
	leal	-312(%ebp),%eax
	leal	-56(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-56(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-56(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj82
Lj71:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj85
	jmp	Lj84
Lj85:
	movl	-4(%ebp),%eax
	cmpl	_argc,%eax
	jl	Lj83
	jmp	Lj84
Lj83:
	movl	$0,-12(%ebp)
	jmp	Lj89
	.balign 4,0x90
Lj88:
	incl	-12(%ebp)
Lj89:
	movl	_argv,%eax
	movl	-4(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	-12(%ebp),%edx
	movb	(%eax,%edx,1),%al
	testb	%al,%al
	jne	Lj88
	jmp	Lj90
Lj90:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj95
	jmp	Lj96
Lj95:
	movl	-8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	%eax,%edx
	movl	_argv,%eax
	movl	-4(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	movl	-12(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj96:
	jmp	Lj105
Lj84:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
Lj105:
Lj82:
Lj67:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj68
	call	FPC_RERAISE
Lj68:
	movl	-316(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_MKDIR$ANSISTRING
OBJPAS_MKDIR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$44,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj110
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_UNIQUE
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj117
	movl	-4(%edx),%edx
Lj117:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj120
	movl	$FPC_EMPTYCHAR,%eax
Lj120:
	call	FPC_SYS_MKDIR
Lj110:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj111
	call	FPC_RERAISE
Lj111:
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_RMDIR$ANSISTRING
OBJPAS_RMDIR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$44,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj123
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_UNIQUE
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj130
	movl	-4(%edx),%edx
Lj130:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj133
	movl	$FPC_EMPTYCHAR,%eax
Lj133:
	call	FPC_SYS_RMDIR
Lj123:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj124
	call	FPC_RERAISE
Lj124:
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_CHDIR$ANSISTRING
OBJPAS_CHDIR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$44,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj136
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_UNIQUE
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj143
	movl	-4(%edx),%edx
Lj143:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj146
	movl	$FPC_EMPTYCHAR,%eax
Lj146:
	call	FPC_SYS_CHDIR
Lj136:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj137
	call	FPC_RERAISE
Lj137:
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_HASH$ANSISTRING$$LONGWORD
OBJPAS_HASH$ANSISTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj149
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj157
	movl	-4(%eax),%eax
Lj157:
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jb	Lj155
	decl	-20(%ebp)
	.balign 4,0x90
Lj156:
	incl	-20(%ebp)
	movl	-12(%ebp),%edx
	shll	$4,%edx
	movl	%edx,-12(%ebp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movzbl	-1(%ecx,%edx,1),%edx
	addl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	andl	$-268435456,%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%edx
	testl	%edx,%edx
	jne	Lj162
	jmp	Lj163
Lj162:
	movl	-16(%ebp),%edx
	shrl	$24,%edx
	movl	-12(%ebp),%ecx
	xorl	%ecx,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	xorl	%edx,%ecx
	movl	%ecx,-12(%ebp)
Lj163:
	cmpl	-20(%ebp),%eax
	ja	Lj156
Lj155:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj168
	jmp	Lj169
Lj168:
	movl	$-1,-8(%ebp)
	jmp	Lj172
Lj169:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj172:
Lj149:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj150
	call	FPC_RERAISE
Lj150:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_SETRESOURCESTRINGS$TRESOURCEITERATOR$POINTER
OBJPAS_SETRESOURCESTRINGS$TRESOURCEITERATOR$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj177
	movl	FPC_RESOURCESTRINGTABLES,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj181
	decl	-16(%ebp)
	.balign 4,0x90
Lj182:
	incl	-16(%ebp)
	movl	-16(%ebp),%eax
	movl	FPC_RESOURCESTRINGTABLES+4(,%eax,8),%eax
	movl	%eax,-12(%ebp)
	addl	$16,-12(%ebp)
	jmp	Lj186
	.balign 4,0x90
Lj185:
	pushl	-8(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%esi
	call	*%esi
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj198
	jmp	Lj199
Lj198:
	movl	-20(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%esi
	leal	4(%esi),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-20(%ebp),%eax
	movl	%eax,4(%esi)
Lj199:
	addl	$16,-12(%ebp)
Lj186:
	movl	-16(%ebp),%eax
	movl	FPC_RESOURCESTRINGTABLES+8(,%eax,8),%eax
	cmpl	-12(%ebp),%eax
	ja	Lj185
	jmp	Lj187
Lj187:
	cmpl	-16(%ebp),%ebx
	jg	Lj182
Lj181:
Lj177:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj178
	call	FPC_RERAISE
Lj178:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_SETUNITRESOURCESTRINGS$SHORTSTRING$TRESOURCEITERATOR$POINTER
OBJPAS_SETUNITRESOURCESTRINGS$SHORTSTRING$TRESOURCEITERATOR$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$332,%esp
	movl	%ebx,-332(%ebp)
	movl	%esi,-328(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj210
	leal	-324(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING
	leal	-324(%ebp),%eax
	leal	-28(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	FPC_RESOURCESTRINGTABLES,%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj222
	decl	-20(%ebp)
	.balign 4,0x90
Lj223:
	incl	-20(%ebp)
	movl	-20(%ebp),%eax
	movl	FPC_RESOURCESTRINGTABLES+4(,%eax,8),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	-28(%ebp),%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	jne	Lj226
	jmp	Lj227
Lj226:
	jmp	Lj221
Lj227:
	addl	$16,-16(%ebp)
	jmp	Lj233
	.balign 4,0x90
Lj232:
	pushl	-12(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-16(%ebp),%eax
	movl	8(%eax),%edx
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%esi
	call	*%esi
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj245
	jmp	Lj246
Lj245:
	movl	-24(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-16(%ebp),%esi
	leal	4(%esi),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-24(%ebp),%eax
	movl	%eax,4(%esi)
Lj246:
	addl	$16,-16(%ebp)
Lj233:
	movl	-20(%ebp),%eax
	movl	FPC_RESOURCESTRINGTABLES+8(,%eax,8),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj232
	jmp	Lj234
Lj234:
Lj221:
	cmpl	-20(%ebp),%ebx
	jg	Lj223
Lj222:
Lj210:
	call	FPC_POPADDRSTACK
	leal	-24(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-24(%ebp)
	leal	-28(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-28(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj211
	call	FPC_RERAISE
Lj211:
	movl	-332(%ebp),%ebx
	movl	-328(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_RESETRESOURCETABLES
OBJPAS_RESETRESOURCETABLES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	FPC_RESOURCESTRINGTABLES,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj264
	decl	-8(%ebp)
	.balign 4,0x90
Lj265:
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	movl	FPC_RESOURCESTRINGTABLES+4(,%eax,8),%eax
	movl	%eax,-4(%ebp)
	addl	$16,-4(%ebp)
	jmp	Lj269
	.balign 4,0x90
Lj268:
	movl	-4(%ebp),%edi
	movl	8(%edi),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%esi
	leal	4(%esi),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	8(%edi),%eax
	movl	%eax,4(%esi)
	addl	$16,-4(%ebp)
Lj269:
	movl	-8(%ebp),%eax
	movl	FPC_RESOURCESTRINGTABLES+8(,%eax,8),%eax
	cmpl	-4(%ebp),%eax
	ja	Lj268
	jmp	Lj270
Lj270:
	cmpl	-8(%ebp),%ebx
	jg	Lj265
Lj264:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_FINALIZERESOURCETABLES
OBJPAS_FINALIZERESOURCETABLES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	FPC_RESOURCESTRINGTABLES,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj276
	decl	-8(%ebp)
	.balign 4,0x90
Lj277:
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	movl	FPC_RESOURCESTRINGTABLES+4(,%eax,8),%eax
	movl	%eax,-4(%ebp)
	addl	$16,-4(%ebp)
	jmp	Lj281
	.balign 4,0x90
Lj280:
	movl	-4(%ebp),%esi
	leal	4(%esi),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,4(%esi)
	addl	$16,-4(%ebp)
Lj281:
	movl	-8(%ebp),%eax
	movl	FPC_RESOURCESTRINGTABLES+8(,%eax,8),%eax
	cmpl	-4(%ebp),%eax
	ja	Lj280
	jmp	Lj282
Lj282:
	cmpl	-8(%ebp),%ebx
	jg	Lj277
Lj276:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	OBJPAS_LOADRESSTRING$PRESSTRINGREC$$ANSISTRING
OBJPAS_LOADRESSTRING$PRESSTRINGREC$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	(%esi),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	FINALIZE$_OBJPAS
FINALIZE$_OBJPAS:
.globl	_OBJPAS_finalize
_OBJPAS_finalize:
	pushl	%ebp
	movl	%esp,%ebp
	call	OBJPAS_FINALIZERESOURCETABLES
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.bss
	.balign 4
	.globl U_OBJPAS_EXCEPTIONCLASS
U_OBJPAS_EXCEPTIONCLASS:
	.zero 4

.bss
	.balign 4
	.globl U_OBJPAS_EXCEPTOBJPROC
U_OBJPAS_EXCEPTOBJPROC:
	.zero 4

.data
	.balign 4
.globl	THREADVARLIST_OBJPAS
THREADVARLIST_OBJPAS:
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.data
	.balign 4
.globl	INIT_OBJPAS_PINTEGER
INIT_OBJPAS_PINTEGER:
	.byte	0
	.ascii	"\010PInteger"

.data
	.balign 4
.globl	RTTI_OBJPAS_PINTEGER
RTTI_OBJPAS_PINTEGER:
	.byte	0
	.ascii	"\010PInteger"

.data
	.balign 4
.globl	INIT_OBJPAS_INTEGERARRAY
INIT_OBJPAS_INTEGERARRAY:
	.byte	12
	.ascii	"\014IntegerArray"
	.long	4,251658240
	.long	INIT_SYSTEM_LONGINT
	.long	3

.data
	.balign 4
.globl	RTTI_OBJPAS_INTEGERARRAY
RTTI_OBJPAS_INTEGERARRAY:
	.byte	12
	.ascii	"\014IntegerArray"
	.long	4,251658240
	.long	RTTI_SYSTEM_LONGINT
	.long	3

.data
	.balign 4
.globl	INIT_OBJPAS_PINTEGERARRAY
INIT_OBJPAS_PINTEGERARRAY:
	.byte	0
	.ascii	"\015PIntegerArray"

.data
	.balign 4
.globl	RTTI_OBJPAS_PINTEGERARRAY
RTTI_OBJPAS_PINTEGERARRAY:
	.byte	0
	.ascii	"\015PIntegerArray"

.data
	.balign 4
.globl	INIT_OBJPAS_POINTERARRAY
INIT_OBJPAS_POINTERARRAY:
	.byte	12
	.ascii	"\014PointerArray"
	.long	4,536870911
	.long	INIT_SYSTEM_POINTER
	.long	-1

.data
	.balign 4
.globl	RTTI_OBJPAS_POINTERARRAY
RTTI_OBJPAS_POINTERARRAY:
	.byte	12
	.ascii	"\014PointerArray"
	.long	4,536870911
	.long	RTTI_SYSTEM_POINTER
	.long	-1

.data
	.balign 4
.globl	INIT_OBJPAS_PPOINTERARRAY
INIT_OBJPAS_PPOINTERARRAY:
	.byte	0
	.ascii	"\015PPointerArray"

.data
	.balign 4
.globl	RTTI_OBJPAS_PPOINTERARRAY
RTTI_OBJPAS_PPOINTERARRAY:
	.byte	0
	.ascii	"\015PPointerArray"

.data
	.balign 4
.globl	INIT_OBJPAS_TBOUNDARRAY
INIT_OBJPAS_TBOUNDARRAY:
	.byte	21
	.ascii	"\013TBoundArray"
	.long	4
	.long	INIT_SYSTEM_LONGINT
	.long	3,0
	.byte	6
	.ascii	"objpas"

.data
	.balign 4
.globl	RTTI_OBJPAS_TBOUNDARRAY
RTTI_OBJPAS_TBOUNDARRAY:
	.byte	21
	.ascii	"\013TBoundArray"
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	3,0
	.byte	6
	.ascii	"objpas"

.data
	.balign 4
.globl	INIT_OBJPAS_TRESOURCEITERATOR
INIT_OBJPAS_TRESOURCEITERATOR:
	.byte	23,17
	.ascii	"TResourceIterator"

.data
	.balign 4
.globl	RTTI_OBJPAS_TRESOURCEITERATOR
RTTI_OBJPAS_TRESOURCEITERATOR:
	.byte	23,17
	.ascii	"TResourceIterator"

.data
	.balign 4
.globl	INIT_OBJPAS_PRESSTRINGREC
INIT_OBJPAS_PRESSTRINGREC:
	.byte	0
	.ascii	"\015PResStringRec"

.data
	.balign 4
.globl	RTTI_OBJPAS_PRESSTRINGREC
RTTI_OBJPAS_PRESSTRINGREC:
	.byte	0
	.ascii	"\015PResStringRec"

.data
	.balign 4
.globl	INIT_OBJPAS_TRESOURCESTRINGRECORD
INIT_OBJPAS_TRESOURCESTRINGRECORD:
	.byte	13,21
	.ascii	"TResourceStringRecord"
	.long	16,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	0
	.long	INIT_SYSTEM_ANSISTRING
	.long	4
	.long	INIT_SYSTEM_ANSISTRING
	.long	8
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

