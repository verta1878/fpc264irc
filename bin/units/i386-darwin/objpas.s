# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_OBJPAS_ASSIGNFILE$file$SHORTSTRING
_OBJPAS_ASSIGNFILE$file$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_ASSIGN$file$SHORTSTRING$stub
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_ASSIGNFILE$file$PCHAR
_OBJPAS_ASSIGNFILE$file$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_ASSIGN$file$PCHAR$stub
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_ASSIGNFILE$file$CHAR
_OBJPAS_ASSIGNFILE$file$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_SYSTEM_ASSIGN$file$CHAR$stub
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_CLOSEFILE$file
_OBJPAS_CLOSEFILE$file:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SYSTEM_CLOSE$file$stub
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_ASSIGNFILE$TEXT$SHORTSTRING
_OBJPAS_ASSIGNFILE$TEXT$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_ASSIGNFILE$TEXT$PCHAR
_OBJPAS_ASSIGNFILE$TEXT$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TEXT$PCHAR$stub
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_ASSIGNFILE$TEXT$CHAR
_OBJPAS_ASSIGNFILE$TEXT$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TEXT$CHAR$stub
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_CLOSEFILE$TEXT
_OBJPAS_CLOSEFILE$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_ASSIGNFILE$TYPEDFILE$SHORTSTRING
_OBJPAS_ASSIGNFILE$TYPEDFILE$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TYPEDFILE$SHORTSTRING$stub
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_ASSIGNFILE$TYPEDFILE$PCHAR
_OBJPAS_ASSIGNFILE$TYPEDFILE$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TYPEDFILE$PCHAR$stub
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_ASSIGNFILE$TYPEDFILE$CHAR
_OBJPAS_ASSIGNFILE$TYPEDFILE$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TYPEDFILE$CHAR$stub
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING
_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-320(%ebp)
	movl	%esi,-316(%ebp)
	call	Lj66
Lj66:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj67
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj70
	jmp	Lj71
