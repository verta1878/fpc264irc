# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_URIPARSER_ESCAPE$ANSISTRING$TSYSCHARSET$$ANSISTRING
_URIPARSER_ESCAPE$ANSISTRING$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	call	Lj4
Lj4:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7
	movl	-4(%eax),%eax
Lj7:
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj11
	movl	-4(%eax),%eax
Lj11:
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj9
	decl	-16(%ebp)
	.align 2
Lj10:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%ebx
	movzbl	-1(%edx,%ecx,1),%edx
	btl	%edx,(%ebx)
	jnc	Lj12
	jmp	Lj13
Lj12:
	addl	$2,-20(%ebp)
Lj13:
	cmpl	-16(%ebp),%eax
	jg	Lj10
Lj9:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj16
	movl	-4(%eax),%eax
Lj16:
	cmpl	-20(%ebp),%eax
	je	Lj14
	jmp	Lj15
Lj14:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj3
Lj15:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj28
	movl	-4(%ebx),%ebx
Lj28:
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj26
	decl	-16(%ebp)
	.align 2
Lj27:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%ecx
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,(%ecx)
	jnc	Lj29
	jmp	Lj30
Lj29:
	movl	-24(%ebp),%eax
	movb	$37,(%eax)
	incl	-24(%ebp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	movl	%eax,-28(%ebp)
	movl	$0,-32(%ebp)
	leal	-32(%ebp),%ecx
	movl	L_$URIPARSER$_Ld1$non_lazy_ptr-Lj4(%esi),%eax
	movl	-24(%ebp),%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	L_SYSUTILS_STRFMT$PCHAR$PCHAR$array_of_const$$PCHAR$stub
	incl	-24(%ebp)
	jmp	Lj41
Lj30:
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	movb	%al,(%ecx)
Lj41:
	incl	-24(%ebp)
	cmpl	-16(%ebp),%ebx
	jg	Lj27
Lj26:
Lj3:
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_URIPARSER_ENCODEURI$TURI$$ANSISTRING
_URIPARSER_ENCODEURI$TURI$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj45
Lj45:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj46
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	Lfpc_ansistr_setlength$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj55
	movl	-4(%eax),%eax
Lj55:
	cmpl	$0,%eax
	jg	Lj53
	jmp	Lj54
Lj53:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	L_$URIPARSER$_Ld2$non_lazy_ptr-Lj45(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj54:
	movl	-4(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj66
	jmp	Lj67
Lj66:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$URIPARSER$_Ld4$non_lazy_ptr-Lj45(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj76
	movl	-4(%eax),%eax
Lj76:
	cmpl	$0,%eax
	jg	Lj74
	jmp	Lj75
Lj74:
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj85
	movl	-4(%eax),%eax
Lj85:
	cmpl	$0,%eax
	jg	Lj83
	jmp	Lj84
Lj83:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	L_$URIPARSER$_Ld2$non_lazy_ptr-Lj45(%ebx),%eax
	movl	%eax,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-56(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj84:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$URIPARSER$_Ld6$non_lazy_ptr-Lj45(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj75:
	movl	-4(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj67:
	movl	-4(%ebp),%eax
	movzwl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj104
	jmp	Lj105
Lj104:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	L_$URIPARSER$_Ld2$non_lazy_ptr-Lj45(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movzwl	16(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	%eax,-56(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj105:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	L_$URIPARSER$_Ld8$non_lazy_ptr-Lj45(%ebx),%edx
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	call	L_URIPARSER_ESCAPE$ANSISTRING$TSYSCHARSET$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj130
	movl	-4(%eax),%eax
Lj130:
	cmpl	$0,%eax
	jg	Lj128
	jmp	Lj129
Lj128:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj134
	movl	-4(%eax),%eax
Lj134:
	cmpl	$0,%eax
	jg	Lj133
	jmp	Lj132
Lj133:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj136
	movl	-4(%eax),%eax
Lj136:
	testl	%eax,%eax
	je	Lj131
	jmp	Lj135
Lj135:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj137
	movl	-4(%eax),%eax
Lj137:
	movb	-1(%edx,%eax,1),%al
	cmpb	$47,%al
	jne	Lj131
	jmp	Lj132
Lj131:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$URIPARSER$_Ld9$non_lazy_ptr-Lj45(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj132:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	L_$URIPARSER$_Ld8$non_lazy_ptr-Lj45(%ebx),%edx
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	call	L_URIPARSER_ESCAPE$ANSISTRING$TSYSCHARSET$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj129:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj158
	movl	-4(%eax),%eax
Lj158:
	cmpl	$0,%eax
	jg	Lj156
	jmp	Lj157
Lj156:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	L_$URIPARSER$_Ld11$non_lazy_ptr-Lj45(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	L_$URIPARSER$_Ld8$non_lazy_ptr-Lj45(%ebx),%edx
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	call	L_URIPARSER_ESCAPE$ANSISTRING$TSYSCHARSET$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	%eax,-56(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj157:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj173
	movl	-4(%eax),%eax
Lj173:
	cmpl	$0,%eax
	jg	Lj171
	jmp	Lj172
Lj171:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	L_$URIPARSER$_Ld13$non_lazy_ptr-Lj45(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	L_$URIPARSER$_Ld8$non_lazy_ptr-Lj45(%ebx),%edx
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_URIPARSER_ESCAPE$ANSISTRING$TSYSCHARSET$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	%eax,-56(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj172:
Lj46:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj47
	call	LFPC_RERAISE$stub
Lj47:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_URIPARSER_PARSEURI$ANSISTRING$BOOLEAN$$TURI
_URIPARSER_PARSEURI$ANSISTRING$BOOLEAN$$TURI:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movb	-8(%ebp),%al
	movb	%al,4(%esp)
	movl	-4(%ebp),%eax
	movw	$0,%cx
	movl	$0,%edx
	call	L_URIPARSER_PARSEURI$ANSISTRING$ANSISTRING$WORD$BOOLEAN$$TURI$stub
	leave
	ret

.text
	.align 4
.globl	_URIPARSER_HEXVALUE$CHAR$$LONGINT
_URIPARSER_HEXVALUE$CHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movb	-4(%ebp),%al
	cmpb	$48,%al
	jb	Lj201
	subb	$48,%al
	subb	$9,%al
	jbe	Lj202
	subb	$8,%al
	jb	Lj201
	subb	$5,%al
	jbe	Lj203
	subb	$27,%al
	jb	Lj201
	subb	$5,%al
	jbe	Lj204
	jmp	Lj201
Lj202:
	movzbl	-4(%ebp),%eax
	subl	$48,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj200
Lj203:
	movzbl	-4(%ebp),%eax
	subl	$55,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj200
Lj204:
	movzbl	-4(%ebp),%eax
	subl	$87,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj200
Lj201:
	movl	$0,-8(%ebp)
Lj200:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_URIPARSER_UNESCAPE$ANSISTRING$$ANSISTRING
_URIPARSER_UNESCAPE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj214
Lj214:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj217
	movl	-4(%edx),%edx
Lj217:
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	$1,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj224
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj214(%esi),%edx
	movl	%edx,%eax
Lj224:
	movl	%eax,-20(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj228
	.align 2
Lj227:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$37,%al
	je	Lj230
	jmp	Lj231
Lj230:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	call	L_URIPARSER_HEXVALUE$CHAR$$LONGINT$stub
	movl	%eax,%ebx
	shll	$4,%ebx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	$2,%eax
	movb	-1(%edx,%eax,1),%al
	call	L_URIPARSER_HEXVALUE$CHAR$$LONGINT$stub
	orl	%eax,%ebx
	movb	%bl,%al
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movb	%al,(%ecx,%edx,1)
	addl	$3,-12(%ebp)
	jmp	Lj238
Lj231:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	movb	%al,(%ebx,%ecx,1)
	incl	-12(%ebp)
Lj238:
	incl	-16(%ebp)
Lj228:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj241
	movl	-4(%eax),%eax
Lj241:
	cmpl	-12(%ebp),%eax
	jge	Lj227
	jmp	Lj229
Lj229:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_URIPARSER_PARSEURI$ANSISTRING$ANSISTRING$WORD$BOOLEAN$$TURI
_URIPARSER_PARSEURI$ANSISTRING$ANSISTRING$WORD$BOOLEAN$$TURI:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%edi,-80(%ebp)
	call	Lj247
Lj247:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-76(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj248
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,(%ebx)
	movl	8(%ebp),%edx
	movw	-12(%ebp),%ax
	movw	%ax,16(%edx)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj264
	movl	-4(%eax),%eax
Lj264:
	movl	%eax,%ebx
	movl	$1,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj262
	decl	-24(%ebp)
	.align 2
Lj263:
	incl	-24(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$58,%al
	je	Lj265
	jmp	Lj266
Lj265:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	decl	%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,(%edi)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	incl	%edx
	movl	-16(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj262
	jmp	Lj287
Lj266:
	movl	-24(%ebp),%eax
	cmpl	$1,%eax
	je	Lj291
	jmp	Lj290
Lj291:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	subl	$65,%eax
	cmpl	$26,%eax
	jb	Lj292
	subl	$32,%eax
	cmpl	$26,%eax
	jb	Lj292
Lj292:
	jc	Lj289
	jmp	Lj290
Lj290:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	cmpl	$43,%eax
	stc
	je	Lj293
	subl	$45,%eax
	cmpl	$2,%eax
	jb	Lj293
	subl	$3,%eax
	cmpl	$10,%eax
	jb	Lj293
	subl	$17,%eax
	cmpl	$26,%eax
	jb	Lj293
	subl	$32,%eax
	cmpl	$26,%eax
	jb	Lj293
Lj293:
	jc	Lj289
	jmp	Lj288
Lj288:
	jmp	Lj262
Lj289:
Lj287:
	cmpl	-24(%ebp),%ebx
	jg	Lj263
Lj262:
	movl	-16(%ebp),%edx
	movl	L_$URIPARSER$_Ld13$non_lazy_ptr-Lj247(%esi),%eax
	call	L_SYSUTILS_LASTDELIMITER$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj300
	jmp	Lj301
Lj300:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	incl	%edx
	movl	-16(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	32(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,32(%ebx)
	cmpb	$0,12(%ebp)
	jne	Lj312
	jmp	Lj313
Lj312:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	8(%ebp),%eax
	movl	32(%eax),%eax
	call	L_URIPARSER_UNESCAPE$ANSISTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	32(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,32(%ebx)
Lj313:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	decl	%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj301:
	movl	-16(%ebp),%edx
	movl	L_$URIPARSER$_Ld11$non_lazy_ptr-Lj247(%esi),%eax
	call	L_SYSUTILS_LASTDELIMITER$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj336
	jmp	Lj337
Lj336:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	incl	%edx
	movl	-16(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	28(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,28(%ebx)
	cmpb	$0,12(%ebp)
	jne	Lj348
	jmp	Lj349
Lj348:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	8(%ebp),%eax
	movl	28(%eax),%eax
	call	L_URIPARSER_UNESCAPE$ANSISTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	28(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,28(%ebx)
Lj349:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	decl	%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj337:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj370
	movl	-4(%eax),%eax
Lj370:
	cmpl	$1,%eax
	jg	Lj369
	jmp	Lj367
Lj369:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$47,%al
	je	Lj368
	jmp	Lj367
Lj368:
	movl	-16(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$47,%al
	je	Lj366
	jmp	Lj367
Lj366:
	movl	$3,-24(%ebp)
	jmp	Lj374
	.align 2
Lj373:
	incl	-24(%ebp)
Lj374:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj377
	movl	-4(%eax),%eax
Lj377:
	cmpl	-24(%ebp),%eax
	jge	Lj376
	jmp	Lj375
Lj376:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$47,%al
	jne	Lj373
	jmp	Lj375
Lj375:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	subl	$3,%ecx
	movl	-16(%ebp),%eax
	movl	$3,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-20(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	8(%ebp),%eax
	movb	$1,36(%eax)
	jmp	Lj400
Lj367:
	movl	8(%ebp),%eax
	movb	$0,36(%eax)
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
Lj400:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj408
	movl	-4(%eax),%eax
Lj408:
	movl	%eax,-24(%ebp)
	cmpl	$1,-24(%ebp)
	jl	Lj406
	incl	-24(%ebp)
	.align 2
Lj407:
	decl	-24(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$47,%al
	je	Lj409
	jmp	Lj410
Lj409:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	incl	%edx
	movl	-16(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj419
	movl	-4(%ecx),%ecx
Lj419:
	movl	-16(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	24(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,24(%ebx)
	cmpb	$0,12(%ebp)
	jne	Lj422
	jmp	Lj423
Lj422:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	8(%ebp),%eax
	movl	24(%eax),%eax
	call	L_URIPARSER_UNESCAPE$ANSISTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	24(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,24(%ebx)
Lj423:
	movl	8(%ebp),%eax
	movl	24(%eax),%eax
	movl	L_$URIPARSER$_Ld15$non_lazy_ptr-Lj247(%esi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj432
	jmp	Lj431
Lj432:
	movl	8(%ebp),%eax
	movl	24(%eax),%eax
	movl	L_$URIPARSER$_Ld17$non_lazy_ptr-Lj247(%esi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj430
	jmp	Lj431
Lj430:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj451
Lj431:
	movl	8(%ebp),%ebx
	leal	24(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,24(%ebx)
Lj451:
	jmp	Lj406
	jmp	Lj454
Lj410:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$58,%al
	je	Lj455
	jmp	Lj456
Lj455:
	jmp	Lj406
	jmp	Lj457
Lj456:
	movl	-24(%ebp),%eax
	cmpl	$1,%eax
	je	Lj458
	jmp	Lj459
Lj458:
	movl	-16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	24(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	movl	%eax,24(%ebx)
	cmpb	$0,12(%ebp)
	jne	Lj462
	jmp	Lj463
Lj462:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	8(%ebp),%eax
	movl	24(%eax),%eax
	call	L_URIPARSER_UNESCAPE$ANSISTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	24(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,24(%ebx)
Lj463:
	movl	8(%ebp),%eax
	movl	24(%eax),%eax
	movl	L_$URIPARSER$_Ld15$non_lazy_ptr-Lj247(%esi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj472
	jmp	Lj471
Lj472:
	movl	8(%ebp),%eax
	movl	24(%eax),%eax
	movl	L_$URIPARSER$_Ld17$non_lazy_ptr-Lj247(%esi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj470
	jmp	Lj471
Lj470:
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
	jmp	Lj483
Lj471:
	movl	8(%ebp),%ebx
	leal	24(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,24(%ebx)
Lj483:
Lj459:
Lj457:
Lj454:
	cmpl	$1,-24(%ebp)
	jg	Lj407
Lj406:
	movl	-16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	20(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	movl	%eax,20(%ebx)
	cmpb	$0,12(%ebp)
	jne	Lj488
	jmp	Lj489
Lj488:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	8(%ebp),%eax
	movl	20(%eax),%eax
	call	L_URIPARSER_UNESCAPE$ANSISTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	20(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,20(%ebx)
Lj489:
	movl	-20(%ebp),%edx
	movl	L_$URIPARSER$_Ld19$non_lazy_ptr-Lj247(%esi),%eax
	call	L_SYSUTILS_LASTDELIMITER$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj504
	jmp	Lj503
Lj504:
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$58,%al
	je	Lj502
	jmp	Lj503
Lj502:
	movb	$1,-29(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj510
	movl	-4(%eax),%eax
Lj510:
	movl	-24(%ebp),%edx
	incl	%edx
	movl	%edx,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj508
	decl	-28(%ebp)
	.align 2
Lj509:
	incl	-28(%ebp)
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%ecx
	movzbl	-1(%edx,%ecx,1),%edx
	subl	$48,%edx
	cmpl	$10,%edx
	jb	Lj513
Lj513:
	jnc	Lj511
	jmp	Lj512
Lj511:
	movb	$0,-29(%ebp)
	jmp	Lj508
Lj512:
	cmpl	-28(%ebp),%eax
	jg	Lj509
Lj508:
	cmpb	$0,-29(%ebp)
	jne	Lj516
	jmp	Lj517
Lj516:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	incl	%edx
	movl	-20(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub
	movl	8(%ebp),%edx
	movw	%ax,16(%edx)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	decl	%ecx
	movl	-20(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj517:
Lj503:
	movl	-20(%ebp),%edx
	movb	$64,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj546
	jmp	Lj547
Lj546:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	incl	%edx
	movl	-20(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,12(%ebx)
	movl	-24(%ebp),%edx
	leal	-20(%ebp),%eax
	movl	$2147483647,%ecx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj566
	movl	-4(%eax),%eax
Lj566:
	cmpl	$0,%eax
	jg	Lj564
	jmp	Lj565
Lj564:
	movl	-20(%ebp),%edx
	movb	$58,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj573
	jmp	Lj574
Lj573:
	movl	-20(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-20(%ebp),%eax
	movl	%eax,4(%ebx)
	jmp	Lj577
Lj574:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	decl	%ecx
	movl	-20(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,4(%ebx)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	incl	%edx
	movl	-20(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,8(%ebx)
Lj577:
Lj565:
	jmp	Lj598
Lj547:
	movl	-20(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-20(%ebp),%eax
	movl	%eax,12(%ebx)
Lj598:
Lj248:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj249
	call	LFPC_RERAISE$stub
Lj249:
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	movl	-80(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_URIPARSER_REMOVEDOTSEGMENTS$ANSISTRING
_URIPARSER_REMOVEDOTSEGMENTS$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movb	$47,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj622
	.align 2
Lj621:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-8(%ebp)
	jmp	Lj627
	.align 2
Lj626:
	incl	-8(%ebp)
Lj627:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj630
	movl	-4(%eax),%eax
Lj630:
	cmpl	-8(%ebp),%eax
	jge	Lj629
	jmp	Lj628
Lj629:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$47,%al
	jne	Lj626
	jmp	Lj628
Lj628:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	cmpl	$2,%edx
	je	Lj633
	jmp	Lj632
Lj633:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$46,%al
	je	Lj631
	jmp	Lj632
Lj631:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	jmp	Lj640
Lj632:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	cmpl	$3,%eax
	je	Lj644
	jmp	Lj642
Lj644:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$46,%al
	je	Lj643
	jmp	Lj642
Lj643:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	addl	$2,%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$46,%al
	je	Lj641
	jmp	Lj642
Lj641:
	jmp	Lj646
	.align 2
Lj645:
	decl	-12(%ebp)
Lj646:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj648
	jmp	Lj647
Lj648:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$47,%al
	jne	Lj645
	jmp	Lj647
Lj647:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj649
	jmp	Lj650
Lj649:
	decl	-12(%ebp)
Lj650:
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	jmp	Lj657
Lj642:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj657:
Lj640:
Lj622:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj660
	jmp	Lj623
Lj660:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj661
	movl	-4(%eax),%eax
Lj661:
	cmpl	-12(%ebp),%eax
	jg	Lj621
	jmp	Lj623
Lj623:
	leave
	ret

.text
	.align 4
.globl	_URIPARSER_RESOLVERELATIVEURI$UTF8STRING$UTF8STRING$UTF8STRING$$BOOLEAN
_URIPARSER_RESOLVERELATIVEURI$UTF8STRING$UTF8STRING$UTF8STRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$232,%esp
	movl	%ebx,-232(%ebp)
	movl	%esi,-228(%ebp)
	movl	%edi,-224(%ebp)
	call	Lj663
Lj663:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	L_INIT_URIPARSER_TURI$non_lazy_ptr-Lj663(%edi),%edx
	leal	-56(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	L_INIT_URIPARSER_TURI$non_lazy_ptr-Lj663(%edi),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	$0,-220(%ebp)
	movl	L_INIT_URIPARSER_TURI$non_lazy_ptr-Lj663(%edi),%eax
	movl	%eax,%edx
	leal	-216(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_URIPARSER_TURI$non_lazy_ptr-Lj663(%edi),%eax
	movl	%eax,%edx
	leal	-176(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-108(%ebp),%ecx
	leal	-132(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-136(%ebp)
	testl	%eax,%eax
	jne	Lj664
	movl	L_INIT_URIPARSER_TURI$non_lazy_ptr-Lj663(%edi),%eax
	movl	%eax,%esi
	leal	-56(%ebp),%eax
	movl	%eax,%ebx
	movl	L_INIT_URIPARSER_TURI$non_lazy_ptr-Lj663(%edi),%eax
	movl	%eax,%edx
	leal	-176(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-176(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_URIPARSER_PARSEURI$ANSISTRING$BOOLEAN$$TURI$stub
	leal	-176(%ebp),%eax
	movl	%esi,%ecx
	movl	%ebx,%edx
	call	Lfpc_copy_proc$stub
	movl	L_INIT_URIPARSER_TURI$non_lazy_ptr-Lj663(%edi),%eax
	movl	%eax,%ebx
	leal	-96(%ebp),%eax
	movl	%eax,%esi
	movl	L_INIT_URIPARSER_TURI$non_lazy_ptr-Lj663(%edi),%eax
	movl	%eax,%edx
	leal	-216(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-216(%ebp),%ecx
	movl	-8(%ebp),%eax
	movb	$1,%dl
	call	L_URIPARSER_PARSEURI$ANSISTRING$BOOLEAN$$TURI$stub
	leal	-216(%ebp),%eax
	movl	%ebx,%ecx
	movl	%esi,%edx
	call	Lfpc_copy_proc$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	jne	Lj691
	jmp	Lj693
Lj693:
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	jne	Lj691
	jmp	Lj692
Lj691:
	movb	$1,-13(%ebp)
	jmp	Lj694
Lj692:
	movb	$0,-13(%ebp)
Lj694:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj695
	jmp	Lj696
Lj695:
	jmp	Lj664
Lj696:
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj699
	jmp	Lj698
Lj699:
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj697
	jmp	Lj698
Lj697:
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj702
	jmp	Lj701
Lj702:
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj700
	jmp	Lj701
Lj700:
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	jne	Lj703
	jmp	Lj704
Lj703:
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj704:
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,-24(%ebp)
	leal	-220(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-220(%ebp)
	leal	-220(%ebp),%edx
	leal	-56(%ebp),%eax
	call	L_URIPARSER_ENCODEURI$TURI$$ANSISTRING$stub
	movl	-220(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-220(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj664
Lj701:
Lj698:
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	jne	Lj715
	jmp	Lj716
Lj715:
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj664
Lj716:
	movl	-56(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj721
	jmp	Lj722
Lj721:
	movl	-44(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-44(%ebp),%eax
	movl	%eax,-84(%ebp)
	movw	-40(%ebp),%ax
	movw	%ax,-80(%ebp)
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,-88(%ebp)
	movb	-20(%ebp),%al
	movb	%al,-60(%ebp)
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj733
	jmp	Lj735
Lj735:
	movl	-76(%ebp),%eax
	movb	(%eax),%al
	cmpb	$47,%al
	jne	Lj733
	jmp	Lj734
Lj733:
	movl	-76(%ebp),%ecx
	movl	-36(%ebp),%edx
	leal	-76(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj734:
	leal	-76(%ebp),%eax
	call	L_URIPARSER_REMOVEDOTSEGMENTS$ANSISTRING$stub
Lj722:
	leal	-220(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-220(%ebp)
	leal	-220(%ebp),%edx
	leal	-96(%ebp),%eax
	call	L_URIPARSER_ENCODEURI$TURI$$ANSISTRING$stub
	movl	-220(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-220(%ebp),%eax
	movl	%eax,(%ebx)
Lj664:
	call	LFPC_POPADDRSTACK$stub
	leal	-220(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-220(%ebp)
	movl	L_INIT_URIPARSER_TURI$non_lazy_ptr-Lj663(%edi),%eax
	movl	%eax,%edx
	leal	-216(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_URIPARSER_TURI$non_lazy_ptr-Lj663(%edi),%eax
	movl	%eax,%edx
	leal	-176(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_URIPARSER_TURI$non_lazy_ptr-Lj663(%edi),%edx
	leal	-56(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_URIPARSER_TURI$non_lazy_ptr-Lj663(%edi),%edx
	leal	-96(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-136(%ebp),%eax
	testl	%eax,%eax
	je	Lj665
	call	LFPC_RERAISE$stub
Lj665:
	movb	-13(%ebp),%al
	movl	-232(%ebp),%ebx
	movl	-228(%ebp),%esi
	movl	-224(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_URIPARSER_RESOLVERELATIVEURI$WIDESTRING$WIDESTRING$WIDESTRING$$BOOLEAN
_URIPARSER_RESOLVERELATIVEURI$WIDESTRING$WIDESTRING$WIDESTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-20(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj768
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING$stub
	movl	-64(%ebp),%ebx
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING$stub
	movl	-68(%ebp),%esi
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-20(%ebp),%ecx
	movl	%ebx,%edx
	movl	%esi,%eax
	call	L_URIPARSER_RESOLVERELATIVEURI$UTF8STRING$UTF8STRING$UTF8STRING$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj787
	jmp	Lj788
Lj787:
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_SYSTEM_UTF8DECODE$UTF8STRING$$UNICODESTRING$stub
	movl	-72(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-72(%ebp),%eax
	movl	%eax,(%ebx)
Lj788:
Lj768:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj769
	call	LFPC_RERAISE$stub
Lj769:
	movb	-13(%ebp),%al
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_URIPARSER_URITOFILENAME$ANSISTRING$ANSISTRING$$BOOLEAN
_URIPARSER_URITOFILENAME$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	call	Lj802
Lj802:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	L_INIT_URIPARSER_TURI$non_lazy_ptr-Lj802(%ebx),%edx
	leal	-52(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	$0,-100(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj803
	movb	$0,-9(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_URIPARSER_PARSEURI$ANSISTRING$BOOLEAN$$TURI$stub
	movl	-52(%ebp),%eax
	movl	L_$URIPARSER$_Ld21$non_lazy_ptr-Lj802(%ebx),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj814
	jmp	Lj815
Lj814:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj824
	movl	-4(%eax),%eax
Lj824:
	cmpl	$2,%eax
	jg	Lj823
	jmp	Lj821
Lj823:
	movl	-32(%ebp),%eax
	movb	(%eax),%al
	cmpb	$47,%al
	je	Lj822
	jmp	Lj821
Lj822:
	movl	-32(%ebp),%eax
	movb	2(%eax),%al
	cmpb	$58,%al
	je	Lj820
	jmp	Lj821
Lj820:
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-100(%ebp),%eax
	movl	%eax,(%esp)
	movl	-32(%ebp),%eax
	movl	$2147483647,%ecx
	movl	$2,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-100(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-100(%ebp),%eax
	movl	%eax,(%esi)
	jmp	Lj835
Lj821:
	movl	-32(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-32(%ebp),%eax
	movl	%eax,(%esi)
Lj835:
	movl	-28(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movb	$1,-9(%ebp)
	jmp	Lj846
Lj815:
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj847
	jmp	Lj848
Lj847:
	movl	-28(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movb	$1,-9(%ebp)
Lj848:
Lj846:
Lj803:
	call	LFPC_POPADDRSTACK$stub
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	movl	L_INIT_URIPARSER_TURI$non_lazy_ptr-Lj802(%ebx),%edx
	leal	-52(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj804
	call	LFPC_RERAISE$stub
Lj804:
	movb	-9(%ebp),%al
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_URIPARSER_FILENAMETOURI$ANSISTRING$BOOLEAN$$ANSISTRING
_URIPARSER_FILENAMETOURI$ANSISTRING$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj866
Lj866:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj867
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj873
	jmp	Lj872
Lj873:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$47,%al
	je	Lj870
	jmp	Lj872
Lj872:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj876
	movl	-4(%eax),%eax
Lj876:
	cmpl	$2,%eax
	jg	Lj875
	jmp	Lj871
Lj875:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$65,%eax
	cmpl	$26,%eax
	jb	Lj877
	subl	$32,%eax
	cmpl	$26,%eax
	jb	Lj877
Lj877:
	jc	Lj874
	jmp	Lj871
Lj874:
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$58,%al
	je	Lj870
	jmp	Lj871
Lj870:
	movb	$1,-17(%ebp)
	jmp	Lj878
Lj871:
	movb	$0,-17(%ebp)
Lj878:
	movl	L_$URIPARSER$_Ld23$non_lazy_ptr-Lj866(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	cmpb	$0,-17(%ebp)
	jne	Lj881
	jmp	Lj882
Lj881:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$47,%al
	jne	Lj883
	jmp	Lj884
Lj883:
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	L_$URIPARSER$_Ld25$non_lazy_ptr-Lj866(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj891
Lj884:
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	L_$URIPARSER$_Ld4$non_lazy_ptr-Lj866(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj891:
Lj882:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj900
	jmp	Lj901
Lj900:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	L_$URIPARSER$_Ld8$non_lazy_ptr-Lj866(%ebx),%edx
	leal	-68(%ebp),%ecx
	movl	-24(%ebp),%eax
	call	L_URIPARSER_ESCAPE$ANSISTRING$TSYSCHARSET$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj901:
	movl	-24(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj867:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj868
	call	LFPC_RERAISE$stub
Lj868:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_URIPARSER_ISABSOLUTEURI$ANSISTRING$$BOOLEAN
_URIPARSER_ISABSOLUTEURI$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	$1,-5(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj929
	movl	-4(%eax),%eax
Lj929:
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj927
	decl	-12(%ebp)
	.align 2
Lj928:
	incl	-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movb	-1(%edx,%ecx,1),%dl
	cmpb	$58,%dl
	je	Lj930
	jmp	Lj931
Lj930:
	jmp	Lj922
	jmp	Lj932
Lj931:
	movl	-12(%ebp),%edx
	cmpl	$1,%edx
	je	Lj936
	jmp	Lj935
Lj936:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movzbl	-1(%edx,%ecx,1),%edx
	subl	$65,%edx
	cmpl	$26,%edx
	jb	Lj937
	subl	$32,%edx
	cmpl	$26,%edx
	jb	Lj937
Lj937:
	jc	Lj934
	jmp	Lj935
Lj935:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movzbl	-1(%edx,%ecx,1),%edx
	cmpl	$43,%edx
	stc
	je	Lj938
	subl	$45,%edx
	cmpl	$2,%edx
	jb	Lj938
	subl	$3,%edx
	cmpl	$10,%edx
	jb	Lj938
	subl	$17,%edx
	cmpl	$26,%edx
	jb	Lj938
	subl	$32,%edx
	cmpl	$26,%edx
	jb	Lj938
Lj938:
	jc	Lj934
	jmp	Lj933
Lj933:
	jmp	Lj927
Lj934:
Lj932:
	cmpl	-12(%ebp),%eax
	jg	Lj928
Lj927:
	movb	$0,-5(%ebp)
Lj922:
	movb	-5(%ebp),%al
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_URIPARSER
_THREADVARLIST_URIPARSER:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$URIPARSER$_Ld1
_$URIPARSER$_Ld1:
	.ascii	"%.2x\000"

.const_data
	.align 2
.globl	_$URIPARSER$_Ld3
_$URIPARSER$_Ld3:
	.short	0,1
	.long	0,-1,1
.reference _$URIPARSER$_Ld2
.globl	_$URIPARSER$_Ld2
_$URIPARSER$_Ld2:
.reference _$URIPARSER$_Ld3
	.ascii	":\000"

.const_data
	.align 2
.globl	_$URIPARSER$_Ld5
_$URIPARSER$_Ld5:
	.short	0,1
	.long	0,-1,2
.reference _$URIPARSER$_Ld4
.globl	_$URIPARSER$_Ld4
_$URIPARSER$_Ld4:
.reference _$URIPARSER$_Ld5
	.ascii	"//\000"

.const_data
	.align 2
.globl	_$URIPARSER$_Ld7
_$URIPARSER$_Ld7:
	.short	0,1
	.long	0,-1,1
.reference _$URIPARSER$_Ld6
.globl	_$URIPARSER$_Ld6
_$URIPARSER$_Ld6:
.reference _$URIPARSER$_Ld7
	.ascii	"@\000"

.const
	.align 3
.globl	_$URIPARSER$_Ld8
_$URIPARSER$_Ld8:
	.byte	0,0,0,0,210,255,255,47,255,255,255,135,254,255,255,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$URIPARSER$_Ld10
_$URIPARSER$_Ld10:
	.short	0,1
	.long	0,-1,1
.reference _$URIPARSER$_Ld9
.globl	_$URIPARSER$_Ld9
_$URIPARSER$_Ld9:
.reference _$URIPARSER$_Ld10
	.ascii	"/\000"

.const_data
	.align 2
.globl	_$URIPARSER$_Ld12
_$URIPARSER$_Ld12:
	.short	0,1
	.long	0,-1,1
.reference _$URIPARSER$_Ld11
.globl	_$URIPARSER$_Ld11
_$URIPARSER$_Ld11:
.reference _$URIPARSER$_Ld12
	.ascii	"?\000"

.const_data
	.align 2
.globl	_$URIPARSER$_Ld14
_$URIPARSER$_Ld14:
	.short	0,1
	.long	0,-1,1
.reference _$URIPARSER$_Ld13
.globl	_$URIPARSER$_Ld13
_$URIPARSER$_Ld13:
.reference _$URIPARSER$_Ld14
	.ascii	"#\000"

.const_data
	.align 2
.globl	_$URIPARSER$_Ld16
_$URIPARSER$_Ld16:
	.short	0,1
	.long	0,-1,1
.reference _$URIPARSER$_Ld15
.globl	_$URIPARSER$_Ld15
_$URIPARSER$_Ld15:
.reference _$URIPARSER$_Ld16
	.ascii	".\000"

.const_data
	.align 2
.globl	_$URIPARSER$_Ld18
_$URIPARSER$_Ld18:
	.short	0,1
	.long	0,-1,2
.reference _$URIPARSER$_Ld17
.globl	_$URIPARSER$_Ld17
_$URIPARSER$_Ld17:
.reference _$URIPARSER$_Ld18
	.ascii	"..\000"

.const_data
	.align 2
.globl	_$URIPARSER$_Ld20
_$URIPARSER$_Ld20:
	.short	0,1
	.long	0,-1,2
.reference _$URIPARSER$_Ld19
.globl	_$URIPARSER$_Ld19
_$URIPARSER$_Ld19:
.reference _$URIPARSER$_Ld20
	.ascii	":@\000"

.const_data
	.align 2
.globl	_$URIPARSER$_Ld22
_$URIPARSER$_Ld22:
	.short	0,1
	.long	0,-1,4
.reference _$URIPARSER$_Ld21
.globl	_$URIPARSER$_Ld21
_$URIPARSER$_Ld21:
.reference _$URIPARSER$_Ld22
	.ascii	"file\000"

.const_data
	.align 2
.globl	_$URIPARSER$_Ld24
_$URIPARSER$_Ld24:
	.short	0,1
	.long	0,-1,5
.reference _$URIPARSER$_Ld23
.globl	_$URIPARSER$_Ld23
_$URIPARSER$_Ld23:
.reference _$URIPARSER$_Ld24
	.ascii	"file:\000"

.const_data
	.align 2
.globl	_$URIPARSER$_Ld26
_$URIPARSER$_Ld26:
	.short	0,1
	.long	0,-1,3
.reference _$URIPARSER$_Ld25
.globl	_$URIPARSER$_Ld25
_$URIPARSER$_Ld25:
.reference _$URIPARSER$_Ld26
	.ascii	"///\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

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

Lfpc_ansistr_setlength$stub:
.indirect_symbol fpc_ansistr_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRFMT$PCHAR$PCHAR$array_of_const$$PCHAR$stub:
.indirect_symbol _SYSUTILS_STRFMT$PCHAR$PCHAR$array_of_const$$PCHAR
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

L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING
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

Lfpc_ansistr_concat_multi$stub:
.indirect_symbol fpc_ansistr_concat_multi
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

L_URIPARSER_ESCAPE$ANSISTRING$TSYSCHARSET$$ANSISTRING$stub:
.indirect_symbol _URIPARSER_ESCAPE$ANSISTRING$TSYSCHARSET$$ANSISTRING
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

L_URIPARSER_PARSEURI$ANSISTRING$ANSISTRING$WORD$BOOLEAN$$TURI$stub:
.indirect_symbol _URIPARSER_PARSEURI$ANSISTRING$ANSISTRING$WORD$BOOLEAN$$TURI
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_URIPARSER_HEXVALUE$CHAR$$LONGINT$stub:
.indirect_symbol _URIPARSER_HEXVALUE$CHAR$$LONGINT
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

L_SYSUTILS_LASTDELIMITER$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_LASTDELIMITER$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_URIPARSER_UNESCAPE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _URIPARSER_UNESCAPE$ANSISTRING$$ANSISTRING
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

L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRTOINT$ANSISTRING$$LONGINT
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

L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
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

LFPC_FINALIZE$stub:
.indirect_symbol FPC_FINALIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_URIPARSER_PARSEURI$ANSISTRING$BOOLEAN$$TURI$stub:
.indirect_symbol _URIPARSER_PARSEURI$ANSISTRING$BOOLEAN$$TURI
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_copy_proc$stub:
.indirect_symbol fpc_copy_proc
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_URIPARSER_ENCODEURI$TURI$$ANSISTRING$stub:
.indirect_symbol _URIPARSER_ENCODEURI$TURI$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_URIPARSER_REMOVEDOTSEGMENTS$ANSISTRING$stub:
.indirect_symbol _URIPARSER_REMOVEDOTSEGMENTS$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_initialize$stub:
.indirect_symbol fpc_initialize
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_INITIALIZE$stub:
.indirect_symbol FPC_INITIALIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_finalize$stub:
.indirect_symbol fpc_finalize
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING$stub:
.indirect_symbol _SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_URIPARSER_RESOLVERELATIVEURI$UTF8STRING$UTF8STRING$UTF8STRING$$BOOLEAN$stub:
.indirect_symbol _URIPARSER_RESOLVERELATIVEURI$UTF8STRING$UTF8STRING$UTF8STRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_UNICODESTR_DECR_REF$stub:
.indirect_symbol FPC_UNICODESTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_UTF8DECODE$UTF8STRING$$UNICODESTRING$stub:
.indirect_symbol _SYSTEM_UTF8DECODE$UTF8STRING$$UNICODESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_UNICODESTR_INCR_REF$stub:
.indirect_symbol FPC_UNICODESTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN
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
.globl	_INIT_URIPARSER_TURI
_INIT_URIPARSER_TURI:
	.byte	13,4
	.ascii	"TURI"
	.long	40,8
	.long	_INIT_SYSTEM_ANSISTRING
	.long	0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	8
	.long	_INIT_SYSTEM_ANSISTRING
	.long	12
	.long	_INIT_SYSTEM_ANSISTRING
	.long	20
	.long	_INIT_SYSTEM_ANSISTRING
	.long	24
	.long	_INIT_SYSTEM_ANSISTRING
	.long	28
	.long	_INIT_SYSTEM_ANSISTRING
	.long	32

.const_data
	.align 2
.globl	_RTTI_URIPARSER_TURI
_RTTI_URIPARSER_TURI:
	.byte	13,4
	.ascii	"TURI"
	.long	40,10
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	0
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	4
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	8
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	12
	.long	_RTTI_SYSTEM_WORD
	.long	16
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	20
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	24
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	28
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	32
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	36

.const_data
	.align 2
.globl	_INIT_URIPARSER_DEF21
_INIT_URIPARSER_DEF21:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_URIPARSER_DEF22
_INIT_URIPARSER_DEF22:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_URIPARSER_DEF23
_INIT_URIPARSER_DEF23:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_URIPARSER_DEF24
_INIT_URIPARSER_DEF24:
	.byte	12
	.ascii	"\000"
	.long	4,3
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
L_$URIPARSER$_Ld1$non_lazy_ptr:
.indirect_symbol _$URIPARSER$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$URIPARSER$_Ld2$non_lazy_ptr:
.indirect_symbol _$URIPARSER$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$URIPARSER$_Ld4$non_lazy_ptr:
.indirect_symbol _$URIPARSER$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$URIPARSER$_Ld6$non_lazy_ptr:
.indirect_symbol _$URIPARSER$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$URIPARSER$_Ld8$non_lazy_ptr:
.indirect_symbol _$URIPARSER$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$URIPARSER$_Ld9$non_lazy_ptr:
.indirect_symbol _$URIPARSER$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$URIPARSER$_Ld11$non_lazy_ptr:
.indirect_symbol _$URIPARSER$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$URIPARSER$_Ld13$non_lazy_ptr:
.indirect_symbol _$URIPARSER$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$URIPARSER$_Ld15$non_lazy_ptr:
.indirect_symbol _$URIPARSER$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$URIPARSER$_Ld17$non_lazy_ptr:
.indirect_symbol _$URIPARSER$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$URIPARSER$_Ld19$non_lazy_ptr:
.indirect_symbol _$URIPARSER$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_URIPARSER_TURI$non_lazy_ptr:
.indirect_symbol _INIT_URIPARSER_TURI
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$URIPARSER$_Ld21$non_lazy_ptr:
.indirect_symbol _$URIPARSER$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$URIPARSER$_Ld23$non_lazy_ptr:
.indirect_symbol _$URIPARSER$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$URIPARSER$_Ld25$non_lazy_ptr:
.indirect_symbol _$URIPARSER$_Ld25
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

