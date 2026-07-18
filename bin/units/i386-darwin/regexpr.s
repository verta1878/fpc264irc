# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_REGEXPR_ALIGNTOPTR$POINTER$$POINTER
_REGEXPR_ALIGNTOPTR$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_ALIGNTOINT$POINTER$$POINTER
_REGEXPR_ALIGNTOINT$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_EXECREGEXPR$ANSISTRING$ANSISTRING$$BOOLEAN
_REGEXPR_EXECREGEXPR$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj12
Lj12:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_VMT_REGEXPR_TREGEXPR$non_lazy_ptr-Lj12(%ebx),%edx
	movl	$0,%eax
	call	L_REGEXPR_TREGEXPR_$__CREATE$$TREGEXPR$stub
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj19
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__SETEXPRESSION$ANSISTRING$stub
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__EXEC$ANSISTRING$$BOOLEAN$stub
	movb	%al,-9(%ebp)
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	decl	%eax
	testl	%eax,%eax
	je	Lj21
Lj21:
	call	LFPC_RERAISE$stub
Lj20:
	movb	-9(%ebp),%al
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_SPLITREGEXPR$ANSISTRING$ANSISTRING$TSTRINGS
_REGEXPR_SPLITREGEXPR$ANSISTRING$ANSISTRING$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj36
Lj36:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	L_VMT_REGEXPR_TREGEXPR$non_lazy_ptr-Lj36(%ebx),%edx
	movl	$0,%eax
	call	L_REGEXPR_TREGEXPR_$__CREATE$$TREGEXPR$stub
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj45
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__SETEXPRESSION$ANSISTRING$stub
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__SPLIT$ANSISTRING$TSTRINGS$stub
Lj45:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj46
	decl	%eax
	testl	%eax,%eax
	je	Lj47
Lj47:
	call	LFPC_RERAISE$stub
Lj46:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_REPLACEREGEXPR$ANSISTRING$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING
_REGEXPR_REPLACEREGEXPR$ANSISTRING$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	call	Lj62
Lj62:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_VMT_REGEXPR_TREGEXPR$non_lazy_ptr-Lj62(%edi),%edx
	movl	$0,%eax
	call	L_REGEXPR_TREGEXPR_$__CREATE$$TREGEXPR$stub
	movl	%eax,%esi
	movl	%esi,%ebx
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj71
	movl	-4(%ebp),%edx
	movl	%ebx,%eax
	call	L_REGEXPR_TREGEXPR_$__SETEXPRESSION$ANSISTRING$stub
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movb	12(%ebp),%al
	movb	%al,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%ebx,%eax
	call	L_REGEXPR_TREGEXPR_$__REPLACE$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
Lj71:
	call	LFPC_POPADDRSTACK$stub
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj72
	decl	%eax
	testl	%eax,%eax
	je	Lj73
Lj73:
	call	LFPC_RERAISE$stub
