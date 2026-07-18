# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_CWSTRING_WIDE2ANSIMOVE$PWIDECHAR$ANSISTRING$WORD$LONGINT
_CWSTRING_WIDE2ANSIMOVE$PWIDECHAR$ANSISTRING$WORD$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj7
	movl	L_U_CWSTRING_ICONV_WIDE2ANSI$non_lazy_ptr-Lj4(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj8
Lj7:
	movl	L_U_CWSTRING_ICONV_WIDE2ANSI$non_lazy_ptr-Lj4(%ebx),%edx
	leal	4(%edx),%eax
Lj8:
	movl	(%eax),%eax
	cmpl	$-1,%eax
	je	Lj5
	jmp	Lj6
Lj5:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movw	-12(%ebp),%cx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_DEFAULTUNICODE2ANSIMOVE$PUNICODECHAR$ANSISTRING$WORD$LONGINT$stub
	jmp	Lj3
Lj6:
	movl	$0,-40(%ebp)
	movl	$0,-44(%ebp)
	movl	8(%ebp),%edx
	imull	$3,%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	8(%ebp),%eax
	imull	$3,%eax
	movl	%eax,-16(%ebp)
	movl	8(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj33
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj4(%ebx),%edx
	movl	%edx,%eax
Lj33:
	movl	%eax,-36(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj37
	.align 2
Lj36:
	call	L_INITC_FPGETCERRNO$$LONGINT$stub
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	cmpl	$7,%eax
	jl	Lj42
	subl	$7,%eax
	je	Lj44
	subl	$15,%eax
	je	Lj43
	subl	$70,%eax
	je	Lj43
	jmp	Lj42
Lj43:
	addl	$2,-32(%ebp)
	subl	$2,-24(%ebp)
	movl	-36(%ebp),%eax
	movb	$63,(%eax)
	incl	-36(%ebp)
	decl	-28(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj49
	movl	L_U_CWSTRING_ICONV_WIDE2ANSI$non_lazy_ptr-Lj4(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj50
Lj49:
	movl	L_U_CWSTRING_ICONV_WIDE2ANSI$non_lazy_ptr-Lj4(%ebx),%edx
	leal	4(%edx),%eax
Lj50:
	movl	(%eax),%eax
	movl	%eax,(%esp)
	leal	-44(%ebp),%eax
	movl	%eax,16(%esp)
	leal	-40(%ebp),%eax
	movl	%eax,12(%esp)
	leal	-44(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-40(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_iconv$stub
	movl	-48(%ebp),%eax
	cmpl	$22,%eax
	je	Lj59
	jmp	Lj60
Lj59:
	jmp	Lj38
Lj60:
	jmp	Lj41
Lj44:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj63
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj4(%ebx),%edx
	movl	%edx,%eax
Lj63:
	movl	-36(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	8(%ebp),%edx
	imull	$3,%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	8(%ebp),%eax
	imull	$3,%eax
	addl	%eax,-28(%ebp)
	movl	8(%ebp),%eax
	imull	$3,%eax
	addl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj70
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj4(%ebx),%edx
	movl	%edx,%eax
Lj70:
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-36(%ebp)
	jmp	Lj41
Lj42:
	movw	$231,%ax
	call	L_SYSTEM_RUNERROR$WORD$stub
Lj41:
Lj37:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj75
	movl	L_U_CWSTRING_ICONV_WIDE2ANSI$non_lazy_ptr-Lj4(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj76
Lj75:
	movl	L_U_CWSTRING_ICONV_WIDE2ANSI$non_lazy_ptr-Lj4(%ebx),%edx
	leal	4(%edx),%eax
Lj76:
	movl	(%eax),%eax
	movl	%eax,(%esp)
	leal	-28(%ebp),%eax
	movl	%eax,16(%esp)
	leal	-36(%ebp),%eax
	movl	%eax,12(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-32(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_iconv$stub
	cmpl	$-1,%eax
	je	Lj36
	jmp	Lj38
Lj38:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj87
	movl	-4(%edx),%edx
Lj87:
	movl	-28(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
Lj3:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_ANSI2WIDEMOVE$PCHAR$WORD$WIDESTRING$LONGINT
_CWSTRING_ANSI2WIDEMOVE$PCHAR$WORD$WIDESTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-48(%ebp)
	call	Lj91
Lj91:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj91(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj94
	movl	L_U_CWSTRING_ICONV_ANSI2WIDE$non_lazy_ptr-Lj91(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj95
Lj94:
	movl	L_U_CWSTRING_ICONV_ANSI2WIDE$non_lazy_ptr-Lj91(%ebx),%edx
	leal	4(%edx),%eax
Lj95:
	movl	(%eax),%eax
	cmpl	$-1,%eax
	je	Lj92
	jmp	Lj93
Lj92:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movw	-8(%ebp),%dx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_DEFAULTANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$LONGINT$stub
	jmp	Lj90
Lj93:
	movl	$0,-36(%ebp)
	movl	$0,-40(%ebp)
	movl	8(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_unicodestr_setlength$stub
	movl	-4(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-16(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj121
	.align 2
Lj120:
	call	L_INITC_FPGETCERRNO$$LONGINT$stub
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	cmpl	$7,%eax
	jl	Lj126
	subl	$7,%eax
	je	Lj128
	subl	$15,%eax
	je	Lj127
	subl	$70,%eax
	je	Lj127
	jmp	Lj126
Lj127:
	incl	-28(%ebp)
	decl	8(%ebp)
	movl	-32(%ebp),%eax
	movw	$63,(%eax)
	addl	$2,-32(%ebp)
	subl	$2,-24(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj91(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj133
	movl	L_U_CWSTRING_ICONV_ANSI2WIDE$non_lazy_ptr-Lj91(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj134
Lj133:
	movl	L_U_CWSTRING_ICONV_ANSI2WIDE$non_lazy_ptr-Lj91(%ebx),%edx
	leal	4(%edx),%eax
Lj134:
	movl	(%eax),%eax
	movl	%eax,(%esp)
	leal	-40(%ebp),%eax
	movl	%eax,16(%esp)
	leal	-36(%ebp),%eax
	movl	%eax,12(%esp)
	leal	-40(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-36(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_iconv$stub
	movl	-44(%ebp),%eax
	cmpl	$22,%eax
	je	Lj143
	jmp	Lj144
Lj143:
	jmp	Lj122
Lj144:
	jmp	Lj125
Lj128:
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	call	Lfpc_unicodestr_setlength$stub
	movl	8(%ebp),%eax
	shll	$1,%eax
	addl	%eax,-24(%ebp)
	movl	8(%ebp),%eax
	addl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-32(%ebp)
	jmp	Lj125
Lj126:
	movw	$231,%ax
	call	L_SYSTEM_RUNERROR$WORD$stub
Lj125:
Lj121:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj91(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj157
	movl	L_U_CWSTRING_ICONV_ANSI2WIDE$non_lazy_ptr-Lj91(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj158
Lj157:
	movl	L_U_CWSTRING_ICONV_ANSI2WIDE$non_lazy_ptr-Lj91(%ebx),%edx
	leal	4(%edx),%eax
Lj158:
	movl	(%eax),%eax
	movl	%eax,(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,16(%esp)
	leal	-32(%ebp),%eax
	movl	%eax,12(%esp)
	leal	8(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-28(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_iconv$stub
	cmpl	$-1,%eax
	je	Lj120
	jmp	Lj122
Lj122:
	movl	-24(%ebp),%edx
	shrl	$1,%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj169
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj169:
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	Lfpc_unicodestr_setlength$stub
Lj90:
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_LOWERWIDESTRING$WIDESTRING$$WIDESTRING
_CWSTRING_LOWERWIDESTRING$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj173
Lj173:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj176
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj176:
	movl	-8(%ebp),%eax
	call	Lfpc_unicodestr_setlength$stub
	movl	-4(%ebp),%esi
	testl	%esi,%esi
	je	Lj182
	movl	-4(%esi),%esi
	shrl	$1,%esi
Lj182:
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj180
	decl	-12(%ebp)
	.align 2
Lj181:
	incl	-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	incl	%eax
	movzwl	-2(%edx,%eax,2),%eax
	movl	%eax,(%esp)
	call	L_towlower$stub
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	testl	%edx,%edx
	jne	Lj187
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj173(%ebx),%ecx
	movl	%ecx,%edx
Lj187:
	movl	-12(%ebp),%ecx
	movw	%ax,(%edx,%ecx,2)
	cmpl	-12(%ebp),%esi
	jg	Lj181
Lj180:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_UPPERWIDESTRING$WIDESTRING$$WIDESTRING
_CWSTRING_UPPERWIDESTRING$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj189
Lj189:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj192
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj192:
	movl	-8(%ebp),%eax
	call	Lfpc_unicodestr_setlength$stub
	movl	-4(%ebp),%esi
	testl	%esi,%esi
	je	Lj198
	movl	-4(%esi),%esi
	shrl	$1,%esi
Lj198:
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj196
	decl	-12(%ebp)
	.align 2
Lj197:
	incl	-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	incl	%eax
	movzwl	-2(%edx,%eax,2),%eax
	movl	%eax,(%esp)
	call	L_towupper$stub
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	testl	%edx,%edx
	jne	Lj203
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj189(%ebx),%ecx
	movl	%ecx,%edx
Lj203:
	movl	-12(%ebp),%ecx
	movw	%ax,(%edx,%ecx,2)
	cmpl	-12(%ebp),%esi
	jg	Lj197
Lj196:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_ENSUREANSILEN$ANSISTRING$LONGINT
_CWSTRING_ENSUREANSILEN$ANSISTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj208
	movl	-4(%eax),%eax
Lj208:
	cmpl	-8(%ebp),%eax
	jl	Lj206
	jmp	Lj207
Lj206:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj211
	movl	-4(%eax),%eax
Lj211:
	cmpl	$2560,%eax
	jl	Lj209
	jmp	Lj210
Lj209:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj214
	movl	-4(%edx),%edx
Lj214:
	addl	$10,%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	jmp	Lj217
Lj210:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj220
	movl	-4(%edx),%edx
Lj220:
	shrl	$8,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj221
	movl	-4(%eax),%eax
Lj221:
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
Lj217:
Lj207:
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_CONCATCHARTOANSISTR$CHAR$ANSISTRING$LONGINT
_CWSTRING_CONCATCHARTOANSISTR$CHAR$ANSISTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj228
	movl	-4(%edx),%edx
Lj228:
	movl	-12(%ebp),%eax
	cmpl	(%eax),%edx
	jl	Lj226
	jmp	Lj227
Lj226:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj231
	movl	-4(%eax),%eax
Lj231:
	cmpl	$2560,%eax
	jl	Lj229
	jmp	Lj230
Lj229:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj234
	movl	-4(%edx),%edx
Lj234:
	addl	$10,%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	jmp	Lj237
Lj230:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj240
	movl	-4(%edx),%edx
Lj240:
	shrl	$8,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj241
	movl	-4(%eax),%eax
Lj241:
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
Lj237:
Lj227:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	leal	-1(%edx,%eax,1),%eax
	movb	-4(%ebp),%dl
	movb	%dl,(%eax)
	movl	-12(%ebp),%eax
	incl	(%eax)
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_CONCATUTF32TOANSISTR$LONGINT$ANSISTRING$LONGINT$MBSTATE_T
_CWSTRING_CONCATUTF32TOANSISTR$LONGINT$ANSISTRING$LONGINT$MBSTATE_T:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	leal	-1(%edx,%eax,1),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$127,%eax
	jle	Lj250
	jmp	Lj251
Lj250:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movb	-4(%ebp),%al
	call	L_CWSTRING_CONCATCHARTOANSISTR$CHAR$ANSISTRING$LONGINT$stub
	jmp	Lj258
Lj251:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	addl	$10,%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj263
	movl	-4(%eax),%eax
Lj263:
	cmpl	-24(%ebp),%eax
	jl	Lj261
	jmp	Lj262
Lj261:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj266
	movl	-4(%eax),%eax
Lj266:
	cmpl	$2560,%eax
	jl	Lj264
	jmp	Lj265
Lj264:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj269
	movl	-4(%edx),%edx
Lj269:
	addl	$10,%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	jmp	Lj272
Lj265:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj275
	movl	-4(%edx),%edx
Lj275:
	shrl	$8,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj276
	movl	-4(%eax),%eax
Lj276:
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
Lj272:
Lj262:
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_wcrtomb$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj287
	jmp	Lj288
Lj287:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,(%eax)
	jmp	Lj289
Lj288:
	movl	-16(%ebp),%eax
	movb	$63,(%eax)
	movl	-12(%ebp),%eax
	incl	(%eax)
Lj289:
Lj258:
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_LOWERANSISTRING$ANSISTRING$$ANSISTRING
_CWSTRING_LOWERANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-152(%ebp),%eax
	movb	$0,%cl
	movl	$128,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	leal	-280(%ebp),%eax
	movb	$0,%cl
	movl	$128,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj308
	movl	-4(%eax),%eax
Lj308:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	addl	$10,%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	$1,-12(%ebp)
	movl	$1,-20(%ebp)
	jmp	Lj318
	.align 2
Lj317:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$127,%al
	jbe	Lj320
	jmp	Lj321
Lj320:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	movl	%eax,-284(%ebp)
	movl	$1,-24(%ebp)
	jmp	Lj326
Lj321:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	%edx,8(%esp)
	leal	-152(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	leal	-1(%edx,%eax,1),%eax
	movl	%eax,4(%esp)
	leal	-284(%ebp),%eax
	movl	%eax,(%esp)
	call	L_mbrtowc$stub
	movl	%eax,-24(%ebp)
Lj326:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj340
	subl	$-2,%eax
	je	Lj339
	decl	%eax
	je	Lj340
	jmp	Lj338
Lj339:
	jmp	Lj342
	.align 2
Lj341:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_CWSTRING_CONCATCHARTOANSISTR$CHAR$ANSISTRING$LONGINT$stub
	incl	-12(%ebp)
Lj342:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj341
	jmp	Lj343
Lj343:
	jmp	Lj337
Lj340:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_CWSTRING_CONCATCHARTOANSISTR$CHAR$ANSISTRING$LONGINT$stub
	incl	-12(%ebp)
	jmp	Lj337
Lj338:
	movl	-284(%ebp),%eax
	movl	%eax,(%esp)
	call	L_towlower$stub
	leal	-280(%ebp),%edx
	movl	%edx,(%esp)
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_CWSTRING_CONCATUTF32TOANSISTR$LONGINT$ANSISTRING$LONGINT$MBSTATE_T$stub
	movl	-24(%ebp),%eax
	addl	%eax,-12(%ebp)
Lj337:
Lj318:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj317
	jmp	Lj319
Lj319:
	movl	-20(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_UPPERANSISTRING$ANSISTRING$$ANSISTRING
_CWSTRING_UPPERANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-152(%ebp),%eax
	movb	$0,%cl
	movl	$128,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	leal	-280(%ebp),%eax
	movb	$0,%cl
	movl	$128,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj386
	movl	-4(%eax),%eax
Lj386:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	addl	$10,%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	$1,-12(%ebp)
	movl	$1,-20(%ebp)
	jmp	Lj396
	.align 2
Lj395:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$127,%al
	jbe	Lj398
	jmp	Lj399
Lj398:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	movl	%eax,-284(%ebp)
	movl	$1,-24(%ebp)
	jmp	Lj404
Lj399:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	%edx,8(%esp)
	leal	-152(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	leal	-1(%edx,%eax,1),%eax
	movl	%eax,4(%esp)
	leal	-284(%ebp),%eax
	movl	%eax,(%esp)
	call	L_mbrtowc$stub
	movl	%eax,-24(%ebp)
Lj404:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj418
	subl	$-2,%eax
	je	Lj417
	decl	%eax
	je	Lj418
	jmp	Lj416
Lj417:
	jmp	Lj420
	.align 2
Lj419:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_CWSTRING_CONCATCHARTOANSISTR$CHAR$ANSISTRING$LONGINT$stub
	incl	-12(%ebp)
Lj420:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj419
	jmp	Lj421
Lj421:
	jmp	Lj415
Lj418:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_CWSTRING_CONCATCHARTOANSISTR$CHAR$ANSISTRING$LONGINT$stub
	incl	-12(%ebp)
	jmp	Lj415
Lj416:
	movl	-284(%ebp),%eax
	movl	%eax,(%esp)
	call	L_towupper$stub
	leal	-280(%ebp),%edx
	movl	%edx,(%esp)
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_CWSTRING_CONCATUTF32TOANSISTR$LONGINT$ANSISTRING$LONGINT$MBSTATE_T$stub
	movl	-24(%ebp),%eax
	addl	%eax,-12(%ebp)
Lj415:
Lj396:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj395
	jmp	Lj397
Lj397:
	movl	-20(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_WIDESTRINGTOUCS4STRINGNONULLS$WIDESTRING$$UCS4STRING
_CWSTRING_WIDESTRINGTOUCS4STRINGNONULLS$WIDESTRING$$UCS4STRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj449
Lj449:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj450
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj455
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj455:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_SYSTEM_UCS4STRING$non_lazy_ptr-Lj449(%ebx),%edx
	leal	-8(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	$1,-12(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj471
	.align 2
Lj470:
	leal	-24(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	LFPC_UTF16TOUTF32$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj481
	jmp	Lj482
Lj481:
	movl	$32,-28(%ebp)
Lj482:
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,(%ecx,%edx,4)
	incl	-20(%ebp)
	movl	-24(%ebp),%eax
	addl	%eax,-12(%ebp)
Lj471:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj470
	jmp	Lj472
Lj472:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	$0,(%edx,%eax,4)
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_SYSTEM_UCS4STRING$non_lazy_ptr-Lj449(%ebx),%edx
	leal	-8(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj450:
	call	LFPC_POPADDRSTACK$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj451
	movl	L_INIT_SYSTEM_UCS4STRING$non_lazy_ptr-Lj449(%ebx),%edx
	leal	-8(%ebp),%eax
	call	Lfpc_finalize$stub
	call	LFPC_RERAISE$stub
Lj451:
	movl	-8(%ebp),%eax
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_COMPAREWIDESTRING$WIDESTRING$WIDESTRING$$LONGINT
_CWSTRING_COMPAREWIDESTRING$WIDESTRING$WIDESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj506
Lj506:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj507
	movl	-4(%ebp),%eax
	call	L_CWSTRING_WIDESTRINGTOUCS4STRINGNONULLS$WIDESTRING$$UCS4STRING$stub
	movl	%eax,%ebx
	movl	L_INIT_SYSTEM_UCS4STRING$non_lazy_ptr-Lj506(%esi),%edx
	leal	-16(%ebp),%eax
	call	LFPC_DYNARRAY_DECR_REF$stub
	movl	%ebx,-16(%ebp)
	movl	-8(%ebp),%eax
	call	L_CWSTRING_WIDESTRINGTOUCS4STRINGNONULLS$WIDESTRING$$UCS4STRING$stub
	movl	%eax,%ebx
	movl	L_INIT_SYSTEM_UCS4STRING$non_lazy_ptr-Lj506(%esi),%edx
	leal	-20(%ebp),%eax
	call	LFPC_DYNARRAY_DECR_REF$stub
	movl	%ebx,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	L_wcscoll$stub
	movl	%eax,-12(%ebp)
Lj507:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_UCS4STRING$non_lazy_ptr-Lj506(%esi),%edx
	leal	-16(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_SYSTEM_UCS4STRING$non_lazy_ptr-Lj506(%esi),%edx
	leal	-20(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj508
	call	LFPC_RERAISE$stub
Lj508:
	movl	-12(%ebp),%eax
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_COMPARETEXTWIDESTRING$WIDESTRING$WIDESTRING$$LONGINT
_CWSTRING_COMPARETEXTWIDESTRING$WIDESTRING$WIDESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj534
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CWSTRING_UPPERWIDESTRING$WIDESTRING$$WIDESTRING$stub
	movl	-56(%ebp),%ebx
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CWSTRING_UPPERWIDESTRING$WIDESTRING$$WIDESTRING$stub
	movl	-60(%ebp),%eax
	movl	%ebx,%edx
	call	L_CWSTRING_COMPAREWIDESTRING$WIDESTRING$WIDESTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj534:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj535
	call	LFPC_RERAISE$stub
Lj535:
	movl	-12(%ebp),%eax
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_CHARLENGTHPCHAR$PCHAR$$LONGINT
_CWSTRING_CHARLENGTHPCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-144(%ebp),%eax
	movb	$0,%cl
	movl	$128,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	.align 2
Lj563:
	movl	$10,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	leal	-144(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_mbrlen$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj574
	jmp	Lj575
Lj574:
	movl	$1,-12(%ebp)
Lj575:
	movl	-12(%ebp),%eax
	addl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	addl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj565
	jmp	Lj563
Lj565:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_CODEPOINTLENGTH$PCHAR$LONGINT$$LONGINT
_CWSTRING_CODEPOINTLENGTH$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-144(%ebp),%eax
	movb	$0,%cl
	movl	$128,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	leal	-144(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_mbrlen$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj594
	jmp	Lj595
Lj594:
	movl	$-1,-12(%ebp)
Lj595:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_STRCOMPANSIINTERN$PCHAR$PCHAR$LONGINT$LONGINT$BOOLEAN$BOOLEAN$$LONGINT
_CWSTRING_STRCOMPANSIINTERN$PCHAR$PCHAR$LONGINT$LONGINT$BOOLEAN$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	12(%ebp),%al
	testb	%al,%al
	je	Lj600
	jmp	Lj601
Lj600:
	movl	-12(%ebp),%edx
	incl	%edx
	leal	-20(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	jmp	Lj606
Lj601:
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj606:
	movl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj610
	decl	-28(%ebp)
	.align 2
Lj611:
	incl	-28(%ebp)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%ecx
	movb	(%edx,%ecx,1),%dl
	testb	%dl,%dl
	jne	Lj612
	jmp	Lj613
Lj612:
	movl	-20(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-4(%ebp),%ecx
	movl	-28(%ebp),%edx
	movb	(%ecx,%edx,1),%dl
	movb	%dl,(%ebx,%esi,1)
	jmp	Lj616
Lj613:
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%ecx
	movb	$32,(%edx,%ecx,1)
Lj616:
	cmpl	-28(%ebp),%eax
	jg	Lj611
Lj610:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$0,(%edx,%eax,1)
	movb	8(%ebp),%al
	testb	%al,%al
	je	Lj621
	jmp	Lj622
Lj621:
	movl	16(%ebp),%edx
	incl	%edx
	leal	-24(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	jmp	Lj627
Lj622:
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj627:
	movl	16(%ebp),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj631
	decl	-28(%ebp)
	.align 2
Lj632:
	incl	-28(%ebp)
	movl	-8(%ebp),%ecx
	movl	-28(%ebp),%edx
	movb	(%ecx,%edx,1),%dl
	testb	%dl,%dl
	jne	Lj633
	jmp	Lj634
Lj633:
	movl	-24(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-8(%ebp),%ecx
	movl	-28(%ebp),%edx
	movb	(%ecx,%edx,1),%dl
	movb	%dl,(%ebx,%esi,1)
	jmp	Lj637
Lj634:
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%ecx
	movb	$32,(%edx,%ecx,1)
Lj637:
	cmpl	-28(%ebp),%eax
	jg	Lj632
Lj631:
	movl	-24(%ebp),%eax
	movl	16(%ebp),%edx
	movb	$0,(%eax,%edx,1)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	L_strcoll$stub
	movl	%eax,-16(%ebp)
	movb	12(%ebp),%al
	testb	%al,%al
	je	Lj648
	jmp	Lj649
Lj648:
	movl	-20(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj649:
	movb	8(%ebp),%al
	testb	%al,%al
	je	Lj652
	jmp	Lj653
Lj652:
	movl	-24(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj653:
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_COMPARESTRANSISTRING$ANSISTRING$ANSISTRING$$LONGINT
_CWSTRING_COMPARESTRANSISTRING$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj657
Lj657:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,(%esp)
	movb	$0,4(%esp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj666
	movl	-4(%eax),%eax
Lj666:
	movl	%eax,8(%esp)
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj669
	movl	-4(%ecx),%ecx
Lj669:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj672
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj657(%esi),%edx
	movl	%edx,%eax
Lj672:
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	jne	Lj675
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj657(%esi),%edx
	movl	%edx,%ebx
Lj675:
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_CWSTRING_STRCOMPANSIINTERN$PCHAR$PCHAR$LONGINT$LONGINT$BOOLEAN$BOOLEAN$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_STRCOMPANSI$PCHAR$PCHAR$$LONGINT
_CWSTRING_STRCOMPANSI$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_strcoll$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_ANSICOMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
_CWSTRING_ANSICOMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj685
Lj685:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj686
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CWSTRING_UPPERANSISTRING$ANSISTRING$$ANSISTRING$stub
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CWSTRING_UPPERANSISTRING$ANSISTRING$$ANSISTRING$stub
	movb	$1,(%esp)
	movb	$1,4(%esp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj705
	movl	-4(%eax),%eax
Lj705:
	movl	%eax,8(%esp)
	movl	-16(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj708
	movl	-4(%ecx),%ecx
Lj708:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj711
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj685(%esi),%edx
	movl	%edx,%eax
Lj711:
	movl	-16(%ebp),%ebx
	testl	%ebx,%ebx
	jne	Lj714
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj685(%esi),%edx
	movl	%edx,%ebx
Lj714:
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_CWSTRING_STRCOMPANSIINTERN$PCHAR$PCHAR$LONGINT$LONGINT$BOOLEAN$BOOLEAN$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj686:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj687
	call	LFPC_RERAISE$stub
Lj687:
	movl	-12(%ebp),%eax
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_ANSISTRICOMP$PCHAR$PCHAR$$LONGINT
_CWSTRING_ANSISTRICOMP$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj729
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_pchar_to_ansistr$stub
	movl	-56(%ebp),%ebx
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_pchar_to_ansistr$stub
	movl	-60(%ebp),%eax
	movl	%ebx,%edx
	call	L_CWSTRING_ANSICOMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj729:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj730
	call	LFPC_RERAISE$stub
Lj730:
	movl	-12(%ebp),%eax
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$LONGINT
_CWSTRING_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj748
	jmp	Lj749
Lj748:
	movl	$0,-16(%ebp)
	jmp	Lj746
Lj749:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	(%eax,%edx,1),%al
	testb	%al,%al
	jne	Lj752
	jmp	Lj753
Lj752:
	movl	-12(%ebp),%edx
	incl	%edx
	leal	-20(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$0,(%edx,%eax,1)
	jmp	Lj766
Lj753:
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj766:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	(%eax,%edx,1),%al
	testb	%al,%al
	jne	Lj769
	jmp	Lj770
Lj769:
	movl	-12(%ebp),%edx
	incl	%edx
	leal	-24(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$0,(%edx,%eax,1)
	jmp	Lj783
Lj770:
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj783:
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	setneb	%al
	movb	%al,(%esp)
	movl	-20(%ebp),%eax
	cmpl	-4(%ebp),%eax
	setneb	%al
	movb	%al,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CWSTRING_STRCOMPANSIINTERN$PCHAR$PCHAR$LONGINT$LONGINT$BOOLEAN$BOOLEAN$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj800
	jmp	Lj801
Lj800:
	movl	-20(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj801:
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj804
	jmp	Lj805
Lj804:
	movl	-24(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj805:
Lj746:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$LONGINT
_CWSTRING_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj810
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj813
	jmp	Lj814
Lj813:
	movl	$0,-16(%ebp)
	jmp	Lj810
Lj814:
	movl	-12(%ebp),%edx
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CWSTRING_ANSICOMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
Lj810:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj811
	call	LFPC_RERAISE$stub
Lj811:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_ANSI2PCHAR$ANSISTRING$PCHAR$PCHAR
_CWSTRING_ANSI2PCHAR$ANSISTRING$PCHAR$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj863
	movl	-4(%eax),%eax
Lj863:
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	cmpl	-16(%ebp),%eax
	jl	Lj864
	jmp	Lj865
Lj864:
	call	LFPC_RANGEERROR$stub
Lj865:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,(%edx)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj870
	jmp	Lj871
Lj870:
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj871:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movb	$0,(%eax,%edx,1)
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_ANSISTRLOWER$PCHAR$$PCHAR
_CWSTRING_ANSISTRLOWER$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj882
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_pchar_to_ansistr$stub
	movl	-56(%ebp),%eax
	leal	-12(%ebp),%edx
	call	L_CWSTRING_LOWERANSISTRING$ANSISTRING$$ANSISTRING$stub
	leal	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CWSTRING_ANSI2PCHAR$ANSISTRING$PCHAR$PCHAR$stub
Lj882:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj883
	call	LFPC_RERAISE$stub
Lj883:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_ANSISTRUPPER$PCHAR$$PCHAR
_CWSTRING_ANSISTRUPPER$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj907
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_pchar_to_ansistr$stub
	movl	-56(%ebp),%eax
	leal	-12(%ebp),%edx
	call	L_CWSTRING_UPPERANSISTRING$ANSISTRING$$ANSISTRING$stub
	leal	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CWSTRING_ANSI2PCHAR$ANSISTRING$PCHAR$PCHAR$stub
Lj907:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj908
	call	LFPC_RERAISE$stub
Lj908:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_INITTHREAD
_CWSTRING_INITTHREAD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	call	Lj931
Lj931:
	popl	%ebx
	movl	$0,(%esp)
	call	L_nl_langinfo$stub
	movl	%eax,(%esp)
	movl	L_$CWSTRING$_Ld1$non_lazy_ptr-Lj931(%ebx),%eax
	movl	%eax,4(%esp)
	call	L_iconv_open$stub
	movl	%eax,%esi
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj931(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj940
	movl	L_U_CWSTRING_ICONV_WIDE2ANSI$non_lazy_ptr-Lj931(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj941
Lj940:
	movl	L_U_CWSTRING_ICONV_WIDE2ANSI$non_lazy_ptr-Lj931(%ebx),%edx
	leal	4(%edx),%eax
Lj941:
	movl	%esi,(%eax)
	movl	L_$CWSTRING$_Ld1$non_lazy_ptr-Lj931(%ebx),%esi
	movl	$0,(%esp)
	call	L_nl_langinfo$stub
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	call	L_iconv_open$stub
	movl	%eax,%esi
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj931(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj950
	movl	L_U_CWSTRING_ICONV_ANSI2WIDE$non_lazy_ptr-Lj931(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj951
Lj950:
	movl	L_U_CWSTRING_ICONV_ANSI2WIDE$non_lazy_ptr-Lj931(%ebx),%edx
	leal	4(%edx),%eax
Lj951:
	movl	%esi,(%eax)
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_FINITHREAD
_CWSTRING_FINITHREAD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj953
Lj953:
	popl	%ebx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj953(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj956
	movl	L_U_CWSTRING_ICONV_WIDE2ANSI$non_lazy_ptr-Lj953(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj957
Lj956:
	movl	L_U_CWSTRING_ICONV_WIDE2ANSI$non_lazy_ptr-Lj953(%ebx),%edx
	leal	4(%edx),%eax
Lj957:
	movl	(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj954
	jmp	Lj955
Lj954:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj953(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj960
	movl	L_U_CWSTRING_ICONV_WIDE2ANSI$non_lazy_ptr-Lj953(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj961
Lj960:
	movl	L_U_CWSTRING_ICONV_WIDE2ANSI$non_lazy_ptr-Lj953(%ebx),%edx
	leal	4(%edx),%eax
Lj961:
	movl	(%eax),%eax
	movl	%eax,(%esp)
	call	L_iconv_close$stub
Lj955:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj953(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj964
	movl	L_U_CWSTRING_ICONV_ANSI2WIDE$non_lazy_ptr-Lj953(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj965
Lj964:
	movl	L_U_CWSTRING_ICONV_ANSI2WIDE$non_lazy_ptr-Lj953(%ebx),%edx
	leal	4(%edx),%eax
Lj965:
	movl	(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj962
	jmp	Lj963
Lj962:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj953(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj968
	movl	L_U_CWSTRING_ICONV_ANSI2WIDE$non_lazy_ptr-Lj953(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj969
Lj968:
	movl	L_U_CWSTRING_ICONV_ANSI2WIDE$non_lazy_ptr-Lj953(%ebx),%edx
	leal	4(%edx),%eax
Lj969:
	movl	(%eax),%eax
	movl	%eax,(%esp)
	call	L_iconv_close$stub
Lj963:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_UNICODE2ANSIMOVE$PUNICODECHAR$ANSISTRING$WORD$LONGINT
_CWSTRING_UNICODE2ANSIMOVE$PUNICODECHAR$ANSISTRING$WORD$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movw	-12(%ebp),%cx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CWSTRING_WIDE2ANSIMOVE$PWIDECHAR$ANSISTRING$WORD$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_ANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$LONGINT
_CWSTRING_ANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj982
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%ecx
	movw	-8(%ebp),%dx
	movl	-4(%ebp),%eax
	call	L_CWSTRING_ANSI2WIDEMOVE$PCHAR$WORD$WIDESTRING$LONGINT$stub
	movl	-16(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	movl	%eax,(%ebx)
Lj982:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj983
	call	LFPC_RERAISE$stub
Lj983:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CWSTRING_SETCWIDESTRINGMANAGER
_CWSTRING_SETCWIDESTRINGMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-116(%ebp)
	movl	%esi,-112(%ebp)
	movl	%edi,-108(%ebp)
	call	Lj1002
Lj1002:
	popl	%ebx
	leal	-104(%ebp),%edi
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	L_CWSTRING_WIDE2ANSIMOVE$PWIDECHAR$ANSISTRING$WORD$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-104(%ebp)
	movl	L_CWSTRING_ANSI2WIDEMOVE$PCHAR$WORD$WIDESTRING$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-100(%ebp)
	movl	L_CWSTRING_UPPERWIDESTRING$WIDESTRING$$WIDESTRING$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-96(%ebp)
	movl	L_CWSTRING_LOWERWIDESTRING$WIDESTRING$$WIDESTRING$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-92(%ebp)
	movl	L_CWSTRING_COMPAREWIDESTRING$WIDESTRING$WIDESTRING$$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-88(%ebp)
	movl	L_CWSTRING_COMPARETEXTWIDESTRING$WIDESTRING$WIDESTRING$$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_CWSTRING_CHARLENGTHPCHAR$PCHAR$$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-80(%ebp)
	movl	L_CWSTRING_CODEPOINTLENGTH$PCHAR$LONGINT$$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-76(%ebp)
	movl	L_CWSTRING_UPPERANSISTRING$ANSISTRING$$ANSISTRING$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-72(%ebp)
	movl	L_CWSTRING_LOWERANSISTRING$ANSISTRING$$ANSISTRING$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-68(%ebp)
	movl	L_CWSTRING_COMPARESTRANSISTRING$ANSISTRING$ANSISTRING$$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-64(%ebp)
	movl	L_CWSTRING_ANSICOMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-60(%ebp)
	movl	L_CWSTRING_STRCOMPANSI$PCHAR$PCHAR$$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-56(%ebp)
	movl	L_CWSTRING_ANSISTRICOMP$PCHAR$PCHAR$$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-52(%ebp)
	movl	L_CWSTRING_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-48(%ebp)
	movl	L_CWSTRING_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-44(%ebp)
	movl	L_CWSTRING_ANSISTRLOWER$PCHAR$$PCHAR$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-40(%ebp)
	movl	L_CWSTRING_ANSISTRUPPER$PCHAR$$PCHAR$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-36(%ebp)
	movl	L_CWSTRING_INITTHREAD$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-32(%ebp)
	movl	L_CWSTRING_FINITHREAD$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-28(%ebp)
	movl	L_CWSTRING_UNICODE2ANSIMOVE$PUNICODECHAR$ANSISTRING$WORD$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-24(%ebp)
	movl	L_CWSTRING_ANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-20(%ebp)
	movl	L_CWSTRING_UPPERWIDESTRING$WIDESTRING$$WIDESTRING$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-16(%ebp)
	movl	L_CWSTRING_LOWERWIDESTRING$WIDESTRING$$WIDESTRING$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-12(%ebp)
	movl	L_CWSTRING_COMPAREWIDESTRING$WIDESTRING$WIDESTRING$$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	L_CWSTRING_COMPARETEXTWIDESTRING$WIDESTRING$WIDESTRING$$LONGINT$non_lazy_ptr-Lj1002(%ebx),%eax
	movl	%eax,-4(%ebp)
	leal	-104(%ebp),%eax
	call	L_SYSTEM_SETUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER$stub
	movl	-116(%ebp),%ebx
	movl	-112(%ebp),%esi
	movl	-108(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIT$_CWSTRING
_INIT$_CWSTRING:
.reference __CWSTRING_init
.globl	__CWSTRING_init
__CWSTRING_init:
.reference _INIT$_CWSTRING
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	call	L_CWSTRING_SETCWIDESTRINGMANAGER$stub
	movl	$0,(%esp)
	movl	L_$CWSTRING$_Ld2$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,4(%esp)
	call	L_setlocale$stub
	call	L_CWSTRING_INITTHREAD$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_CWSTRING
_FINALIZE$_CWSTRING:
.reference __CWSTRING_finalize
.globl	__CWSTRING_finalize
__CWSTRING_finalize:
.reference _FINALIZE$_CWSTRING
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_CWSTRING_FINITHREAD$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_CWSTRING_ICONV_ANSI2WIDE
.data
.zerofill __DATA, __common, _U_CWSTRING_ICONV_ANSI2WIDE, 8,2




	.align 2
.globl _U_CWSTRING_ICONV_WIDE2ANSI
.data
.zerofill __DATA, __common, _U_CWSTRING_ICONV_WIDE2ANSI, 8,2



.data
	.align 2
.globl	_THREADVARLIST_CWSTRING
_THREADVARLIST_CWSTRING:
	.long	_U_CWSTRING_ICONV_ANSI2WIDE
	.long	4
	.long	_U_CWSTRING_ICONV_WIDE2ANSI
	.long	4,0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$CWSTRING$_Ld1
_$CWSTRING$_Ld1:
	.ascii	"UTF-16LE\000"

.const
	.align 2
.globl	_$CWSTRING$_Ld2
_$CWSTRING$_Ld2:
	.ascii	"\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DEFAULTUNICODE2ANSIMOVE$PUNICODECHAR$ANSISTRING$WORD$LONGINT$stub:
.indirect_symbol _SYSTEM_DEFAULTUNICODE2ANSIMOVE$PUNICODECHAR$ANSISTRING$WORD$LONGINT
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

L_INITC_FPGETCERRNO$$LONGINT$stub:
.indirect_symbol _INITC_FPGETCERRNO$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_iconv$stub:
.indirect_symbol _iconv
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RUNERROR$WORD$stub:
.indirect_symbol _SYSTEM_RUNERROR$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DEFAULTANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$LONGINT$stub:
.indirect_symbol _SYSTEM_DEFAULTANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_setlength$stub:
.indirect_symbol fpc_unicodestr_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_towlower$stub:
.indirect_symbol _towlower
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_towupper$stub:
.indirect_symbol _towupper
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CWSTRING_CONCATCHARTOANSISTR$CHAR$ANSISTRING$LONGINT$stub:
.indirect_symbol _CWSTRING_CONCATCHARTOANSISTR$CHAR$ANSISTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_wcrtomb$stub:
.indirect_symbol _wcrtomb
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

L_mbrtowc$stub:
.indirect_symbol _mbrtowc
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CWSTRING_CONCATUTF32TOANSISTR$LONGINT$ANSISTRING$LONGINT$MBSTATE_T$stub:
.indirect_symbol _CWSTRING_CONCATUTF32TOANSISTR$LONGINT$ANSISTRING$LONGINT$MBSTATE_T
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

Lfpc_dynarray_setlength$stub:
.indirect_symbol fpc_dynarray_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_UTF16TOUTF32$stub:
.indirect_symbol FPC_UTF16TOUTF32
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

Lfpc_finalize$stub:
.indirect_symbol fpc_finalize
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

L_CWSTRING_WIDESTRINGTOUCS4STRINGNONULLS$WIDESTRING$$UCS4STRING$stub:
.indirect_symbol _CWSTRING_WIDESTRINGTOUCS4STRINGNONULLS$WIDESTRING$$UCS4STRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DYNARRAY_DECR_REF$stub:
.indirect_symbol FPC_DYNARRAY_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_wcscoll$stub:
.indirect_symbol _wcscoll
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

L_CWSTRING_UPPERWIDESTRING$WIDESTRING$$WIDESTRING$stub:
.indirect_symbol _CWSTRING_UPPERWIDESTRING$WIDESTRING$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CWSTRING_COMPAREWIDESTRING$WIDESTRING$WIDESTRING$$LONGINT$stub:
.indirect_symbol _CWSTRING_COMPAREWIDESTRING$WIDESTRING$WIDESTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_mbrlen$stub:
.indirect_symbol _mbrlen
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

L_strcoll$stub:
.indirect_symbol _strcoll
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

L_CWSTRING_STRCOMPANSIINTERN$PCHAR$PCHAR$LONGINT$LONGINT$BOOLEAN$BOOLEAN$$LONGINT$stub:
.indirect_symbol _CWSTRING_STRCOMPANSIINTERN$PCHAR$PCHAR$LONGINT$LONGINT$BOOLEAN$BOOLEAN$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CWSTRING_UPPERANSISTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _CWSTRING_UPPERANSISTRING$ANSISTRING$$ANSISTRING
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
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

L_CWSTRING_ANSICOMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _CWSTRING_ANSICOMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
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

Lfpc_ansistr_unique$stub:
.indirect_symbol fpc_ansistr_unique
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

LFPC_RANGEERROR$stub:
.indirect_symbol FPC_RANGEERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CWSTRING_LOWERANSISTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _CWSTRING_LOWERANSISTRING$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CWSTRING_ANSI2PCHAR$ANSISTRING$PCHAR$PCHAR$stub:
.indirect_symbol _CWSTRING_ANSI2PCHAR$ANSISTRING$PCHAR$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_nl_langinfo$stub:
.indirect_symbol _nl_langinfo
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_iconv_open$stub:
.indirect_symbol _iconv_open
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_iconv_close$stub:
.indirect_symbol _iconv_close
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CWSTRING_WIDE2ANSIMOVE$PWIDECHAR$ANSISTRING$WORD$LONGINT$stub:
.indirect_symbol _CWSTRING_WIDE2ANSIMOVE$PWIDECHAR$ANSISTRING$WORD$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CWSTRING_ANSI2WIDEMOVE$PCHAR$WORD$WIDESTRING$LONGINT$stub:
.indirect_symbol _CWSTRING_ANSI2WIDEMOVE$PCHAR$WORD$WIDESTRING$LONGINT
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

Lfpc_unicodestr_decr_ref$stub:
.indirect_symbol fpc_unicodestr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SETUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER$stub:
.indirect_symbol _SYSTEM_SETUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CWSTRING_SETCWIDESTRINGMANAGER$stub:
.indirect_symbol _CWSTRING_SETCWIDESTRINGMANAGER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_setlocale$stub:
.indirect_symbol _setlocale
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CWSTRING_INITTHREAD$stub:
.indirect_symbol _CWSTRING_INITTHREAD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CWSTRING_FINITHREAD$stub:
.indirect_symbol _CWSTRING_FINITHREAD
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
LFPC_THREADVAR_RELOCATE$non_lazy_ptr:
.indirect_symbol FPC_THREADVAR_RELOCATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CWSTRING_ICONV_WIDE2ANSI$non_lazy_ptr:
.indirect_symbol _U_CWSTRING_ICONV_WIDE2ANSI
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CWSTRING_ICONV_ANSI2WIDE$non_lazy_ptr:
.indirect_symbol _U_CWSTRING_ICONV_ANSI2WIDE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_SYSTEM_UCS4STRING$non_lazy_ptr:
.indirect_symbol _INIT_SYSTEM_UCS4STRING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CWSTRING$_Ld1$non_lazy_ptr:
.indirect_symbol _$CWSTRING$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_WIDESTRINGMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_WIDE2ANSIMOVE$PWIDECHAR$ANSISTRING$WORD$LONGINT$non_lazy_ptr:
.indirect_symbol _CWSTRING_WIDE2ANSIMOVE$PWIDECHAR$ANSISTRING$WORD$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_ANSI2WIDEMOVE$PCHAR$WORD$WIDESTRING$LONGINT$non_lazy_ptr:
.indirect_symbol _CWSTRING_ANSI2WIDEMOVE$PCHAR$WORD$WIDESTRING$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_UPPERWIDESTRING$WIDESTRING$$WIDESTRING$non_lazy_ptr:
.indirect_symbol _CWSTRING_UPPERWIDESTRING$WIDESTRING$$WIDESTRING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_LOWERWIDESTRING$WIDESTRING$$WIDESTRING$non_lazy_ptr:
.indirect_symbol _CWSTRING_LOWERWIDESTRING$WIDESTRING$$WIDESTRING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_COMPAREWIDESTRING$WIDESTRING$WIDESTRING$$LONGINT$non_lazy_ptr:
.indirect_symbol _CWSTRING_COMPAREWIDESTRING$WIDESTRING$WIDESTRING$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_COMPARETEXTWIDESTRING$WIDESTRING$WIDESTRING$$LONGINT$non_lazy_ptr:
.indirect_symbol _CWSTRING_COMPARETEXTWIDESTRING$WIDESTRING$WIDESTRING$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_CHARLENGTHPCHAR$PCHAR$$LONGINT$non_lazy_ptr:
.indirect_symbol _CWSTRING_CHARLENGTHPCHAR$PCHAR$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_CODEPOINTLENGTH$PCHAR$LONGINT$$LONGINT$non_lazy_ptr:
.indirect_symbol _CWSTRING_CODEPOINTLENGTH$PCHAR$LONGINT$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_UPPERANSISTRING$ANSISTRING$$ANSISTRING$non_lazy_ptr:
.indirect_symbol _CWSTRING_UPPERANSISTRING$ANSISTRING$$ANSISTRING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_LOWERANSISTRING$ANSISTRING$$ANSISTRING$non_lazy_ptr:
.indirect_symbol _CWSTRING_LOWERANSISTRING$ANSISTRING$$ANSISTRING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_COMPARESTRANSISTRING$ANSISTRING$ANSISTRING$$LONGINT$non_lazy_ptr:
.indirect_symbol _CWSTRING_COMPARESTRANSISTRING$ANSISTRING$ANSISTRING$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_ANSICOMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$non_lazy_ptr:
.indirect_symbol _CWSTRING_ANSICOMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_STRCOMPANSI$PCHAR$PCHAR$$LONGINT$non_lazy_ptr:
.indirect_symbol _CWSTRING_STRCOMPANSI$PCHAR$PCHAR$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_ANSISTRICOMP$PCHAR$PCHAR$$LONGINT$non_lazy_ptr:
.indirect_symbol _CWSTRING_ANSISTRICOMP$PCHAR$PCHAR$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$LONGINT$non_lazy_ptr:
.indirect_symbol _CWSTRING_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$LONGINT$non_lazy_ptr:
.indirect_symbol _CWSTRING_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_ANSISTRLOWER$PCHAR$$PCHAR$non_lazy_ptr:
.indirect_symbol _CWSTRING_ANSISTRLOWER$PCHAR$$PCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_ANSISTRUPPER$PCHAR$$PCHAR$non_lazy_ptr:
.indirect_symbol _CWSTRING_ANSISTRUPPER$PCHAR$$PCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_INITTHREAD$non_lazy_ptr:
.indirect_symbol _CWSTRING_INITTHREAD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_FINITHREAD$non_lazy_ptr:
.indirect_symbol _CWSTRING_FINITHREAD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_UNICODE2ANSIMOVE$PUNICODECHAR$ANSISTRING$WORD$LONGINT$non_lazy_ptr:
.indirect_symbol _CWSTRING_UNICODE2ANSIMOVE$PUNICODECHAR$ANSISTRING$WORD$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CWSTRING_ANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$LONGINT$non_lazy_ptr:
.indirect_symbol _CWSTRING_ANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CWSTRING$_Ld2$non_lazy_ptr:
.indirect_symbol _$CWSTRING$_Ld2
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