Lj70:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-312(%ebp),%edx
	movl	$0,%eax
	call	L_SYSTEM_PARAMSTR$LONGINT$$SHORTSTRING$stub
	leal	-312(%ebp),%eax
	leal	-56(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-56(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,(%esi)
	jmp	Lj82
Lj71:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj85
	jmp	Lj84
Lj85:
	movl	-4(%ebp),%edx
	movl	L_U_SYSTEM_ARGC$non_lazy_ptr-Lj66(%ebx),%eax
	cmpl	(%eax),%edx
	jl	Lj83
	jmp	Lj84
Lj83:
	movl	$0,-12(%ebp)
	jmp	Lj89
	.align 2
Lj88:
	incl	-12(%ebp)
Lj89:
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj66(%ebx),%eax
	movl	(%eax),%eax
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
	call	Lfpc_ansistr_setlength$stub
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj95
	jmp	Lj96
Lj95:
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj66(%ebx),%eax
	movl	(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	(%ecx,%eax,4),%eax
	movl	-12(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj96:
	jmp	Lj105
Lj84:
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
Lj105:
Lj82:
Lj67:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj68
	call	LFPC_RERAISE$stub
Lj68:
	movl	-320(%ebp),%ebx
	movl	-316(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_MKDIR$ANSISTRING
_OBJPAS_MKDIR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	call	Lj109
Lj109:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj110
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_UNIQUE$stub
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj117
	movl	-4(%edx),%edx
Lj117:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj120
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj109(%ebx),%ecx
	movl	%ecx,%eax
Lj120:
	call	LFPC_SYS_MKDIR$stub
Lj110:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj111
	call	LFPC_RERAISE$stub
Lj111:
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_RMDIR$ANSISTRING
_OBJPAS_RMDIR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	call	Lj122
Lj122:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj123
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_UNIQUE$stub
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj130
	movl	-4(%edx),%edx
Lj130:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj133
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj122(%ebx),%ecx
	movl	%ecx,%eax
Lj133:
	call	LFPC_SYS_RMDIR$stub
Lj123:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj124
	call	LFPC_RERAISE$stub
Lj124:
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_CHDIR$ANSISTRING
_OBJPAS_CHDIR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	call	Lj135
Lj135:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj136
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_UNIQUE$stub
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj143
	movl	-4(%edx),%edx
Lj143:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj146
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj135(%ebx),%ecx
	movl	%ecx,%eax
Lj146:
	call	LFPC_SYS_CHDIR$stub
Lj136:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj137
	call	LFPC_RERAISE$stub
Lj137:
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_HASH$ANSISTRING$$LONGWORD
_OBJPAS_HASH$ANSISTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
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
	.align 2
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
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj150
	call	LFPC_RERAISE$stub
Lj150:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_SETRESOURCESTRINGS$TRESOURCEITERATOR$POINTER
_OBJPAS_SETRESOURCESTRINGS$TRESOURCEITERATOR$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%edi,-64(%ebp)
	call	Lj176
Lj176:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj177
	movl	LFPC_RESOURCESTRINGTABLES$non_lazy_ptr-Lj176(%edi),%eax
	movl	(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj181
	decl	-16(%ebp)
	.align 2
Lj182:
	incl	-16(%ebp)
	movl	LFPC_RESOURCESTRINGTABLES$non_lazy_ptr-Lj176(%edi),%edx
	movl	-16(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	%eax,-12(%ebp)
	addl	$16,-12(%ebp)
	jmp	Lj186
	.align 2
Lj185:
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
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
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	4(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-20(%ebp),%eax
	movl	%eax,4(%esi)
Lj199:
	addl	$16,-12(%ebp)
Lj186:
	movl	LFPC_RESOURCESTRINGTABLES$non_lazy_ptr-Lj176(%edi),%edx
	movl	-16(%ebp),%eax
	movl	8(%edx,%eax,8),%eax
	cmpl	-12(%ebp),%eax
	ja	Lj185
	jmp	Lj187
Lj187:
	cmpl	-16(%ebp),%ebx
	jg	Lj182
Lj181:
Lj177:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj178
	call	LFPC_RERAISE$stub
Lj178:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	movl	-64(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_SETUNITRESOURCESTRINGS$SHORTSTRING$TRESOURCEITERATOR$POINTER
_OBJPAS_SETUNITRESOURCESTRINGS$SHORTSTRING$TRESOURCEITERATOR$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-336(%ebp)
	movl	%esi,-332(%ebp)
	movl	%edi,-328(%ebp)
	call	Lj209
Lj209:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj210
	leal	-324(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING$stub
	leal	-324(%ebp),%eax
	leal	-28(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	LFPC_RESOURCESTRINGTABLES$non_lazy_ptr-Lj209(%edi),%eax
	movl	(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj222
	decl	-20(%ebp)
	.align 2
Lj223:
	incl	-20(%ebp)
	movl	LFPC_RESOURCESTRINGTABLES$non_lazy_ptr-Lj209(%edi),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	-28(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj226
	jmp	Lj227
Lj226:
	jmp	Lj221
Lj227:
	addl	$16,-16(%ebp)
	jmp	Lj233
	.align 2
Lj232:
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
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
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	4(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-24(%ebp),%eax
	movl	%eax,4(%esi)
Lj246:
	addl	$16,-16(%ebp)
Lj233:
	movl	LFPC_RESOURCESTRINGTABLES$non_lazy_ptr-Lj209(%edi),%edx
	movl	-20(%ebp),%eax
	movl	8(%edx,%eax,8),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj232
	jmp	Lj234
Lj234:
Lj221:
	cmpl	-20(%ebp),%ebx
	jg	Lj223
Lj222:
Lj210:
	call	LFPC_POPADDRSTACK$stub
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	leal	-28(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-28(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj211
	call	LFPC_RERAISE$stub
Lj211:
	movl	-336(%ebp),%ebx
	movl	-332(%ebp),%esi
	movl	-328(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_RESETRESOURCETABLES
_OBJPAS_RESETRESOURCETABLES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj262
Lj262:
	popl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	LFPC_RESOURCESTRINGTABLES$non_lazy_ptr-Lj262(%edx),%eax
	movl	(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj264
	decl	-8(%ebp)
	.align 2
Lj265:
	incl	-8(%ebp)
	movl	-12(%ebp),%eax
	movl	LFPC_RESOURCESTRINGTABLES$non_lazy_ptr-Lj262(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	%eax,-4(%ebp)
	addl	$16,-4(%ebp)
	jmp	Lj269
	.align 2
Lj268:
	movl	-4(%ebp),%edi
	movl	8(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	leal	4(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%edi),%eax
	movl	%eax,4(%esi)
	addl	$16,-4(%ebp)
Lj269:
	movl	-12(%ebp),%eax
	movl	LFPC_RESOURCESTRINGTABLES$non_lazy_ptr-Lj262(%eax),%edx
	movl	-8(%ebp),%eax
	movl	8(%edx,%eax,8),%eax
	cmpl	-4(%ebp),%eax
	ja	Lj268
	jmp	Lj270
Lj270:
	cmpl	-8(%ebp),%ebx
	jg	Lj265
Lj264:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_FINALIZERESOURCETABLES
_OBJPAS_FINALIZERESOURCETABLES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj274
Lj274:
	popl	%esi
	movl	LFPC_RESOURCESTRINGTABLES$non_lazy_ptr-Lj274(%esi),%eax
	movl	(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj276
	decl	-8(%ebp)
	.align 2
Lj277:
	incl	-8(%ebp)
	movl	LFPC_RESOURCESTRINGTABLES$non_lazy_ptr-Lj274(%esi),%eax
	movl	-8(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	%eax,-4(%ebp)
	addl	$16,-4(%ebp)
	jmp	Lj281
	.align 2
Lj280:
	movl	-4(%ebp),%edi
	leal	4(%edi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,4(%edi)
	addl	$16,-4(%ebp)
Lj281:
	movl	LFPC_RESOURCESTRINGTABLES$non_lazy_ptr-Lj274(%esi),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax,%edx,8),%eax
	cmpl	-4(%ebp),%eax
	ja	Lj280
	jmp	Lj282
Lj282:
	cmpl	-8(%ebp),%ebx
	jg	Lj277
Lj276:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJPAS_LOADRESSTRING$PRESSTRINGREC$$ANSISTRING
_OBJPAS_LOADRESSTRING$PRESSTRINGREC$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_OBJPAS
_FINALIZE$_OBJPAS:
.reference __OBJPAS_finalize
.globl	__OBJPAS_finalize
__OBJPAS_finalize:
.reference _FINALIZE$_OBJPAS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_OBJPAS_FINALIZERESOURCETABLES$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_OBJPAS_EXCEPTIONCLASS
.data
.zerofill __DATA, __common, _U_OBJPAS_EXCEPTIONCLASS, 4,2




	.align 2
.globl _U_OBJPAS_EXCEPTOBJPROC
.data
.zerofill __DATA, __common, _U_OBJPAS_EXCEPTOBJPROC, 4,2



.data
	.align 2
.globl	_THREADVARLIST_OBJPAS
_THREADVARLIST_OBJPAS:
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

L_SYSTEM_ASSIGN$file$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_ASSIGN$file$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$file$PCHAR$stub:
.indirect_symbol _SYSTEM_ASSIGN$file$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$file$CHAR$stub:
.indirect_symbol _SYSTEM_ASSIGN$file$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_CLOSE$file$stub:
.indirect_symbol _SYSTEM_CLOSE$file
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_ASSIGN$TEXT$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$TEXT$PCHAR$stub:
.indirect_symbol _SYSTEM_ASSIGN$TEXT$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$TEXT$CHAR$stub:
.indirect_symbol _SYSTEM_ASSIGN$TEXT$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_CLOSE$TEXT$stub:
.indirect_symbol _SYSTEM_CLOSE$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$TYPEDFILE$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_ASSIGN$TYPEDFILE$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$TYPEDFILE$PCHAR$stub:
.indirect_symbol _SYSTEM_ASSIGN$TYPEDFILE$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$TYPEDFILE$CHAR$stub:
.indirect_symbol _SYSTEM_ASSIGN$TYPEDFILE$CHAR
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

L_SYSTEM_PARAMSTR$LONGINT$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_PARAMSTR$LONGINT$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_ansistr$stub:
.indirect_symbol fpc_shortstr_to_ansistr
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

Lfpc_ansistr_setlength$stub:
.indirect_symbol fpc_ansistr_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_unique$stub:
.indirect_symbol fpc_ansistr_unique
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

LFPC_ANSISTR_UNIQUE$stub:
.indirect_symbol FPC_ANSISTR_UNIQUE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYS_MKDIR$stub:
.indirect_symbol FPC_SYS_MKDIR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYS_RMDIR$stub:
.indirect_symbol FPC_SYS_RMDIR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYS_CHDIR$stub:
.indirect_symbol FPC_SYS_CHDIR
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

L_SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_compare_equal$stub:
.indirect_symbol fpc_ansistr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJPAS_FINALIZERESOURCETABLES$stub:
.indirect_symbol _OBJPAS_FINALIZERESOURCETABLES
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
.globl	_INIT_OBJPAS_PINTEGER
_INIT_OBJPAS_PINTEGER:
	.byte	0
	.ascii	"\010PInteger"

.const_data
	.align 2
.globl	_RTTI_OBJPAS_PINTEGER
_RTTI_OBJPAS_PINTEGER:
	.byte	0
	.ascii	"\010PInteger"

.const_data
	.align 2
.globl	_INIT_OBJPAS_INTEGERARRAY
_INIT_OBJPAS_INTEGERARRAY:
	.byte	12
	.ascii	"\014IntegerArray"
	.long	4,251658240
	.long	_INIT_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_OBJPAS_INTEGERARRAY
_RTTI_OBJPAS_INTEGERARRAY:
	.byte	12
	.ascii	"\014IntegerArray"
	.long	4,251658240
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_INIT_OBJPAS_PINTEGERARRAY
_INIT_OBJPAS_PINTEGERARRAY:
	.byte	0
	.ascii	"\015PIntegerArray"

.const_data
	.align 2
.globl	_RTTI_OBJPAS_PINTEGERARRAY
_RTTI_OBJPAS_PINTEGERARRAY:
	.byte	0
	.ascii	"\015PIntegerArray"

.const_data
	.align 2
.globl	_INIT_OBJPAS_POINTERARRAY
_INIT_OBJPAS_POINTERARRAY:
	.byte	12
	.ascii	"\014PointerArray"
	.long	4,536870911
	.long	_INIT_SYSTEM_POINTER
	.long	-1

.const_data
	.align 2
.globl	_RTTI_OBJPAS_POINTERARRAY
_RTTI_OBJPAS_POINTERARRAY:
	.byte	12
	.ascii	"\014PointerArray"
	.long	4,536870911
	.long	_RTTI_SYSTEM_POINTER
	.long	-1

.const_data
	.align 2
.globl	_INIT_OBJPAS_PPOINTERARRAY
_INIT_OBJPAS_PPOINTERARRAY:
	.byte	0
	.ascii	"\015PPointerArray"

.const_data
	.align 2
.globl	_RTTI_OBJPAS_PPOINTERARRAY
_RTTI_OBJPAS_PPOINTERARRAY:
	.byte	0
	.ascii	"\015PPointerArray"

.const_data
	.align 2
.globl	_INIT_OBJPAS_TBOUNDARRAY
_INIT_OBJPAS_TBOUNDARRAY:
	.byte	21
	.ascii	"\013TBoundArray"
	.long	4
	.long	_INIT_SYSTEM_LONGINT
	.long	3,0
	.byte	6
	.ascii	"objpas"

.const_data
	.align 2
.globl	_RTTI_OBJPAS_TBOUNDARRAY
_RTTI_OBJPAS_TBOUNDARRAY:
	.byte	21
	.ascii	"\013TBoundArray"
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	3,0
	.byte	6
	.ascii	"objpas"

.const_data
	.align 2
.globl	_INIT_OBJPAS_TRESOURCEITERATOR
_INIT_OBJPAS_TRESOURCEITERATOR:
	.byte	23,17
	.ascii	"TResourceIterator"

.const_data
	.align 2
.globl	_RTTI_OBJPAS_TRESOURCEITERATOR
_RTTI_OBJPAS_TRESOURCEITERATOR:
	.byte	23,17
	.ascii	"TResourceIterator"

.const_data
	.align 2
.globl	_INIT_OBJPAS_PRESSTRINGREC
_INIT_OBJPAS_PRESSTRINGREC:
	.byte	0
	.ascii	"\015PResStringRec"

.const_data
	.align 2
.globl	_RTTI_OBJPAS_PRESSTRINGREC
_RTTI_OBJPAS_PRESSTRINGREC:
	.byte	0
	.ascii	"\015PResStringRec"

.const_data
	.align 2
.globl	_INIT_OBJPAS_TRESOURCESTRINGRECORD
_INIT_OBJPAS_TRESOURCESTRINGRECORD:
	.byte	13,21
	.ascii	"TResourceStringRecord"
	.long	16,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	4
	.long	_INIT_SYSTEM_ANSISTRING
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

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_ARGC$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_ARGC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_ARGV$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_ARGV
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_RESOURCESTRINGTABLES$non_lazy_ptr:
.indirect_symbol FPC_RESOURCESTRINGTABLES
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