Lj72:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_QUOTEREGEXPRMETACHARS$ANSISTRING$$ANSISTRING
_REGEXPR_QUOTEREGEXPRMETACHARS$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	call	Lj92
Lj92:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-80(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj93
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj100
	movl	-4(%eax),%eax
Lj100:
	movl	%eax,-20(%ebp)
	movl	$1,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj106
	.align 2
Lj105:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	movl	L_TC_REGEXPR_QUOTEREGEXPRMETACHARS$ANSISTRING$$ANSISTRING_REGEXPRMETASET$non_lazy_ptr-Lj92(%esi),%edx
	movl	(%edx),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj108
	jmp	Lj109
Lj108:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-76(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-80(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	L_$REGEXPR$_Ld11$non_lazy_ptr-Lj92(%esi),%eax
	movl	%eax,-68(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	leal	-84(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-84(%ebp),%eax
	movl	%eax,-64(%ebp)
	leal	-76(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj109:
	incl	-12(%ebp)
Lj106:
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj105
	jmp	Lj107
Lj107:
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-84(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj93:
	call	LFPC_POPADDRSTACK$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj94
	call	LFPC_RERAISE$stub
Lj94:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_REGEXPRSUBEXPRESSIONS$ANSISTRING$TSTRINGS$BOOLEAN$$LONGINT
_REGEXPR_REGEXPRSUBEXPRESSIONS$ANSISTRING$TSTRINGS$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-144(%ebp)
	movl	%esi,-140(%ebp)
	movl	%edi,-136(%ebp)
	call	Lj149
Lj149:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-132(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj150
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj159
	movl	-4(%eax),%eax
Lj159:
	movl	%eax,-20(%ebp)
	movl	$1,-48(%ebp)
	movl	-20(%ebp),%ecx
	movl	$1,-28(%ebp)
	cmpl	-28(%ebp),%ecx
	jl	Lj163
	decl	-28(%ebp)
	.align 2
Lj164:
	incl	-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$40,%al
	je	Lj165
	jmp	Lj166
Lj165:
	incl	-48(%ebp)
Lj166:
	cmpl	-28(%ebp),%ecx
	jg	Lj164
Lj163:
	movl	-48(%ebp),%edx
	shll	$3,%edx
	leal	-40(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	leal	-100(%ebp),%ecx
	leal	-124(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-128(%ebp)
	testl	%eax,%eax
	jne	Lj171
	movl	$0,-44(%ebp)
	movl	$1,-28(%ebp)
	jmp	Lj180
	.align 2
Lj179:
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$35,%al
	jb	Lj183
	subb	$35,%al
	je	Lj188
	subb	$5,%al
	je	Lj184
	decb	%al
	je	Lj185
	subb	$50,%al
	je	Lj187
	decb	%al
	je	Lj186
	jmp	Lj183
Lj184:
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj191
	jmp	Lj190
Lj191:
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$63,%al
	je	Lj189
	jmp	Lj190
Lj189:
	addl	$2,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj195
	.align 2
Lj194:
	incl	-28(%ebp)
Lj195:
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj197
	jmp	Lj196
Lj197:
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$41,%al
	jne	Lj194
	jmp	Lj196
Lj196:
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj198
	jmp	Lj199
Lj198:
	movl	$-1,-16(%ebp)
	jmp	Lj202
Lj199:
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-132(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	movl	-32(%ebp),%eax
	subl	%eax,%ecx
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-132(%ebp),%edx
	leal	-36(%ebp),%ecx
	movl	L_VMT_REGEXPR_TREGEXPR$non_lazy_ptr-Lj149(%esi),%eax
	call	L_REGEXPR_TREGEXPR_$__PARSEMODIFIERSSTR$ANSISTRING$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj203
	jmp	Lj204
Lj203:
	movl	-36(%ebp),%eax
	andl	$32,%eax
	testl	%eax,%eax
	setneb	-12(%ebp)
Lj204:
Lj202:
	jmp	Lj221
Lj190:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	-40(%ebp),%edx
	movl	-44(%ebp),%eax
	leal	(%edx,%eax,8),%ebx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,(%ebx)
	movl	-28(%ebp),%eax
	movl	%eax,4(%ebx)
	incl	-44(%ebp)
Lj221:
	jmp	Lj182
Lj185:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj234
	jmp	Lj235
Lj234:
	movl	-28(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj238
Lj235:
	decl	-44(%ebp)
	movl	-40(%ebp),%edx
	movl	-44(%ebp),%eax
	leal	(%edx,%eax,8),%eax
	movl	%eax,%ebx
	movl	-28(%ebp),%eax
	movl	4(%ebx),%edx
	subl	%edx,%eax
	incl	%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%ecx
	shll	$16,%ecx
	movl	4(%ebx),%eax
	orl	%eax,%ecx
	movl	(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edi
	movl	(%edi),%edi
	call	*144(%edi)
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-132(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	subl	$2,%ecx
	movl	4(%ebx),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-132(%ebp),%ecx
	movl	(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edi
	movl	(%edi),%edi
	call	*140(%edi)
Lj238:
	jmp	Lj182
Lj186:
	incl	-28(%ebp)
	jmp	Lj182
Lj187:
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	incl	-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$93,%al
	je	Lj265
	jmp	Lj266
Lj265:
	incl	-28(%ebp)
Lj266:
	jmp	Lj268
	.align 2
Lj267:
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$92,%al
	je	Lj270
	jmp	Lj271
Lj270:
	addl	$2,-28(%ebp)
	jmp	Lj272
Lj271:
	incl	-28(%ebp)
Lj272:
Lj268:
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj273
	jmp	Lj269
Lj273:
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$93,%al
	jne	Lj267
	jmp	Lj269
Lj269:
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj274
	jmp	Lj276
Lj276:
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$93,%al
	jne	Lj274
	jmp	Lj275
Lj274:
	movl	-32(%ebp),%eax
	incl	%eax
	negl	%eax
	movl	%eax,-16(%ebp)
Lj275:
	jmp	Lj182
Lj188:
	cmpb	$0,-12(%ebp)
	jne	Lj279
	jmp	Lj280
Lj279:
	jmp	Lj282
	.align 2
Lj281:
	incl	-28(%ebp)
Lj282:
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj285
	jmp	Lj283
Lj285:
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$13,%al
	jne	Lj284
	jmp	Lj283
Lj284:
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$10,%al
	jne	Lj281
	jmp	Lj283
Lj283:
	jmp	Lj287
	.align 2
Lj286:
	incl	-28(%ebp)
Lj287:
	movl	-28(%ebp),%eax
	incl	%eax
	cmpl	-20(%ebp),%eax
	jle	Lj289
	jmp	Lj288
Lj289:
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$13,%al
	je	Lj286
	jmp	Lj290
Lj290:
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$10,%al
	je	Lj286
	jmp	Lj288
Lj288:
Lj280:
	jmp	Lj182
Lj183:
Lj182:
	incl	-28(%ebp)
Lj180:
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj179
	jmp	Lj181
Lj181:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	jne	Lj291
	jmp	Lj292
Lj291:
	movl	$-1,-16(%ebp)
Lj292:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	testl	%eax,%eax
	je	Lj295
	jmp	Lj298
Lj298:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	andl	$65535,%eax
	cmpl	$1,%eax
	jne	Lj295
	jmp	Lj297
Lj297:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	shrl	$16,%eax
	andl	$65535,%eax
	cmpl	-20(%ebp),%eax
	jne	Lj295
	jmp	Lj296
Lj295:
	movl	-20(%ebp),%eax
	shll	$16,%eax
	orl	$1,%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TSTRINGS_$__INSERTOBJECT$LONGINT$ANSISTRING$TOBJECT$stub
Lj296:
Lj171:
	call	LFPC_POPADDRSTACK$stub
	movl	-40(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-128(%ebp),%eax
	testl	%eax,%eax
	je	Lj172
	decl	%eax
	testl	%eax,%eax
	je	Lj173
Lj173:
	call	LFPC_RERAISE$stub
Lj172:
Lj150:
	call	LFPC_POPADDRSTACK$stub
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj151
	call	LFPC_RERAISE$stub
Lj151:
	movl	-16(%ebp),%eax
	movl	-144(%ebp),%ebx
	movl	-140(%ebp),%esi
	movl	-136(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__ERRORMSG$LONGINT$$ANSISTRING
_REGEXPR_TREGEXPR_$__ERRORMSG$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj320
Lj320:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jl	Lj322
	testl	%eax,%eax
	je	Lj323
	subl	$100,%eax
	je	Lj324
	decl	%eax
	je	Lj325
	decl	%eax
	je	Lj326
	decl	%eax
	je	Lj327
	decl	%eax
	je	Lj328
	decl	%eax
	je	Lj329
	decl	%eax
	je	Lj330
	decl	%eax
	je	Lj331
	decl	%eax
	je	Lj332
	decl	%eax
	je	Lj333
	decl	%eax
	je	Lj334
	decl	%eax
	je	Lj335
	decl	%eax
	je	Lj336
	decl	%eax
	je	Lj337
	decl	%eax
	je	Lj338
	decl	%eax
	je	Lj339
	decl	%eax
	je	Lj340
	subl	$3,%eax
	je	Lj341
	subl	$3,%eax
	je	Lj342
	subl	$2,%eax
	je	Lj343
	decl	%eax
	je	Lj344
	decl	%eax
	je	Lj345
	decl	%eax
	je	Lj346
	decl	%eax
	je	Lj347
	subl	$872,%eax
	je	Lj348
	decl	%eax
	je	Lj349
	decl	%eax
	je	Lj350
	decl	%eax
	je	Lj351
	decl	%eax
	je	Lj352
	decl	%eax
	je	Lj353
	decl	%eax
	je	Lj354
	decl	%eax
	je	Lj355
	decl	%eax
	je	Lj356
	subl	$3,%eax
	je	Lj357
	subl	$3,%eax
	je	Lj358
	decl	%eax
	je	Lj359
	subl	$985,%eax
	je	Lj360
	jmp	Lj322
Lj323:
	movl	L_$REGEXPR$_Ld13$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj324:
	movl	L_$REGEXPR$_Ld15$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj325:
	movl	L_$REGEXPR$_Ld17$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj326:
	movl	L_$REGEXPR$_Ld19$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj327:
	movl	L_$REGEXPR$_Ld21$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj328:
	movl	L_$REGEXPR$_Ld21$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj329:
	movl	L_$REGEXPR$_Ld23$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj330:
	movl	L_$REGEXPR$_Ld25$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj331:
	movl	L_$REGEXPR$_Ld27$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj332:
	movl	L_$REGEXPR$_Ld29$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj333:
	movl	L_$REGEXPR$_Ld31$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj334:
	movl	L_$REGEXPR$_Ld33$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj335:
	movl	L_$REGEXPR$_Ld35$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj336:
	movl	L_$REGEXPR$_Ld37$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj337:
	movl	L_$REGEXPR$_Ld39$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj338:
	movl	L_$REGEXPR$_Ld41$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj339:
	movl	L_$REGEXPR$_Ld43$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj340:
	movl	L_$REGEXPR$_Ld45$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj341:
	movl	L_$REGEXPR$_Ld47$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj342:
	movl	L_$REGEXPR$_Ld49$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj343:
	movl	L_$REGEXPR$_Ld51$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj344:
	movl	L_$REGEXPR$_Ld53$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj345:
	movl	L_$REGEXPR$_Ld55$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj346:
	movl	L_$REGEXPR$_Ld57$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj347:
	movl	L_$REGEXPR$_Ld59$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj348:
	movl	L_$REGEXPR$_Ld61$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj349:
	movl	L_$REGEXPR$_Ld63$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj350:
	movl	L_$REGEXPR$_Ld65$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj351:
	movl	L_$REGEXPR$_Ld67$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj352:
	movl	L_$REGEXPR$_Ld69$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj353:
	movl	L_$REGEXPR$_Ld71$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj354:
	movl	L_$REGEXPR$_Ld73$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj355:
	movl	L_$REGEXPR$_Ld75$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj356:
	movl	L_$REGEXPR$_Ld77$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj357:
	movl	L_$REGEXPR$_Ld79$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj358:
	movl	L_$REGEXPR$_Ld81$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj359:
	movl	L_$REGEXPR$_Ld83$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj360:
	movl	L_$REGEXPR$_Ld85$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj321
Lj322:
	movl	L_$REGEXPR$_Ld87$non_lazy_ptr-Lj320(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
Lj321:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__LASTERROR$$LONGINT
_REGEXPR_TREGEXPR_$__LASTERROR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	276(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,276(%eax)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__VERSIONMAJOR$$LONGINT
_REGEXPR_TREGEXPR_$__VERSIONMAJOR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj446
Lj446:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_TC_REGEXPR_TREGEXPRVERSIONMAJOR$non_lazy_ptr-Lj446(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__VERSIONMINOR$$LONGINT
_REGEXPR_TREGEXPR_$__VERSIONMINOR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj450
Lj450:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_TC_REGEXPR_TREGEXPRVERSIONMINOR$non_lazy_ptr-Lj450(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__CREATE$$TREGEXPR
_REGEXPR_TREGEXPR_$__CREATE$$TREGEXPR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	call	Lj454
Lj454:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj455
	jmp	Lj456
Lj455:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj456:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj461
	jmp	Lj462
Lj461:
	jmp	Lj453
Lj462:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj465
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj469
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%eax
	movl	$0,264(%eax)
	movl	-8(%ebp),%eax
	movl	$0,268(%eax)
	movl	-8(%ebp),%eax
	movl	$0,272(%eax)
	movl	-8(%ebp),%eax
	movl	$0,256(%eax)
	movl	-8(%ebp),%eax
	movb	$0,260(%eax)
	movl	L_TC_REGEXPR_REGEXPRMODIFIERI$non_lazy_ptr-Lj454(%ebx),%eax
	movb	(%eax),%cl
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	L_REGEXPR_TREGEXPR_$__SETMODIFIER$LONGINT$BOOLEAN$stub
	movl	L_TC_REGEXPR_REGEXPRMODIFIERR$non_lazy_ptr-Lj454(%ebx),%eax
	movb	(%eax),%cl
	movl	-8(%ebp),%eax
	movl	$2,%edx
	call	L_REGEXPR_TREGEXPR_$__SETMODIFIER$LONGINT$BOOLEAN$stub
	movl	L_TC_REGEXPR_REGEXPRMODIFIERS$non_lazy_ptr-Lj454(%ebx),%eax
	movb	(%eax),%cl
	movl	-8(%ebp),%eax
	movl	$3,%edx
	call	L_REGEXPR_TREGEXPR_$__SETMODIFIER$LONGINT$BOOLEAN$stub
	movl	L_TC_REGEXPR_REGEXPRMODIFIERG$non_lazy_ptr-Lj454(%ebx),%eax
	movb	(%eax),%cl
	movl	-8(%ebp),%eax
	movl	$4,%edx
	call	L_REGEXPR_TREGEXPR_$__SETMODIFIER$LONGINT$BOOLEAN$stub
	movl	L_TC_REGEXPR_REGEXPRMODIFIERM$non_lazy_ptr-Lj454(%ebx),%eax
	movb	(%eax),%cl
	movl	-8(%ebp),%eax
	movl	$5,%edx
	call	L_REGEXPR_TREGEXPR_$__SETMODIFIER$LONGINT$BOOLEAN$stub
	movl	L_TC_REGEXPR_REGEXPRSPACECHARS$non_lazy_ptr-Lj454(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	292(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_REGEXPR_REGEXPRSPACECHARS$non_lazy_ptr-Lj454(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,292(%esi)
	movl	L_TC_REGEXPR_REGEXPRWORDCHARS$non_lazy_ptr-Lj454(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	296(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_REGEXPR_REGEXPRWORDCHARS$non_lazy_ptr-Lj454(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,296(%esi)
	movl	-8(%ebp),%edx
	movl	L_TC_REGEXPR_REGEXPRINVERTCASEFUNCTION$non_lazy_ptr-Lj454(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,300(%edx)
	movl	L_TC_REGEXPR_REGEXPRINVERTCASEFUNCTION$non_lazy_ptr-Lj454(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,304(%edx)
	movl	L_TC_REGEXPR_REGEXPRLINESEPARATORS$non_lazy_ptr-Lj454(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	308(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_REGEXPR_REGEXPRLINESEPARATORS$non_lazy_ptr-Lj454(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,308(%esi)
	movl	L_TC_REGEXPR_REGEXPRLINEPAIREDSEPARATOR$non_lazy_ptr-Lj454(%ebx),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__SETLINEPAIREDSEPARATOR$ANSISTRING$stub
Lj469:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj470
	call	LFPC_RERAISE$stub
Lj470:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj530
	jmp	Lj529
Lj530:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj528
	jmp	Lj529
Lj528:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj529:
Lj465:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj467
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj534
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj535
	jmp	Lj536
Lj535:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj536:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj534:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj533
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj533:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj467
Lj467:
Lj453:
	movl	-8(%ebp),%eax
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__DESTROY
_REGEXPR_TREGEXPR_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj543
	jmp	Lj544
Lj543:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj544:
	movl	-8(%ebp),%eax
	movl	264(%eax),%eax
	testl	%eax,%eax
	jne	Lj547
	jmp	Lj548
Lj547:
	movl	-8(%ebp),%eax
	movl	264(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	$0,264(%eax)
Lj548:
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	testl	%eax,%eax
	jne	Lj553
	jmp	Lj554
Lj553:
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	$0,268(%eax)
Lj554:
	movl	-8(%ebp),%eax
	movl	272(%eax),%eax
	testl	%eax,%eax
	jne	Lj559
	jmp	Lj560
Lj559:
	movl	-8(%ebp),%eax
	movl	272(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	$0,272(%eax)
Lj560:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj567
	jmp	Lj566
Lj567:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj565
	jmp	Lj566
Lj565:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj566:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__INVERTCASEFUNCTION$CHAR$$CHAR
_REGEXPR_TREGEXPR_$__INVERTCASEFUNCTION$CHAR$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj571
Lj571:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj572
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movb	-4(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	leal	-56(%ebp),%edx
	movl	-60(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj571(%ebx),%ecx
	movl	32(%ecx),%ecx
	call	*%ecx
	movl	-56(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	cmpb	-4(%ebp),%al
	je	Lj587
	jmp	Lj588
Lj587:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movb	-4(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-60(%ebp)
	leal	-64(%ebp),%edx
	movl	-60(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj571(%ebx),%ecx
	movl	36(%ecx),%ecx
	call	*%ecx
	movl	-64(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-9(%ebp)
Lj588:
Lj572:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj573
	call	LFPC_RERAISE$stub
Lj573:
	movb	-9(%ebp),%al
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__GETEXPRESSION$$ANSISTRING
_REGEXPR_TREGEXPR_$__GETEXPRESSION$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	testl	%eax,%eax
	jne	Lj603
	jmp	Lj604
Lj603:
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	jmp	Lj609
Lj604:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
Lj609:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__SETEXPRESSION$ANSISTRING
_REGEXPR_TREGEXPR_$__SETEXPRESSION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
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
	jne	Lj614
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	leal	-56(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	movl	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj617
	jmp	Lj619
Lj619:
	movl	-8(%ebp),%eax
	movb	260(%eax),%al
	testb	%al,%al
	je	Lj617
	jmp	Lj618
Lj617:
	movl	-8(%ebp),%eax
	movb	$0,260(%eax)
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	testl	%eax,%eax
	jne	Lj630
	jmp	Lj631
Lj630:
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	$0,268(%eax)
Lj631:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj636
	jmp	Lj637
Lj636:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj640
	movl	-4(%eax),%eax
Lj640:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%eax
	leal	268(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	268(%eax),%edx
	movl	-12(%ebp),%ecx
	incl	%ecx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__INVALIDATEPROGRAMM$stub
Lj637:
Lj618:
Lj614:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj615
	call	LFPC_RERAISE$stub
Lj615:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__GETSUBEXPRMATCHCOUNT$$LONGINT
_REGEXPR_TREGEXPR_$__GETSUBEXPRMATCHCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,272(%eax)
	jne	Lj655
	jmp	Lj656
Lj655:
	movl	$14,-8(%ebp)
	jmp	Lj660
	.align 2
Lj659:
	decl	-8(%ebp)
Lj660:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj662
	jmp	Lj661
Lj662:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	4(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj659
	jmp	Lj663
Lj663:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	64(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj659
	jmp	Lj661
Lj661:
	jmp	Lj664
Lj656:
	movl	$-1,-8(%ebp)
Lj664:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__GETMATCHPOS$LONGINT$$LONGINT
_REGEXPR_TREGEXPR_$__GETMATCHPOS$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj674
	jmp	Lj670
Lj674:
	movl	-4(%ebp),%eax
	cmpl	$15,%eax
	jl	Lj673
	jmp	Lj670
Lj673:
	movl	-8(%ebp),%eax
	cmpl	$0,272(%eax)
	jne	Lj672
	jmp	Lj670
Lj672:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	$0,4(%eax,%edx,4)
	jne	Lj671
	jmp	Lj670
Lj671:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	$0,64(%eax,%edx,4)
	jne	Lj669
	jmp	Lj670
Lj669:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	4(%edx,%eax,4),%edx
	movl	272(%ecx),%eax
	subl	%eax,%edx
	incl	%edx
	movl	%edx,-12(%ebp)
	jmp	Lj677
Lj670:
	movl	$-1,-12(%ebp)
Lj677:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__GETMATCHLEN$LONGINT$$LONGINT
_REGEXPR_TREGEXPR_$__GETMATCHLEN$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj687
	jmp	Lj683
Lj687:
	movl	-4(%ebp),%eax
	cmpl	$15,%eax
	jl	Lj686
	jmp	Lj683
Lj686:
	movl	-8(%ebp),%eax
	cmpl	$0,272(%eax)
	jne	Lj685
	jmp	Lj683
Lj685:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	$0,4(%eax,%edx,4)
	jne	Lj684
	jmp	Lj683
Lj684:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	$0,64(%eax,%edx,4)
	jne	Lj682
	jmp	Lj683
Lj682:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movl	64(%eax,%edx,4),%edx
	movl	4(%ecx,%ebx,4),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
	jmp	Lj690
Lj683:
	movl	$-1,-12(%ebp)
Lj690:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__GETMATCH$LONGINT$$ANSISTRING
_REGEXPR_TREGEXPR_$__GETMATCH$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj701
	jmp	Lj696
Lj701:
	movl	-4(%ebp),%eax
	cmpl	$15,%eax
	jl	Lj700
	jmp	Lj696
Lj700:
	movl	-8(%ebp),%eax
	cmpl	$0,272(%eax)
	jne	Lj699
	jmp	Lj696
Lj699:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	$0,4(%eax,%edx,4)
	jne	Lj698
	jmp	Lj696
Lj698:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	$0,64(%eax,%edx,4)
	jne	Lj697
	jmp	Lj696
Lj697:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movl	64(%edx,%eax,4),%eax
	cmpl	4(%ecx,%ebx,4),%eax
	ja	Lj695
	jmp	Lj696
Lj695:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movl	64(%eax,%edx,4),%edx
	movl	4(%ecx,%ebx,4),%eax
	subl	%eax,%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	4(%eax,%ecx,4),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	testl	%ecx,%ecx
	je	Lj714
	movl	-4(%ecx),%ecx
Lj714:
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	jmp	Lj715
Lj696:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
Lj715:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__GETMODIFIERSTR$$ANSISTRING
_REGEXPR_TREGEXPR_$__GETMODIFIERSTR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj719
Lj719:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_$REGEXPR$_Ld89$non_lazy_ptr-Lj719(%ebx),%esi
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMODIFIER$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj722
	jmp	Lj723
Lj722:
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld91$non_lazy_ptr-Lj719(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj734
Lj723:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld91$non_lazy_ptr-Lj719(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj734:
	movl	-4(%ebp),%eax
	movl	$2,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMODIFIER$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj741
	jmp	Lj742
Lj741:
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld93$non_lazy_ptr-Lj719(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj753
Lj742:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld93$non_lazy_ptr-Lj719(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj753:
	movl	-4(%ebp),%eax
	movl	$3,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMODIFIER$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj760
	jmp	Lj761
Lj760:
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld95$non_lazy_ptr-Lj719(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj772
Lj761:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld95$non_lazy_ptr-Lj719(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj772:
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMODIFIER$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj779
	jmp	Lj780
Lj779:
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld97$non_lazy_ptr-Lj719(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj791
Lj780:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld97$non_lazy_ptr-Lj719(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj791:
	movl	-4(%ebp),%eax
	movl	$5,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMODIFIER$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj798
	jmp	Lj799
Lj798:
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld99$non_lazy_ptr-Lj719(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj810
Lj799:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld99$non_lazy_ptr-Lj719(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj810:
	movl	-4(%ebp),%eax
	movl	$6,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMODIFIER$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj817
	jmp	Lj818
Lj817:
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld101$non_lazy_ptr-Lj719(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj829
Lj818:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld101$non_lazy_ptr-Lj719(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj829:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj838
	movl	-4(%eax),%eax
Lj838:
	movb	-1(%edx,%eax,1),%al
	cmpb	$45,%al
	je	Lj836
	jmp	Lj837
Lj836:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj841
	movl	-4(%edx),%edx
Lj841:
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj837:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__PARSEMODIFIERSSTR$ANSISTRING$LONGINT$$BOOLEAN
_REGEXPR_TREGEXPR_$__PARSEMODIFIERSSTR$ANSISTRING$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	call	Lj847
Lj847:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,-13(%ebp)
	movb	$1,-21(%ebp)
	movl	$0,-28(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj857
	movl	-4(%eax),%eax
Lj857:
	movl	%eax,%ebx
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj855
	decl	-20(%ebp)
	.align 2
Lj856:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$45,%al
	je	Lj858
	jmp	Lj859
Lj858:
	movb	$0,-21(%ebp)
	jmp	Lj862
Lj859:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	movl	L_$REGEXPR$_Ld103$non_lazy_ptr-Lj847(%esi),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj863
	jmp	Lj864
Lj863:
	movl	$1,-28(%ebp)
	jmp	Lj871
Lj864:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	movl	L_$REGEXPR$_Ld105$non_lazy_ptr-Lj847(%esi),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj872
	jmp	Lj873
Lj872:
	movl	$2,-28(%ebp)
	jmp	Lj880
Lj873:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	movl	L_$REGEXPR$_Ld107$non_lazy_ptr-Lj847(%esi),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj881
	jmp	Lj882
Lj881:
	movl	$4,-28(%ebp)
	jmp	Lj889
Lj882:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	movl	L_$REGEXPR$_Ld109$non_lazy_ptr-Lj847(%esi),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj890
	jmp	Lj891
Lj890:
	movl	$8,-28(%ebp)
	jmp	Lj898
Lj891:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	movl	L_$REGEXPR$_Ld111$non_lazy_ptr-Lj847(%esi),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj899
	jmp	Lj900
Lj899:
	movl	$16,-28(%ebp)
	jmp	Lj907
Lj900:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	movl	L_$REGEXPR$_Ld113$non_lazy_ptr-Lj847(%esi),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj908
	jmp	Lj909
Lj908:
	movl	$32,-28(%ebp)
	jmp	Lj916
Lj909:
	movb	$0,-13(%ebp)
	jmp	Lj846
Lj916:
Lj907:
Lj898:
Lj889:
Lj880:
Lj871:
	cmpb	$0,-21(%ebp)
	jne	Lj919
	jmp	Lj920
Lj919:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-28(%ebp),%eax
	orl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
	jmp	Lj923
Lj920:
	movl	-28(%ebp),%edx
	notl	%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	andl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
Lj923:
Lj862:
	cmpl	-20(%ebp),%ebx
	jg	Lj856
Lj855:
Lj846:
	movb	-13(%ebp),%al
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__SETMODIFIERSTR$ANSISTRING
_REGEXPR_TREGEXPR_$__SETMODIFIERSTR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	leal	280(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_REGEXPR_TREGEXPR_$__PARSEMODIFIERSSTR$ANSISTRING$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj928
	jmp	Lj929
Lj928:
	movl	-8(%ebp),%eax
	movl	$1013,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
Lj929:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__GETMODIFIER$LONGINT$$BOOLEAN
_REGEXPR_TREGEXPR_$__GETMODIFIER$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj945
	decl	%eax
	je	Lj946
	decl	%eax
	je	Lj947
	decl	%eax
	je	Lj948
	decl	%eax
	je	Lj949
	decl	%eax
	je	Lj950
	decl	%eax
	je	Lj951
	jmp	Lj945
Lj946:
	movl	$1,-16(%ebp)
	jmp	Lj944
Lj947:
	movl	$2,-16(%ebp)
	jmp	Lj944
Lj948:
	movl	$4,-16(%ebp)
	jmp	Lj944
Lj949:
	movl	$8,-16(%ebp)
	jmp	Lj944
Lj950:
	movl	$16,-16(%ebp)
	jmp	Lj944
Lj951:
	movl	$32,-16(%ebp)
	jmp	Lj944
Lj945:
	movl	-8(%ebp),%eax
	movl	$1013,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj940
Lj944:
	movl	-8(%ebp),%eax
	movl	280(%eax),%eax
	movl	-16(%ebp),%edx
	andl	%edx,%eax
	testl	%eax,%eax
	setneb	-9(%ebp)
Lj940:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__SETMODIFIER$LONGINT$BOOLEAN
_REGEXPR_TREGEXPR_$__SETMODIFIER$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj973
	decl	%eax
	je	Lj974
	decl	%eax
	je	Lj975
	decl	%eax
	je	Lj976
	decl	%eax
	je	Lj977
	decl	%eax
	je	Lj978
	decl	%eax
	je	Lj979
	jmp	Lj973
Lj974:
	movl	$1,-16(%ebp)
	jmp	Lj972
Lj975:
	movl	$2,-16(%ebp)
	jmp	Lj972
Lj976:
	movl	$4,-16(%ebp)
	jmp	Lj972
Lj977:
	movl	$8,-16(%ebp)
	jmp	Lj972
Lj978:
	movl	$16,-16(%ebp)
	jmp	Lj972
Lj979:
	movl	$32,-16(%ebp)
	jmp	Lj972
Lj973:
	movl	-12(%ebp),%eax
	movl	$1013,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj970
Lj972:
	cmpb	$0,-8(%ebp)
	jne	Lj996
	jmp	Lj997
Lj996:
	movl	-12(%ebp),%eax
	movl	280(%eax),%edx
	movl	-16(%ebp),%eax
	orl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%edx,280(%eax)
	jmp	Lj1000
Lj997:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	notl	%edx
	movl	280(%eax),%ecx
	andl	%edx,%ecx
	movl	-12(%ebp),%eax
	movl	%ecx,280(%eax)
Lj1000:
Lj970:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__INVALIDATEPROGRAMM
_REGEXPR_TREGEXPR_$__INVALIDATEPROGRAMM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	testl	%eax,%eax
	jne	Lj1005
	jmp	Lj1006
Lj1005:
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	$0,264(%eax)
Lj1006:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__COMPILE
_REGEXPR_TREGEXPR_$__COMPILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	testl	%eax,%eax
	je	Lj1013
	jmp	Lj1014
Lj1013:
	movl	-4(%ebp),%eax
	movl	$1003,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1011
Lj1014:
	movl	-4(%ebp),%eax
	movl	268(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__COMPILEREGEXPR$PCHAR$$BOOLEAN$stub
Lj1011:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__ISPROGRAMMOK$$BOOLEAN
_REGEXPR_TREGEXPR_$__ISPROGRAMMOK$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj1024
Lj1024:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	280(%eax),%eax
	cmpl	288(%edx),%eax
	jne	Lj1027
	jmp	Lj1028
Lj1027:
	movl	-4(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__INVALIDATEPROGRAMM$stub
Lj1028:
	movl	-4(%ebp),%eax
	leal	320(%eax),%edi
	movl	L_$REGEXPR$_Ld115$non_lazy_ptr-Lj1024(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movl	308(%eax),%eax
	testl	%eax,%eax
	je	Lj1036
	movl	-4(%eax),%eax
Lj1036:
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj1034
	decl	-12(%ebp)
	.align 2
Lj1035:
	incl	-12(%ebp)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	308(%edx),%esi
	movl	-12(%ebp),%edx
	movzbl	-1(%esi,%edx,1),%edx
	btsl	%edx,320(%ecx)
	cmpl	-12(%ebp),%eax
	jg	Lj1035
Lj1034:
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	testl	%eax,%eax
	je	Lj1037
	jmp	Lj1038
Lj1037:
	movl	-4(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__COMPILE$stub
Lj1038:
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	testl	%eax,%eax
	je	Lj1041
	jmp	Lj1042
Lj1041:
	jmp	Lj1023
	jmp	Lj1043
Lj1042:
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	movb	(%eax),%al
	cmpb	$216,%al
	jne	Lj1044
	jmp	Lj1045
Lj1044:
	movl	-4(%ebp),%eax
	movl	$1004,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1050
Lj1045:
	movb	$1,-5(%ebp)
Lj1050:
Lj1043:
Lj1023:
	movb	-5(%ebp),%al
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR
_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	leal	244(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1055
	jmp	Lj1056
Lj1055:
	jmp	Lj1053
Lj1056:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	.align 2
Lj1059:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__REGNEXT$PCHAR$$PCHAR$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1068
	jmp	Lj1069
Lj1068:
	jmp	Lj1061
Lj1069:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1059
Lj1061:
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jb	Lj1072
	jmp	Lj1073
Lj1072:
	movl	-16(%ebp),%eax
	incl	%eax
	call	L_REGEXPR_ALIGNTOPTR$POINTER$$POINTER$stub
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ecx
	subl	%ecx,%edx
	negl	%edx
	movl	%edx,(%eax)
	jmp	Lj1078
Lj1073:
	movl	-16(%ebp),%eax
	incl	%eax
	call	L_REGEXPR_ALIGNTOPTR$POINTER$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%ecx
	subl	%ecx,%edx
	movl	%edx,(%eax)
Lj1078:
Lj1053:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__OPTAIL$PCHAR$PCHAR
_REGEXPR_TREGEXPR_$__OPTAIL$PCHAR$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1085
	jmp	Lj1088
Lj1088:
	movl	-12(%ebp),%eax
	leal	244(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1085
	jmp	Lj1087
Lj1087:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$6,%al
	jne	Lj1085
	jmp	Lj1086
Lj1085:
	jmp	Lj1083
Lj1086:
	movl	-4(%ebp),%edx
	incl	%edx
	addl	$4,%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub
Lj1083:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR
_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	248(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	leal	244(%eax),%eax
	cmpl	-12(%ebp),%eax
	jne	Lj1099
	jmp	Lj1100
Lj1099:
	movl	-8(%ebp),%eax
	movl	248(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,(%eax)
	movl	-8(%ebp),%eax
	incl	248(%eax)
	movl	-8(%ebp),%eax
	movl	248(%eax),%eax
	call	L_REGEXPR_ALIGNTOPTR$POINTER$$POINTER$stub
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	addl	$4,248(%eax)
	jmp	Lj1107
Lj1100:
	movl	-8(%ebp),%eax
	addl	$5,252(%eax)
Lj1107:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__EMITC$CHAR
_REGEXPR_TREGEXPR_$__EMITC$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	leal	244(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	248(%edx),%eax
	jne	Lj1110
	jmp	Lj1111
Lj1110:
	movl	-8(%ebp),%eax
	movl	248(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,(%eax)
	movl	-8(%ebp),%eax
	incl	248(%eax)
	jmp	Lj1114
Lj1111:
	movl	-8(%ebp),%eax
	incl	252(%eax)
Lj1114:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__INSERTOPERATOR$CHAR$PCHAR$LONGINT
_REGEXPR_TREGEXPR_$__INSERTOPERATOR$CHAR$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	leal	244(%eax),%eax
	movl	-12(%ebp),%edx
	cmpl	248(%edx),%eax
	je	Lj1117
	jmp	Lj1118
Lj1117:
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	addl	%edx,252(%eax)
	jmp	Lj1115
Lj1118:
	movl	-12(%ebp),%eax
	movl	248(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	addl	%eax,248(%edx)
	movl	-12(%ebp),%eax
	movl	248(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1124
	.align 2
Lj1123:
	decl	-20(%ebp)
	decl	-16(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
Lj1124:
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	ja	Lj1123
	jmp	Lj1125
Lj1125:
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,(%eax)
	incl	-24(%ebp)
	movl	8(%ebp),%edx
	movl	$2,-28(%ebp)
	cmpl	-28(%ebp),%edx
	jl	Lj1133
	decl	-28(%ebp)
	.align 2
Lj1134:
	incl	-28(%ebp)
	movl	-24(%ebp),%eax
	movb	$0,(%eax)
	incl	-24(%ebp)
	cmpl	-28(%ebp),%edx
	jg	Lj1134
Lj1133:
Lj1115:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_STRCSPN$PCHAR$PCHAR$$LONGINT
_REGEXPR_STRCSPN$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1144
	.align 2
Lj1143:
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1149
	.align 2
Lj1148:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	je	Lj1151
	jmp	Lj1152
Lj1151:
	jmp	Lj1137
	jmp	Lj1153
Lj1152:
	incl	-20(%ebp)
Lj1153:
Lj1149:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj1148
	jmp	Lj1150
Lj1150:
	incl	-12(%ebp)
	incl	-16(%ebp)
Lj1144:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj1143
	jmp	Lj1145
Lj1145:
Lj1137:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__COMPILEREGEXPR$PCHAR$$BOOLEAN
_REGEXPR_TREGEXPR_$__COMPILEREGEXPR$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj1155
Lj1155:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,236(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,256(%eax)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj1162
	movl	-8(%ebp),%eax
	movl	264(%eax),%eax
	testl	%eax,%eax
	jne	Lj1166
	jmp	Lj1167
Lj1166:
	movl	-8(%ebp),%eax
	movl	264(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	$0,264(%eax)
Lj1167:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1172
	jmp	Lj1173
Lj1172:
	movl	-8(%ebp),%eax
	movl	$100,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1165
Lj1173:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	280(%eax),%eax
	movl	%eax,288(%edx)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	280(%eax),%eax
	movl	%eax,284(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,236(%eax)
	movl	-8(%ebp),%eax
	movl	$1,240(%eax)
	movl	-8(%ebp),%eax
	movl	$0,252(%eax)
	movl	-8(%ebp),%eax
	leal	244(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%eax,248(%edx)
	movl	-8(%ebp),%eax
	movb	$216,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITC$CHAR$stub
	leal	-28(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_REGEXPR_TREGEXPR_$__PARSEREG$LONGINT$LONGINT$$PCHAR$stub
	testl	%eax,%eax
	je	Lj1194
	jmp	Lj1195
Lj1194:
	jmp	Lj1165
Lj1195:
	movl	-8(%ebp),%eax
	movl	252(%eax),%edx
	movl	-8(%ebp),%eax
	leal	264(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	280(%eax),%eax
	movl	%eax,284(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,236(%edx)
	movl	-8(%ebp),%eax
	movl	$1,240(%eax)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	264(%eax),%eax
	movl	%eax,248(%edx)
	movl	-8(%ebp),%eax
	movb	$216,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITC$CHAR$stub
	leal	-28(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_REGEXPR_TREGEXPR_$__PARSEREG$LONGINT$LONGINT$$PCHAR$stub
	testl	%eax,%eax
	je	Lj1218
	jmp	Lj1219
Lj1218:
	jmp	Lj1165
Lj1219:
	movl	-8(%ebp),%eax
	leal	192(%eax),%edi
	movl	L_$REGEXPR$_Ld115$non_lazy_ptr-Lj1155(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	movl	264(%eax),%edx
	incl	%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__FILLFIRSTCHARSET$PCHAR$stub
	movl	-8(%ebp),%eax
	movb	$0,168(%eax)
	movl	-8(%ebp),%eax
	movb	$0,169(%eax)
	movl	-8(%ebp),%eax
	movl	$0,172(%eax)
	movl	-8(%ebp),%eax
	movl	$0,176(%eax)
	movl	-8(%ebp),%eax
	movl	264(%eax),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__REGNEXT$PCHAR$$PCHAR$stub
	movb	(%eax),%al
	testb	%al,%al
	je	Lj1242
	jmp	Lj1243
Lj1242:
	movl	-16(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$8,%al
	je	Lj1250
	jmp	Lj1251
Lj1250:
	movl	-16(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movl	-8(%ebp),%edx
	movb	(%eax),%al
	movb	%al,168(%edx)
	jmp	Lj1254
Lj1251:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$1,%al
	je	Lj1255
	jmp	Lj1256
Lj1255:
	movl	-8(%ebp),%eax
	incb	169(%eax)
Lj1256:
Lj1254:
	movl	-28(%ebp),%eax
	andl	$4,%eax
	testl	%eax,%eax
	jne	Lj1257
	jmp	Lj1258
Lj1257:
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	jmp	Lj1264
	.align 2
Lj1263:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$8,%al
	je	Lj1268
	jmp	Lj1267
Lj1268:
	movl	-16(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	call	LFPC_PCHAR_LENGTH$stub
	cmpl	-24(%ebp),%eax
	jge	Lj1266
	jmp	Lj1267
Lj1266:
	movl	-16(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-24(%ebp)
Lj1267:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__REGNEXT$PCHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
Lj1264:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1263
	jmp	Lj1265
Lj1265:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,172(%eax)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,176(%eax)
Lj1258:
Lj1243:
	movb	$1,-9(%ebp)
Lj1162:
	call	LFPC_POPADDRSTACK$stub
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj1289
	jmp	Lj1290
Lj1289:
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__INVALIDATEPROGRAMM$stub
Lj1290:
	movl	-8(%ebp),%eax
	movl	$0,256(%eax)
	movl	-8(%ebp),%eax
	movb	-9(%ebp),%dl
	movb	%dl,260(%eax)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj1163
	decl	%eax
	testl	%eax,%eax
	je	Lj1164
	decl	%eax
	testl	%eax,%eax
	je	Lj1154
Lj1164:
	call	LFPC_RERAISE$stub
Lj1165:
	movl	-68(%ebp),%eax
	movl	$2,-68(%ebp)
	jmp	Lj1162
Lj1163:
Lj1154:
	movb	-9(%ebp),%al
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__PARSEREG$LONGINT$LONGINT$$PCHAR
_REGEXPR_TREGEXPR_$__PARSEREG$LONGINT$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	$1,(%eax)
	movl	$0,-32(%ebp)
	movl	-12(%ebp),%eax
	movl	284(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1307
	jmp	Lj1308
Lj1307:
	movl	-12(%ebp),%eax
	movl	240(%eax),%eax
	cmpl	$15,%eax
	jge	Lj1309
	jmp	Lj1310
Lj1309:
	movl	-12(%ebp),%eax
	movl	$102,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1297
Lj1310:
	movl	-12(%ebp),%eax
	movl	240(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-12(%ebp),%eax
	incl	240(%eax)
	movl	-32(%ebp),%edx
	addl	$39,%edx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-20(%ebp)
	jmp	Lj1323
Lj1308:
	movl	$0,-20(%ebp)
Lj1323:
	leal	-36(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__PARSEBRANCH$LONGINT$$PCHAR$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj1332
	jmp	Lj1333
Lj1332:
	movl	$0,-16(%ebp)
	jmp	Lj1297
Lj1333:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1336
	jmp	Lj1337
Lj1336:
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub
	jmp	Lj1344
Lj1337:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj1344:
	movl	-36(%ebp),%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj1347
	jmp	Lj1348
Lj1347:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	andl	$-2,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj1348:
	movl	-36(%ebp),%edx
	andl	$4,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	orl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
	jmp	Lj1354
	.align 2
Lj1353:
	movl	-12(%ebp),%eax
	incl	236(%eax)
	leal	-36(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__PARSEBRANCH$LONGINT$$PCHAR$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj1362
	jmp	Lj1363
Lj1362:
	movl	$0,-16(%ebp)
	jmp	Lj1297
Lj1363:
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub
	movl	-36(%ebp),%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj1372
	jmp	Lj1373
Lj1372:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	andl	$-2,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
Lj1373:
	movl	-36(%ebp),%edx
	andl	$4,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	orl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
Lj1354:
	movl	-12(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$124,%al
	je	Lj1353
	jmp	Lj1355
Lj1355:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1378
	jmp	Lj1379
Lj1378:
	movl	-32(%ebp),%edx
	addl	$54,%edx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-28(%ebp)
	jmp	Lj1386
Lj1379:
	movl	-12(%ebp),%eax
	movb	$0,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-28(%ebp)
Lj1386:
	movl	-28(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj1402
	.align 2
Lj1401:
	movl	-28(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__OPTAIL$PCHAR$PCHAR$stub
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__REGNEXT$PCHAR$$PCHAR$stub
	movl	%eax,-24(%ebp)
Lj1402:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1401
	jmp	Lj1403
Lj1403:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1416
	jmp	Lj1417
Lj1416:
	movl	-12(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$41,%al
	jne	Lj1418
	jmp	Lj1419
Lj1418:
	movl	-12(%ebp),%eax
	movl	$103,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1297
	jmp	Lj1424
Lj1419:
	movl	-12(%ebp),%eax
	incl	236(%eax)
Lj1424:
Lj1417:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1427
	jmp	Lj1426
Lj1427:
	movl	-12(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj1425
	jmp	Lj1426
Lj1425:
	movl	-12(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$41,%al
	je	Lj1428
	jmp	Lj1429
Lj1428:
	movl	-12(%ebp),%eax
	movl	$104,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1434
Lj1429:
	movl	-12(%ebp),%eax
	movl	$105,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
Lj1434:
	jmp	Lj1297
Lj1426:
	movl	-12(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,284(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1297:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__PARSEBRANCH$LONGINT$$PCHAR
_REGEXPR_TREGEXPR_$__PARSEBRANCH$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	movb	$6,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj1456
	.align 2
Lj1455:
	leal	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__PARSEPIECE$LONGINT$$PCHAR$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj1464
	jmp	Lj1465
Lj1464:
	movl	$0,-12(%ebp)
	jmp	Lj1443
Lj1465:
	movl	-28(%ebp),%edx
	andl	$1,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	orl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,(%eax)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1470
	jmp	Lj1471
Lj1470:
	movl	-28(%ebp),%edx
	andl	$4,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	orl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,(%eax)
	jmp	Lj1474
Lj1471:
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub
Lj1474:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj1456:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj1484
	jmp	Lj1457
Lj1484:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$124,%al
	jne	Lj1483
	jmp	Lj1457
Lj1483:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$41,%al
	jne	Lj1455
	jmp	Lj1457
Lj1457:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1485
	jmp	Lj1486
Lj1485:
	movl	-8(%ebp),%eax
	movb	$9,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
Lj1486:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj1443:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__PARSEPIECE$LONGINT$$PCHAR
_REGEXPR_TREGEXPR_$__PARSEPIECE$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	call	Lj1494
Lj1494:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__PARSEATOM$LONGINT$$PCHAR$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1507
	jmp	Lj1508
Lj1507:
	jmp	Lj1493
Lj1508:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	cmpb	$42,%al
	je	Lj1512
	jmp	Lj1515
Lj1515:
	movb	-13(%ebp),%al
	cmpb	$43,%al
	je	Lj1512
	jmp	Lj1514
Lj1514:
	movb	-13(%ebp),%al
	cmpb	$63,%al
	je	Lj1512
	jmp	Lj1513
Lj1513:
	movb	-13(%ebp),%al
	cmpb	$123,%al
	je	Lj1512
	jmp	Lj1511
Lj1511:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,(%edx)
	jmp	Lj1493
Lj1512:
	movl	-24(%ebp),%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj1520
	jmp	Lj1519
Lj1520:
	movb	-13(%ebp),%al
	cmpb	$63,%al
	jne	Lj1518
	jmp	Lj1519
Lj1518:
	movl	-8(%ebp),%eax
	movl	$106,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1493
Lj1519:
	movb	-13(%ebp),%al
	cmpb	$42,%al
	jb	Lj1526
	subb	$42,%al
	je	Lj1527
	decb	%al
	je	Lj1528
	subb	$20,%al
	je	Lj1529
	subb	$60,%al
	je	Lj1530
	jmp	Lj1526
Lj1527:
	movl	-4(%ebp),%eax
	movl	$4,(%eax)
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	incl	%eax
	movb	(%eax),%al
	cmpb	$63,%al
	seteb	-15(%ebp)
	cmpb	$0,-15(%ebp)
	jne	Lj1535
	jmp	Lj1537
Lj1537:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$8,%eax
	testl	%eax,%eax
	je	Lj1535
	jmp	Lj1536
Lj1535:
	movb	$1,-14(%ebp)
	jmp	Lj1538
Lj1536:
	movb	$0,-14(%ebp)
Lj1538:
	movl	-24(%ebp),%eax
	andl	$2,%eax
	testl	%eax,%eax
	je	Lj1539
	jmp	Lj1540
Lj1539:
	cmpb	$0,-14(%ebp)
	jne	Lj1541
	jmp	Lj1542
Lj1541:
	movb	-14(%ebp),%al
	movb	%al,(%esp)
	movl	%ebp,%eax
	movl	$2147483646,%ecx
	movl	$0,%edx
	call	L_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_EMITCOMPLEXBRACES$LONGINT$LONGINT$BOOLEAN$stub
	jmp	Lj1551
Lj1542:
	movl	$5,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movb	$6,%dl
	call	L_REGEXPR_TREGEXPR_$__INSERTOPERATOR$CHAR$PCHAR$LONGINT$stub
	movl	-8(%ebp),%eax
	movb	$7,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__OPTAIL$PCHAR$PCHAR$stub
	movl	-12(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__OPTAIL$PCHAR$PCHAR$stub
	movl	-8(%ebp),%eax
	movb	$6,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub
	movl	-8(%ebp),%eax
	movb	$9,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub
Lj1551:
	jmp	Lj1596
Lj1540:
	cmpb	$0,-14(%ebp)
	jne	Lj1597
	jmp	Lj1598
Lj1597:
	movb	$30,-16(%ebp)
	jmp	Lj1601
Lj1598:
	movb	$10,-16(%ebp)
Lj1601:
	movl	$5,(%esp)
	movl	-12(%ebp),%ecx
	movb	-16(%ebp),%dl
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__INSERTOPERATOR$CHAR$PCHAR$LONGINT$stub
Lj1596:
	cmpb	$0,-15(%ebp)
	jne	Lj1612
	jmp	Lj1613
Lj1612:
	movl	-8(%ebp),%eax
	incl	236(%eax)
Lj1613:
	jmp	Lj1525
Lj1528:
	movl	-4(%ebp),%eax
	movl	$5,(%eax)
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	incl	%eax
	movb	(%eax),%al
	cmpb	$63,%al
	seteb	-15(%ebp)
	cmpb	$0,-15(%ebp)
	jne	Lj1618
	jmp	Lj1620
Lj1620:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$8,%eax
	testl	%eax,%eax
	je	Lj1618
	jmp	Lj1619
Lj1618:
	movb	$1,-14(%ebp)
	jmp	Lj1621
Lj1619:
	movb	$0,-14(%ebp)
Lj1621:
	movl	-24(%ebp),%eax
	andl	$2,%eax
	testl	%eax,%eax
	je	Lj1622
	jmp	Lj1623
Lj1622:
	cmpb	$0,-14(%ebp)
	jne	Lj1624
	jmp	Lj1625
Lj1624:
	movb	-14(%ebp),%al
	movb	%al,(%esp)
	movl	%ebp,%eax
	movl	$2147483646,%ecx
	movl	$1,%edx
	call	L_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_EMITCOMPLEXBRACES$LONGINT$LONGINT$BOOLEAN$stub
	jmp	Lj1634
Lj1625:
	movl	-8(%ebp),%eax
	movb	$6,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub
	movl	-8(%ebp),%eax
	movb	$7,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub
	movl	-8(%ebp),%eax
	movb	$6,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub
	movl	-8(%ebp),%eax
	movb	$9,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub
Lj1634:
	jmp	Lj1677
Lj1623:
	cmpb	$0,-14(%ebp)
	jne	Lj1678
	jmp	Lj1679
Lj1678:
	movb	$31,-16(%ebp)
	jmp	Lj1682
Lj1679:
	movb	$11,-16(%ebp)
Lj1682:
	movl	$5,(%esp)
	movl	-12(%ebp),%ecx
	movb	-16(%ebp),%dl
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__INSERTOPERATOR$CHAR$PCHAR$LONGINT$stub
Lj1677:
	cmpb	$0,-15(%ebp)
	jne	Lj1693
	jmp	Lj1694
Lj1693:
	movl	-8(%ebp),%eax
	incl	236(%eax)
Lj1694:
	jmp	Lj1525
Lj1529:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	incl	%eax
	movb	(%eax),%al
	cmpb	$63,%al
	seteb	-15(%ebp)
	cmpb	$0,-15(%ebp)
	jne	Lj1699
	jmp	Lj1701
Lj1701:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$8,%eax
	testl	%eax,%eax
	je	Lj1699
	jmp	Lj1700
Lj1699:
	movb	$1,-14(%ebp)
	jmp	Lj1702
Lj1700:
	movb	$0,-14(%ebp)
Lj1702:
	cmpb	$0,-14(%ebp)
	jne	Lj1703
	jmp	Lj1704
Lj1703:
	movl	-24(%ebp),%eax
	andl	$2,%eax
	testl	%eax,%eax
	je	Lj1705
	jmp	Lj1706
Lj1705:
	movb	-14(%ebp),%al
	movb	%al,(%esp)
	movl	%ebp,%eax
	movl	$1,%ecx
	movl	$0,%edx
	call	L_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_EMITCOMPLEXBRACES$LONGINT$LONGINT$BOOLEAN$stub
	jmp	Lj1715
Lj1706:
	movb	-14(%ebp),%al
	movb	%al,(%esp)
	movl	%ebp,%eax
	movl	$1,%ecx
	movl	$0,%edx
	call	L_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_EMITSIMPLEBRACES$LONGINT$LONGINT$BOOLEAN$stub
Lj1715:
	jmp	Lj1724
Lj1704:
	movl	$5,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movb	$6,%dl
	call	L_REGEXPR_TREGEXPR_$__INSERTOPERATOR$CHAR$PCHAR$LONGINT$stub
	movl	-8(%ebp),%eax
	movb	$6,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub
	movl	-8(%ebp),%eax
	movb	$9,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__OPTAIL$PCHAR$PCHAR$stub
Lj1724:
	cmpb	$0,-15(%ebp)
	jne	Lj1761
	jmp	Lj1762
Lj1761:
	movl	-8(%ebp),%eax
	incl	236(%eax)
Lj1762:
	jmp	Lj1525
Lj1530:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	incl	236(%eax)
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj1768
	.align 2
Lj1767:
	movl	-8(%ebp),%eax
	incl	236(%eax)
Lj1768:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	movl	L_$REGEXPR$_Ld116$non_lazy_ptr-Lj1494(%ebx),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj1767
	jmp	Lj1769
Lj1769:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$125,%al
	jne	Lj1777
	jmp	Lj1776
Lj1777:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$44,%al
	jne	Lj1774
	jmp	Lj1776
Lj1776:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	cmpl	-36(%ebp),%eax
	je	Lj1774
	jmp	Lj1775
Lj1774:
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,236(%eax)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj1493
Lj1775:
	movl	-8(%ebp),%eax
	movl	236(%eax),%ecx
	decl	%ecx
	movl	-36(%ebp),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_PARSENUM$PCHAR$PCHAR$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$44,%al
	je	Lj1790
	jmp	Lj1791
Lj1790:
	movl	-8(%ebp),%eax
	incl	236(%eax)
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj1795
	.align 2
Lj1794:
	movl	-8(%ebp),%eax
	incl	236(%eax)
Lj1795:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	movl	L_$REGEXPR$_Ld116$non_lazy_ptr-Lj1494(%ebx),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj1794
	jmp	Lj1796
Lj1796:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$125,%al
	jne	Lj1801
	jmp	Lj1802
Lj1801:
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,236(%edx)
	jmp	Lj1493
Lj1802:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	cmpl	-36(%ebp),%eax
	je	Lj1805
	jmp	Lj1806
Lj1805:
	movl	$2147483646,-32(%ebp)
	jmp	Lj1809
Lj1806:
	movl	-8(%ebp),%eax
	movl	236(%eax),%ecx
	decl	%ecx
	movl	-36(%ebp),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_PARSENUM$PCHAR$PCHAR$$LONGINT$stub
	movl	%eax,-32(%ebp)
Lj1809:
	jmp	Lj1818
Lj1791:
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj1818:
	movl	-28(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj1821
	jmp	Lj1822
Lj1821:
	movl	-8(%ebp),%eax
	movl	$124,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1493
Lj1822:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1827
	jmp	Lj1828
Lj1827:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj1828:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1831
	jmp	Lj1832
Lj1831:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	orl	$1,%edx
	orl	$4,%edx
	movl	-4(%ebp),%eax
	movl	%edx,(%eax)
Lj1832:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	incl	%eax
	movb	(%eax),%al
	cmpb	$63,%al
	seteb	-15(%ebp)
	cmpb	$0,-15(%ebp)
	jne	Lj1837
	jmp	Lj1839
Lj1839:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$8,%eax
	testl	%eax,%eax
	je	Lj1837
	jmp	Lj1838
Lj1837:
	movb	$1,-14(%ebp)
	jmp	Lj1840
Lj1838:
	movb	$0,-14(%ebp)
Lj1840:
	movl	-24(%ebp),%eax
	andl	$2,%eax
	testl	%eax,%eax
	jne	Lj1841
	jmp	Lj1842
Lj1841:
	movb	-14(%ebp),%al
	movb	%al,(%esp)
	movl	-32(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_EMITSIMPLEBRACES$LONGINT$LONGINT$BOOLEAN$stub
	jmp	Lj1851
Lj1842:
	movb	-14(%ebp),%al
	movb	%al,(%esp)
	movl	-32(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_EMITCOMPLEXBRACES$LONGINT$LONGINT$BOOLEAN$stub
Lj1851:
	cmpb	$0,-15(%ebp)
	jne	Lj1860
	jmp	Lj1861
Lj1860:
	movl	-8(%ebp),%eax
	incl	236(%eax)
Lj1861:
	jmp	Lj1525
Lj1526:
Lj1525:
	movl	-8(%ebp),%eax
	incl	236(%eax)
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$42,%al
	je	Lj1862
	jmp	Lj1866
Lj1866:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$43,%al
	je	Lj1862
	jmp	Lj1865
Lj1865:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$63,%al
	je	Lj1862
	jmp	Lj1864
Lj1864:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$123,%al
	je	Lj1862
	jmp	Lj1863
Lj1862:
	movl	-8(%ebp),%eax
	movl	$107,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1493
Lj1863:
Lj1493:
	movl	-12(%ebp),%eax
	movl	-44(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_EMITSIMPLEBRACES$LONGINT$LONGINT$BOOLEAN
_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_EMITSIMPLEBRACES$LONGINT$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj1871
	jmp	Lj1872
Lj1871:
	movl	-12(%ebp),%eax
	movb	$32,-16(%eax)
	jmp	Lj1875
Lj1872:
	movl	-12(%ebp),%eax
	movb	$18,-16(%eax)
Lj1875:
	movl	$13,(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%ecx
	movl	-12(%ebp),%eax
	movb	-16(%eax),%dl
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	call	L_REGEXPR_TREGEXPR_$__INSERTOPERATOR$CHAR$PCHAR$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	leal	244(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	cmpl	248(%eax),%edx
	jne	Lj1886
	jmp	Lj1887
Lj1886:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	incl	%eax
	addl	$4,%eax
	call	L_REGEXPR_ALIGNTOINT$POINTER$$POINTER$stub
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	incl	%eax
	addl	$4,%eax
	addl	$4,%eax
	call	L_REGEXPR_ALIGNTOINT$POINTER$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
Lj1887:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_EMITCOMPLEXBRACES$LONGINT$LONGINT$BOOLEAN
_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_EMITCOMPLEXBRACES$LONGINT$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj1896
	jmp	Lj1897
Lj1896:
	movl	-12(%ebp),%eax
	movb	$33,-16(%eax)
	jmp	Lj1900
Lj1897:
	movl	-12(%ebp),%eax
	movb	$24,-16(%eax)
Lj1900:
	movl	$5,(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movb	$23,%dl
	call	L_REGEXPR_TREGEXPR_$__INSERTOPERATOR$CHAR$PCHAR$LONGINT$stub
	movl	-12(%ebp),%eax
	movb	-16(%eax),%dl
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	-12(%ebp),%edx
	movl	%eax,-20(%edx)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	leal	244(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	cmpl	248(%eax),%edx
	jne	Lj1917
	jmp	Lj1918
Lj1917:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	248(%eax),%edx
	decl	%edx
	subl	$4,%edx
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	incl	%eax
	addl	$4,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	248(%eax),%eax
	call	L_REGEXPR_ALIGNTOINT$POINTER$$POINTER$stub
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	addl	$4,248(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	248(%eax),%eax
	call	L_REGEXPR_ALIGNTOINT$POINTER$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	addl	$4,248(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	248(%eax),%eax
	call	L_REGEXPR_ALIGNTOPTR$POINTER$$POINTER$stub
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	addl	$4,248(%eax)
	jmp	Lj1933
Lj1918:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	addl	$12,252(%eax)
Lj1933:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	call	L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	leal	244(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	cmpl	248(%eax),%edx
	jne	Lj1940
	jmp	Lj1941
Lj1940:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%edx
	incl	%edx
	addl	$4,%edx
	movl	-12(%ebp),%eax
	movl	-20(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	call	L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub
Lj1941:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_PARSENUM$PCHAR$PCHAR$$LONGINT
_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_PARSENUM$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	cmpl	$8,%edx
	jg	Lj1950
	jmp	Lj1951
Lj1950:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	$122,%edx
	movl	-12(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1495
Lj1951:
	jmp	Lj1957
	.align 2
Lj1956:
	movl	-16(%ebp),%edx
	imull	$10,%edx
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$48,%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	incl	-4(%ebp)
Lj1957:
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jbe	Lj1956
	jmp	Lj1958
Lj1958:
	movl	-16(%ebp),%eax
	cmpl	$2147483646,%eax
	jg	Lj1961
	jmp	Lj1963
Lj1963:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1961
	jmp	Lj1962
Lj1961:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	$122,%edx
	movl	-12(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1495
Lj1962:
Lj1495:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__PARSEATOM$LONGINT$$PCHAR
_REGEXPR_TREGEXPR_$__PARSEATOM$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-140(%ebp)
	call	Lj1969
Lj1969:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-136(%ebp)
	movl	$0,-132(%ebp)
	leal	-100(%ebp),%ecx
	leal	-124(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-128(%ebp)
	testl	%eax,%eax
	jne	Lj1988
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	incl	236(%eax)
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	decl	%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj2002
	subb	$36,%al
	je	Lj1998
	subb	$4,%al
	je	Lj2001
	decb	%al
	je	Lj2002
	decb	%al
	jb	Lj1996
	subb	$1,%al
	jbe	Lj2003
	subb	$3,%al
	je	Lj1999
	subb	$17,%al
	je	Lj2003
	subb	$28,%al
	je	Lj2000
	decb	%al
	je	Lj2004
	subb	$2,%al
	je	Lj1997
	subb	$30,%al
	je	Lj2002
	jmp	Lj1996
Lj1997:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$16,%eax
	testl	%eax,%eax
	je	Lj2005
	jmp	Lj2007
Lj2007:
	movl	-8(%ebp),%eax
	movl	308(%eax),%eax
	testl	%eax,%eax
	je	Lj2008
	jmp	Lj2006
Lj2008:
	movl	-8(%ebp),%eax
	movb	312(%eax),%al
	testb	%al,%al
	je	Lj2005
	jmp	Lj2006
Lj2005:
	movl	-8(%ebp),%eax
	movb	$1,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj2015
Lj2006:
	movl	-8(%ebp),%eax
	movb	$34,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
Lj2015:
	jmp	Lj1995
Lj1998:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$16,%eax
	testl	%eax,%eax
	je	Lj2022
	jmp	Lj2024
Lj2024:
	movl	-8(%ebp),%eax
	movl	308(%eax),%eax
	testl	%eax,%eax
	je	Lj2025
	jmp	Lj2023
Lj2025:
	movl	-8(%ebp),%eax
	movb	312(%eax),%al
	testb	%al,%al
	je	Lj2022
	jmp	Lj2023
Lj2022:
	movl	-8(%ebp),%eax
	movb	$2,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj2032
Lj2023:
	movl	-8(%ebp),%eax
	movb	$35,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
Lj2032:
	jmp	Lj1995
Lj1999:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$4,%eax
	testl	%eax,%eax
	jne	Lj2039
	jmp	Lj2040
Lj2039:
	movl	-8(%ebp),%eax
	movb	$3,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	orl	$1,%eax
	orl	$2,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj2049
Lj2040:
	movl	-8(%ebp),%eax
	movb	$36,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	orl	$1,%edx
	movl	-4(%ebp),%eax
	movl	%edx,(%eax)
Lj2049:
	jmp	Lj1995
Lj2000:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$94,%al
	je	Lj2058
	jmp	Lj2059
Lj2058:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj2060
	jmp	Lj2061
Lj2060:
	movl	%ebp,%eax
	movb	$22,%dl
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj2068
Lj2061:
	movl	%ebp,%eax
	movb	$5,%dl
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
Lj2068:
	movl	-8(%ebp),%eax
	incl	236(%eax)
	jmp	Lj2075
Lj2059:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj2076
	jmp	Lj2077
Lj2076:
	movl	%ebp,%eax
	movb	$21,%dl
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj2084
Lj2077:
	movl	%ebp,%eax
	movb	$4,%dl
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
Lj2084:
Lj2075:
	movb	$0,-23(%ebp)
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$93,%al
	je	Lj2093
	jmp	Lj2094
Lj2093:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%dl
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITSIMPLERANGEC$CHAR$stub
	movl	-8(%ebp),%eax
	incl	236(%eax)
Lj2094:
	jmp	Lj2100
	.align 2
Lj2099:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$45,%al
	je	Lj2106
	jmp	Lj2103
Lj2106:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	incl	%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj2105
	jmp	Lj2103
Lj2105:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	incl	%eax
	movb	(%eax),%al
	cmpb	$93,%al
	jne	Lj2104
	jmp	Lj2103
Lj2104:
	cmpb	$0,-23(%ebp)
	jne	Lj2102
	jmp	Lj2103
Lj2102:
	movl	-8(%ebp),%eax
	incl	236(%eax)
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	movb	%al,-22(%ebp)
	movb	-22(%ebp),%al
	cmpb	$92,%al
	je	Lj2109
	jmp	Lj2110
Lj2109:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	incl	%eax
	movzbl	(%eax),%edx
	movl	L_$REGEXPR$_Ld118$non_lazy_ptr-Lj1969(%ebx),%eax
	btl	%edx,(%eax)
	jc	Lj2111
	jmp	Lj2112
Lj2111:
	movl	%ebp,%eax
	movb	$45,%dl
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGEC$CHAR$stub
	jmp	Lj2100
Lj2112:
	movl	-8(%ebp),%eax
	incl	236(%eax)
	movl	-8(%ebp),%eax
	leal	236(%eax),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_UNQUOTECHAR$PCHAR$$CHAR$stub
	movb	%al,-22(%ebp)
Lj2110:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$2,%eax
	testl	%eax,%eax
	jne	Lj2126
	jmp	Lj2124
Lj2126:
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-132(%ebp),%edx
	movb	-21(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-132(%ebp),%eax
	movl	L_$REGEXPR$_Ld119$non_lazy_ptr-Lj1969(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj2125
	jmp	Lj2124
Lj2125:
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-132(%ebp),%edx
	movb	-22(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-132(%ebp),%eax
	movl	L_$REGEXPR$_Ld121$non_lazy_ptr-Lj1969(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj2123
	jmp	Lj2124
Lj2123:
	movl	%ebp,%eax
	movl	L_$REGEXPR$_Ld123$non_lazy_ptr-Lj1969(%ebx),%edx
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGESTR$ANSISTRING$stub
	jmp	Lj2147
Lj2124:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$2,%eax
	testl	%eax,%eax
	jne	Lj2151
	jmp	Lj2149
Lj2151:
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-132(%ebp),%edx
	movb	-21(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-132(%ebp),%eax
	movl	L_$REGEXPR$_Ld125$non_lazy_ptr-Lj1969(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj2150
	jmp	Lj2149
Lj2150:
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-132(%ebp),%edx
	movb	-22(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-132(%ebp),%eax
	movl	L_$REGEXPR$_Ld127$non_lazy_ptr-Lj1969(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj2148
	jmp	Lj2149
Lj2148:
	movl	%ebp,%eax
	movl	L_$REGEXPR$_Ld129$non_lazy_ptr-Lj1969(%ebx),%edx
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGESTR$ANSISTRING$stub
	jmp	Lj2172
Lj2149:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$2,%eax
	testl	%eax,%eax
	jne	Lj2176
	jmp	Lj2174
Lj2176:
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-132(%ebp),%edx
	movb	-21(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-132(%ebp),%eax
	movl	L_$REGEXPR$_Ld119$non_lazy_ptr-Lj1969(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj2175
	jmp	Lj2174
Lj2175:
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-132(%ebp),%edx
	movb	-22(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-132(%ebp),%eax
	movl	L_$REGEXPR$_Ld127$non_lazy_ptr-Lj1969(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj2173
	jmp	Lj2174
Lj2173:
	movl	%ebp,%eax
	movl	L_$REGEXPR$_Ld123$non_lazy_ptr-Lj1969(%ebx),%edx
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGESTR$ANSISTRING$stub
	movl	%ebp,%eax
	movl	L_$REGEXPR$_Ld129$non_lazy_ptr-Lj1969(%ebx),%edx
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGESTR$ANSISTRING$stub
	jmp	Lj2201
Lj2174:
	movb	-21(%ebp),%al
	cmpb	-22(%ebp),%al
	ja	Lj2202
	jmp	Lj2203
Lj2202:
	movl	-8(%ebp),%eax
	movl	$109,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1988
Lj2203:
	incb	-21(%ebp)
	movb	-22(%ebp),%dl
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGEC$CHAR$stub
	jmp	Lj2213
	.align 2
Lj2212:
	movb	-21(%ebp),%dl
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGEC$CHAR$stub
	incb	-21(%ebp)
Lj2213:
	movb	-21(%ebp),%al
	cmpb	-22(%ebp),%al
	jb	Lj2212
	jmp	Lj2214
Lj2214:
Lj2201:
Lj2172:
Lj2147:
	movl	-8(%ebp),%eax
	incl	236(%eax)
	jmp	Lj2219
Lj2103:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$92,%al
	je	Lj2220
	jmp	Lj2221
Lj2220:
	movl	-8(%ebp),%eax
	incl	236(%eax)
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj2222
	jmp	Lj2223
Lj2222:
	movl	-8(%ebp),%eax
	movl	$110,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1988
Lj2223:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$100,%al
	jb	Lj2229
	subb	$100,%al
	je	Lj2230
	subb	$15,%al
	je	Lj2232
	subb	$4,%al
	je	Lj2231
	jmp	Lj2229
Lj2230:
	movl	%ebp,%eax
	movl	L_$REGEXPR$_Ld116$non_lazy_ptr-Lj1969(%ebx),%edx
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGESTR$ANSISTRING$stub
	jmp	Lj2228
Lj2231:
	movl	-8(%ebp),%eax
	movl	296(%eax),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGESTR$ANSISTRING$stub
	jmp	Lj2228
Lj2232:
	movl	-8(%ebp),%eax
	movl	292(%eax),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGESTR$ANSISTRING$stub
	jmp	Lj2228
Lj2229:
	movl	-8(%ebp),%eax
	leal	236(%eax),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_UNQUOTECHAR$PCHAR$$CHAR$stub
	movb	%al,%dl
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITSIMPLERANGEC$CHAR$stub
Lj2228:
	jmp	Lj2253
Lj2221:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%dl
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITSIMPLERANGEC$CHAR$stub
Lj2253:
	movl	-8(%ebp),%eax
	incl	236(%eax)
Lj2219:
Lj2100:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj2258
	jmp	Lj2101
Lj2258:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$93,%al
	jne	Lj2099
	jmp	Lj2101
Lj2101:
	movl	%ebp,%eax
	movb	$0,%dl
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGEC$CHAR$stub
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$93,%al
	jne	Lj2263
	jmp	Lj2264
Lj2263:
	movl	-8(%ebp),%eax
	movl	$113,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1988
Lj2264:
	movl	-8(%ebp),%eax
	incl	236(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	orl	$1,%eax
	orl	$2,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj1995
Lj2001:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$63,%al
	je	Lj2271
	jmp	Lj2272
Lj2271:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	incl	%eax
	movb	(%eax),%al
	cmpb	$35,%al
	je	Lj2273
	jmp	Lj2274
Lj2273:
	movl	-8(%ebp),%eax
	addl	$2,236(%eax)
	jmp	Lj2276
	.align 2
Lj2275:
	movl	-8(%ebp),%eax
	incl	236(%eax)
Lj2276:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj2278
	jmp	Lj2277
Lj2278:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$41,%al
	jne	Lj2275
	jmp	Lj2277
Lj2277:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$41,%al
	jne	Lj2279
	jmp	Lj2280
Lj2279:
	movl	-8(%ebp),%eax
	movl	$125,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1988
Lj2280:
	movl	-8(%ebp),%eax
	incl	236(%eax)
	movl	-8(%ebp),%eax
	movb	$19,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj2291
Lj2274:
	movl	-8(%ebp),%eax
	incl	236(%eax)
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj2295
	.align 2
Lj2294:
	movl	-8(%ebp),%eax
	incl	236(%eax)
Lj2295:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj2297
	jmp	Lj2296
Lj2297:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$41,%al
	jne	Lj2294
	jmp	Lj2296
Lj2296:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$41,%al
	jne	Lj2298
	jmp	Lj2300
Lj2300:
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-132(%ebp),%eax
	movl	%eax,(%esp)
	leal	-136(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-136(%ebp)
	leal	-136(%ebp),%edx
	movl	-36(%ebp),%eax
	call	Lfpc_pchar_to_ansistr$stub
	movl	-136(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	236(%edx),%ecx
	movl	-36(%ebp),%edx
	subl	%edx,%ecx
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-132(%ebp),%edx
	movl	-8(%ebp),%eax
	leal	284(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_REGEXPR_TREGEXPR_$__PARSEMODIFIERSSTR$ANSISTRING$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2298
	jmp	Lj2299
Lj2298:
	movl	-8(%ebp),%eax
	movl	$127,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1988
Lj2299:
	movl	-8(%ebp),%eax
	incl	236(%eax)
	movl	-8(%ebp),%eax
	movb	$19,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
Lj2291:
	jmp	Lj2329
Lj2272:
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	L_REGEXPR_TREGEXPR_$__PARSEREG$LONGINT$LONGINT$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2338
	jmp	Lj2339
Lj2338:
	movl	$0,-12(%ebp)
	jmp	Lj1988
Lj2339:
	movl	-20(%ebp),%edx
	andl	$5,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	orl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,(%eax)
Lj2329:
	jmp	Lj1995
Lj2002:
	movl	-8(%ebp),%eax
	movl	$114,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1988
	jmp	Lj1995
Lj2003:
	movl	-8(%ebp),%eax
	movl	$115,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1988
	jmp	Lj1995
Lj2004:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj2352
	jmp	Lj2353
Lj2352:
	movl	-8(%ebp),%eax
	movl	$116,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1988
Lj2353:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$49,%al
	jb	Lj2359
	subb	$49,%al
	subb	$8,%al
	jbe	Lj2370
	subb	$8,%al
	je	Lj2362
	decb	%al
	je	Lj2361
	subb	$2,%al
	je	Lj2365
	subb	$15,%al
	je	Lj2367
	subb	$4,%al
	je	Lj2369
	subb	$3,%al
	je	Lj2363
	subb	$8,%al
	je	Lj2360
	subb	$2,%al
	je	Lj2364
	subb	$15,%al
	je	Lj2366
	subb	$4,%al
	je	Lj2368
	jmp	Lj2359
Lj2360:
	movl	-8(%ebp),%eax
	movb	$37,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj2358
Lj2361:
	movl	-8(%ebp),%eax
	movb	$38,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj2358
Lj2362:
	movl	-8(%ebp),%eax
	movb	$1,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj2358
Lj2363:
	movl	-8(%ebp),%eax
	movb	$2,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj2358
Lj2364:
	movl	-8(%ebp),%eax
	movb	$12,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	orl	$1,%eax
	orl	$2,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj2358
Lj2365:
	movl	-8(%ebp),%eax
	movb	$13,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	orl	$1,%eax
	orl	$2,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj2358
Lj2366:
	movl	%ebp,%eax
	movb	$4,%dl
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	292(%eax),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGESTR$ANSISTRING$stub
	movl	%ebp,%eax
	movb	$0,%dl
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGEC$CHAR$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	orl	$1,%eax
	orl	$2,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj2358
Lj2367:
	movl	%ebp,%eax
	movb	$5,%dl
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	292(%eax),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGESTR$ANSISTRING$stub
	movl	%ebp,%eax
	movb	$0,%dl
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGEC$CHAR$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	orl	$1,%eax
	orl	$2,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj2358
Lj2368:
	movl	%ebp,%eax
	movb	$4,%dl
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	296(%eax),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGESTR$ANSISTRING$stub
	movl	%ebp,%eax
	movb	$0,%dl
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGEC$CHAR$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	orl	$1,%eax
	orl	$2,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj2358
Lj2369:
	movl	%ebp,%eax
	movb	$5,%dl
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	296(%eax),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGESTR$ANSISTRING$stub
	movl	%ebp,%eax
	movb	$0,%dl
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGEC$CHAR$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	orl	$1,%eax
	orl	$2,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj2358
Lj2370:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj2475
	jmp	Lj2476
Lj2475:
	movl	-8(%ebp),%eax
	movb	$29,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj2483
Lj2476:
	movl	-8(%ebp),%eax
	movb	$28,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
Lj2483:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movzbl	(%eax),%edx
	subl	$48,%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__EMITC$CHAR$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	orl	$1,%eax
	orl	$2,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj2358
Lj2359:
	movl	-8(%ebp),%eax
	leal	236(%eax),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_UNQUOTECHAR$PCHAR$$CHAR$stub
	movb	%al,%dl
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITEXACTLY$CHAR$stub
Lj2358:
	movl	-8(%ebp),%eax
	incl	236(%eax)
	jmp	Lj1995
Lj1996:
	movl	-8(%ebp),%eax
	decl	236(%eax)
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$32,%eax
	testl	%eax,%eax
	jne	Lj2506
	jmp	Lj2505
Lj2506:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$35,%al
	je	Lj2504
	jmp	Lj2507
Lj2507:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movzbl	(%eax),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj2508
	cmpl	$4,%eax
	stc
	je	Lj2508
	cmpl	$23,%eax
	stc
	je	Lj2508
	clc
Lj2508:
	jc	Lj2504
	jmp	Lj2505
Lj2504:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$35,%al
	je	Lj2509
	jmp	Lj2510
Lj2509:
	jmp	Lj2512
	.align 2
Lj2511:
	movl	-8(%ebp),%eax
	incl	236(%eax)
Lj2512:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj2515
	jmp	Lj2513
Lj2515:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$13,%al
	jne	Lj2514
	jmp	Lj2513
Lj2514:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$10,%al
	jne	Lj2511
	jmp	Lj2513
Lj2513:
	jmp	Lj2517
	.align 2
Lj2516:
	movl	-8(%ebp),%eax
	incl	236(%eax)
Lj2517:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$13,%al
	je	Lj2516
	jmp	Lj2519
Lj2519:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$10,%al
	je	Lj2516
	jmp	Lj2518
Lj2518:
	jmp	Lj2520
Lj2510:
	jmp	Lj2522
	.align 2
Lj2521:
	movl	-8(%ebp),%eax
	incl	236(%eax)
Lj2522:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movzbl	(%eax),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj2524
	cmpl	$4,%eax
	stc
	je	Lj2524
	cmpl	$23,%eax
	stc
	je	Lj2524
	clc
Lj2524:
	jc	Lj2521
	jmp	Lj2523
Lj2523:
Lj2520:
	movl	-8(%ebp),%eax
	movb	$19,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj2531
Lj2505:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movl	L_TC_REGEXPR_META$non_lazy_ptr-Lj1969(%ebx),%edx
	call	L_REGEXPR_STRCSPN$PCHAR$PCHAR$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj2538
	jmp	Lj2539
Lj2538:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$123,%al
	jne	Lj2540
	jmp	Lj2541
Lj2540:
	movl	-8(%ebp),%eax
	movl	$119,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1988
	jmp	Lj2546
Lj2541:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	incl	%eax
	movl	L_TC_REGEXPR_META$non_lazy_ptr-Lj1969(%ebx),%edx
	call	L_REGEXPR_STRCSPN$PCHAR$PCHAR$$LONGINT$stub
	incl	%eax
	movl	%eax,-28(%ebp)
Lj2546:
Lj2539:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movb	(%eax),%al
	movb	%al,-29(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj2557
	jmp	Lj2556
Lj2557:
	movb	-29(%ebp),%al
	cmpb	$42,%al
	je	Lj2555
	jmp	Lj2560
Lj2560:
	movb	-29(%ebp),%al
	cmpb	$43,%al
	je	Lj2555
	jmp	Lj2559
Lj2559:
	movb	-29(%ebp),%al
	cmpb	$63,%al
	je	Lj2555
	jmp	Lj2558
Lj2558:
	movb	-29(%ebp),%al
	cmpb	$123,%al
	je	Lj2555
	jmp	Lj2556
Lj2555:
	decl	-28(%ebp)
Lj2556:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	orl	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2563
	jmp	Lj2564
Lj2563:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	orl	$2,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
Lj2564:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj2567
	jmp	Lj2568
Lj2567:
	movl	-8(%ebp),%eax
	movb	$20,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj2575
Lj2568:
	movl	-8(%ebp),%eax
	movb	$8,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
Lj2575:
	jmp	Lj2583
	.align 2
Lj2582:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$32,%eax
	testl	%eax,%eax
	je	Lj2585
	jmp	Lj2587
Lj2587:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movzbl	(%eax),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj2588
	cmpl	$4,%eax
	stc
	je	Lj2588
	cmpl	$23,%eax
	stc
	je	Lj2588
	clc
Lj2588:
	jnc	Lj2585
	jmp	Lj2586
Lj2585:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%dl
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__EMITC$CHAR$stub
Lj2586:
	movl	-8(%ebp),%eax
	incl	236(%eax)
	decl	-28(%ebp)
Lj2583:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2593
	jmp	Lj2584
Lj2593:
	movl	-8(%ebp),%eax
	movl	284(%eax),%eax
	andl	$32,%eax
	testl	%eax,%eax
	je	Lj2582
	jmp	Lj2594
Lj2594:
	movl	-8(%ebp),%eax
	movl	236(%eax),%eax
	movb	(%eax),%al
	cmpb	$35,%al
	jne	Lj2582
	jmp	Lj2584
Lj2584:
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITC$CHAR$stub
Lj2531:
Lj1995:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj1988:
	call	LFPC_POPADDRSTACK$stub
	leal	-136(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-136(%ebp)
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	movl	-128(%ebp),%eax
	testl	%eax,%eax
	je	Lj1989
	call	LFPC_RERAISE$stub
Lj1989:
	movl	-12(%ebp),%eax
	movl	-140(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_UNQUOTECHAR$PCHAR$$CHAR
_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_UNQUOTECHAR$PCHAR$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$97,%al
	jb	Lj2602
	subb	$97,%al
	je	Lj2607
	subb	$4,%al
	je	Lj2608
	decb	%al
	je	Lj2606
	subb	$8,%al
	je	Lj2604
	subb	$4,%al
	je	Lj2605
	subb	$2,%al
	je	Lj2603
	subb	$4,%al
	je	Lj2609
	jmp	Lj2602
Lj2603:
	movb	$9,-9(%ebp)
	jmp	Lj2601
Lj2604:
	movb	$10,-9(%ebp)
	jmp	Lj2601
Lj2605:
	movb	$13,-9(%ebp)
	jmp	Lj2601
Lj2606:
	movb	$12,-9(%ebp)
	jmp	Lj2601
Lj2607:
	movb	$7,-9(%ebp)
	jmp	Lj2601
Lj2608:
	movb	$27,-9(%ebp)
	jmp	Lj2601
Lj2609:
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj2624
	jmp	Lj2625
Lj2624:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	$111,%edx
	movl	-8(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1986
Lj2625:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$123,%al
	je	Lj2630
	jmp	Lj2631
Lj2630:
	.align 2
Lj2632:
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj2635
	jmp	Lj2636
Lj2635:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	$111,%edx
	movl	-8(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1986
Lj2636:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$125,%al
	jne	Lj2641
	jmp	Lj2642
Lj2641:
	movzbl	-9(%ebp),%eax
	shrl	$4,%eax
	andl	$15,%eax
	testl	%eax,%eax
	jne	Lj2643
	jmp	Lj2644
Lj2643:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	$112,%edx
	movl	-8(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1986
Lj2644:
	movzbl	-9(%ebp),%eax
	movl	%eax,%ebx
	shll	$4,%ebx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%dl
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_HEXDIG$CHAR$$LONGINT$stub
	orl	%eax,%ebx
	movb	%bl,%al
	movb	%al,-9(%ebp)
	jmp	Lj2655
Lj2642:
	jmp	Lj2634
Lj2655:
	jmp	Lj2632
Lj2634:
	jmp	Lj2656
Lj2631:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%dl
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_HEXDIG$CHAR$$LONGINT$stub
	movb	%al,-9(%ebp)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj2663
	jmp	Lj2664
Lj2663:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	$111,%edx
	movl	-8(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1986
Lj2664:
	movzbl	-9(%ebp),%eax
	movl	%eax,%ebx
	shll	$4,%ebx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%dl
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_HEXDIG$CHAR$$LONGINT$stub
	orl	%eax,%ebx
	movb	%bl,%al
	movb	%al,-9(%ebp)
Lj2656:
	jmp	Lj2601
Lj2602:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	movb	%al,-9(%ebp)
Lj2601:
Lj1986:
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGESTR$ANSISTRING
_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGESTR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj2680
	movl	-4(%ebx),%ebx
Lj2680:
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2678
	decl	-12(%ebp)
	.align 2
Lj2679:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%dl
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGEC$CHAR$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj2679
Lj2678:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITSIMPLERANGEC$CHAR
_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITSIMPLERANGEC$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,-21(%eax)
	movb	-4(%ebp),%dl
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGEC$CHAR$stub
	movl	-8(%ebp),%eax
	movb	$1,-23(%eax)
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGEC$CHAR
_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGEC$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	call	Lj1981
Lj1981:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,-23(%eax)
	movb	-4(%ebp),%al
	testb	%al,%al
	jne	Lj2695
	jmp	Lj2696
Lj2695:
	movb	-4(%ebp),%dl
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGECPRIM$CHAR$stub
	movl	-8(%ebp),%eax
	cmpb	$0,-45(%eax)
	jne	Lj2701
	jmp	Lj2702
Lj2701:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	304(%eax),%eax
	movb	-4(%ebp),%dl
	movl	-8(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	300(%ecx),%ecx
	call	*%ecx
	movb	%al,%dl
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGECPRIM$CHAR$stub
Lj2702:
	jmp	Lj2711
Lj2696:
	movl	-8(%ebp),%eax
	movl	-84(%eax),%eax
	cmpl	$3,%eax
	jle	Lj2712
	jmp	Lj2713
Lj2712:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	leal	244(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	cmpl	248(%eax),%edx
	je	Lj2714
	jmp	Lj2715
Lj2714:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-44(%eax),%eax
	addl	$3,%eax
	movl	%eax,252(%edx)
	jmp	Lj1980
Lj2715:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-40(%eax),%eax
	movl	%eax,248(%edx)
	movl	-8(%ebp),%eax
	movb	-86(%eax),%dl
	movl	-8(%ebp),%eax
	movb	-85(%eax),%al
	movb	%al,-9(%ebp)
	cmpb	-9(%ebp),%dl
	jb	Lj2721
	decb	-9(%ebp)
	.align 2
Lj2722:
	incb	-9(%ebp)
	movl	-8(%ebp),%ecx
	movzbl	-9(%ebp),%eax
	btl	%eax,-80(%ecx)
	jc	Lj2723
	jmp	Lj2724
Lj2723:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	248(%eax),%ecx
	movb	-9(%ebp),%al
	movb	%al,(%ecx)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	incl	248(%eax)
Lj2724:
	cmpb	-9(%ebp),%dl
	ja	Lj2722
Lj2721:
	jmp	Lj2728
	.align 2
Lj2727:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	248(%eax),%edx
	movl	-8(%ebp),%eax
	movb	-86(%eax),%al
	movb	%al,(%edx)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	incl	248(%eax)
Lj2728:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-40(%eax),%eax
	addl	$3,%eax
	cmpl	248(%edx),%eax
	ja	Lj2727
	jmp	Lj2729
Lj2729:
	jmp	Lj2732
Lj2713:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	leal	244(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	cmpl	248(%eax),%edx
	je	Lj2733
	jmp	Lj2734
Lj2733:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-44(%eax),%eax
	addl	$32,%eax
	movl	%eax,252(%edx)
	jmp	Lj1980
Lj2734:
	movl	-8(%ebp),%eax
	movl	-40(%eax),%eax
	decl	%eax
	subl	$4,%eax
	movb	(%eax),%al
	cmpb	$26,%al
	je	Lj2737
	jmp	Lj2738
Lj2737:
	movl	$32,(%esp)
	movl	L_$REGEXPR$_Ld131$non_lazy_ptr-Lj1981(%ebx),%eax
	movl	-8(%ebp),%edx
	leal	-80(%edx),%edx
	leal	-48(%ebp),%ecx
	call	Lfpc_varset_sub_sets$stub
	movl	-8(%ebp),%eax
	leal	-80(%eax),%edi
	leal	-48(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
Lj2738:
	movl	-8(%ebp),%eax
	movl	-40(%eax),%eax
	decl	%eax
	subl	$4,%eax
	movb	$27,(%eax)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-40(%eax),%eax
	movl	%eax,248(%edx)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	248(%eax),%edx
	movl	-8(%ebp),%eax
	leal	-80(%eax),%eax
	movl	$32,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	addl	$32,248(%eax)
Lj2732:
Lj2711:
Lj1980:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGECPRIM$CHAR
_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGECPRIM$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	btl	%edx,-80(%eax)
	jc	Lj2759
	jmp	Lj2760
Lj2759:
	jmp	Lj1978
Lj2760:
	movl	-8(%ebp),%eax
	incl	-84(%eax)
	movl	-8(%ebp),%eax
	movb	-85(%eax),%al
	cmpb	-4(%ebp),%al
	ja	Lj2761
	jmp	Lj2762
Lj2761:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,-85(%eax)
Lj2762:
	movl	-8(%ebp),%eax
	movb	-86(%eax),%al
	cmpb	-4(%ebp),%al
	jb	Lj2765
	jmp	Lj2766
Lj2765:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,-86(%eax)
Lj2766:
	movl	-8(%ebp),%edx
	movzbl	-4(%ebp),%eax
	btsl	%eax,-80(%edx)
Lj1978:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGE$CHAR$$PCHAR
_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGE$CHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj1977
Lj1977:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movb	-4(%ebp),%al
	cmpb	$5,%al
	jb	Lj2770
	subb	$5,%al
	je	Lj2771
	subb	$17,%al
	je	Lj2771
	jmp	Lj2770
Lj2771:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movb	$26,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-12(%ebp)
	jmp	Lj2769
Lj2770:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movb	$25,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	%eax,-12(%ebp)
Lj2769:
	movb	-4(%ebp),%al
	cmpb	$21,%al
	jb	Lj2785
	subb	$21,%al
	subb	$1,%al
	jbe	Lj2786
	jmp	Lj2785
Lj2786:
	movl	-8(%ebp),%eax
	movb	$1,-45(%eax)
	jmp	Lj2784
Lj2785:
	movl	-8(%ebp),%eax
	movb	$0,-45(%eax)
Lj2784:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-8(%ebp),%edx
	movl	248(%eax),%eax
	movl	%eax,-40(%edx)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-8(%ebp),%edx
	movl	252(%eax),%eax
	movl	%eax,-44(%edx)
	movl	-8(%ebp),%eax
	movl	$0,-84(%eax)
	movl	-8(%ebp),%eax
	leal	-80(%eax),%edi
	movl	L_$REGEXPR$_Ld115$non_lazy_ptr-Lj1977(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	movb	$255,-85(%eax)
	movl	-8(%ebp),%eax
	movb	$0,-86(%eax)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_HEXDIG$CHAR$$LONGINT
_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_HEXDIG$CHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	$0,-12(%ebp)
	movb	-4(%ebp),%al
	cmpb	$97,%al
	jae	Lj2807
	jmp	Lj2806
Lj2807:
	movb	-4(%ebp),%al
	cmpb	$102,%al
	jbe	Lj2805
	jmp	Lj2806
Lj2805:
	movzbl	-4(%ebp),%eax
	subl	$32,%eax
	movb	%al,-4(%ebp)
Lj2806:
	movb	-4(%ebp),%al
	cmpb	$48,%al
	jb	Lj2810
	jmp	Lj2813
Lj2813:
	movb	-4(%ebp),%al
	cmpb	$70,%al
	ja	Lj2810
	jmp	Lj2812
Lj2812:
	movb	-4(%ebp),%al
	cmpb	$57,%al
	ja	Lj2814
	jmp	Lj2811
Lj2814:
	movb	-4(%ebp),%al
	cmpb	$65,%al
	jb	Lj2810
	jmp	Lj2811
Lj2810:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	$108,%edx
	movl	-8(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1974
Lj2811:
	movzbl	-4(%ebp),%eax
	subl	$48,%eax
	movl	%eax,-12(%ebp)
	movb	-4(%ebp),%al
	cmpb	$65,%al
	jae	Lj2821
	jmp	Lj2822
Lj2821:
	movl	-12(%ebp),%eax
	subl	$7,%eax
	movl	%eax,-12(%ebp)
Lj2822:
Lj1974:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITSTR$ANSISTRING
_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITSTR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj2828
	movl	-4(%ebx),%ebx
Lj2828:
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2826
	decl	-12(%ebp)
	.align 2
Lj2827:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%dl
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	call	L_REGEXPR_TREGEXPR_$__EMITC$CHAR$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj2827
Lj2826:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITEXACTLY$CHAR
_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITEXACTLY$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	284(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj2833
	jmp	Lj2834
Lj2833:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movb	$20,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	-8(%ebp),%edx
	movl	%eax,-16(%edx)
	jmp	Lj2841
Lj2834:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movb	$8,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub
	movl	-8(%ebp),%edx
	movl	%eax,-16(%edx)
Lj2841:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movb	-4(%ebp),%dl
	call	L_REGEXPR_TREGEXPR_$__EMITC$CHAR$stub
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movb	$0,%dl
	call	L_REGEXPR_TREGEXPR_$__EMITC$CHAR$stub
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	(%eax),%edx
	orl	$1,%edx
	orl	$2,%edx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%edx,(%eax)
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__GETCOMPILERERRORPOS$$LONGINT
_REGEXPR_TREGEXPR_$__GETCOMPILERERRORPOS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	256(%eax),%eax
	testl	%eax,%eax
	je	Lj2862
	jmp	Lj2864
Lj2864:
	movl	-4(%ebp),%eax
	movl	236(%eax),%eax
	testl	%eax,%eax
	je	Lj2862
	jmp	Lj2863
Lj2862:
	jmp	Lj2858
Lj2863:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	236(%eax),%edx
	movl	256(%ecx),%eax
	subl	%eax,%edx
	movl	%edx,-8(%ebp)
Lj2858:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__REGREPEAT$PCHAR$LONGINT$$LONGINT
_REGEXPR_TREGEXPR_$__REGREPEAT$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	224(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	232(%eax),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj2877
	jmp	Lj2878
Lj2877:
	movl	-8(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj2878:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$3,%al
	jb	Lj2882
	subb	$3,%al
	je	Lj2883
	subb	$5,%al
	je	Lj2884
	subb	$4,%al
	je	Lj2888
	decb	%al
	je	Lj2889
	subb	$7,%al
	je	Lj2885
	subb	$5,%al
	je	Lj2890
	decb	%al
	je	Lj2891
	decb	%al
	je	Lj2892
	decb	%al
	je	Lj2886
	decb	%al
	je	Lj2887
	jmp	Lj2882
Lj2883:
	movl	-28(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	addl	%eax,-20(%ebp)
	jmp	Lj2881
Lj2884:
	jmp	Lj2896
	.align 2
Lj2895:
	incl	-16(%ebp)
	incl	-20(%ebp)
Lj2896:
	movl	-16(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj2898
	jmp	Lj2897
Lj2898:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	je	Lj2895
	jmp	Lj2897
Lj2897:
	jmp	Lj2881
Lj2885:
	jmp	Lj2900
	.align 2
Lj2899:
	incl	-16(%ebp)
	incl	-20(%ebp)
Lj2900:
	movl	-16(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj2902
	jmp	Lj2901
Lj2902:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	je	Lj2899
	jmp	Lj2901
Lj2901:
	movl	-16(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj2903
	jmp	Lj2904
Lj2903:
	movl	-12(%ebp),%eax
	movl	304(%eax),%eax
	movl	-24(%ebp),%edx
	movb	(%edx),%dl
	movl	-12(%ebp),%ecx
	movl	300(%ecx),%ecx
	call	*%ecx
	movb	%al,-29(%ebp)
	jmp	Lj2912
	.align 2
Lj2911:
	incl	-16(%ebp)
	incl	-20(%ebp)
Lj2912:
	movl	-16(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj2914
	jmp	Lj2913
Lj2914:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	je	Lj2911
	jmp	Lj2915
Lj2915:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	cmpb	-29(%ebp),%al
	je	Lj2911
	jmp	Lj2913
Lj2913:
Lj2904:
	jmp	Lj2881
Lj2886:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	movl	4(%edx,%eax,4),%eax
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj2918
	jmp	Lj2919
Lj2918:
	jmp	Lj2867
Lj2919:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	movl	64(%edx,%eax,4),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj2922
	jmp	Lj2923
Lj2922:
	jmp	Lj2867
Lj2923:
	.align 2
Lj2924:
	movl	-36(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj2930
	.align 2
Lj2929:
	movl	-12(%ebp),%eax
	movl	232(%eax),%eax
	cmpl	-20(%ebp),%eax
	jbe	Lj2932
	jmp	Lj2934
Lj2934:
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj2932
	jmp	Lj2933
Lj2932:
	jmp	Lj2867
Lj2933:
	incl	-20(%ebp)
	incl	-24(%ebp)
Lj2930:
	movl	-24(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jb	Lj2929
	jmp	Lj2931
Lj2931:
	incl	-16(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,224(%edx)
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj2926
	jmp	Lj2924
Lj2926:
	jmp	Lj2881
Lj2887:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	movl	4(%edx,%eax,4),%eax
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj2939
	jmp	Lj2940
Lj2939:
	jmp	Lj2867
Lj2940:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	movl	64(%edx,%eax,4),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj2943
	jmp	Lj2944
Lj2943:
	jmp	Lj2867
Lj2944:
	.align 2
Lj2945:
	movl	-36(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj2951
	.align 2
Lj2950:
	movl	-12(%ebp),%eax
	movl	232(%eax),%eax
	cmpl	-20(%ebp),%eax
	jbe	Lj2953
	jmp	Lj2955
Lj2955:
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj2956
	jmp	Lj2954
Lj2956:
	movl	-20(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	304(%eax),%eax
	movl	-24(%ebp),%edx
	movb	(%edx),%dl
	movl	-12(%ebp),%ecx
	movl	300(%ecx),%ecx
	call	*%ecx
	cmpb	(%ebx),%al
	jne	Lj2953
	jmp	Lj2954
Lj2953:
	jmp	Lj2867
Lj2954:
	incl	-20(%ebp)
	incl	-24(%ebp)
Lj2951:
	movl	-24(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jb	Lj2950
	jmp	Lj2952
Lj2952:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,224(%eax)
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj2947
	jmp	Lj2945
Lj2947:
	jmp	Lj2881
Lj2888:
	jmp	Lj2964
	.align 2
Lj2963:
	incl	-16(%ebp)
	incl	-20(%ebp)
Lj2964:
	movl	-16(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj2967
	jmp	Lj2965
Lj2967:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	cmpb	$48,%al
	jae	Lj2966
	jmp	Lj2965
Lj2966:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	cmpb	$57,%al
	jbe	Lj2963
	jmp	Lj2965
Lj2965:
	jmp	Lj2881
Lj2889:
	jmp	Lj2969
	.align 2
Lj2968:
	incl	-16(%ebp)
	incl	-20(%ebp)
Lj2969:
	movl	-16(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj2971
	jmp	Lj2970
Lj2971:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	cmpb	$48,%al
	jb	Lj2968
	jmp	Lj2972
Lj2972:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	cmpb	$57,%al
	ja	Lj2968
	jmp	Lj2970
Lj2970:
	jmp	Lj2881
Lj2890:
	jmp	Lj2974
	.align 2
Lj2973:
	incl	-16(%ebp)
	incl	-20(%ebp)
Lj2974:
	movl	-16(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj2976
	jmp	Lj2975
Lj2976:
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	je	Lj2973
	jmp	Lj2978
Lj2978:
	movl	-24(%ebp),%eax
	incl	%eax
	movl	-20(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	je	Lj2973
	jmp	Lj2977
Lj2977:
	movl	-24(%ebp),%eax
	addl	$2,%eax
	movl	-20(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	je	Lj2973
	jmp	Lj2975
Lj2975:
	jmp	Lj2881
Lj2891:
	jmp	Lj2980
	.align 2
Lj2979:
	incl	-16(%ebp)
	incl	-20(%ebp)
Lj2980:
	movl	-16(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj2984
	jmp	Lj2981
Lj2984:
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj2983
	jmp	Lj2981
Lj2983:
	movl	-24(%ebp),%eax
	incl	%eax
	movl	-20(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj2982
	jmp	Lj2981
Lj2982:
	movl	-24(%ebp),%eax
	addl	$2,%eax
	movl	-20(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj2979
	jmp	Lj2981
Lj2981:
	jmp	Lj2881
Lj2892:
	jmp	Lj2986
	.align 2
Lj2985:
	incl	-16(%ebp)
	incl	-20(%ebp)
Lj2986:
	movl	-16(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj2988
	jmp	Lj2987
Lj2988:
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movzbl	(%eax),%eax
	btl	%eax,(%edx)
	jc	Lj2985
	jmp	Lj2987
Lj2987:
	jmp	Lj2881
Lj2882:
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	$1000,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj2867
Lj2881:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,224(%eax)
Lj2867:
	movl	-16(%ebp),%eax
	movl	-44(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__REGNEXT$PCHAR$$PCHAR
_REGEXPR_TREGEXPR_$__REGNEXT$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	leal	244(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj2999
	jmp	Lj3000
Lj2999:
	movl	$0,-12(%ebp)
	jmp	Lj2997
Lj3000:
	movl	-4(%ebp),%eax
	incl	%eax
	call	L_REGEXPR_ALIGNTOPTR$POINTER$$POINTER$stub
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj3007
	jmp	Lj3008
Lj3007:
	movl	$0,-12(%ebp)
	jmp	Lj3011
Lj3008:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj3011:
Lj2997:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN
_REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3021
	.align 2
Lj3020:
	movl	-16(%ebp),%eax
	incl	%eax
	call	L_REGEXPR_ALIGNTOPTR$POINTER$$POINTER$stub
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj3027
	jmp	Lj3028
Lj3027:
	movl	$0,-20(%ebp)
	jmp	Lj3031
Lj3028:
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
Lj3031:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj3061
	decb	%al
	je	Lj3037
	decb	%al
	je	Lj3038
	decb	%al
	je	Lj3041
	subb	$3,%al
	je	Lj3057
	decb	%al
	je	Lj3054
	decb	%al
	je	Lj3046
	decb	%al
	je	Lj3052
	decb	%al
	jb	Lj3035
	subb	$1,%al
	jbe	Lj3060
	decb	%al
	je	Lj3043
	decb	%al
	je	Lj3044
	subb	$5,%al
	je	Lj3060
	decb	%al
	je	Lj3053
	decb	%al
	je	Lj3045
	subb	$3,%al
	je	Lj3058
	decb	%al
	je	Lj3059
	decb	%al
	je	Lj3049
	decb	%al
	je	Lj3050
	decb	%al
	je	Lj3051
	decb	%al
	je	Lj3047
	decb	%al
	je	Lj3048
	decb	%al
	jb	Lj3035
	subb	$2,%al
	jbe	Lj3060
	decb	%al
	je	Lj3059
	decb	%al
	je	Lj3039
	decb	%al
	je	Lj3040
	decb	%al
	je	Lj3042
	decb	%al
	jb	Lj3035
	subb	$1,%al
	jbe	Lj3036
	subb	$2,%al
	jb	Lj3035
	subb	$13,%al
	jbe	Lj3055
	subb	$2,%al
	jb	Lj3035
	subb	$13,%al
	jbe	Lj3056
	jmp	Lj3035
Lj3036:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$37,%al
	seteb	%bl
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	224(%eax),%eax
	cmpl	228(%edx),%eax
	je	Lj3068
	jmp	Lj3069
Lj3069:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	decl	%eax
	movb	(%eax),%al
	movl	-8(%ebp),%edx
	movl	296(%edx),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	jle	Lj3068
	jmp	Lj3066
Lj3068:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj3067
	jmp	Lj3066
Lj3067:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	movl	-8(%ebp),%edx
	movl	296(%edx),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj3064
	jmp	Lj3066
Lj3066:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	224(%eax),%eax
	cmpl	228(%edx),%eax
	jne	Lj3079
	jmp	Lj3065
Lj3079:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	decl	%eax
	movb	(%eax),%al
	movl	-8(%ebp),%edx
	movl	296(%edx),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj3078
	jmp	Lj3065
Lj3078:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj3064
	jmp	Lj3084
Lj3084:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	movl	-8(%ebp),%edx
	movl	296(%edx),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	jle	Lj3064
	jmp	Lj3065
Lj3064:
	movb	$1,%al
	jmp	Lj3089
Lj3065:
	movb	$0,%al
Lj3089:
	xorb	%al,%bl
	testb	%bl,%bl
	jne	Lj3062
	jmp	Lj3063
Lj3062:
	jmp	Lj3014
Lj3063:
	jmp	Lj3034
Lj3037:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	224(%eax),%eax
	cmpl	228(%edx),%eax
	jne	Lj3090
	jmp	Lj3091
Lj3090:
	jmp	Lj3014
Lj3091:
	jmp	Lj3034
Lj3038:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj3092
	jmp	Lj3093
Lj3092:
	jmp	Lj3014
Lj3093:
	jmp	Lj3034
Lj3039:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	224(%eax),%eax
	cmpl	228(%edx),%eax
	ja	Lj3094
	jmp	Lj3095
Lj3094:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	decl	%eax
	movb	(%eax),%al
	movb	%al,-37(%ebp)
	movl	-8(%ebp),%eax
	movb	314(%eax),%al
	cmpb	-37(%ebp),%al
	jne	Lj3098
	jmp	Lj3101
Lj3101:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	decl	%eax
	movl	-8(%ebp),%edx
	cmpl	228(%edx),%eax
	jbe	Lj3098
	jmp	Lj3100
Lj3100:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	subl	$2,%eax
	movl	-8(%ebp),%edx
	movb	(%eax),%al
	cmpb	313(%edx),%al
	jne	Lj3098
	jmp	Lj3099
Lj3098:
	movl	-8(%ebp),%eax
	movb	313(%eax),%al
	cmpb	-37(%ebp),%al
	je	Lj3104
	jmp	Lj3103
Lj3104:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movl	-8(%ebp),%edx
	movb	(%eax),%al
	cmpb	314(%edx),%al
	je	Lj3102
	jmp	Lj3103
Lj3102:
	jmp	Lj3014
Lj3103:
	movl	-8(%ebp),%edx
	movzbl	-37(%ebp),%eax
	btl	%eax,320(%edx)
	jnc	Lj3105
	jmp	Lj3106
Lj3105:
	jmp	Lj3014
Lj3106:
Lj3099:
Lj3095:
	jmp	Lj3034
Lj3040:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj3107
	jmp	Lj3108
Lj3107:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	movb	%al,-37(%ebp)
	movl	-8(%ebp),%eax
	movb	313(%eax),%al
	cmpb	-37(%ebp),%al
	jne	Lj3111
	jmp	Lj3113
Lj3113:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	movb	(%eax),%al
	cmpb	314(%edx),%al
	jne	Lj3111
	jmp	Lj3112
Lj3111:
	movl	-8(%ebp),%eax
	movb	314(%eax),%al
	cmpb	-37(%ebp),%al
	je	Lj3117
	jmp	Lj3115
Lj3117:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	224(%eax),%eax
	cmpl	228(%edx),%eax
	ja	Lj3116
	jmp	Lj3115
Lj3116:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	decl	%eax
	movl	-8(%ebp),%edx
	movb	(%eax),%al
	cmpb	313(%edx),%al
	je	Lj3114
	jmp	Lj3115
Lj3114:
	jmp	Lj3014
Lj3115:
	movl	-8(%ebp),%edx
	movzbl	-37(%ebp),%eax
	btl	%eax,320(%edx)
	jnc	Lj3118
	jmp	Lj3119
Lj3118:
	jmp	Lj3014
Lj3119:
Lj3112:
Lj3108:
	jmp	Lj3034
Lj3041:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj3120
	jmp	Lj3121
Lj3120:
	jmp	Lj3014
Lj3121:
	movl	-8(%ebp),%eax
	incl	224(%eax)
	jmp	Lj3034
Lj3042:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj3122
	jmp	Lj3125
Lj3125:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movl	-8(%ebp),%edx
	movb	(%eax),%al
	cmpb	313(%edx),%al
	je	Lj3126
	jmp	Lj3124
Lj3126:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	movb	(%eax),%al
	cmpb	314(%edx),%al
	je	Lj3122
	jmp	Lj3124
Lj3124:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movl	-8(%ebp),%edx
	movzbl	(%eax),%eax
	btl	%eax,320(%edx)
	jc	Lj3122
	jmp	Lj3123
Lj3122:
	jmp	Lj3014
Lj3123:
	movl	-8(%ebp),%eax
	incl	224(%eax)
	jmp	Lj3034
Lj3043:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj3127
	jmp	Lj3130
Lj3130:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	cmpb	$48,%al
	jb	Lj3127
	jmp	Lj3129
Lj3129:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	cmpb	$57,%al
	ja	Lj3127
	jmp	Lj3128
Lj3127:
	jmp	Lj3014
Lj3128:
	movl	-8(%ebp),%eax
	incl	224(%eax)
	jmp	Lj3034
Lj3044:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj3131
	jmp	Lj3133
Lj3133:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	cmpb	$48,%al
	jae	Lj3134
	jmp	Lj3132
Lj3134:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	cmpb	$57,%al
	jbe	Lj3131
	jmp	Lj3132
Lj3131:
	jmp	Lj3014
Lj3132:
	movl	-8(%ebp),%eax
	incl	224(%eax)
	jmp	Lj3034
Lj3045:
	movl	-16(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movl	-28(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj3139
	jmp	Lj3138
Lj3139:
	movl	-8(%ebp),%eax
	movl	304(%eax),%eax
	movl	-28(%ebp),%edx
	movb	(%edx),%dl
	movl	-8(%ebp),%ecx
	movl	300(%ecx),%ecx
	call	*%ecx
	movl	-8(%ebp),%edx
	movl	224(%edx),%edx
	cmpb	(%edx),%al
	jne	Lj3137
	jmp	Lj3138
Lj3137:
	jmp	Lj3014
Lj3138:
	movl	-28(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj3153
	.align 2
Lj3152:
	incl	-36(%ebp)
	incl	-28(%ebp)
	movl	-28(%ebp),%eax
	movl	-36(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj3157
	jmp	Lj3156
Lj3157:
	movl	-8(%ebp),%eax
	movl	304(%eax),%eax
	movl	-28(%ebp),%edx
	movb	(%edx),%dl
	movl	-8(%ebp),%ecx
	movl	300(%ecx),%ecx
	call	*%ecx
	movl	-36(%ebp),%edx
	cmpb	(%edx),%al
	jne	Lj3155
	jmp	Lj3156
Lj3155:
	jmp	Lj3014
Lj3156:
	decl	-32(%ebp)
Lj3153:
	movl	-32(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj3152
	jmp	Lj3154
Lj3154:
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,224(%edx)
	jmp	Lj3034
Lj3046:
	movl	-16(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movl	-28(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj3164
	jmp	Lj3165
Lj3164:
	jmp	Lj3014
Lj3165:
	movl	-28(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj3175
	.align 2
Lj3174:
	incl	-36(%ebp)
	incl	-28(%ebp)
	movl	-28(%ebp),%eax
	movl	-36(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj3177
	jmp	Lj3178
Lj3177:
	jmp	Lj3014
Lj3178:
	decl	-32(%ebp)
Lj3175:
	movl	-32(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj3174
	jmp	Lj3176
Lj3176:
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,224(%edx)
	jmp	Lj3034
Lj3047:
	movl	-16(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movzbl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	4(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj3181
	jmp	Lj3182
Lj3181:
	jmp	Lj3014
Lj3182:
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	64(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj3183
	jmp	Lj3184
Lj3183:
	jmp	Lj3014
Lj3184:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	4(%eax,%edx,4),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj3190
	.align 2
Lj3189:
	movl	-8(%ebp),%eax
	movl	232(%eax),%eax
	cmpl	-36(%ebp),%eax
	jbe	Lj3192
	jmp	Lj3194
Lj3194:
	movl	-36(%ebp),%eax
	movl	-28(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj3192
	jmp	Lj3193
Lj3192:
	jmp	Lj3014
Lj3193:
	incl	-36(%ebp)
	incl	-28(%ebp)
Lj3190:
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	64(%eax,%edx,4),%eax
	cmpl	-28(%ebp),%eax
	ja	Lj3189
	jmp	Lj3191
Lj3191:
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,224(%eax)
	jmp	Lj3034
Lj3048:
	movl	-16(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movzbl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	4(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj3199
	jmp	Lj3200
Lj3199:
	jmp	Lj3014
Lj3200:
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	64(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj3201
	jmp	Lj3202
Lj3201:
	jmp	Lj3014
Lj3202:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	4(%eax,%edx,4),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj3208
	.align 2
Lj3207:
	movl	-8(%ebp),%eax
	movl	232(%eax),%eax
	cmpl	-36(%ebp),%eax
	jbe	Lj3210
	jmp	Lj3212
Lj3212:
	movl	-36(%ebp),%eax
	movl	-28(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj3213
	jmp	Lj3211
Lj3213:
	movl	-36(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	304(%eax),%eax
	movl	-28(%ebp),%edx
	movb	(%edx),%dl
	movl	-8(%ebp),%ecx
	movl	300(%ecx),%ecx
	call	*%ecx
	cmpb	(%ebx),%al
	jne	Lj3210
	jmp	Lj3211
Lj3210:
	jmp	Lj3014
Lj3211:
	incl	-36(%ebp)
	incl	-28(%ebp)
Lj3208:
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	64(%eax,%edx,4),%eax
	cmpl	-28(%ebp),%eax
	ja	Lj3207
	jmp	Lj3209
Lj3209:
	movl	-8(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,224(%edx)
	jmp	Lj3034
Lj3049:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj3220
	jmp	Lj3222
Lj3222:
	movl	-16(%ebp),%edx
	incl	%edx
	addl	$4,%edx
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%edx),%dl
	cmpb	(%eax),%dl
	jne	Lj3224
	jmp	Lj3221
Lj3224:
	movl	-16(%ebp),%edx
	incl	%edx
	addl	$4,%edx
	incl	%edx
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%edx),%dl
	cmpb	(%eax),%dl
	jne	Lj3223
	jmp	Lj3221
Lj3223:
	movl	-16(%ebp),%edx
	incl	%edx
	addl	$4,%edx
	addl	$2,%edx
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%edx),%dl
	cmpb	(%eax),%dl
	jne	Lj3220
	jmp	Lj3221
Lj3220:
	jmp	Lj3014
Lj3221:
	movl	-8(%ebp),%eax
	incl	224(%eax)
	jmp	Lj3034
Lj3050:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj3225
	jmp	Lj3229
Lj3229:
	movl	-16(%ebp),%edx
	incl	%edx
	addl	$4,%edx
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%edx),%dl
	cmpb	(%eax),%dl
	je	Lj3225
	jmp	Lj3228
Lj3228:
	movl	-16(%ebp),%edx
	incl	%edx
	addl	$4,%edx
	incl	%edx
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%edx),%dl
	cmpb	(%eax),%dl
	je	Lj3225
	jmp	Lj3227
Lj3227:
	movl	-16(%ebp),%edx
	incl	%edx
	addl	$4,%edx
	addl	$2,%edx
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%edx),%dl
	cmpb	(%eax),%dl
	je	Lj3225
	jmp	Lj3226
Lj3225:
	jmp	Lj3014
Lj3226:
	movl	-8(%ebp),%eax
	incl	224(%eax)
	jmp	Lj3034
Lj3051:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj3230
	jmp	Lj3232
Lj3232:
	movl	-16(%ebp),%edx
	incl	%edx
	addl	$4,%edx
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movzbl	(%eax),%eax
	btl	%eax,(%edx)
	jnc	Lj3230
	jmp	Lj3231
Lj3230:
	jmp	Lj3014
Lj3231:
	movl	-8(%ebp),%eax
	incl	224(%eax)
	jmp	Lj3034
Lj3052:
	jmp	Lj3034
Lj3053:
	jmp	Lj3034
Lj3054:
	jmp	Lj3034
Lj3055:
	movl	-16(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$39,%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	4(%edx,%eax,4),%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movl	%eax,4(%edx,%ecx,4)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj3245
	jmp	Lj3246
Lj3245:
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	-36(%ebp),%ecx
	movl	%ecx,4(%edx,%eax,4)
Lj3246:
	jmp	Lj3014
	jmp	Lj3034
Lj3056:
	movl	-16(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$54,%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	64(%eax,%edx,4),%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movl	%eax,64(%ecx,%edx,4)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj3261
	jmp	Lj3262
Lj3261:
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%ecx
	movl	-36(%ebp),%edx
	movl	%edx,64(%eax,%ecx,4)
Lj3262:
	jmp	Lj3014
	jmp	Lj3034
Lj3057:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	cmpb	$6,%al
	jne	Lj3265
	jmp	Lj3266
Lj3265:
	movl	-16(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj3269
Lj3266:
	.align 2
Lj3270:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-16(%ebp),%edx
	incl	%edx
	addl	$4,%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj3281
	jmp	Lj3282
Lj3281:
	jmp	Lj3014
Lj3282:
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,224(%eax)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__REGNEXT$PCHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj3272
	jmp	Lj3291
Lj3291:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$6,%al
	jne	Lj3272
	jmp	Lj3270
Lj3272:
	jmp	Lj3014
Lj3269:
	jmp	Lj3034
Lj3058:
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	incl	164(%eax)
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	cmpl	$10,%eax
	jg	Lj3294
	jmp	Lj3295
Lj3294:
	movl	-8(%ebp),%eax
	movl	$1014,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj3014
Lj3295:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	movl	$0,120(%edx,%eax,4)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,164(%eax)
	cmpb	$0,-9(%ebp)
	jne	Lj3312
	jmp	Lj3313
Lj3312:
	jmp	Lj3014
Lj3313:
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,224(%eax)
	jmp	Lj3014
	jmp	Lj3034
Lj3059:
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	cmpl	$0,%eax
	jle	Lj3316
	jmp	Lj3317
Lj3316:
	movl	-8(%ebp),%eax
	movl	$1015,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj3014
Lj3317:
	movl	-16(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	addl	$8,%eax
	call	L_REGEXPR_ALIGNTOPTR$POINTER$$POINTER$stub
	movl	-16(%ebp),%edx
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-28(%ebp)
	movl	-16(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	call	L_REGEXPR_ALIGNTOINT$POINTER$$POINTER$stub
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-16(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	addl	$4,%eax
	call	L_REGEXPR_ALIGNTOPTR$POINTER$$POINTER$stub
	movl	(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	movl	120(%edx,%eax,4),%eax
	cmpl	-44(%ebp),%eax
	jge	Lj3336
	jmp	Lj3337
Lj3336:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$24,%al
	je	Lj3338
	jmp	Lj3339
Lj3338:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	movl	120(%edx,%eax,4),%eax
	cmpl	-48(%ebp),%eax
	jl	Lj3340
	jmp	Lj3341
Lj3340:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	incl	120(%edx,%eax,4)
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,164(%eax)
	cmpb	$0,-9(%ebp)
	jne	Lj3352
	jmp	Lj3353
Lj3352:
	jmp	Lj3014
Lj3353:
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,224(%eax)
Lj3341:
	movl	-8(%ebp),%eax
	decl	164(%eax)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj3362
	jmp	Lj3363
Lj3362:
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,224(%eax)
Lj3363:
	jmp	Lj3014
	jmp	Lj3366
Lj3339:
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj3373
	jmp	Lj3374
Lj3373:
	jmp	Lj3014
	jmp	Lj3375
Lj3374:
	movl	-8(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,224(%edx)
Lj3375:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	movl	120(%edx,%eax,4),%eax
	cmpl	-48(%ebp),%eax
	jl	Lj3378
	jmp	Lj3379
Lj3378:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	incl	120(%edx,%eax,4)
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,164(%eax)
	cmpb	$0,-9(%ebp)
	jne	Lj3390
	jmp	Lj3391
Lj3390:
	jmp	Lj3014
Lj3391:
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,224(%eax)
Lj3379:
	movl	-8(%ebp),%eax
	decl	164(%eax)
	jmp	Lj3014
Lj3366:
	jmp	Lj3394
Lj3337:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	incl	120(%edx,%eax,4)
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,164(%eax)
	cmpb	$0,-9(%ebp)
	jne	Lj3405
	jmp	Lj3406
Lj3405:
	jmp	Lj3014
Lj3406:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	decl	120(%edx,%eax,4)
	movl	-8(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,224(%edx)
	jmp	Lj3014
Lj3394:
	jmp	Lj3034
Lj3060:
	movb	$0,-37(%ebp)
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	cmpb	$8,%al
	je	Lj3411
	jmp	Lj3412
Lj3411:
	movl	-20(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movb	(%eax),%al
	movb	%al,-37(%ebp)
Lj3412:
	movl	$2147483647,-48(%ebp)
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$10,%al
	je	Lj3417
	jmp	Lj3419
Lj3419:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$30,%al
	je	Lj3417
	jmp	Lj3418
Lj3417:
	movl	$0,-44(%ebp)
	jmp	Lj3422
Lj3418:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$11,%al
	je	Lj3423
	jmp	Lj3425
Lj3425:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$31,%al
	je	Lj3423
	jmp	Lj3424
Lj3423:
	movl	$1,-44(%ebp)
	jmp	Lj3428
Lj3424:
	movl	-16(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	call	L_REGEXPR_ALIGNTOPTR$POINTER$$POINTER$stub
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-16(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	addl	$4,%eax
	call	L_REGEXPR_ALIGNTOPTR$POINTER$$POINTER$stub
	movl	(%eax),%eax
	movl	%eax,-48(%ebp)
Lj3428:
Lj3422:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-16(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movl	%eax,-28(%ebp)
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$18,%al
	je	Lj3441
	jmp	Lj3443
Lj3443:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$32,%al
	je	Lj3441
	jmp	Lj3442
Lj3441:
	addl	$8,-28(%ebp)
Lj3442:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$31,%al
	je	Lj3444
	jmp	Lj3447
Lj3447:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$30,%al
	je	Lj3444
	jmp	Lj3446
Lj3446:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$32,%al
	je	Lj3444
	jmp	Lj3445
Lj3444:
	movl	-48(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__REGREPEAT$PCHAR$LONGINT$$LONGINT$stub
	movl	%eax,-48(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj3459
	.align 2
Lj3458:
	movl	-36(%ebp),%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,224(%eax)
	movb	-37(%ebp),%al
	testb	%al,%al
	je	Lj3463
	jmp	Lj3465
Lj3465:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	cmpb	-37(%ebp),%al
	je	Lj3463
	jmp	Lj3464
Lj3463:
	movl	-8(%ebp),%eax
	leal	124(%eax),%eax
	leal	-88(%ebp),%edx
	movl	$40,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	movl	%eax,-92(%ebp)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3474
	jmp	Lj3475
Lj3474:
	movb	$1,-9(%ebp)
	jmp	Lj3014
Lj3475:
	movl	-8(%ebp),%eax
	leal	124(%eax),%edx
	leal	-88(%ebp),%eax
	movl	$40,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%edx
	movl	%edx,164(%eax)
Lj3464:
	incl	-32(%ebp)
Lj3459:
	movl	-32(%ebp),%eax
	cmpl	-48(%ebp),%eax
	jle	Lj3458
	jmp	Lj3460
Lj3460:
	jmp	Lj3014
	jmp	Lj3490
Lj3445:
	movl	-48(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__REGREPEAT$PCHAR$LONGINT$$LONGINT$stub
	movl	%eax,-32(%ebp)
	jmp	Lj3500
	.align 2
Lj3499:
	movb	-37(%ebp),%al
	testb	%al,%al
	je	Lj3502
	jmp	Lj3504
Lj3504:
	movl	-8(%ebp),%eax
	movl	224(%eax),%eax
	movb	(%eax),%al
	cmpb	-37(%ebp),%al
	je	Lj3502
	jmp	Lj3503
Lj3502:
	movl	-8(%ebp),%eax
	leal	124(%eax),%eax
	leal	-88(%ebp),%edx
	movl	$40,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	164(%eax),%eax
	movl	%eax,-92(%ebp)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3513
	jmp	Lj3514
Lj3513:
	movb	$1,-9(%ebp)
	jmp	Lj3014
Lj3514:
	movl	-8(%ebp),%eax
	leal	124(%eax),%edx
	leal	-88(%ebp),%eax
	movl	$40,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%edx
	movl	%edx,164(%eax)
Lj3503:
	decl	-32(%ebp)
	movl	-36(%ebp),%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,224(%eax)
Lj3500:
	movl	-32(%ebp),%eax
	cmpl	-44(%ebp),%eax
	jge	Lj3499
	jmp	Lj3501
Lj3501:
	jmp	Lj3014
Lj3490:
	jmp	Lj3034
Lj3061:
	movb	$1,-9(%ebp)
	jmp	Lj3014
	jmp	Lj3034
Lj3035:
	movl	-8(%ebp),%eax
	movl	$1001,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj3014
Lj3034:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj3021:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3020
	jmp	Lj3022
Lj3022:
	movl	-8(%ebp),%eax
	movl	$1002,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
Lj3014:
	movb	-9(%ebp),%al
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__FILLFIRSTCHARSET$PCHAR
_REGEXPR_TREGEXPR_$__FILLFIRSTCHARSET$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$200,%esp
	movl	%ebx,-196(%ebp)
	movl	%esi,-192(%ebp)
	movl	%edi,-188(%ebp)
	call	Lj3544
Lj3544:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj3548
	.align 2
Lj3547:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__REGNEXT$PCHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj3581
	decb	%al
	je	Lj3559
	decb	%al
	je	Lj3560
	decb	%al
	je	Lj3562
	subb	$3,%al
	je	Lj3575
	decb	%al
	je	Lj3572
	decb	%al
	je	Lj3566
	decb	%al
	je	Lj3570
	decb	%al
	je	Lj3578
	decb	%al
	je	Lj3579
	decb	%al
	je	Lj3563
	decb	%al
	je	Lj3564
	subb	$5,%al
	je	Lj3580
	decb	%al
	je	Lj3571
	decb	%al
	je	Lj3565
	subb	$3,%al
	je	Lj3576
	decb	%al
	je	Lj3577
	decb	%al
	je	Lj3568
	decb	%al
	je	Lj3569
	decb	%al
	je	Lj3567
	decb	%al
	jb	Lj3557
	subb	$1,%al
	jbe	Lj3558
	decb	%al
	je	Lj3578
	decb	%al
	je	Lj3579
	decb	%al
	je	Lj3580
	decb	%al
	je	Lj3577
	decb	%al
	je	Lj3559
	decb	%al
	je	Lj3560
	decb	%al
	je	Lj3562
	decb	%al
	jb	Lj3557
	subb	$1,%al
	jbe	Lj3561
	subb	$2,%al
	jb	Lj3557
	subb	$13,%al
	jbe	Lj3573
	subb	$2,%al
	jb	Lj3557
	subb	$13,%al
	jbe	Lj3574
	jmp	Lj3557
Lj3558:
	movl	-8(%ebp),%eax
	leal	192(%eax),%edi
	movl	L_$REGEXPR$_Ld131$non_lazy_ptr-Lj3544(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	jmp	Lj3543
	jmp	Lj3556
Lj3559:
	jmp	Lj3556
Lj3560:
	movl	-8(%ebp),%eax
	orl	$1,192(%eax)
	movl	-8(%ebp),%eax
	movl	$5,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMODIFIER$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3584
	jmp	Lj3585
Lj3584:
	movl	-8(%ebp),%eax
	movl	308(%eax),%eax
	testl	%eax,%eax
	jne	Lj3592
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj3544(%ebx),%edx
	movl	%edx,%eax
Lj3592:
	movl	%eax,-20(%ebp)
	jmp	Lj3594
	.align 2
Lj3593:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	btsl	%eax,192(%edx)
	incl	-20(%ebp)
Lj3594:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj3593
	jmp	Lj3595
Lj3595:
Lj3585:
	jmp	Lj3543
	jmp	Lj3556
Lj3561:
	jmp	Lj3556
Lj3562:
	movl	-8(%ebp),%eax
	leal	192(%eax),%edi
	movl	L_$REGEXPR$_Ld131$non_lazy_ptr-Lj3544(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	jmp	Lj3543
	jmp	Lj3556
Lj3563:
	movl	$32,(%esp)
	movl	L_$REGEXPR$_Ld132$non_lazy_ptr-Lj3544(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	192(%eax),%eax
	leal	-56(%ebp),%ecx
	call	Lfpc_varset_add_sets$stub
	movl	-8(%ebp),%eax
	leal	192(%eax),%edi
	leal	-56(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	jmp	Lj3543
	jmp	Lj3556
Lj3564:
	movl	$32,(%esp)
	movl	L_$REGEXPR$_Ld133$non_lazy_ptr-Lj3544(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	192(%eax),%eax
	leal	-56(%ebp),%ecx
	call	Lfpc_varset_add_sets$stub
	movl	-8(%ebp),%eax
	leal	192(%eax),%edi
	leal	-56(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	jmp	Lj3543
	jmp	Lj3556
Lj3565:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movzbl	(%eax),%eax
	btsl	%eax,192(%edx)
	movl	-8(%ebp),%esi
	movl	-12(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movb	(%eax),%dl
	movl	-8(%ebp),%eax
	movl	304(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	300(%ecx),%ecx
	call	*%ecx
	movzbl	%al,%eax
	btsl	%eax,192(%esi)
	jmp	Lj3543
	jmp	Lj3556
Lj3566:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movzbl	(%eax),%eax
	btsl	%eax,192(%edx)
	jmp	Lj3543
	jmp	Lj3556
Lj3567:
	movl	$32,(%esp)
	movl	-12(%ebp),%edx
	incl	%edx
	addl	$4,%edx
	movl	-8(%ebp),%eax
	leal	192(%eax),%eax
	leal	-56(%ebp),%ecx
	call	Lfpc_varset_add_sets$stub
	movl	-8(%ebp),%eax
	leal	192(%eax),%edi
	leal	-56(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	jmp	Lj3543
	jmp	Lj3556
Lj3568:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movzbl	(%eax),%eax
	btsl	%eax,192(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	incl	%eax
	movzbl	(%eax),%eax
	btsl	%eax,192(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	addl	$2,%eax
	movzbl	(%eax),%eax
	btsl	%eax,192(%edx)
	jmp	Lj3543
	jmp	Lj3556
Lj3569:
	movl	$32,(%esp)
	movl	-12(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movzbl	(%eax),%eax
	leal	-184(%ebp),%ecx
	movl	$32,%edx
	call	Lfpc_varset_create_element$stub
	leal	-184(%ebp),%eax
	movl	-12(%ebp),%edx
	incl	%edx
	addl	$4,%edx
	incl	%edx
	movzbl	(%edx),%ecx
	leal	-152(%ebp),%edx
	call	Lfpc_varset_set$stub
	leal	-152(%ebp),%eax
	movl	$32,(%esp)
	movl	-12(%ebp),%edx
	incl	%edx
	addl	$4,%edx
	addl	$2,%edx
	movzbl	(%edx),%ecx
	leal	-120(%ebp),%edx
	call	Lfpc_varset_set$stub
	leal	-120(%ebp),%edx
	movl	$32,(%esp)
	movl	L_$REGEXPR$_Ld131$non_lazy_ptr-Lj3544(%ebx),%eax
	leal	-88(%ebp),%ecx
	call	Lfpc_varset_sub_sets$stub
	leal	-88(%ebp),%edx
	movl	$32,(%esp)
	movl	-8(%ebp),%eax
	leal	192(%eax),%eax
	leal	-56(%ebp),%ecx
	call	Lfpc_varset_add_sets$stub
	movl	-8(%ebp),%eax
	leal	192(%eax),%edi
	leal	-56(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	jmp	Lj3543
	jmp	Lj3556
Lj3570:
	jmp	Lj3556
Lj3571:
	jmp	Lj3556
Lj3572:
	jmp	Lj3556
Lj3573:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__FILLFIRSTCHARSET$PCHAR$stub
	jmp	Lj3543
	jmp	Lj3556
Lj3574:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__FILLFIRSTCHARSET$PCHAR$stub
	jmp	Lj3543
	jmp	Lj3556
Lj3575:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$6,%al
	jne	Lj3680
	jmp	Lj3681
Lj3680:
	movl	-12(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3684
Lj3681:
	.align 2
Lj3685:
	movl	-12(%ebp),%edx
	incl	%edx
	addl	$4,%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__FILLFIRSTCHARSET$PCHAR$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__REGNEXT$PCHAR$$PCHAR$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3687
	jmp	Lj3698
Lj3698:
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	cmpb	$6,%al
	jne	Lj3687
	jmp	Lj3685
Lj3687:
	jmp	Lj3543
Lj3684:
	jmp	Lj3556
Lj3576:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__FILLFIRSTCHARSET$PCHAR$stub
	jmp	Lj3543
	jmp	Lj3556
Lj3577:
	movl	-12(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	addl	$8,%eax
	call	L_REGEXPR_ALIGNTOPTR$POINTER$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	call	L_REGEXPR_ALIGNTOPTR$POINTER$$POINTER$stub
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__FILLFIRSTCHARSET$PCHAR$stub
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj3715
	jmp	Lj3716
Lj3715:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__FILLFIRSTCHARSET$PCHAR$stub
Lj3716:
	jmp	Lj3543
	jmp	Lj3556
Lj3578:
	movl	-12(%ebp),%edx
	incl	%edx
	addl	$4,%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__FILLFIRSTCHARSET$PCHAR$stub
	jmp	Lj3556
Lj3579:
	movl	-12(%ebp),%edx
	incl	%edx
	addl	$4,%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__FILLFIRSTCHARSET$PCHAR$stub
	jmp	Lj3543
	jmp	Lj3556
Lj3580:
	movl	-12(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	addl	$8,%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	addl	$4,%eax
	call	L_REGEXPR_ALIGNTOPTR$POINTER$$POINTER$stub
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__FILLFIRSTCHARSET$PCHAR$stub
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3739
	jmp	Lj3740
Lj3739:
	jmp	Lj3543
Lj3740:
	jmp	Lj3556
Lj3581:
	movl	-8(%ebp),%eax
	leal	192(%eax),%edi
	movl	L_$REGEXPR$_Ld131$non_lazy_ptr-Lj3544(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	jmp	Lj3543
	jmp	Lj3556
Lj3557:
	movl	-8(%ebp),%eax
	movl	$1001,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj3543
Lj3556:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj3548:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3547
	jmp	Lj3549
Lj3549:
Lj3543:
	movl	-196(%ebp),%ebx
	movl	-192(%ebp),%esi
	movl	-188(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__EXEC$ANSISTRING$$BOOLEAN
_REGEXPR_TREGEXPR_$__EXEC$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__SETINPUTSTRING$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	L_REGEXPR_TREGEXPR_$__EXECPRIM$LONGINT$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__EXEC$LONGINT$$BOOLEAN
_REGEXPR_TREGEXPR_$__EXEC$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__EXECPRIM$LONGINT$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__EXECPOS$LONGINT$$BOOLEAN
_REGEXPR_TREGEXPR_$__EXECPOS$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__EXECPRIM$LONGINT$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__EXECPRIM$LONGINT$$BOOLEAN
_REGEXPR_TREGEXPR_$__EXECPRIM$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_EXECPRIM$LONGINT$$BOOLEAN_CLEARMATCHS$stub
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__ISPROGRAMMOK$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3787
	jmp	Lj3788
Lj3787:
	jmp	Lj3777
Lj3788:
	movl	-8(%ebp),%eax
	cmpl	$0,272(%eax)
	jne	Lj3792
	jmp	Lj3791
Lj3791:
	movl	-8(%ebp),%eax
	movl	$1005,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj3777
Lj3792:
	movl	-8(%ebp),%eax
	movl	272(%eax),%eax
	call	Lfpc_pchar_length$stub
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj3801
	jmp	Lj3802
Lj3801:
	movl	-8(%ebp),%eax
	movl	$1006,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj3777
Lj3802:
	movl	-24(%ebp),%eax
	incl	%eax
	cmpl	-4(%ebp),%eax
	jl	Lj3807
	jmp	Lj3808
Lj3807:
	jmp	Lj3777
Lj3808:
	movl	-8(%ebp),%eax
	movl	272(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	172(%eax),%eax
	testl	%eax,%eax
	jne	Lj3811
	jmp	Lj3812
Lj3811:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	.align 2
Lj3815:
	movl	-8(%ebp),%eax
	movl	172(%eax),%eax
	movb	(%eax),%dl
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3824
	jmp	Lj3825
Lj3824:
	movl	-8(%ebp),%eax
	movl	176(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	172(%eax),%edx
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj3826
	jmp	Lj3827
Lj3826:
	jmp	Lj3817
Lj3827:
	incl	-16(%ebp)
Lj3825:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj3817
	jmp	Lj3815
Lj3817:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj3834
	jmp	Lj3835
Lj3834:
	jmp	Lj3777
Lj3835:
Lj3812:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	272(%eax),%eax
	movl	%eax,228(%edx)
	movl	-8(%ebp),%eax
	movl	272(%eax),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,232(%eax)
	movl	-8(%ebp),%eax
	movl	$0,164(%eax)
	movl	-8(%ebp),%eax
	movb	169(%eax),%al
	testb	%al,%al
	jne	Lj3842
	jmp	Lj3843
Lj3842:
	movl	-20(%ebp),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_EXECPRIM$LONGINT$$BOOLEAN_REGMATCH$PCHAR$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	jmp	Lj3777
Lj3843:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movb	168(%eax),%al
	testb	%al,%al
	jne	Lj3852
	jmp	Lj3853
Lj3852:
	.align 2
Lj3854:
	movl	-8(%ebp),%eax
	movb	168(%eax),%dl
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3863
	jmp	Lj3864
Lj3863:
	movl	-16(%ebp),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_EXECPRIM$LONGINT$$BOOLEAN_REGMATCH$PCHAR$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj3871
	jmp	Lj3872
Lj3871:
	jmp	Lj3777
	jmp	Lj3873
Lj3872:
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_EXECPRIM$LONGINT$$BOOLEAN_CLEARMATCHS$stub
Lj3873:
	incl	-16(%ebp)
Lj3864:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj3856
	jmp	Lj3854
Lj3856:
	jmp	Lj3876
Lj3853:
	.align 2
Lj3877:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movzbl	(%eax),%eax
	btl	%eax,192(%edx)
	jc	Lj3880
	jmp	Lj3881
Lj3880:
	movl	-16(%ebp),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_EXECPRIM$LONGINT$$BOOLEAN_REGMATCH$PCHAR$$BOOLEAN$stub
	movb	%al,-9(%ebp)
Lj3881:
	cmpb	$0,-9(%ebp)
	jne	Lj3888
	jmp	Lj3890
Lj3890:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj3888
	jmp	Lj3889
Lj3888:
	jmp	Lj3777
	jmp	Lj3891
Lj3889:
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_EXECPRIM$LONGINT$$BOOLEAN_CLEARMATCHS$stub
Lj3891:
	incl	-16(%ebp)
	jmp	Lj3877
Lj3876:
Lj3777:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$_EXECPRIM$LONGINT$$BOOLEAN_REGMATCH$PCHAR$$BOOLEAN
_REGEXPR_TREGEXPR_$_EXECPRIM$LONGINT$$BOOLEAN_REGMATCH$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%eax,224(%edx)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	264(%eax),%edx
	incl	%edx
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	call	L_REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj3902
	jmp	Lj3903
Lj3902:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	224(%eax),%eax
	movl	%eax,64(%edx)
Lj3903:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$_EXECPRIM$LONGINT$$BOOLEAN_CLEARMATCHS
_REGEXPR_TREGEXPR_$_EXECPRIM$LONGINT$$BOOLEAN_CLEARMATCHS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj3910:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	$0,4(%edx,%eax,4)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-8(%ebp),%edx
	movl	$0,64(%eax,%edx,4)
	cmpl	$14,-8(%ebp)
	jl	Lj3910
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__EXECNEXT$$BOOLEAN
_REGEXPR_TREGEXPR_$__EXECNEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj3921
	jmp	Lj3919
Lj3921:
	movl	-4(%ebp),%eax
	cmpl	$0,64(%eax)
	jne	Lj3920
	jmp	Lj3919
Lj3919:
	movl	-4(%ebp),%eax
	movl	$1007,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj3915
Lj3920:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	64(%eax),%ecx
	movl	272(%edx),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	64(%eax),%eax
	cmpl	4(%edx),%eax
	je	Lj3928
	jmp	Lj3929
Lj3928:
	incl	-12(%ebp)
Lj3929:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__EXECPRIM$LONGINT$$BOOLEAN$stub
	movb	%al,-5(%ebp)
Lj3915:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__GETINPUTSTRING$$ANSISTRING
_REGEXPR_TREGEXPR_$__GETINPUTSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,272(%eax)
	jne	Lj3939
	jmp	Lj3938
Lj3938:
	movl	-4(%ebp),%eax
	movl	$1008,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj3936
Lj3939:
	movl	-4(%ebp),%eax
	movl	272(%eax),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
Lj3936:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__SETINPUTSTRING$ANSISTRING
_REGEXPR_TREGEXPR_$__SETINPUTSTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj3952:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	$0,4(%eax,%edx,4)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$0,64(%edx,%eax,4)
	cmpl	$14,-16(%ebp)
	jl	Lj3952
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj3959
	movl	-4(%eax),%eax
Lj3959:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%eax
	leal	272(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3964
	jmp	Lj3965
Lj3964:
	movl	-8(%ebp),%eax
	movl	272(%eax),%edx
	movl	-12(%ebp),%ecx
	incl	%ecx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	jmp	Lj3972
Lj3965:
	movl	-8(%ebp),%eax
	movl	272(%eax),%eax
	movb	$0,(%eax)
Lj3972:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__SETLINESEPARATORS$ANSISTRING
_REGEXPR_TREGEXPR_$__SETLINESEPARATORS$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	308(%eax),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj3977
	jmp	Lj3978
Lj3977:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	308(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,308(%ebx)
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__INVALIDATEPROGRAMM$stub
Lj3978:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__SETLINEPAIREDSEPARATOR$ANSISTRING
_REGEXPR_TREGEXPR_$__SETLINEPAIREDSEPARATOR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj3991
	movl	-4(%eax),%eax
Lj3991:
	cmpl	$2,%eax
	je	Lj3989
	jmp	Lj3990
Lj3989:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	(%eax),%al
	cmpb	1(%edx),%al
	je	Lj3992
	jmp	Lj3993
Lj3992:
	movl	-8(%ebp),%eax
	movl	$128,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj3987
Lj3993:
	movl	-8(%ebp),%eax
	movb	312(%eax),%al
	testb	%al,%al
	je	Lj3998
	jmp	Lj4001
Lj4001:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	313(%eax),%al
	cmpb	(%edx),%al
	jne	Lj3998
	jmp	Lj4000
Lj4000:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	314(%eax),%al
	cmpb	1(%edx),%al
	jne	Lj3998
	jmp	Lj3999
Lj3998:
	movl	-8(%ebp),%eax
	movb	$1,312(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	movb	%al,313(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	movb	%al,314(%edx)
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__INVALIDATEPROGRAMM$stub
Lj3999:
	jmp	Lj4010
Lj3990:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj4013
	movl	-4(%eax),%eax
Lj4013:
	testl	%eax,%eax
	je	Lj4011
	jmp	Lj4012
Lj4011:
	movl	-8(%ebp),%eax
	cmpb	$0,312(%eax)
	jne	Lj4014
	jmp	Lj4015
Lj4014:
	movl	-8(%ebp),%eax
	movb	$0,312(%eax)
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__INVALIDATEPROGRAMM$stub
Lj4015:
	jmp	Lj4020
Lj4012:
	movl	-8(%ebp),%eax
	movl	$128,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
Lj4020:
Lj4010:
Lj3987:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__GETLINEPAIREDSEPARATOR$$ANSISTRING
_REGEXPR_TREGEXPR_$__GETLINEPAIREDSEPARATOR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$792,%esp
	movl	%ebx,-780(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,312(%eax)
	jne	Lj4027
	jmp	Lj4028
Lj4027:
	movl	-4(%ebp),%eax
	movzbl	314(%eax),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-520(%ebp)
	leal	-520(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movzbl	313(%eax),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-776(%ebp)
	leal	-776(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-264(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	jmp	Lj4041
Lj4028:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
Lj4041:
	movl	-780(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__SUBSTITUTE$ANSISTRING$$ANSISTRING
_REGEXPR_TREGEXPR_$__SUBSTITUTE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-120(%ebp)
	movl	%esi,-116(%ebp)
	call	Lj4045
Lj4045:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-112(%ebp)
	movl	$0,-108(%ebp)
	movl	$0,-104(%ebp)
	movl	$0,-100(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj4048
	movl	L_TC_REGEXPR_TREGEXPR_$_SUBSTITUTE$ANSISTRING$$ANSISTRING_defaultLineEnd$non_lazy_ptr-Lj4045(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_REGEXPR_TREGEXPR_$_SUBSTITUTE$ANSISTRING$$ANSISTRING_defaultLineEnd$non_lazy_ptr-Lj4045(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__ISPROGRAMMOK$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4053
	jmp	Lj4054
Lj4053:
	jmp	Lj4048
Lj4054:
	movl	-8(%ebp),%eax
	cmpl	$0,272(%eax)
	jne	Lj4058
	jmp	Lj4057
Lj4057:
	movl	-8(%ebp),%eax
	movl	$1005,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj4048
Lj4058:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj4065
	movl	-4(%eax),%eax
Lj4065:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj4066
	jmp	Lj4067
Lj4066:
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
	jmp	Lj4048
Lj4067:
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	$0,-44(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj4079
	.align 2
Lj4078:
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-49(%ebp)
	incl	-28(%ebp)
	movb	-49(%ebp),%al
	cmpb	$36,%al
	je	Lj4083
	jmp	Lj4084
Lj4083:
	leal	-28(%ebp),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_SUBSTITUTE$ANSISTRING$$ANSISTRING_PARSEVARNAME$PCHAR$$LONGINT$stub
	movl	%eax,-48(%ebp)
	jmp	Lj4091
Lj4084:
	movl	$-1,-48(%ebp)
Lj4091:
	movl	-48(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj4094
	jmp	Lj4095
Lj4094:
	movl	-48(%ebp),%eax
	cmpl	$15,%eax
	jl	Lj4099
	jmp	Lj4097
Lj4099:
	movl	-8(%ebp),%edx
	movl	-48(%ebp),%eax
	cmpl	$0,4(%edx,%eax,4)
	jne	Lj4098
	jmp	Lj4097
Lj4098:
	movl	-8(%ebp),%edx
	movl	-48(%ebp),%eax
	cmpl	$0,64(%edx,%eax,4)
	jne	Lj4096
	jmp	Lj4097
Lj4096:
	movl	-8(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	-8(%ebp),%esi
	movl	-48(%ebp),%ecx
	movl	64(%eax,%edx,4),%eax
	movl	4(%esi,%ecx,4),%edx
	subl	%edx,%eax
	addl	%eax,-44(%ebp)
Lj4097:
	jmp	Lj4100
Lj4095:
	movb	-49(%ebp),%al
	cmpb	$92,%al
	je	Lj4103
	jmp	Lj4102
Lj4103:
	movl	-28(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj4101
	jmp	Lj4102
Lj4101:
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-49(%ebp)
	incl	-28(%ebp)
	movb	-49(%ebp),%al
	cmpb	$76,%al
	jb	Lj4107
	subb	$76,%al
	je	Lj4109
	subb	$9,%al
	je	Lj4109
	subb	$23,%al
	je	Lj4109
	subb	$2,%al
	je	Lj4108
	subb	$7,%al
	je	Lj4109
	jmp	Lj4107
Lj4108:
	incl	-44(%ebp)
	jmp	Lj4106
Lj4109:
	jmp	Lj4106
Lj4107:
	incl	-44(%ebp)
Lj4106:
	jmp	Lj4110
Lj4102:
	incl	-44(%ebp)
Lj4110:
Lj4100:
Lj4079:
	movl	-28(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj4078
	jmp	Lj4080
Lj4080:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj4111
	jmp	Lj4112
Lj4111:
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
	jmp	Lj4048
Lj4112:
	movl	-44(%ebp),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	movb	$0,-50(%ebp)
	jmp	Lj4126
	.align 2
Lj4125:
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-49(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	incl	-28(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-36(%ebp)
	movb	-49(%ebp),%al
	cmpb	$36,%al
	je	Lj4134
	jmp	Lj4135
Lj4134:
	leal	-28(%ebp),%edx
	movl	%ebp,%eax
	call	L_REGEXPR_TREGEXPR_$_SUBSTITUTE$ANSISTRING$$ANSISTRING_PARSEVARNAME$PCHAR$$LONGINT$stub
	movl	%eax,-48(%ebp)
	jmp	Lj4142
Lj4135:
	movl	$-1,-48(%ebp)
Lj4142:
	movl	-48(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj4145
	jmp	Lj4146
Lj4145:
	movl	-8(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	4(%eax,%edx,4),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	64(%eax,%edx,4),%eax
	movl	%eax,-36(%ebp)
	movl	-48(%ebp),%eax
	cmpl	$15,%eax
	jge	Lj4151
	jmp	Lj4154
Lj4154:
	cmpl	$0,-32(%ebp)
	jne	Lj4153
	jmp	Lj4151
Lj4153:
	movl	-8(%ebp),%eax
	movl	-48(%ebp),%edx
	cmpl	$0,64(%eax,%edx,4)
	jne	Lj4152
	jmp	Lj4151
Lj4151:
	movl	-32(%ebp),%eax
	movl	%eax,-36(%ebp)
Lj4152:
	jmp	Lj4157
Lj4146:
	movb	-49(%ebp),%al
	cmpb	$92,%al
	je	Lj4160
	jmp	Lj4159
Lj4160:
	movl	-28(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj4158
	jmp	Lj4159
Lj4158:
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-49(%ebp)
	incl	-28(%ebp)
	movb	-49(%ebp),%al
	cmpb	$76,%al
	jb	Lj4164
	subb	$76,%al
	je	Lj4167
	subb	$9,%al
	je	Lj4169
	subb	$23,%al
	je	Lj4166
	subb	$2,%al
	je	Lj4165
	subb	$7,%al
	je	Lj4168
	jmp	Lj4164
Lj4165:
	movl	-56(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	incl	%eax
	movl	%eax,-36(%ebp)
	jmp	Lj4163
Lj4166:
	movb	$2,-50(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj4163
Lj4167:
	movb	$4,-50(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj4163
Lj4168:
	movb	$1,-50(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj4163
Lj4169:
	movb	$3,-50(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj4163
Lj4164:
	incl	-32(%ebp)
	incl	-36(%ebp)
Lj4163:
Lj4159:
Lj4157:
	movl	-32(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jb	Lj4190
	jmp	Lj4191
Lj4190:
	jmp	Lj4193
	.align 2
Lj4192:
	movb	-50(%ebp),%al
	cmpb	$1,%al
	jb	Lj4196
	decb	%al
	je	Lj4198
	decb	%al
	je	Lj4197
	decb	%al
	je	Lj4198
	decb	%al
	je	Lj4197
	jmp	Lj4196
Lj4197:
	movl	-32(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-49(%ebp)
	movb	-49(%ebp),%al
	cmpb	$128,%al
	jb	Lj4201
	jmp	Lj4202
Lj4201:
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	movb	-49(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-108(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-108(%ebp),%eax
	movl	%eax,-104(%ebp)
	leal	-100(%ebp),%edx
	movl	-104(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj4045(%ebx),%ecx
	movl	36(%ecx),%ecx
	call	*%ecx
	movl	-100(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-49(%ebp)
Lj4202:
	movl	-40(%ebp),%eax
	movb	-49(%ebp),%dl
	movb	%dl,(%eax)
	movb	-50(%ebp),%al
	cmpb	$2,%al
	je	Lj4217
	jmp	Lj4218
Lj4217:
	movb	$0,-50(%ebp)
Lj4218:
	jmp	Lj4195
Lj4198:
	movl	-32(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-49(%ebp)
	movb	-49(%ebp),%al
	cmpb	$128,%al
	jb	Lj4223
	jmp	Lj4224
Lj4223:
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%edx
	movb	-49(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-112(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-112(%ebp),%eax
	movl	%eax,-104(%ebp)
	leal	-108(%ebp),%edx
	movl	-104(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj4045(%ebx),%ecx
	movl	32(%ecx),%ecx
	call	*%ecx
	movl	-108(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-49(%ebp)
Lj4224:
	movl	-40(%ebp),%eax
	movb	-49(%ebp),%dl
	movb	%dl,(%eax)
	movb	-50(%ebp),%al
	cmpb	$1,%al
	je	Lj4239
	jmp	Lj4240
Lj4239:
	movb	$0,-50(%ebp)
Lj4240:
	jmp	Lj4195
Lj4196:
	movl	-40(%ebp),%edx
	movl	-32(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
Lj4195:
	incl	-40(%ebp)
	incl	-32(%ebp)
Lj4193:
	movl	-32(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jb	Lj4192
	jmp	Lj4194
Lj4194:
	movb	$0,-50(%ebp)
Lj4191:
Lj4126:
	movl	-28(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj4125
	jmp	Lj4127
Lj4127:
Lj4048:
	call	LFPC_POPADDRSTACK$stub
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-56(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-56(%ebp)
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj4049
	call	LFPC_RERAISE$stub
Lj4049:
	movl	-120(%ebp),%ebx
	movl	-116(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$_SUBSTITUTE$ANSISTRING$$ANSISTRING_PARSEVARNAME$PCHAR$$LONGINT
_REGEXPR_TREGEXPR_$_SUBSTITUTE$ANSISTRING$$ANSISTRING_PARSEVARNAME$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%eax),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj4259
	jmp	Lj4258
Lj4259:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$123,%al
	je	Lj4257
	jmp	Lj4258
Lj4257:
	movb	$1,-17(%ebp)
	jmp	Lj4260
Lj4258:
	movb	$0,-17(%ebp)
Lj4260:
	cmpb	$0,-17(%ebp)
	jne	Lj4261
	jmp	Lj4262
Lj4261:
	incl	-16(%ebp)
Lj4262:
	movl	-8(%ebp),%eax
	movl	-24(%eax),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj4265
	jmp	Lj4264
Lj4265:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$38,%al
	je	Lj4263
	jmp	Lj4264
Lj4263:
	incl	-16(%ebp)
	jmp	Lj4266
Lj4264:
	jmp	Lj4268
	.align 2
Lj4267:
	movl	-12(%ebp),%edx
	imull	$10,%edx
	movl	-16(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$48,%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	incl	-16(%ebp)
Lj4268:
	movl	-8(%ebp),%eax
	movl	-24(%eax),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj4272
	jmp	Lj4269
Lj4272:
	movl	-16(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj4273
Lj4273:
	jc	Lj4267
	jmp	Lj4269
Lj4269:
Lj4266:
	cmpb	$0,-17(%ebp)
	jne	Lj4274
	jmp	Lj4275
Lj4274:
	movl	-8(%ebp),%eax
	movl	-24(%eax),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj4278
	jmp	Lj4277
Lj4278:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$125,%al
	je	Lj4276
	jmp	Lj4277
Lj4276:
	incl	-16(%ebp)
	jmp	Lj4279
Lj4277:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
Lj4279:
Lj4275:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	(%eax),%edx
	je	Lj4282
	jmp	Lj4283
Lj4282:
	movl	$-1,-12(%ebp)
Lj4283:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__SPLIT$ANSISTRING$TSTRINGS
_REGEXPR_TREGEXPR_$__SPLIT$ANSISTRING$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj4290
	movl	$1,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__EXEC$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4295
	jmp	Lj4296
Lj4295:
	.align 2
Lj4301:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMATCHPOS$LONGINT$$LONGINT$stub
	movl	%eax,%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMATCHPOS$LONGINT$$LONGINT$stub
	movl	%eax,%ebx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMATCHLEN$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	%ebx,-16(%ebp)
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__EXECNEXT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4301
	jmp	Lj4303
Lj4303:
Lj4296:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj4290:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj4291
	call	LFPC_RERAISE$stub
Lj4291:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__REPLACE$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING
_REGEXPR_TREGEXPR_$__REPLACE$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj4346
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	$1,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__EXEC$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4353
	jmp	Lj4354
Lj4353:
	.align 2
Lj4359:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMATCHPOS$LONGINT$$LONGINT$stub
	movl	%eax,%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-60(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	cmpb	$0,12(%ebp)
	jne	Lj4380
	jmp	Lj4381
Lj4380:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__SUBSTITUTE$ANSISTRING$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	jmp	Lj4394
Lj4381:
	movl	-8(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj4394:
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMATCHPOS$LONGINT$$LONGINT$stub
	movl	%eax,%ebx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMATCHLEN$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	%ebx,-16(%ebp)
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__EXECNEXT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4359
	jmp	Lj4361
Lj4361:
Lj4354:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-60(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj4346:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj4347
	call	LFPC_RERAISE$stub
Lj4347:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__REPLACEEX$ANSISTRING$TREGEXPRREPLACEFUNCTION$$ANSISTRING
_REGEXPR_TREGEXPR_$__REPLACEEX$ANSISTRING$TREGEXPRREPLACEFUNCTION$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-24(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-80(%ebp)
	movl	$0,-76(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-8(%ebp)
	testl	%eax,%eax
	jne	Lj4429
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	$1,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__EXEC$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4436
	jmp	Lj4437
Lj4436:
	.align 2
Lj4442:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-72(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMATCHPOS$LONGINT$$LONGINT$stub
	movl	%eax,%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	movl	%eax,-68(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%ebx
	call	*%ebx
	movl	-80(%ebp),%eax
	movl	%eax,-64(%ebp)
	leal	-72(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMATCHPOS$LONGINT$$LONGINT$stub
	movl	%eax,%ebx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_REGEXPR_TREGEXPR_$__GETMATCHLEN$LONGINT$$LONGINT$stub
	addl	%eax,%ebx
	movl	%ebx,-16(%ebp)
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__EXECNEXT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4442
	jmp	Lj4444
Lj4444:
Lj4437:
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-80(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj4429:
	call	LFPC_POPADDRSTACK$stub
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4430
	call	LFPC_RERAISE$stub
Lj4430:
	movl	-84(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__REPLACE$ANSISTRING$TREGEXPRREPLACEFUNCTION$$ANSISTRING
_REGEXPR_TREGEXPR_$__REPLACE$ANSISTRING$TREGEXPRREPLACEFUNCTION$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-8(%ebp)
	testl	%eax,%eax
	jne	Lj4497
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__REPLACEEX$ANSISTRING$TREGEXPRREPLACEFUNCTION$$ANSISTRING$stub
Lj4497:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4498
	call	LFPC_RERAISE$stub
Lj4498:
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__DUMPOP$CHAR$$ANSISTRING
_REGEXPR_TREGEXPR_$__DUMPOP$CHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj4509
Lj4509:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj4536
	decb	%al
	je	Lj4512
	decb	%al
	je	Lj4513
	decb	%al
	je	Lj4518
	decb	%al
	je	Lj4526
	decb	%al
	je	Lj4527
	decb	%al
	je	Lj4530
	decb	%al
	je	Lj4535
	decb	%al
	je	Lj4531
	decb	%al
	je	Lj4533
	decb	%al
	je	Lj4541
	decb	%al
	je	Lj4542
	decb	%al
	je	Lj4522
	decb	%al
	je	Lj4523
	decb	%al
	je	Lj4520
	decb	%al
	je	Lj4521
	decb	%al
	je	Lj4524
	decb	%al
	je	Lj4525
	decb	%al
	je	Lj4543
	decb	%al
	je	Lj4534
	decb	%al
	je	Lj4532
	decb	%al
	je	Lj4528
	decb	%al
	je	Lj4529
	decb	%al
	je	Lj4544
	decb	%al
	je	Lj4545
	decb	%al
	je	Lj4547
	decb	%al
	je	Lj4548
	decb	%al
	je	Lj4549
	decb	%al
	je	Lj4537
	decb	%al
	je	Lj4538
	decb	%al
	je	Lj4550
	decb	%al
	je	Lj4551
	decb	%al
	je	Lj4552
	decb	%al
	je	Lj4546
	decb	%al
	je	Lj4514
	decb	%al
	je	Lj4515
	decb	%al
	je	Lj4519
	decb	%al
	je	Lj4516
	decb	%al
	je	Lj4517
	subb	$2,%al
	jb	Lj4511
	subb	$13,%al
	jbe	Lj4539
	subb	$2,%al
	jb	Lj4511
	subb	$13,%al
	jbe	Lj4540
	jmp	Lj4511
Lj4512:
	movl	L_$REGEXPR$_Ld136$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4513:
	movl	L_$REGEXPR$_Ld138$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4514:
	movl	L_$REGEXPR$_Ld140$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4515:
	movl	L_$REGEXPR$_Ld142$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4516:
	movl	L_$REGEXPR$_Ld144$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4517:
	movl	L_$REGEXPR$_Ld146$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4518:
	movl	L_$REGEXPR$_Ld148$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4519:
	movl	L_$REGEXPR$_Ld150$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4520:
	movl	L_$REGEXPR$_Ld152$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4521:
	movl	L_$REGEXPR$_Ld154$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4522:
	movl	L_$REGEXPR$_Ld156$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4523:
	movl	L_$REGEXPR$_Ld158$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4524:
	movl	L_$REGEXPR$_Ld160$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4525:
	movl	L_$REGEXPR$_Ld162$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4526:
	movl	L_$REGEXPR$_Ld164$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4527:
	movl	L_$REGEXPR$_Ld166$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4528:
	movl	L_$REGEXPR$_Ld168$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4529:
	movl	L_$REGEXPR$_Ld170$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4530:
	movl	L_$REGEXPR$_Ld172$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4531:
	movl	L_$REGEXPR$_Ld174$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4532:
	movl	L_$REGEXPR$_Ld176$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4533:
	movl	L_$REGEXPR$_Ld178$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4534:
	movl	L_$REGEXPR$_Ld180$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4535:
	movl	L_$REGEXPR$_Ld182$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4536:
	movl	L_$REGEXPR$_Ld184$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4537:
	movl	L_$REGEXPR$_Ld186$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4538:
	movl	L_$REGEXPR$_Ld188$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4539:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-4(%ebp),%eax
	subl	$39,%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%edx
	movl	$0,%ecx
	movl	L_$REGEXPR$_Ld190$non_lazy_ptr-Lj4509(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	jmp	Lj4510
Lj4540:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-4(%ebp),%eax
	subl	$54,%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%edx
	movl	$0,%ecx
	movl	L_$REGEXPR$_Ld192$non_lazy_ptr-Lj4509(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	jmp	Lj4510
Lj4541:
	movl	L_$REGEXPR$_Ld194$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4542:
	movl	L_$REGEXPR$_Ld196$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4543:
	movl	L_$REGEXPR$_Ld198$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4544:
	movl	L_$REGEXPR$_Ld200$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4545:
	movl	L_$REGEXPR$_Ld202$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4546:
	movl	L_$REGEXPR$_Ld204$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4547:
	movl	L_$REGEXPR$_Ld206$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4548:
	movl	L_$REGEXPR$_Ld208$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4549:
	movl	L_$REGEXPR$_Ld210$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4550:
	movl	L_$REGEXPR$_Ld212$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4551:
	movl	L_$REGEXPR$_Ld214$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4552:
	movl	L_$REGEXPR$_Ld216$non_lazy_ptr-Lj4509(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj4510
Lj4511:
	movl	-8(%ebp),%eax
	movl	$1011,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
Lj4510:
	movl	-12(%ebp),%eax
	movl	(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	L_$REGEXPR$_Ld218$non_lazy_ptr-Lj4509(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__DUMP$$ANSISTRING
_REGEXPR_TREGEXPR_$__DUMP$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-128(%ebp)
	movl	%esi,-124(%ebp)
	call	Lj4658
Lj4658:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-96(%ebp)
	movl	$0,-76(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj4659
	movl	-4(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__ISPROGRAMMOK$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4662
	jmp	Lj4663
Lj4662:
	jmp	Lj4659
Lj4663:
	movb	$8,-13(%ebp)
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj4673
	.align 2
Lj4672:
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-13(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	264(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-88(%ebp)
	movl	$0,-92(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-12(%ebp),%eax
	movb	(%eax),%dl
	leal	-96(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	%eax,%ecx
	movl	%esi,%eax
	call	L_REGEXPR_TREGEXPR_$__DUMPOP$CHAR$$ANSISTRING$stub
	movl	-96(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	$11,-84(%ebp)
	leal	-92(%ebp),%edx
	movl	$1,%ecx
	movl	L_$REGEXPR$_Ld220$non_lazy_ptr-Lj4658(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-76(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__REGNEXT$PCHAR$$PCHAR$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj4703
	jmp	Lj4704
Lj4703:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld222$non_lazy_ptr-Lj4658(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj4711
Lj4704:
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	ja	Lj4712
	jmp	Lj4713
Lj4712:
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj4716
Lj4713:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	negl	%eax
	movl	%eax,-28(%ebp)
Lj4716:
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	264(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-28(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-80(%ebp)
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	$0,%ecx
	movl	L_$REGEXPR$_Ld224$non_lazy_ptr-Lj4658(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-96(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj4711:
	addl	$5,-12(%ebp)
	movb	-13(%ebp),%al
	cmpb	$4,%al
	je	Lj4733
	jmp	Lj4739
Lj4739:
	movb	-13(%ebp),%al
	cmpb	$21,%al
	je	Lj4733
	jmp	Lj4738
Lj4738:
	movb	-13(%ebp),%al
	cmpb	$5,%al
	je	Lj4733
	jmp	Lj4737
Lj4737:
	movb	-13(%ebp),%al
	cmpb	$22,%al
	je	Lj4733
	jmp	Lj4736
Lj4736:
	movb	-13(%ebp),%al
	cmpb	$8,%al
	je	Lj4733
	jmp	Lj4735
Lj4735:
	movb	-13(%ebp),%al
	cmpb	$20,%al
	je	Lj4733
	jmp	Lj4734
Lj4733:
	jmp	Lj4741
	.align 2
Lj4740:
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	leal	-96(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-96(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	incl	-12(%ebp)
Lj4741:
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj4740
	jmp	Lj4742
Lj4742:
	incl	-12(%ebp)
Lj4734:
	movb	-13(%ebp),%al
	cmpb	$25,%al
	je	Lj4753
	jmp	Lj4755
Lj4755:
	movb	-13(%ebp),%al
	cmpb	$26,%al
	je	Lj4753
	jmp	Lj4754
Lj4753:
	movl	$1,-24(%ebp)
	decl	-24(%ebp)
	.align 2
Lj4758:
	incl	-24(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	leal	-96(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-96(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	incl	-12(%ebp)
	cmpl	$3,-24(%ebp)
	jl	Lj4758
Lj4754:
	movb	-13(%ebp),%al
	cmpb	$28,%al
	je	Lj4769
	jmp	Lj4771
Lj4771:
	movb	-13(%ebp),%al
	cmpb	$29,%al
	je	Lj4769
	jmp	Lj4770
Lj4769:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$REGEXPR$_Ld226$non_lazy_ptr-Lj4658(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	leal	-96(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-96(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	incl	-12(%ebp)
Lj4770:
	movb	-13(%ebp),%al
	cmpb	$27,%al
	je	Lj4782
	jmp	Lj4783
Lj4782:
	movb	$0,-29(%ebp)
	decb	-29(%ebp)
	.align 2
Lj4786:
	incb	-29(%ebp)
	movl	-12(%ebp),%eax
	movzbl	-29(%ebp),%edx
	btl	%edx,(%eax)
	jc	Lj4787
	jmp	Lj4788
Lj4787:
	movb	-29(%ebp),%al
	cmpb	$32,%al
	jb	Lj4789
	jmp	Lj4790
Lj4789:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$REGEXPR$_Ld228$non_lazy_ptr-Lj4658(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movzbl	-29(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-96(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	jmp	Lj4801
Lj4790:
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movb	-29(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-96(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj4801:
Lj4788:
	cmpb	$255,-29(%ebp)
	jb	Lj4786
	addl	$32,-12(%ebp)
Lj4783:
	movb	-13(%ebp),%al
	cmpb	$18,%al
	je	Lj4812
	jmp	Lj4814
Lj4814:
	movb	-13(%ebp),%al
	cmpb	$32,%al
	je	Lj4812
	jmp	Lj4813
Lj4812:
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	call	L_REGEXPR_ALIGNTOINT$POINTER$$POINTER$stub
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	$0,-92(%ebp)
	movl	-12(%ebp),%eax
	addl	$4,%eax
	call	L_REGEXPR_ALIGNTOINT$POINTER$$POINTER$stub
	movl	(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	$0,-84(%ebp)
	leal	-92(%ebp),%edx
	movl	$1,%ecx
	movl	L_$REGEXPR$_Ld230$non_lazy_ptr-Lj4658(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-96(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	addl	$8,-12(%ebp)
Lj4813:
	movb	-13(%ebp),%al
	cmpb	$24,%al
	je	Lj4833
	jmp	Lj4835
Lj4835:
	movb	-13(%ebp),%al
	cmpb	$33,%al
	je	Lj4833
	jmp	Lj4834
Lj4833:
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	264(%eax),%esi
	movl	-12(%ebp),%eax
	subl	%esi,%eax
	movl	%eax,%esi
	subl	$5,%esi
	movl	-12(%ebp),%eax
	addl	$8,%eax
	call	L_REGEXPR_ALIGNTOPTR$POINTER$$POINTER$stub
	movl	(%eax),%eax
	addl	%eax,%esi
	movl	%esi,-116(%ebp)
	movl	$0,-120(%ebp)
	movl	-12(%ebp),%eax
	call	L_REGEXPR_ALIGNTOINT$POINTER$$POINTER$stub
	movl	(%eax),%eax
	movl	%eax,-108(%ebp)
	movl	$0,-112(%ebp)
	movl	-12(%ebp),%eax
	addl	$4,%eax
	call	L_REGEXPR_ALIGNTOINT$POINTER$$POINTER$stub
	movl	(%eax),%eax
	movl	%eax,-100(%ebp)
	movl	$0,-104(%ebp)
	leal	-120(%ebp),%edx
	movl	$2,%ecx
	movl	L_$REGEXPR$_Ld232$non_lazy_ptr-Lj4658(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-96(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	addl	$12,-12(%ebp)
Lj4834:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld234$non_lazy_ptr-Lj4658(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj4673:
	movb	-13(%ebp),%al
	testb	%al,%al
	jne	Lj4672
	jmp	Lj4674
Lj4674:
	movl	-4(%ebp),%eax
	movb	168(%eax),%al
	testb	%al,%al
	jne	Lj4862
	jmp	Lj4863
Lj4862:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-108(%ebp)
	movl	L_$REGEXPR$_Ld236$non_lazy_ptr-Lj4658(%ebx),%eax
	movl	%eax,-104(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-4(%ebp),%eax
	movb	168(%eax),%al
	leal	-96(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-96(%ebp),%eax
	movl	%eax,-100(%ebp)
	leal	-108(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj4863:
	movl	-4(%ebp),%eax
	movb	169(%eax),%al
	testb	%al,%al
	jne	Lj4874
	jmp	Lj4875
Lj4874:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld238$non_lazy_ptr-Lj4658(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj4875:
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	testl	%eax,%eax
	jne	Lj4882
	jmp	Lj4883
Lj4882:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-108(%ebp)
	movl	L_$REGEXPR$_Ld240$non_lazy_ptr-Lj4658(%ebx),%eax
	movl	%eax,-104(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	leal	-96(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	movl	-96(%ebp),%eax
	movl	%eax,-100(%ebp)
	leal	-108(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj4883:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld242$non_lazy_ptr-Lj4658(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movb	$0,-29(%ebp)
	decb	-29(%ebp)
	.align 2
Lj4902:
	incb	-29(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-29(%ebp),%eax
	btl	%eax,192(%edx)
	jc	Lj4903
	jmp	Lj4904
Lj4903:
	movb	-29(%ebp),%al
	cmpb	$32,%al
	jb	Lj4905
	jmp	Lj4906
Lj4905:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-108(%ebp)
	movl	L_$REGEXPR$_Ld228$non_lazy_ptr-Lj4658(%ebx),%eax
	movl	%eax,-104(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movzbl	-29(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-96(%ebp),%eax
	movl	%eax,-100(%ebp)
	leal	-108(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	jmp	Lj4917
Lj4906:
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movb	-29(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-96(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj4917:
Lj4904:
	cmpb	$255,-29(%ebp)
	jb	Lj4902
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$REGEXPR$_Ld234$non_lazy_ptr-Lj4658(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj4659:
	call	LFPC_POPADDRSTACK$stub
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj4660
	call	LFPC_RERAISE$stub
Lj4660:
	movl	-128(%ebp),%ebx
	movl	-124(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_REGEXPR_TREGEXPR_$__ERROR$LONGINT
_REGEXPR_TREGEXPR_$__ERROR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	call	Lj4935
Lj4935:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj4936
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,276(%eax)
	movl	-4(%ebp),%eax
	cmpl	$1000,%eax
	jl	Lj4941
	jmp	Lj4942
Lj4941:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	-76(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	L_$REGEXPR$_Ld244$non_lazy_ptr-Lj4935(%ebx),%eax
	movl	%eax,-68(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__GETCOMPILERERRORPOS$$LONGINT$stub
	leal	-80(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	L_$REGEXPR$_Ld246$non_lazy_ptr-Lj4935(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-72(%ebp),%edx
	leal	-56(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-56(%ebp),%ecx
	movl	L_VMT_REGEXPR_EREGEXPR$non_lazy_ptr-Lj4935(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
	movl	%eax,-12(%ebp)
	jmp	Lj4969
Lj4942:
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	-80(%ebp),%ecx
	movl	L_VMT_REGEXPR_EREGEXPR$non_lazy_ptr-Lj4935(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
	movl	%eax,-12(%ebp)
Lj4969:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-8(%ebp),%eax
	call	L_REGEXPR_TREGEXPR_$__GETCOMPILERERRORPOS$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,16(%edx)
La1:
	movl	%ebp,%ecx
	leal	La1-Lj4935(%ebx),%edx
	movl	-12(%ebp),%eax
	call	LFPC_RAISEEXCEPTION$stub
Lj4936:
	call	LFPC_POPADDRSTACK$stub
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4937
	call	LFPC_RERAISE$stub
Lj4937:
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIT$_REGEXPR
_INIT$_REGEXPR:
.reference __REGEXPR_init
.globl	__REGEXPR_init
__REGEXPR_init:
.reference _INIT$_REGEXPR
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj2
Lj2:
	popl	%edx
	movl	L_VMT_REGEXPR_TREGEXPR$non_lazy_ptr-Lj2(%edx),%eax
	movl	%eax,-4(%ebp)
	movl	L_REGEXPR_TREGEXPR_$__INVERTCASEFUNCTION$CHAR$$CHAR$non_lazy_ptr-Lj2(%edx),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	L_TC_REGEXPR_REGEXPRINVERTCASEFUNCTION$non_lazy_ptr-Lj2(%edx),%eax
	movl	%ecx,(%eax)
	movl	-4(%ebp),%eax
	movl	L_TC_REGEXPR_REGEXPRINVERTCASEFUNCTION$non_lazy_ptr-Lj2(%edx),%ecx
	movl	%eax,4(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_REGEXPR
_FINALIZE$_REGEXPR:
.reference __REGEXPR_finalize_implicit
.globl	__REGEXPR_finalize_implicit
__REGEXPR_finalize_implicit:
.reference _FINALIZE$_REGEXPR
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj4991
Lj4991:
	popl	%ebx
	movl	L_TC_REGEXPR_REGEXPRSPACECHARS$non_lazy_ptr-Lj4991(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_REGEXPR_REGEXPRSPACECHARS$non_lazy_ptr-Lj4991(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_REGEXPR_REGEXPRWORDCHARS$non_lazy_ptr-Lj4991(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_REGEXPR_REGEXPRWORDCHARS$non_lazy_ptr-Lj4991(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_REGEXPR_REGEXPRLINESEPARATORS$non_lazy_ptr-Lj4991(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_REGEXPR_REGEXPRLINESEPARATORS$non_lazy_ptr-Lj4991(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_REGEXPR_REGEXPRLINEPAIREDSEPARATOR$non_lazy_ptr-Lj4991(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_REGEXPR_REGEXPRLINEPAIREDSEPARATOR$non_lazy_ptr-Lj4991(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_REGEXPR_QUOTEREGEXPRMETACHARS$ANSISTRING$$ANSISTRING_REGEXPRMETASET$non_lazy_ptr-Lj4991(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_REGEXPR_QUOTEREGEXPRMETACHARS$ANSISTRING$$ANSISTRING_REGEXPRMETASET$non_lazy_ptr-Lj4991(%ebx),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$REGEXPR$_Ld248
_$REGEXPR$_Ld248:
	.byte	8
	.ascii	"TRegExpr"

.const_data
	.align 2
.globl	_VMT_REGEXPR_TREGEXPR
_VMT_REGEXPR_TREGEXPR:
	.long	352,-352
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$REGEXPR$_Ld248
	.long	0,0
	.long	_$REGEXPR$_Ld249
	.long	_RTTI_REGEXPR_TREGEXPR
	.long	_INIT_REGEXPR_TREGEXPR
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_REGEXPR_TREGEXPR_$__DESTROY
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
	.long	_REGEXPR_TREGEXPR_$__ERROR$LONGINT
	.long	_REGEXPR_TREGEXPR_$__ERRORMSG$LONGINT$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$REGEXPR$_Ld251
_$REGEXPR$_Ld251:
	.byte	8
	.ascii	"ERegExpr"

.const_data
	.align 2
.globl	_VMT_REGEXPR_EREGEXPR
_VMT_REGEXPR_EREGEXPR:
	.long	20,-20
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$REGEXPR$_Ld251
	.long	0,0
	.long	_$REGEXPR$_Ld252
	.long	_RTTI_REGEXPR_EREGEXPR
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

.data
	.align 2
.globl	_THREADVARLIST_REGEXPR
_THREADVARLIST_REGEXPR:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 2
.globl	_$REGEXPR$_Ld2
_$REGEXPR$_Ld2:
	.short	0,1
	.long	0,-1,5
.reference _$REGEXPR$_Ld1
.globl	_$REGEXPR$_Ld1
_$REGEXPR$_Ld1:
.reference _$REGEXPR$_Ld2
	.ascii	" \011\012\015\014\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld4
_$REGEXPR$_Ld4:
	.short	0,1
	.long	0,-1,63
.reference _$REGEXPR$_Ld3
.globl	_$REGEXPR$_Ld3
_$REGEXPR$_Ld3:
.reference _$REGEXPR$_Ld4
	.ascii	"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNO"
	.ascii	"PQRSTUVWXYZ_\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld6
_$REGEXPR$_Ld6:
	.short	0,1
	.long	0,-1,2
.reference _$REGEXPR$_Ld5
.globl	_$REGEXPR$_Ld5
_$REGEXPR$_Ld5:
.reference _$REGEXPR$_Ld6
	.ascii	"\015\012\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld8
_$REGEXPR$_Ld8:
	.short	0,1
	.long	0,-1,2
.reference _$REGEXPR$_Ld7
.globl	_$REGEXPR$_Ld7
_$REGEXPR$_Ld7:
.reference _$REGEXPR$_Ld8
	.ascii	"\015\012\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld10
_$REGEXPR$_Ld10:
	.short	0,1
	.long	0,-1,14
.reference _$REGEXPR$_Ld9
.globl	_$REGEXPR$_Ld9
_$REGEXPR$_Ld9:
.reference _$REGEXPR$_Ld10
	.ascii	"^$.[()|?+*\\{]}\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld135
_$REGEXPR$_Ld135:
	.short	0,1
	.long	0,-1,1
.reference _$REGEXPR$_Ld134
.globl	_$REGEXPR$_Ld134
_$REGEXPR$_Ld134:
.reference _$REGEXPR$_Ld135
	.ascii	"\012\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	_TC_REGEXPR_REGEXPRMODIFIERI
_TC_REGEXPR_REGEXPRMODIFIERI:
	.byte	0

.data
.globl	_TC_REGEXPR_REGEXPRMODIFIERR
_TC_REGEXPR_REGEXPRMODIFIERR:
	.byte	1

.data
.globl	_TC_REGEXPR_REGEXPRMODIFIERS
_TC_REGEXPR_REGEXPRMODIFIERS:
	.byte	1

.data
.globl	_TC_REGEXPR_REGEXPRMODIFIERG
_TC_REGEXPR_REGEXPRMODIFIERG:
	.byte	1

.data
.globl	_TC_REGEXPR_REGEXPRMODIFIERM
_TC_REGEXPR_REGEXPRMODIFIERM:
	.byte	0

.data
.globl	_TC_REGEXPR_REGEXPRMODIFIERX
_TC_REGEXPR_REGEXPRMODIFIERX:
	.byte	0

.data
	.align 2
.globl	_TC_REGEXPR_REGEXPRSPACECHARS
_TC_REGEXPR_REGEXPRSPACECHARS:
	.long	_$REGEXPR$_Ld1

.data
	.align 2
.globl	_TC_REGEXPR_REGEXPRWORDCHARS
_TC_REGEXPR_REGEXPRWORDCHARS:
	.long	_$REGEXPR$_Ld3

.data
	.align 2
.globl	_TC_REGEXPR_REGEXPRLINESEPARATORS
_TC_REGEXPR_REGEXPRLINESEPARATORS:
	.long	_$REGEXPR$_Ld5

.data
	.align 2
.globl	_TC_REGEXPR_REGEXPRLINEPAIREDSEPARATOR
_TC_REGEXPR_REGEXPRLINEPAIREDSEPARATOR:
	.long	_$REGEXPR$_Ld7

.data
	.align 2
.globl	_TC_REGEXPR_REGEXPRINVERTCASEFUNCTION
_TC_REGEXPR_REGEXPRINVERTCASEFUNCTION:
	.long	0,0

.data
	.align 2
.globl	_TC_REGEXPR_TREGEXPRVERSIONMAJOR
_TC_REGEXPR_TREGEXPRVERSIONMAJOR:
	.long	0

.data
	.align 2
.globl	_TC_REGEXPR_TREGEXPRVERSIONMINOR
_TC_REGEXPR_TREGEXPRVERSIONMINOR:
	.long	952

.data
	.align 2
.globl	_TC_REGEXPR_QUOTEREGEXPRMETACHARS$ANSISTRING$$ANSISTRING_REGEXPRMETASET
_TC_REGEXPR_QUOTEREGEXPRMETACHARS$ANSISTRING$$ANSISTRING_REGEXPRMETASET:
	.long	_$REGEXPR$_Ld9

.const_data
	.align 2
.globl	_$REGEXPR$_Ld12
_$REGEXPR$_Ld12:
	.short	0,1
	.long	0,-1,1
.reference _$REGEXPR$_Ld11
.globl	_$REGEXPR$_Ld11
_$REGEXPR$_Ld11:
.reference _$REGEXPR$_Ld12
	.ascii	"\\\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld14
_$REGEXPR$_Ld14:
	.short	0,1
	.long	0,-1,9
.reference _$REGEXPR$_Ld13
.globl	_$REGEXPR$_Ld13
_$REGEXPR$_Ld13:
.reference _$REGEXPR$_Ld14
	.ascii	"No errors\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld16
_$REGEXPR$_Ld16:
	.short	0,1
	.long	0,-1,29
.reference _$REGEXPR$_Ld15
.globl	_$REGEXPR$_Ld15
_$REGEXPR$_Ld15:
.reference _$REGEXPR$_Ld16
	.ascii	"TRegExpr(comp): Null Argument\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld18
_$REGEXPR$_Ld18:
	.short	0,1
	.long	0,-1,30
.reference _$REGEXPR$_Ld17
.globl	_$REGEXPR$_Ld17
_$REGEXPR$_Ld17:
.reference _$REGEXPR$_Ld18
	.ascii	"TRegExpr(comp): Regexp Too Big\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld20
_$REGEXPR$_Ld20:
	.short	0,1
	.long	0,-1,36
.reference _$REGEXPR$_Ld19
.globl	_$REGEXPR$_Ld19
_$REGEXPR$_Ld19:
.reference _$REGEXPR$_Ld20
	.ascii	"TRegExpr(comp): ParseReg Too Many ()\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld22
_$REGEXPR$_Ld22:
	.short	0,1
	.long	0,-1,37
.reference _$REGEXPR$_Ld21
.globl	_$REGEXPR$_Ld21
_$REGEXPR$_Ld21:
.reference _$REGEXPR$_Ld22
	.ascii	"TRegExpr(comp): ParseReg Unmatched ()\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld24
_$REGEXPR$_Ld24:
	.short	0,1
	.long	0,-1,36
.reference _$REGEXPR$_Ld23
.globl	_$REGEXPR$_Ld23
_$REGEXPR$_Ld23:
.reference _$REGEXPR$_Ld24
	.ascii	"TRegExpr(comp): ParseReg Junk On End\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld26
_$REGEXPR$_Ld26:
	.short	0,1
	.long	0,-1,41
.reference _$REGEXPR$_Ld25
.globl	_$REGEXPR$_Ld25
_$REGEXPR$_Ld25:
.reference _$REGEXPR$_Ld26
	.ascii	"TRegExpr(comp): *+ Operand Could Be Empty\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld28
_$REGEXPR$_Ld28:
	.short	0,1
	.long	0,-1,26
.reference _$REGEXPR$_Ld27
.globl	_$REGEXPR$_Ld27
_$REGEXPR$_Ld27:
.reference _$REGEXPR$_Ld28
	.ascii	"TRegExpr(comp): Nested *?+\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld30
_$REGEXPR$_Ld30:
	.short	0,1
	.long	0,-1,29
.reference _$REGEXPR$_Ld29
.globl	_$REGEXPR$_Ld29
_$REGEXPR$_Ld29:
.reference _$REGEXPR$_Ld30
	.ascii	"TRegExpr(comp): Bad Hex Digit\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld32
_$REGEXPR$_Ld32:
	.short	0,1
	.long	0,-1,32
.reference _$REGEXPR$_Ld31
.globl	_$REGEXPR$_Ld31
_$REGEXPR$_Ld31:
.reference _$REGEXPR$_Ld32
	.ascii	"TRegExpr(comp): Invalid [] Range\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld34
_$REGEXPR$_Ld34:
	.short	0,1
	.long	0,-1,37
.reference _$REGEXPR$_Ld33
.globl	_$REGEXPR$_Ld33
_$REGEXPR$_Ld33:
.reference _$REGEXPR$_Ld34
	.ascii	"TRegExpr(comp): Parse Atom Trailing \\\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld36
_$REGEXPR$_Ld36:
	.short	0,1
	.long	0,-1,36
.reference _$REGEXPR$_Ld35
.globl	_$REGEXPR$_Ld35
_$REGEXPR$_Ld35:
.reference _$REGEXPR$_Ld36
	.ascii	"TRegExpr(comp): No Hex Code After \\x\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld38
_$REGEXPR$_Ld38:
	.short	0,1
	.long	0,-1,44
.reference _$REGEXPR$_Ld37
.globl	_$REGEXPR$_Ld37
_$REGEXPR$_Ld37:
.reference _$REGEXPR$_Ld38
	.ascii	"TRegExpr(comp): Hex Code After \\x Is Too Big\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld40
_$REGEXPR$_Ld40:
	.short	0,1
	.long	0,-1,28
.reference _$REGEXPR$_Ld39
.globl	_$REGEXPR$_Ld39
_$REGEXPR$_Ld39:
.reference _$REGEXPR$_Ld40
	.ascii	"TRegExpr(comp): Unmatched []\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld42
_$REGEXPR$_Ld42:
	.short	0,1
	.long	0,-1,28
.reference _$REGEXPR$_Ld41
.globl	_$REGEXPR$_Ld41
_$REGEXPR$_Ld41:
.reference _$REGEXPR$_Ld42
	.ascii	"TRegExpr(comp): Internal Urp\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld44
_$REGEXPR$_Ld44:
	.short	0,1
	.long	0,-1,36
.reference _$REGEXPR$_Ld43
.globl	_$REGEXPR$_Ld43
_$REGEXPR$_Ld43:
.reference _$REGEXPR$_Ld44
	.ascii	"TRegExpr(comp): ?+*{ Follows Nothing\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld46
_$REGEXPR$_Ld46:
	.short	0,1
	.long	0,-1,26
.reference _$REGEXPR$_Ld45
.globl	_$REGEXPR$_Ld45
_$REGEXPR$_Ld45:
.reference _$REGEXPR$_Ld46
	.ascii	"TRegExpr(comp): Trailing \\\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld48
_$REGEXPR$_Ld48:
	.short	0,1
	.long	0,-1,43
.reference _$REGEXPR$_Ld47
.globl	_$REGEXPR$_Ld47
_$REGEXPR$_Ld47:
.reference _$REGEXPR$_Ld48
	.ascii	"TRegExpr(comp): RarseAtom Internal Disaster\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld50
_$REGEXPR$_Ld50:
	.short	0,1
	.long	0,-1,39
.reference _$REGEXPR$_Ld49
.globl	_$REGEXPR$_Ld49
_$REGEXPR$_Ld49:
.reference _$REGEXPR$_Ld50
	.ascii	"TRegExpr(comp): BRACES Argument Too Big\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld52
_$REGEXPR$_Ld52:
	.short	0,1
	.long	0,-1,48
.reference _$REGEXPR$_Ld51
.globl	_$REGEXPR$_Ld51
_$REGEXPR$_Ld51:
.reference _$REGEXPR$_Ld52
	.ascii	"TRegExpr(comp): BRACE Min Param Greater then Max\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld54
_$REGEXPR$_Ld54:
	.short	0,1
	.long	0,-1,36
.reference _$REGEXPR$_Ld53
.globl	_$REGEXPR$_Ld53
_$REGEXPR$_Ld53:
.reference _$REGEXPR$_Ld54
	.ascii	"TRegExpr(comp): Unclosed (?#Comment)\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld56
_$REGEXPR$_Ld56:
	.short	0,1
	.long	0,-1,169
.reference _$REGEXPR$_Ld55
.globl	_$REGEXPR$_Ld55
_$REGEXPR$_Ld55:
.reference _$REGEXPR$_Ld56
	.ascii	"TRegExpr(comp): If you want take part in beta-testi"
	.ascii	"ng BRACES '{min,max}' and non-greedy ops '*?', '+?'"
	.ascii	", '??' for complex cases - remove '.' from {.$DEFIN"
	.ascii	"E ComplexBraces}\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld58
_$REGEXPR$_Ld58:
	.short	0,1
	.long	0,-1,36
.reference _$REGEXPR$_Ld57
.globl	_$REGEXPR$_Ld57
_$REGEXPR$_Ld57:
.reference _$REGEXPR$_Ld58
	.ascii	"TRegExpr(comp): Urecognized Modifier\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld60
_$REGEXPR$_Ld60:
	.short	0,1
	.long	0,-1,88
.reference _$REGEXPR$_Ld59
.globl	_$REGEXPR$_Ld59
_$REGEXPR$_Ld59:
.reference _$REGEXPR$_Ld60
	.ascii	"TRegExpr(comp): LinePairedSeparator must countain t"
	.ascii	"wo different chars or no chars at all\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld62
_$REGEXPR$_Ld62:
	.short	0,1
	.long	0,-1,48
.reference _$REGEXPR$_Ld61
.globl	_$REGEXPR$_Ld61
_$REGEXPR$_Ld61:
.reference _$REGEXPR$_Ld62
	.ascii	"TRegExpr(exec): RegRepeat Called Inappropriately\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld64
_$REGEXPR$_Ld64:
	.short	0,1
	.long	0,-1,43
.reference _$REGEXPR$_Ld63
.globl	_$REGEXPR$_Ld63
_$REGEXPR$_Ld63:
.reference _$REGEXPR$_Ld64
	.ascii	"TRegExpr(exec): MatchPrim Memory Corruption\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld66
_$REGEXPR$_Ld66:
	.short	0,1
	.long	0,-1,44
.reference _$REGEXPR$_Ld65
.globl	_$REGEXPR$_Ld65
_$REGEXPR$_Ld65:
.reference _$REGEXPR$_Ld66
	.ascii	"TRegExpr(exec): MatchPrim Corrupted Pointers\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld68
_$REGEXPR$_Ld68:
	.short	0,1
	.long	0,-1,48
.reference _$REGEXPR$_Ld67
.globl	_$REGEXPR$_Ld67
_$REGEXPR$_Ld67:
.reference _$REGEXPR$_Ld68
	.ascii	"TRegExpr(exec): Not Assigned Expression Property\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld70
_$REGEXPR$_Ld70:
	.short	0,1
	.long	0,-1,33
.reference _$REGEXPR$_Ld69
.globl	_$REGEXPR$_Ld69
_$REGEXPR$_Ld69:
.reference _$REGEXPR$_Ld70
	.ascii	"TRegExpr(exec): Corrupted Program\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld72
_$REGEXPR$_Ld72:
	.short	0,1
	.long	0,-1,41
.reference _$REGEXPR$_Ld71
.globl	_$REGEXPR$_Ld71
_$REGEXPR$_Ld71:
.reference _$REGEXPR$_Ld72
	.ascii	"TRegExpr(exec): No Input String Specified\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld74
_$REGEXPR$_Ld74:
	.short	0,1
	.long	0,-1,45
.reference _$REGEXPR$_Ld73
.globl	_$REGEXPR$_Ld73
_$REGEXPR$_Ld73:
.reference _$REGEXPR$_Ld74
	.ascii	"TRegExpr(exec): Offset Must Be Greater Then 0\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld76
_$REGEXPR$_Ld76:
	.short	0,1
	.long	0,-1,42
.reference _$REGEXPR$_Ld75
.globl	_$REGEXPR$_Ld75
_$REGEXPR$_Ld75:
.reference _$REGEXPR$_Ld76
	.ascii	"TRegExpr(exec): ExecNext Without Exec[Pos]\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld78
_$REGEXPR$_Ld78:
	.short	0,1
	.long	0,-1,50
.reference _$REGEXPR$_Ld77
.globl	_$REGEXPR$_Ld77
_$REGEXPR$_Ld77:
.reference _$REGEXPR$_Ld78
	.ascii	"TRegExpr(exec): GetInputString Without InputString\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld80
_$REGEXPR$_Ld80:
	.short	0,1
	.long	0,-1,32
.reference _$REGEXPR$_Ld79
.globl	_$REGEXPR$_Ld79
_$REGEXPR$_Ld79:
.reference _$REGEXPR$_Ld80
	.ascii	"TRegExpr(dump): Corrupted Opcode\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld82
_$REGEXPR$_Ld82:
	.short	0,1
	.long	0,-1,35
.reference _$REGEXPR$_Ld81
.globl	_$REGEXPR$_Ld81
_$REGEXPR$_Ld81:
.reference _$REGEXPR$_Ld82
	.ascii	"TRegExpr(exec): Loop Stack Exceeded\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld84
_$REGEXPR$_Ld84:
	.short	0,1
	.long	0,-1,40
.reference _$REGEXPR$_Ld83
.globl	_$REGEXPR$_Ld83
_$REGEXPR$_Ld83:
.reference _$REGEXPR$_Ld84
	.ascii	"TRegExpr(exec): Loop Without LoopEntry !\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld86
_$REGEXPR$_Ld86:
	.short	0,1
	.long	0,-1,35
.reference _$REGEXPR$_Ld85
.globl	_$REGEXPR$_Ld85
_$REGEXPR$_Ld85:
.reference _$REGEXPR$_Ld86
	.ascii	"TRegExpr(misc): Bad p-code imported\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld88
_$REGEXPR$_Ld88:
	.short	0,1
	.long	0,-1,13
.reference _$REGEXPR$_Ld87
.globl	_$REGEXPR$_Ld87
_$REGEXPR$_Ld87:
.reference _$REGEXPR$_Ld88
	.ascii	"Unknown error\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld90
_$REGEXPR$_Ld90:
	.short	0,1
	.long	0,-1,1
.reference _$REGEXPR$_Ld89
.globl	_$REGEXPR$_Ld89
_$REGEXPR$_Ld89:
.reference _$REGEXPR$_Ld90
	.ascii	"-\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld92
_$REGEXPR$_Ld92:
	.short	0,1
	.long	0,-1,1
.reference _$REGEXPR$_Ld91
.globl	_$REGEXPR$_Ld91
_$REGEXPR$_Ld91:
.reference _$REGEXPR$_Ld92
	.ascii	"i\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld94
_$REGEXPR$_Ld94:
	.short	0,1
	.long	0,-1,1
.reference _$REGEXPR$_Ld93
.globl	_$REGEXPR$_Ld93
_$REGEXPR$_Ld93:
.reference _$REGEXPR$_Ld94
	.ascii	"r\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld96
_$REGEXPR$_Ld96:
	.short	0,1
	.long	0,-1,1
.reference _$REGEXPR$_Ld95
.globl	_$REGEXPR$_Ld95
_$REGEXPR$_Ld95:
.reference _$REGEXPR$_Ld96
	.ascii	"s\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld98
_$REGEXPR$_Ld98:
	.short	0,1
	.long	0,-1,1
.reference _$REGEXPR$_Ld97
.globl	_$REGEXPR$_Ld97
_$REGEXPR$_Ld97:
.reference _$REGEXPR$_Ld98
	.ascii	"g\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld100
_$REGEXPR$_Ld100:
	.short	0,1
	.long	0,-1,1
.reference _$REGEXPR$_Ld99
.globl	_$REGEXPR$_Ld99
_$REGEXPR$_Ld99:
.reference _$REGEXPR$_Ld100
	.ascii	"m\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld102
_$REGEXPR$_Ld102:
	.short	0,1
	.long	0,-1,1
.reference _$REGEXPR$_Ld101
.globl	_$REGEXPR$_Ld101
_$REGEXPR$_Ld101:
.reference _$REGEXPR$_Ld102
	.ascii	"x\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld104
_$REGEXPR$_Ld104:
	.short	0,1
	.long	0,-1,2
.reference _$REGEXPR$_Ld103
.globl	_$REGEXPR$_Ld103
_$REGEXPR$_Ld103:
.reference _$REGEXPR$_Ld104
	.ascii	"iI\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld106
_$REGEXPR$_Ld106:
	.short	0,1
	.long	0,-1,2
.reference _$REGEXPR$_Ld105
.globl	_$REGEXPR$_Ld105
_$REGEXPR$_Ld105:
.reference _$REGEXPR$_Ld106
	.ascii	"rR\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld108
_$REGEXPR$_Ld108:
	.short	0,1
	.long	0,-1,2
.reference _$REGEXPR$_Ld107
.globl	_$REGEXPR$_Ld107
_$REGEXPR$_Ld107:
.reference _$REGEXPR$_Ld108
	.ascii	"sS\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld110
_$REGEXPR$_Ld110:
	.short	0,1
	.long	0,-1,2
.reference _$REGEXPR$_Ld109
.globl	_$REGEXPR$_Ld109
_$REGEXPR$_Ld109:
.reference _$REGEXPR$_Ld110
	.ascii	"gG\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld112
_$REGEXPR$_Ld112:
	.short	0,1
	.long	0,-1,2
.reference _$REGEXPR$_Ld111
.globl	_$REGEXPR$_Ld111
_$REGEXPR$_Ld111:
.reference _$REGEXPR$_Ld112
	.ascii	"mM\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld114
_$REGEXPR$_Ld114:
	.short	0,1
	.long	0,-1,2
.reference _$REGEXPR$_Ld113
.globl	_$REGEXPR$_Ld113
_$REGEXPR$_Ld113:
.reference _$REGEXPR$_Ld114
	.ascii	"xX\000"

.const
	.align 3
.globl	_$REGEXPR$_Ld115
_$REGEXPR$_Ld115:
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
.globl	_TC_REGEXPR_META
_TC_REGEXPR_META:
	.byte	94,36,46,91,40,41,124,63,43,42,92,123,0

.const_data
	.align 2
.globl	_$REGEXPR$_Ld117
_$REGEXPR$_Ld117:
	.short	0,1
	.long	0,-1,10
.reference _$REGEXPR$_Ld116
.globl	_$REGEXPR$_Ld116
_$REGEXPR$_Ld116:
.reference _$REGEXPR$_Ld117
	.ascii	"0123456789\000"

.const
	.align 3
.globl	_$REGEXPR$_Ld118
_$REGEXPR$_Ld118:
	.byte	0,0,0,0,0,0,0,0,16,0,136,0,16,0,136,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$REGEXPR$_Ld120
_$REGEXPR$_Ld120:
	.short	0,1
	.long	0,-1,2
.reference _$REGEXPR$_Ld119
.globl	_$REGEXPR$_Ld119
_$REGEXPR$_Ld119:
.reference _$REGEXPR$_Ld120
	.ascii	"\320\260\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld122
_$REGEXPR$_Ld122:
	.short	0,1
	.long	0,-1,2
.reference _$REGEXPR$_Ld121
.globl	_$REGEXPR$_Ld121
_$REGEXPR$_Ld121:
.reference _$REGEXPR$_Ld122
	.ascii	"\321\217\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld124
_$REGEXPR$_Ld124:
	.short	0,1
	.long	0,-1,66
.reference _$REGEXPR$_Ld123
.globl	_$REGEXPR$_Ld123
_$REGEXPR$_Ld123:
.reference _$REGEXPR$_Ld124
	.ascii	"\320\260\320\261\320\262\320\263\320\264\320\265\321"
	.ascii	"\221\320\266\320\267\320\270\320\271\320\272\320\273"
	.ascii	"\320\274\320\275\320\276\320\277\321\200\321\201\321"
	.ascii	"\202\321\203\321\204\321\205\321\206\321\207\321\210"
	.ascii	"\321\211\321\212\321\213\321\214\321\215\321\216\321"
	.ascii	"\217\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld126
_$REGEXPR$_Ld126:
	.short	0,1
	.long	0,-1,2
.reference _$REGEXPR$_Ld125
.globl	_$REGEXPR$_Ld125
_$REGEXPR$_Ld125:
.reference _$REGEXPR$_Ld126
	.ascii	"\320\220\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld128
_$REGEXPR$_Ld128:
	.short	0,1
	.long	0,-1,2
.reference _$REGEXPR$_Ld127
.globl	_$REGEXPR$_Ld127
_$REGEXPR$_Ld127:
.reference _$REGEXPR$_Ld128
	.ascii	"\320\257\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld130
_$REGEXPR$_Ld130:
	.short	0,1
	.long	0,-1,66
.reference _$REGEXPR$_Ld129
.globl	_$REGEXPR$_Ld129
_$REGEXPR$_Ld129:
.reference _$REGEXPR$_Ld130
	.ascii	"\320\220\320\221\320\222\320\223\320\224\320\225\320"
	.ascii	"\201\320\226\320\227\320\230\320\231\320\232\320\233"
	.ascii	"\320\234\320\235\320\236\320\237\320\240\320\241\320"
	.ascii	"\242\320\243\320\244\320\245\320\246\320\247\320\250"
	.ascii	"\320\251\320\252\320\253\320\254\320\255\320\256\320"
	.ascii	"\257\000"

.const
	.align 3
.globl	_$REGEXPR$_Ld131
_$REGEXPR$_Ld131:
	.byte	255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	.byte	255,255,255,255,255,255,255,255

.const
	.align 3
.globl	_$REGEXPR$_Ld132
_$REGEXPR$_Ld132:
	.byte	0,0,0,0,0,0,255,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const
	.align 3
.globl	_$REGEXPR$_Ld133
_$REGEXPR$_Ld133:
	.byte	255,255,255,255,255,255,0,252,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
	.byte	255,255,255,255,255,255,255

.const_data
	.align 2
.globl	_TC_REGEXPR_TREGEXPR_$_SUBSTITUTE$ANSISTRING$$ANSISTRING_defaultLineEnd
_TC_REGEXPR_TREGEXPR_$_SUBSTITUTE$ANSISTRING$$ANSISTRING_defaultLineEnd:
	.long	_$REGEXPR$_Ld134

.const_data
	.align 2
.globl	_$REGEXPR$_Ld137
_$REGEXPR$_Ld137:
	.short	0,1
	.long	0,-1,3
.reference _$REGEXPR$_Ld136
.globl	_$REGEXPR$_Ld136
_$REGEXPR$_Ld136:
.reference _$REGEXPR$_Ld137
	.ascii	"BOL\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld139
_$REGEXPR$_Ld139:
	.short	0,1
	.long	0,-1,3
.reference _$REGEXPR$_Ld138
.globl	_$REGEXPR$_Ld138
_$REGEXPR$_Ld138:
.reference _$REGEXPR$_Ld139
	.ascii	"EOL\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld141
_$REGEXPR$_Ld141:
	.short	0,1
	.long	0,-1,5
.reference _$REGEXPR$_Ld140
.globl	_$REGEXPR$_Ld140
_$REGEXPR$_Ld140:
.reference _$REGEXPR$_Ld141
	.ascii	"BOLML\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld143
_$REGEXPR$_Ld143:
	.short	0,1
	.long	0,-1,5
.reference _$REGEXPR$_Ld142
.globl	_$REGEXPR$_Ld142
_$REGEXPR$_Ld142:
.reference _$REGEXPR$_Ld143
	.ascii	"EOLML\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld145
_$REGEXPR$_Ld145:
	.short	0,1
	.long	0,-1,5
.reference _$REGEXPR$_Ld144
.globl	_$REGEXPR$_Ld144
_$REGEXPR$_Ld144:
.reference _$REGEXPR$_Ld145
	.ascii	"BOUND\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld147
_$REGEXPR$_Ld147:
	.short	0,1
	.long	0,-1,8
.reference _$REGEXPR$_Ld146
.globl	_$REGEXPR$_Ld146
_$REGEXPR$_Ld146:
.reference _$REGEXPR$_Ld147
	.ascii	"NOTBOUND\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld149
_$REGEXPR$_Ld149:
	.short	0,1
	.long	0,-1,3
.reference _$REGEXPR$_Ld148
.globl	_$REGEXPR$_Ld148
_$REGEXPR$_Ld148:
.reference _$REGEXPR$_Ld149
	.ascii	"ANY\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld151
_$REGEXPR$_Ld151:
	.short	0,1
	.long	0,-1,5
.reference _$REGEXPR$_Ld150
.globl	_$REGEXPR$_Ld150
_$REGEXPR$_Ld150:
.reference _$REGEXPR$_Ld151
	.ascii	"ANYML\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld153
_$REGEXPR$_Ld153:
	.short	0,1
	.long	0,-1,9
.reference _$REGEXPR$_Ld152
.globl	_$REGEXPR$_Ld152
_$REGEXPR$_Ld152:
.reference _$REGEXPR$_Ld153
	.ascii	"ANYLETTER\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld155
_$REGEXPR$_Ld155:
	.short	0,1
	.long	0,-1,9
.reference _$REGEXPR$_Ld154
.globl	_$REGEXPR$_Ld154
_$REGEXPR$_Ld154:
.reference _$REGEXPR$_Ld155
	.ascii	"NOTLETTER\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld157
_$REGEXPR$_Ld157:
	.short	0,1
	.long	0,-1,8
.reference _$REGEXPR$_Ld156
.globl	_$REGEXPR$_Ld156
_$REGEXPR$_Ld156:
.reference _$REGEXPR$_Ld157
	.ascii	"ANYDIGIT\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld159
_$REGEXPR$_Ld159:
	.short	0,1
	.long	0,-1,8
.reference _$REGEXPR$_Ld158
.globl	_$REGEXPR$_Ld158
_$REGEXPR$_Ld158:
.reference _$REGEXPR$_Ld159
	.ascii	"NOTDIGIT\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld161
_$REGEXPR$_Ld161:
	.short	0,1
	.long	0,-1,8
.reference _$REGEXPR$_Ld160
.globl	_$REGEXPR$_Ld160
_$REGEXPR$_Ld160:
.reference _$REGEXPR$_Ld161
	.ascii	"ANYSPACE\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld163
_$REGEXPR$_Ld163:
	.short	0,1
	.long	0,-1,8
.reference _$REGEXPR$_Ld162
.globl	_$REGEXPR$_Ld162
_$REGEXPR$_Ld162:
.reference _$REGEXPR$_Ld163
	.ascii	"NOTSPACE\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld165
_$REGEXPR$_Ld165:
	.short	0,1
	.long	0,-1,5
.reference _$REGEXPR$_Ld164
.globl	_$REGEXPR$_Ld164
_$REGEXPR$_Ld164:
.reference _$REGEXPR$_Ld165
	.ascii	"ANYOF\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld167
_$REGEXPR$_Ld167:
	.short	0,1
	.long	0,-1,6
.reference _$REGEXPR$_Ld166
.globl	_$REGEXPR$_Ld166
_$REGEXPR$_Ld166:
.reference _$REGEXPR$_Ld167
	.ascii	"ANYBUT\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld169
_$REGEXPR$_Ld169:
	.short	0,1
	.long	0,-1,8
.reference _$REGEXPR$_Ld168
.globl	_$REGEXPR$_Ld168
_$REGEXPR$_Ld168:
.reference _$REGEXPR$_Ld169
	.ascii	"ANYOF/CI\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld171
_$REGEXPR$_Ld171:
	.short	0,1
	.long	0,-1,9
.reference _$REGEXPR$_Ld170
.globl	_$REGEXPR$_Ld170
_$REGEXPR$_Ld170:
.reference _$REGEXPR$_Ld171
	.ascii	"ANYBUT/CI\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld173
_$REGEXPR$_Ld173:
	.short	0,1
	.long	0,-1,6
.reference _$REGEXPR$_Ld172
.globl	_$REGEXPR$_Ld172
_$REGEXPR$_Ld172:
.reference _$REGEXPR$_Ld173
	.ascii	"BRANCH\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld175
_$REGEXPR$_Ld175:
	.short	0,1
	.long	0,-1,7
.reference _$REGEXPR$_Ld174
.globl	_$REGEXPR$_Ld174
_$REGEXPR$_Ld174:
.reference _$REGEXPR$_Ld175
	.ascii	"EXACTLY\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld177
_$REGEXPR$_Ld177:
	.short	0,1
	.long	0,-1,10
.reference _$REGEXPR$_Ld176
.globl	_$REGEXPR$_Ld176
_$REGEXPR$_Ld176:
.reference _$REGEXPR$_Ld177
	.ascii	"EXACTLY/CI\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld179
_$REGEXPR$_Ld179:
	.short	0,1
	.long	0,-1,7
.reference _$REGEXPR$_Ld178
.globl	_$REGEXPR$_Ld178
_$REGEXPR$_Ld178:
.reference _$REGEXPR$_Ld179
	.ascii	"NOTHING\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld181
_$REGEXPR$_Ld181:
	.short	0,1
	.long	0,-1,7
.reference _$REGEXPR$_Ld180
.globl	_$REGEXPR$_Ld180
_$REGEXPR$_Ld180:
.reference _$REGEXPR$_Ld181
	.ascii	"COMMENT\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld183
_$REGEXPR$_Ld183:
	.short	0,1
	.long	0,-1,4
.reference _$REGEXPR$_Ld182
.globl	_$REGEXPR$_Ld182
_$REGEXPR$_Ld182:
.reference _$REGEXPR$_Ld183
	.ascii	"BACK\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld185
_$REGEXPR$_Ld185:
	.short	0,1
	.long	0,-1,3
.reference _$REGEXPR$_Ld184
.globl	_$REGEXPR$_Ld184
_$REGEXPR$_Ld184:
.reference _$REGEXPR$_Ld185
	.ascii	"END\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld187
_$REGEXPR$_Ld187:
	.short	0,1
	.long	0,-1,7
.reference _$REGEXPR$_Ld186
.globl	_$REGEXPR$_Ld186
_$REGEXPR$_Ld186:
.reference _$REGEXPR$_Ld187
	.ascii	"BSUBEXP\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld189
_$REGEXPR$_Ld189:
	.short	0,1
	.long	0,-1,10
.reference _$REGEXPR$_Ld188
.globl	_$REGEXPR$_Ld188
_$REGEXPR$_Ld188:
.reference _$REGEXPR$_Ld189
	.ascii	"BSUBEXP/CI\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld191
_$REGEXPR$_Ld191:
	.short	0,1
	.long	0,-1,8
.reference _$REGEXPR$_Ld190
.globl	_$REGEXPR$_Ld190
_$REGEXPR$_Ld190:
.reference _$REGEXPR$_Ld191
	.ascii	"OPEN[%d]\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld193
_$REGEXPR$_Ld193:
	.short	0,1
	.long	0,-1,9
.reference _$REGEXPR$_Ld192
.globl	_$REGEXPR$_Ld192
_$REGEXPR$_Ld192:
.reference _$REGEXPR$_Ld193
	.ascii	"CLOSE[%d]\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld195
_$REGEXPR$_Ld195:
	.short	0,1
	.long	0,-1,4
.reference _$REGEXPR$_Ld194
.globl	_$REGEXPR$_Ld194
_$REGEXPR$_Ld194:
.reference _$REGEXPR$_Ld195
	.ascii	"STAR\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld197
_$REGEXPR$_Ld197:
	.short	0,1
	.long	0,-1,4
.reference _$REGEXPR$_Ld196
.globl	_$REGEXPR$_Ld196
_$REGEXPR$_Ld196:
.reference _$REGEXPR$_Ld197
	.ascii	"PLUS\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld199
_$REGEXPR$_Ld199:
	.short	0,1
	.long	0,-1,6
.reference _$REGEXPR$_Ld198
.globl	_$REGEXPR$_Ld198
_$REGEXPR$_Ld198:
.reference _$REGEXPR$_Ld199
	.ascii	"BRACES\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld201
_$REGEXPR$_Ld201:
	.short	0,1
	.long	0,-1,9
.reference _$REGEXPR$_Ld200
.globl	_$REGEXPR$_Ld200
_$REGEXPR$_Ld200:
.reference _$REGEXPR$_Ld201
	.ascii	"LOOPENTRY\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld203
_$REGEXPR$_Ld203:
	.short	0,1
	.long	0,-1,4
.reference _$REGEXPR$_Ld202
.globl	_$REGEXPR$_Ld202
_$REGEXPR$_Ld202:
.reference _$REGEXPR$_Ld203
	.ascii	"LOOP\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld205
_$REGEXPR$_Ld205:
	.short	0,1
	.long	0,-1,6
.reference _$REGEXPR$_Ld204
.globl	_$REGEXPR$_Ld204
_$REGEXPR$_Ld204:
.reference _$REGEXPR$_Ld205
	.ascii	"LOOPNG\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld207
_$REGEXPR$_Ld207:
	.short	0,1
	.long	0,-1,12
.reference _$REGEXPR$_Ld206
.globl	_$REGEXPR$_Ld206
_$REGEXPR$_Ld206:
.reference _$REGEXPR$_Ld207
	.ascii	"ANYOFTINYSET\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld209
_$REGEXPR$_Ld209:
	.short	0,1
	.long	0,-1,13
.reference _$REGEXPR$_Ld208
.globl	_$REGEXPR$_Ld208
_$REGEXPR$_Ld208:
.reference _$REGEXPR$_Ld209
	.ascii	"ANYBUTTINYSET\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld211
_$REGEXPR$_Ld211:
	.short	0,1
	.long	0,-1,12
.reference _$REGEXPR$_Ld210
.globl	_$REGEXPR$_Ld210
_$REGEXPR$_Ld210:
.reference _$REGEXPR$_Ld211
	.ascii	"ANYOFFULLSET\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld213
_$REGEXPR$_Ld213:
	.short	0,1
	.long	0,-1,6
.reference _$REGEXPR$_Ld212
.globl	_$REGEXPR$_Ld212
_$REGEXPR$_Ld212:
.reference _$REGEXPR$_Ld213
	.ascii	"STARNG\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld215
_$REGEXPR$_Ld215:
	.short	0,1
	.long	0,-1,6
.reference _$REGEXPR$_Ld214
.globl	_$REGEXPR$_Ld214
_$REGEXPR$_Ld214:
.reference _$REGEXPR$_Ld215
	.ascii	"PLUSNG\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld217
_$REGEXPR$_Ld217:
	.short	0,1
	.long	0,-1,8
.reference _$REGEXPR$_Ld216
.globl	_$REGEXPR$_Ld216
_$REGEXPR$_Ld216:
.reference _$REGEXPR$_Ld217
	.ascii	"BRACESNG\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld219
_$REGEXPR$_Ld219:
	.short	0,1
	.long	0,-1,1
.reference _$REGEXPR$_Ld218
.globl	_$REGEXPR$_Ld218
_$REGEXPR$_Ld218:
.reference _$REGEXPR$_Ld219
	.ascii	":\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld221
_$REGEXPR$_Ld221:
	.short	0,1
	.long	0,-1,5
.reference _$REGEXPR$_Ld220
.globl	_$REGEXPR$_Ld220
_$REGEXPR$_Ld220:
.reference _$REGEXPR$_Ld221
	.ascii	"%2d%s\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld223
_$REGEXPR$_Ld223:
	.short	0,1
	.long	0,-1,4
.reference _$REGEXPR$_Ld222
.globl	_$REGEXPR$_Ld222
_$REGEXPR$_Ld222:
.reference _$REGEXPR$_Ld223
	.ascii	" (0)\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld225
_$REGEXPR$_Ld225:
	.short	0,1
	.long	0,-1,6
.reference _$REGEXPR$_Ld224
.globl	_$REGEXPR$_Ld224
_$REGEXPR$_Ld224:
.reference _$REGEXPR$_Ld225
	.ascii	" (%d) \000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld227
_$REGEXPR$_Ld227:
	.short	0,1
	.long	0,-1,2
.reference _$REGEXPR$_Ld226
.globl	_$REGEXPR$_Ld226
_$REGEXPR$_Ld226:
.reference _$REGEXPR$_Ld227
	.ascii	" \\\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld229
_$REGEXPR$_Ld229:
	.short	0,1
	.long	0,-1,1
.reference _$REGEXPR$_Ld228
.globl	_$REGEXPR$_Ld228
_$REGEXPR$_Ld228:
.reference _$REGEXPR$_Ld229
	.ascii	"#\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld231
_$REGEXPR$_Ld231:
	.short	0,1
	.long	0,-1,7
.reference _$REGEXPR$_Ld230
.globl	_$REGEXPR$_Ld230
_$REGEXPR$_Ld230:
.reference _$REGEXPR$_Ld231
	.ascii	"{%d,%d}\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld233
_$REGEXPR$_Ld233:
	.short	0,1
	.long	0,-1,16
.reference _$REGEXPR$_Ld232
.globl	_$REGEXPR$_Ld232
_$REGEXPR$_Ld232:
.reference _$REGEXPR$_Ld233
	.ascii	" -> (%d) {%d,%d}\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld235
_$REGEXPR$_Ld235:
	.short	0,1
	.long	0,-1,2
.reference _$REGEXPR$_Ld234
.globl	_$REGEXPR$_Ld234
_$REGEXPR$_Ld234:
.reference _$REGEXPR$_Ld235
	.ascii	"\015\012\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld237
_$REGEXPR$_Ld237:
	.short	0,1
	.long	0,-1,6
.reference _$REGEXPR$_Ld236
.globl	_$REGEXPR$_Ld236
_$REGEXPR$_Ld236:
.reference _$REGEXPR$_Ld237
	.ascii	"start \000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld239
_$REGEXPR$_Ld239:
	.short	0,1
	.long	0,-1,9
.reference _$REGEXPR$_Ld238
.globl	_$REGEXPR$_Ld238
_$REGEXPR$_Ld238:
.reference _$REGEXPR$_Ld239
	.ascii	"anchored \000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld241
_$REGEXPR$_Ld241:
	.short	0,1
	.long	0,-1,10
.reference _$REGEXPR$_Ld240
.globl	_$REGEXPR$_Ld240
_$REGEXPR$_Ld240:
.reference _$REGEXPR$_Ld241
	.ascii	"must have \000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld243
_$REGEXPR$_Ld243:
	.short	0,1
	.long	0,-1,15
.reference _$REGEXPR$_Ld242
.globl	_$REGEXPR$_Ld242
_$REGEXPR$_Ld242:
.reference _$REGEXPR$_Ld243
	.ascii	"\015\012FirstCharSet:\000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld245
_$REGEXPR$_Ld245:
	.short	0,1
	.long	0,-1,6
.reference _$REGEXPR$_Ld244
.globl	_$REGEXPR$_Ld244
_$REGEXPR$_Ld244:
.reference _$REGEXPR$_Ld245
	.ascii	" (pos \000"

.const_data
	.align 2
.globl	_$REGEXPR$_Ld247
_$REGEXPR$_Ld247:
	.short	0,1
	.long	0,-1,1
.reference _$REGEXPR$_Ld246
.globl	_$REGEXPR$_Ld246
_$REGEXPR$_Ld246:
.reference _$REGEXPR$_Ld247
	.ascii	")\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__CREATE$$TREGEXPR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__CREATE$$TREGEXPR
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

L_REGEXPR_TREGEXPR_$__SETEXPRESSION$ANSISTRING$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__SETEXPRESSION$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__EXEC$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__EXEC$ANSISTRING$$BOOLEAN
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

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
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

L_REGEXPR_TREGEXPR_$__SPLIT$ANSISTRING$TSTRINGS$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__SPLIT$ANSISTRING$TSTRINGS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__REPLACE$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__REPLACE$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING
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

L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
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

Lfpc_char_to_ansistr$stub:
.indirect_symbol fpc_char_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_concat_multi$stub:
.indirect_symbol fpc_ansistr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
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

L_REGEXPR_TREGEXPR_$__PARSEMODIFIERSSTR$ANSISTRING$LONGINT$$BOOLEAN$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__PARSEMODIFIERSSTR$ANSISTRING$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGS_$__INSERTOBJECT$LONGINT$ANSISTRING$TOBJECT$stub:
.indirect_symbol _CLASSES_TSTRINGS_$__INSERTOBJECT$LONGINT$ANSISTRING$TOBJECT
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

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__SETMODIFIER$LONGINT$BOOLEAN$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__SETMODIFIER$LONGINT$BOOLEAN
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

L_REGEXPR_TREGEXPR_$__SETLINEPAIREDSEPARATOR$ANSISTRING$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__SETLINEPAIREDSEPARATOR$ANSISTRING
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

Lfpc_pchar_to_ansistr$stub:
.indirect_symbol fpc_pchar_to_ansistr
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

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__INVALIDATEPROGRAMM$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__INVALIDATEPROGRAMM
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

L_REGEXPR_TREGEXPR_$__GETMODIFIER$LONGINT$$BOOLEAN$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__GETMODIFIER$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__COMPILEREGEXPR$PCHAR$$BOOLEAN$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__COMPILEREGEXPR$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__COMPILE$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__COMPILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__REGNEXT$PCHAR$$PCHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__REGNEXT$PCHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_ALIGNTOPTR$POINTER$$POINTER$stub:
.indirect_symbol _REGEXPR_ALIGNTOPTR$POINTER$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__TAIL$PCHAR$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__EMITC$CHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__EMITC$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__PARSEREG$LONGINT$LONGINT$$PCHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__PARSEREG$LONGINT$LONGINT$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__FILLFIRSTCHARSET$PCHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__FILLFIRSTCHARSET$PCHAR
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

L_REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__EMITNODE$CHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__PARSEBRANCH$LONGINT$$PCHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__PARSEBRANCH$LONGINT$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__OPTAIL$PCHAR$PCHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__OPTAIL$PCHAR$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__PARSEPIECE$LONGINT$$PCHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__PARSEPIECE$LONGINT$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__PARSEATOM$LONGINT$$PCHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__PARSEATOM$LONGINT$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_EMITCOMPLEXBRACES$LONGINT$LONGINT$BOOLEAN$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_EMITCOMPLEXBRACES$LONGINT$LONGINT$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__INSERTOPERATOR$CHAR$PCHAR$LONGINT$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__INSERTOPERATOR$CHAR$PCHAR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_EMITSIMPLEBRACES$LONGINT$LONGINT$BOOLEAN$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_EMITSIMPLEBRACES$LONGINT$LONGINT$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_PARSENUM$PCHAR$PCHAR$$LONGINT$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$_PARSEPIECE$LONGINT$$PCHAR_PARSENUM$PCHAR$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_ALIGNTOINT$POINTER$$POINTER$stub:
.indirect_symbol _REGEXPR_ALIGNTOINT$POINTER$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGE$CHAR$$PCHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGE$CHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITSIMPLERANGEC$CHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITSIMPLERANGEC$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGEC$CHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGEC$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_UNQUOTECHAR$PCHAR$$CHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_UNQUOTECHAR$PCHAR$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGESTR$ANSISTRING$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGESTR$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITEXACTLY$CHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITEXACTLY$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_STRCSPN$PCHAR$PCHAR$$LONGINT$stub:
.indirect_symbol _REGEXPR_STRCSPN$PCHAR$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_HEXDIG$CHAR$$LONGINT$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_HEXDIG$CHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGECPRIM$CHAR$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$_PARSEATOM$LONGINT$$PCHAR_EMITRANGECPRIM$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_varset_sub_sets$stub:
.indirect_symbol fpc_varset_sub_sets
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__MATCHPRIM$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__REGREPEAT$PCHAR$LONGINT$$LONGINT$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__REGREPEAT$PCHAR$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_varset_add_sets$stub:
.indirect_symbol fpc_varset_add_sets
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_varset_create_element$stub:
.indirect_symbol fpc_varset_create_element
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_varset_set$stub:
.indirect_symbol fpc_varset_set
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__SETINPUTSTRING$ANSISTRING$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__SETINPUTSTRING$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__EXECPRIM$LONGINT$$BOOLEAN$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__EXECPRIM$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$_EXECPRIM$LONGINT$$BOOLEAN_CLEARMATCHS$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$_EXECPRIM$LONGINT$$BOOLEAN_CLEARMATCHS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__ISPROGRAMMOK$$BOOLEAN$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__ISPROGRAMMOK$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_pchar_length$stub:
.indirect_symbol fpc_pchar_length
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR$stub:
.indirect_symbol _SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$_EXECPRIM$LONGINT$$BOOLEAN_REGMATCH$PCHAR$$BOOLEAN$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$_EXECPRIM$LONGINT$$BOOLEAN_REGMATCH$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat$stub:
.indirect_symbol fpc_shortstr_concat
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

L_REGEXPR_TREGEXPR_$_SUBSTITUTE$ANSISTRING$$ANSISTRING_PARSEVARNAME$PCHAR$$LONGINT$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$_SUBSTITUTE$ANSISTRING$$ANSISTRING_PARSEVARNAME$PCHAR$$LONGINT
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

L_REGEXPR_TREGEXPR_$__GETMATCHPOS$LONGINT$$LONGINT$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__GETMATCHPOS$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__GETMATCHLEN$LONGINT$$LONGINT$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__GETMATCHLEN$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__EXECNEXT$$BOOLEAN$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__EXECNEXT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__SUBSTITUTE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__SUBSTITUTE$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__REPLACEEX$ANSISTRING$TREGEXPRREPLACEFUNCTION$$ANSISTRING$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__REPLACEEX$ANSISTRING$TREGEXPRREPLACEFUNCTION$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_REGEXPR_TREGEXPR_$__DUMPOP$CHAR$$ANSISTRING$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__DUMPOP$CHAR$$ANSISTRING
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

L_REGEXPR_TREGEXPR_$__GETCOMPILERERRORPOS$$LONGINT$stub:
.indirect_symbol _REGEXPR_TREGEXPR_$__GETCOMPILERERRORPOS$$LONGINT
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_REGEXPR_PREOP
_INIT_REGEXPR_PREOP:
	.byte	0
	.ascii	"\005PREOp"

.const_data
	.align 2
.globl	_RTTI_REGEXPR_PREOP
_RTTI_REGEXPR_PREOP:
	.byte	0
	.ascii	"\005PREOp"

.const_data
	.align 2
.globl	_INIT_REGEXPR_PRENEXTOFF
_INIT_REGEXPR_PRENEXTOFF:
	.byte	0
	.ascii	"\012PRENextOff"

.const_data
	.align 2
.globl	_RTTI_REGEXPR_PRENEXTOFF
_RTTI_REGEXPR_PRENEXTOFF:
	.byte	0
	.ascii	"\012PRENextOff"

.const_data
	.align 2
.globl	_INIT_REGEXPR_PREBRACESARG
_INIT_REGEXPR_PREBRACESARG:
	.byte	0
	.ascii	"\014PREBracesArg"

.const_data
	.align 2
.globl	_RTTI_REGEXPR_PREBRACESARG
_RTTI_REGEXPR_PREBRACESARG:
	.byte	0
	.ascii	"\014PREBracesArg"

.const_data
	.align 2
.globl	_INIT_REGEXPR_TREGEXPRINVERTCASEFUNCTION
_INIT_REGEXPR_TREGEXPRINVERTCASEFUNCTION:
	.byte	6,26
	.ascii	"TRegExprInvertCaseFunction"
	.byte	1,1,2,2
	.ascii	"Ch"
	.ascii	"\004Char"
	.ascii	"\004Char"
	.long	_RTTI_SYSTEM_CHAR
	.byte	0
	.long	_RTTI_SYSTEM_CHAR

.const_data
	.align 2
.globl	_RTTI_REGEXPR_TREGEXPRINVERTCASEFUNCTION
_RTTI_REGEXPR_TREGEXPRINVERTCASEFUNCTION:
	.byte	6,26
	.ascii	"TRegExprInvertCaseFunction"
	.byte	1,1,2,2
	.ascii	"Ch"
	.ascii	"\004Char"
	.ascii	"\004Char"
	.long	_RTTI_SYSTEM_CHAR
	.byte	0
	.long	_RTTI_SYSTEM_CHAR

.const_data
	.align 2
.globl	_INIT_REGEXPR_PSETOFRECHAR
_INIT_REGEXPR_PSETOFRECHAR:
	.byte	0
	.ascii	"\014PSetOfREChar"

.const_data
	.align 2
.globl	_RTTI_REGEXPR_PSETOFRECHAR
_RTTI_REGEXPR_PSETOFRECHAR:
	.byte	0
	.ascii	"\014PSetOfREChar"

.const_data
	.align 2
.globl	_INIT_REGEXPR_TSETOFRECHAR
_INIT_REGEXPR_TSETOFRECHAR:
	.byte	5,12
	.ascii	"TSetOfREChar"
	.byte	1
	.long	_INIT_SYSTEM_CHAR

.const_data
	.align 2
.globl	_RTTI_REGEXPR_TSETOFRECHAR
_RTTI_REGEXPR_TSETOFRECHAR:
	.byte	5,12
	.ascii	"TSetOfREChar"
	.byte	1
	.long	_RTTI_SYSTEM_CHAR

.const_data
	.align 2
.globl	_INIT_REGEXPR_DEF457
_INIT_REGEXPR_DEF457:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_REGEXPR_DEF384
_INIT_REGEXPR_DEF384:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_REGEXPR_DEF448
_INIT_REGEXPR_DEF448:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_REGEXPR_DEF449
_INIT_REGEXPR_DEF449:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_REGEXPR_DEF450
_INIT_REGEXPR_DEF450:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_REGEXPR_DEF451
_INIT_REGEXPR_DEF451:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_REGEXPR_DEF452
_INIT_REGEXPR_DEF452:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$REGEXPR$_Ld249
_$REGEXPR$_Ld249:
	.short	0
	.long	_$REGEXPR$_Ld250
	.align 2
.globl	_$REGEXPR$_Ld250
_$REGEXPR$_Ld250:
	.short	0

.const_data
	.align 2
.globl	_INIT_REGEXPR_TREGEXPR
_INIT_REGEXPR_TREGEXPR:
	.byte	15,8
	.ascii	"TRegExpr"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	292
	.long	_INIT_SYSTEM_ANSISTRING
	.long	296
	.long	_INIT_SYSTEM_ANSISTRING
	.long	308

.const_data
	.align 2
.globl	_RTTI_REGEXPR_TREGEXPR
_RTTI_REGEXPR_TREGEXPR:
	.byte	15,8
	.ascii	"TRegExpr"
	.long	_VMT_REGEXPR_TREGEXPR
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"RegExpr"
	.short	0

.const_data
	.align 2
.globl	_INIT_REGEXPR_TREGEXPRREPLACEFUNCTION
_INIT_REGEXPR_TREGEXPRREPLACEFUNCTION:
	.byte	6,23
	.ascii	"TRegExprReplaceFunction"
	.byte	1,1,8,8
	.ascii	"ARegExpr"
	.ascii	"\010TRegExpr"
	.ascii	"\012AnsiString"
	.long	_RTTI_SYSTEM_ANSISTRING
	.byte	0
	.long	_RTTI_REGEXPR_TREGEXPR

.const_data
	.align 2
.globl	_RTTI_REGEXPR_TREGEXPRREPLACEFUNCTION
_RTTI_REGEXPR_TREGEXPRREPLACEFUNCTION:
	.byte	6,23
	.ascii	"TRegExprReplaceFunction"
	.byte	1,1,8,8
	.ascii	"ARegExpr"
	.ascii	"\010TRegExpr"
	.ascii	"\012AnsiString"
	.long	_RTTI_SYSTEM_ANSISTRING
	.byte	0
	.long	_RTTI_REGEXPR_TREGEXPR

.const_data
	.align 2
.globl	_$REGEXPR$_Ld252
_$REGEXPR$_Ld252:
	.short	0
	.long	_$REGEXPR$_Ld253
	.align 2
.globl	_$REGEXPR$_Ld253
_$REGEXPR$_Ld253:
	.short	0

.const_data
	.align 2
.globl	_INIT_REGEXPR_EREGEXPR
_INIT_REGEXPR_EREGEXPR:
	.byte	15,8
	.ascii	"ERegExpr"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_REGEXPR_EREGEXPR
_RTTI_REGEXPR_EREGEXPR:
	.byte	15,8
	.ascii	"ERegExpr"
	.long	_VMT_REGEXPR_EREGEXPR
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	7
	.ascii	"RegExpr"
	.short	0

.const_data
	.align 2
.globl	_INIT_REGEXPR_DEF139
_INIT_REGEXPR_DEF139:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256
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
L_VMT_REGEXPR_TREGEXPR$non_lazy_ptr:
.indirect_symbol _VMT_REGEXPR_TREGEXPR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_REGEXPR_QUOTEREGEXPRMETACHARS$ANSISTRING$$ANSISTRING_REGEXPRMETASET$non_lazy_ptr:
.indirect_symbol _TC_REGEXPR_QUOTEREGEXPRMETACHARS$ANSISTRING$$ANSISTRING_REGEXPRMETASET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld11$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld13$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld15$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld17$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld19$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld21$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld23$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld25$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld27$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld29$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld31$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld33$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld35$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld37$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld39$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld41$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld43$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld43
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld45$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld45
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld47$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld47
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld49$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld49
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld51$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld51
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld53$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld53
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld55$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld55
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld57$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld57
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld59$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld59
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld61$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld61
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld63$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld63
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld65$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld65
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld67$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld67
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld69$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld69
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld71$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld71
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld73$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld73
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld75$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld75
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld77$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld77
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld79$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld79
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld81$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld81
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld83$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld83
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld85$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld85
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld87$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld87
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_REGEXPR_TREGEXPRVERSIONMAJOR$non_lazy_ptr:
.indirect_symbol _TC_REGEXPR_TREGEXPRVERSIONMAJOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_REGEXPR_TREGEXPRVERSIONMINOR$non_lazy_ptr:
.indirect_symbol _TC_REGEXPR_TREGEXPRVERSIONMINOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_REGEXPR_REGEXPRMODIFIERI$non_lazy_ptr:
.indirect_symbol _TC_REGEXPR_REGEXPRMODIFIERI
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_REGEXPR_REGEXPRMODIFIERR$non_lazy_ptr:
.indirect_symbol _TC_REGEXPR_REGEXPRMODIFIERR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_REGEXPR_REGEXPRMODIFIERS$non_lazy_ptr:
.indirect_symbol _TC_REGEXPR_REGEXPRMODIFIERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_REGEXPR_REGEXPRMODIFIERG$non_lazy_ptr:
.indirect_symbol _TC_REGEXPR_REGEXPRMODIFIERG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_REGEXPR_REGEXPRMODIFIERM$non_lazy_ptr:
.indirect_symbol _TC_REGEXPR_REGEXPRMODIFIERM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_REGEXPR_REGEXPRSPACECHARS$non_lazy_ptr:
.indirect_symbol _TC_REGEXPR_REGEXPRSPACECHARS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_REGEXPR_REGEXPRWORDCHARS$non_lazy_ptr:
.indirect_symbol _TC_REGEXPR_REGEXPRWORDCHARS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_REGEXPR_REGEXPRINVERTCASEFUNCTION$non_lazy_ptr:
.indirect_symbol _TC_REGEXPR_REGEXPRINVERTCASEFUNCTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_REGEXPR_REGEXPRLINESEPARATORS$non_lazy_ptr:
.indirect_symbol _TC_REGEXPR_REGEXPRLINESEPARATORS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_REGEXPR_REGEXPRLINEPAIREDSEPARATOR$non_lazy_ptr:
.indirect_symbol _TC_REGEXPR_REGEXPRLINEPAIREDSEPARATOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_WIDESTRINGMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld89$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld89
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld91$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld91
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld93$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld93
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld95$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld95
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld97$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld97
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld99$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld99
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld101$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld101
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld103$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld103
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld105$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld105
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld107$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld107
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld109$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld109
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld111$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld111
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld113$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld113
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld115$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld115
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld116$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld116
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld118$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld118
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld119$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld119
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld121$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld121
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld123$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld123
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld125$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld125
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld127$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld127
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld129$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld129
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_REGEXPR_META$non_lazy_ptr:
.indirect_symbol _TC_REGEXPR_META
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld131$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld131
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld132$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld132
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld133$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld133
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_REGEXPR_TREGEXPR_$_SUBSTITUTE$ANSISTRING$$ANSISTRING_defaultLineEnd$non_lazy_ptr:
.indirect_symbol _TC_REGEXPR_TREGEXPR_$_SUBSTITUTE$ANSISTRING$$ANSISTRING_defaultLineEnd
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld136$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld136
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld138$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld138
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld140$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld140
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld142$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld142
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld144$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld144
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld146$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld146
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld148$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld148
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld150$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld150
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld152$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld152
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld154$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld154
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld156$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld156
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld158$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld158
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld160$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld160
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld162$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld162
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld164$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld164
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld166$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld166
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld168$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld168
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld170$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld170
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld172$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld172
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld174$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld174
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld176$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld176
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld178$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld178
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld180$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld180
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld182$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld182
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld184$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld184
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld186$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld186
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld188$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld188
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld190$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld190
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld192$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld192
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld194$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld194
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld196$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld196
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld198$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld198
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld200$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld200
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld202$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld202
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld204$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld204
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld206$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld206
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld208$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld208
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld210$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld210
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld212$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld212
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld214$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld214
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld216$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld216
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld218$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld218
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld220$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld220
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld222$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld222
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld224$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld224
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld226$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld226
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld228$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld228
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld230$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld230
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld232$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld232
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld234$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld234
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld236$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld236
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld238$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld238
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld240$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld240
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld242$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld242
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld244$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld244
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$REGEXPR$_Ld246$non_lazy_ptr:
.indirect_symbol _$REGEXPR$_Ld246
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_REGEXPR_EREGEXPR$non_lazy_ptr:
.indirect_symbol _VMT_REGEXPR_EREGEXPR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_REGEXPR_TREGEXPR_$__INVERTCASEFUNCTION$CHAR$$CHAR$non_lazy_ptr:
.indirect_symbol _REGEXPR_TREGEXPR_$__INVERTCASEFUNCTION$CHAR$$CHAR
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

