	.file "typinfo.pp"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
TYPINFO_ALIGNTOPTR$POINTER$$POINTER:
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
	.balign 4,0x90
.globl	TYPINFO_GETENUMNAME$PTYPEINFO$LONGINT$$ANSISTRING
TYPINFO_GETENUMNAME$PTYPEINFO$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$18,%al
	je	Lj13
	jmp	Lj14
Lj13:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jl	Lj16
	subl	$1,%eax
	jle	Lj17
	jmp	Lj16
Lj17:
	movb	-8(%ebp),%al
	movzbl	%al,%ebx
	movl	TC_TYPINFO_BOOLEANIDENTS(,%ebx,4),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	TC_TYPINFO_BOOLEANIDENTS(,%ebx,4),%eax
	movl	%eax,(%esi)
	jmp	Lj15
Lj16:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
Lj15:
	jmp	Lj24
Lj14:
	movl	-20(%ebp),%eax
	leal	13(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	1(%eax),%eax
	subl	%eax,-8(%ebp)
	jmp	Lj28
	.balign 4,0x90
Lj27:
	movl	-16(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	decl	-8(%ebp)
Lj28:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj27
	jmp	Lj29
Lj29:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	call	fpc_shortstr_to_ansistr
Lj24:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETENUMVALUE$PTYPEINFO$ANSISTRING$$LONGINT
TYPINFO_GETENUMVALUE$PTYPEINFO$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj40
	movl	-4(%eax),%eax
Lj40:
	testl	%eax,%eax
	je	Lj38
	jmp	Lj39
Lj38:
	movl	$-1,-12(%ebp)
	jmp	Lj36
Lj39:
	movl	-8(%ebp),%ecx
	leal	-280(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	-4(%ebp),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movl	%eax,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$-1,-12(%ebp)
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$18,%al
	je	Lj57
	jmp	Lj58
Lj57:
	movl	-8(%ebp),%edx
	movl	TC_TYPINFO_BOOLEANIDENTS,%eax
	call	SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
	testl	%eax,%eax
	je	Lj59
	jmp	Lj60
Lj59:
	movl	$0,-12(%ebp)
	jmp	Lj67
Lj60:
	movl	-8(%ebp),%edx
	movl	TC_TYPINFO_BOOLEANIDENTS+4,%eax
	call	SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
	testl	%eax,%eax
	je	Lj68
	jmp	Lj69
Lj68:
	movl	$1,-12(%ebp)
Lj69:
Lj67:
	jmp	Lj76
Lj58:
	movl	-20(%ebp),%eax
	leal	13(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj80
	.balign 4,0x90
Lj79:
	movl	-16(%ebp),%eax
	leal	-280(%ebp),%edx
	call	SYSTEM_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$LONGINT
	testl	%eax,%eax
	je	Lj82
	jmp	Lj83
Lj82:
	movl	-20(%ebp),%eax
	movl	1(%eax),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj83:
	movl	-16(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	incl	%edx
	movl	%edx,-16(%ebp)
	incl	-24(%ebp)
Lj80:
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj92
	jmp	Lj81
Lj92:
	movl	-16(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj79
	jmp	Lj81
Lj81:
Lj76:
Lj36:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETENUMNAMECOUNT$PTYPEINFO$$LONGINT
TYPINFO_GETENUMNAMECOUNT$PTYPEINFO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$18,%al
	je	Lj99
	jmp	Lj100
Lj99:
	movl	$2,-8(%ebp)
	jmp	Lj103
Lj100:
	movl	$0,-20(%ebp)
	movl	$0,-8(%ebp)
	movl	-16(%ebp),%eax
	leal	13(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj111
	.balign 4,0x90
Lj110:
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	incl	%eax
	movl	%eax,-12(%ebp)
	incl	-20(%ebp)
Lj111:
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj110
	jmp	Lj112
Lj112:
	movl	-20(%ebp),%eax
	decl	%eax
	movl	%eax,-8(%ebp)
Lj103:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETTOSTRING$PPROPINFO$LONGINT$BOOLEAN$$ANSISTRING
TYPINFO_SETTOSTRING$PPROPINFO$LONGINT$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	-12(%ebp),%cl
	movl	-8(%ebp),%edx
	call	TYPINFO_SETTOSTRING$PTYPEINFO$LONGINT$BOOLEAN$$ANSISTRING
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	TYPINFO_SETTOSTRING$PTYPEINFO$LONGINT$BOOLEAN$$ANSISTRING
TYPINFO_SETTOSTRING$PTYPEINFO$LONGINT$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$80,%esp
	movl	%ebx,-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-76(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj129
	movl	-4(%ebp),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movl	1(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.balign 4,0x90
Lj140:
	incl	-16(%ebp)
	movl	-16(%ebp),%ecx
	movl	%ecx,%eax
	shrl	$3,%eax
	andl	$7,%ecx
	movzbl	-8(%ebp,%eax),%eax
	shrl	%cl,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj141
	jmp	Lj142
Lj141:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj143
	jmp	Lj144
Lj143:
	movl	8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	call	TYPINFO_GETENUMNAME$PTYPEINFO$LONGINT$$ANSISTRING
	jmp	Lj151
Lj144:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	$_$TYPINFO$_Ld4,%eax
	movl	%eax,-68(%ebp)
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	call	TYPINFO_GETENUMNAME$PTYPEINFO$LONGINT$$ANSISTRING
	movl	-76(%ebp),%eax
	movl	%eax,-64(%ebp)
	leal	-72(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
Lj151:
Lj142:
	cmpl	$31,-16(%ebp)
	jl	Lj140
	cmpb	$0,-12(%ebp)
	jne	Lj164
	jmp	Lj165
Lj164:
	movl	$_$TYPINFO$_Ld5,%eax
	movl	%eax,-72(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	$_$TYPINFO$_Ld6,%eax
	movl	%eax,-64(%ebp)
	leal	-72(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
Lj165:
Lj129:
	call	FPC_POPADDRSTACK
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj130
	call	FPC_RERAISE
Lj130:
	movl	-80(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	TYPINFO_SETTOSTRING$PPROPINFO$LONGINT$$ANSISTRING
TYPINFO_SETTOSTRING$PPROPINFO$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	TYPINFO_SETTOSTRING$PPROPINFO$LONGINT$BOOLEAN$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
TYPINFO_GETNEXTELEMENT$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$1,-12(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj190
	movl	-4(%eax),%eax
Lj190:
	cmpl	$0,%eax
	jg	Lj188
	jmp	Lj189
Lj188:
	jmp	Lj192
	.balign 4,0x90
Lj191:
	incl	-12(%ebp)
Lj192:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj195
	movl	-4(%eax),%eax
Lj195:
	cmpl	-12(%ebp),%eax
	jge	Lj194
	jmp	Lj193
Lj194:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	cmpl	$32,%eax
	je	Lj196
	cmpl	$44,%eax
	je	Lj196
	cmpl	$91,%eax
	je	Lj196
	cmpl	$93,%eax
	je	Lj196
Lj196:
	jne	Lj191
	jmp	Lj193
Lj193:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj189:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_STRINGTOSET$PPROPINFO$ANSISTRING$$LONGINT
TYPINFO_STRINGTOSET$PPROPINFO$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	call	TYPINFO_STRINGTOSET$PTYPEINFO$ANSISTRING$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_STRINGTOSET$PTYPEINFO$ANSISTRING$$LONGINT
TYPINFO_STRINGTOSET$PTYPEINFO$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj221
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movl	1(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$1,-24(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj236
	movl	-4(%eax),%eax
Lj236:
	cmpl	$0,%eax
	jg	Lj234
	jmp	Lj235
Lj234:
	jmp	Lj238
	.balign 4,0x90
Lj237:
	incl	-24(%ebp)
Lj238:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj241
	movl	-4(%eax),%eax
Lj241:
	cmpl	-24(%ebp),%eax
	jge	Lj240
	jmp	Lj239
Lj240:
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	cmpl	$32,%eax
	je	Lj242
	cmpl	$44,%eax
	je	Lj242
	cmpl	$91,%eax
	je	Lj242
	cmpl	$93,%eax
	je	Lj242
Lj242:
	je	Lj237
	jmp	Lj239
Lj239:
	movl	-24(%ebp),%ecx
	decl	%ecx
	leal	-16(%ebp),%eax
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj235:
	jmp	Lj250
	.balign 4,0x90
Lj249:
	leal	-20(%ebp),%edx
	leal	-16(%ebp),%eax
	call	TYPINFO_GETNEXTELEMENT$ANSISTRING$$ANSISTRING
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj256
	jmp	Lj257
Lj256:
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	call	TYPINFO_GETENUMVALUE$PTYPEINFO$ANSISTRING$$LONGINT
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj264
	jmp	Lj265
Lj264:
	movl	-20(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	$11,-76(%ebp)
	leal	-76(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_RTLCONSTS_SERRUNKNOWNENUMVALUE+4,%ecx
	movl	$VMT_TYPINFO_EPROPERTYERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La1:
	movl	%ebp,%ecx
	movl	$La1,%edx
	call	FPC_RAISEEXCEPTION
Lj265:
	movl	$1,%eax
	movl	-24(%ebp),%ecx
	shll	%cl,%eax
	movl	-12(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj257:
Lj250:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj249
	jmp	Lj251
Lj251:
Lj221:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj222
	call	FPC_RERAISE
Lj222:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	incl	%eax
	movzbl	(%eax),%edx
	movl	-4(%ebp),%eax
	addl	$2,%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETPROPINFO$PTYPEINFO$ANSISTRING$$PPROPINFO
TYPINFO_GETPROPINFO$PTYPEINFO$ANSISTRING$$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$288,%esp
	movl	%ebx,-288(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	leal	-276(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	jmp	Lj307
	.balign 4,0x90
Lj306:
	movl	-4(%ebp),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leal	10(%eax),%edx
	movl	-16(%ebp),%eax
	movzbl	10(%eax),%eax
	addl	%eax,%edx
	incl	%edx
	movl	%edx,-284(%ebp)
	movl	-284(%ebp),%eax
	movl	%eax,-280(%ebp)
	movl	-280(%ebp),%eax
	leal	2(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-280(%ebp),%eax
	movzwl	(%eax),%ebx
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj322
	decl	-20(%ebp)
	.balign 4,0x90
Lj323:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	leal	27(%eax),%eax
	leal	-276(%ebp),%edx
	call	SYSTEM_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$LONGINT
	testl	%eax,%eax
	je	Lj324
	jmp	Lj325
Lj324:
	jmp	Lj298
Lj325:
	movl	-12(%ebp),%eax
	leal	27(%eax),%edx
	movl	-12(%ebp),%eax
	movzbl	27(%eax),%eax
	addl	%eax,%edx
	incl	%edx
	movl	%edx,-284(%ebp)
	movl	-284(%ebp),%eax
	movl	%eax,-12(%ebp)
	cmpl	-20(%ebp),%ebx
	jg	Lj323
Lj322:
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-4(%ebp)
Lj307:
	cmpl	$0,-4(%ebp)
	jne	Lj306
	jmp	Lj308
Lj308:
	movl	$0,-12(%ebp)
Lj298:
	movl	-12(%ebp),%eax
	movl	-288(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETPROPINFO$PTYPEINFO$ANSISTRING$TTYPEKINDS$$PPROPINFO
TYPINFO_GETPROPINFO$PTYPEINFO$ANSISTRING$TTYPEKINDS$$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETPROPINFO$PTYPEINFO$ANSISTRING$$PPROPINFO
	movl	%eax,-16(%ebp)
	movl	$0,%eax
	cmpl	-12(%ebp),%eax
	jne	Lj348
	jmp	Lj349
Lj348:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj350
	jmp	Lj351
Lj350:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	btl	%eax,-12(%ebp)
	jnc	Lj352
	jmp	Lj353
Lj352:
	movl	$0,-16(%ebp)
Lj353:
Lj351:
Lj349:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETPROPINFO$TCLASS$ANSISTRING$TTYPEKINDS$$PPROPINFO
TYPINFO_GETPROPINFO$TCLASS$ANSISTRING$TTYPEKINDS$$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__CLASSINFO$$POINTER
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	TYPINFO_GETPROPINFO$PTYPEINFO$ANSISTRING$TTYPEKINDS$$PPROPINFO
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETPROPINFO$TOBJECT$ANSISTRING$TTYPEKINDS$$PPROPINFO
TYPINFO_GETPROPINFO$TOBJECT$ANSISTRING$TTYPEKINDS$$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	TYPINFO_GETPROPINFO$TCLASS$ANSISTRING$TTYPEKINDS$$PPROPINFO
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
TYPINFO_GETPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETPROPINFO$TOBJECT$ANSISTRING$TTYPEKINDS$$PPROPINFO
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETPROPINFO$TCLASS$ANSISTRING$$PPROPINFO
TYPINFO_GETPROPINFO$TCLASS$ANSISTRING$$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETPROPINFO$TCLASS$ANSISTRING$TTYPEKINDS$$PPROPINFO
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj410
	jmp	Lj411
Lj410:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_RTLCONSTS_SERRPROPERTYNOTFOUND+4,%ecx
	movl	$VMT_TYPINFO_EPROPERTYERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La2:
	movl	%ebp,%ecx
	movl	$La2,%edx
	call	FPC_RAISEEXCEPTION
Lj411:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$TTYPEKINDS$$PPROPINFO
TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$TTYPEKINDS$$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETPROPINFO$TOBJECT$ANSISTRING$TTYPEKINDS$$PPROPINFO
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj432
	jmp	Lj433
Lj432:
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$11,-24(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_RTLCONSTS_SERRPROPERTYNOTFOUND+4,%ecx
	movl	$VMT_TYPINFO_EPROPERTYERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La3:
	movl	%ebp,%ecx
	movl	$La3,%edx
	call	FPC_RAISEEXCEPTION
Lj433:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_FINDPROPINFO$TCLASS$ANSISTRING$$PPROPINFO
TYPINFO_FINDPROPINFO$TCLASS$ANSISTRING$$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETPROPINFO$TCLASS$ANSISTRING$$PPROPINFO
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj452
	jmp	Lj453
Lj452:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_RTLCONSTS_SERRPROPERTYNOTFOUND+4,%ecx
	movl	$VMT_TYPINFO_EPROPERTYERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La4:
	movl	%ebp,%ecx
	movl	$La4,%edx
	call	FPC_RAISEEXCEPTION
Lj453:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_FINDPROPINFO$TCLASS$ANSISTRING$TTYPEKINDS$$PPROPINFO
TYPINFO_FINDPROPINFO$TCLASS$ANSISTRING$TTYPEKINDS$$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETPROPINFO$TCLASS$ANSISTRING$TTYPEKINDS$$PPROPINFO
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj474
	jmp	Lj475
Lj474:
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$11,-24(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_RTLCONSTS_SERRPROPERTYNOTFOUND+4,%ecx
	movl	$VMT_TYPINFO_EPROPERTYERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La5:
	movl	%ebp,%ecx
	movl	$La5,%edx
	call	FPC_RAISEEXCEPTION
Lj475:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_ISSTOREDPROP$TOBJECT$PPROPINFO$$BOOLEAN
TYPINFO_ISSTOREDPROP$TOBJECT$PPROPINFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$4,%eax
	andl	$3,%eax
	testl	%eax,%eax
	je	Lj490
	decl	%eax
	jb	Lj489
	subl	$1,%eax
	jbe	Lj492
	decl	%eax
	je	Lj491
	jmp	Lj489
Lj490:
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movb	(%edx),%al
	movb	%al,-9(%ebp)
	jmp	Lj488
Lj491:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	orl	%eax,%eax
	setneb	%al
	movb	%al,-9(%ebp)
	jmp	Lj488
Lj492:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$4,%eax
	andl	$3,%eax
	cmpl	$1,%eax
	je	Lj499
	jmp	Lj500
Lj499:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj503
Lj500:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
Lj503:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj512
	jmp	Lj513
Lj512:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
	movb	%al,-9(%ebp)
	jmp	Lj520
Lj513:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	call	*%edx
	movb	%al,-9(%ebp)
Lj520:
	jmp	Lj488
Lj489:
Lj488:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETPROPINFOS$PTYPEINFO$PPROPLIST
TYPINFO_GETPROPINFOS$PTYPEINFO$PPROPLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movswl	8(%eax),%edx
	shll	$2,%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	.balign 4,0x90
Lj537:
	movl	-4(%ebp),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leal	10(%eax),%edx
	movl	-12(%ebp),%eax
	movzbl	10(%eax),%eax
	addl	%eax,%edx
	incl	%edx
	movl	%edx,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movzwl	(%eax),%eax
	movl	%eax,-20(%ebp)
	addl	$2,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj561
	.balign 4,0x90
Lj560:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movzwl	24(%eax),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj563
	jmp	Lj564
Lj563:
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%eax
	movzwl	24(%eax),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
Lj564:
	movl	-16(%ebp),%eax
	leal	27(%eax),%edx
	movl	-16(%ebp),%eax
	leal	27(%eax),%eax
	movzbl	(%eax),%eax
	addl	%eax,%edx
	incl	%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	decl	-20(%ebp)
Lj561:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj560
	jmp	Lj562
Lj562:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj539
	jmp	Lj537
Lj539:
	leave
	ret

.text
	.balign 4,0x90
TYPINFO_INSERTPROP$PPROPLIST$PPROPINFO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj580
	.balign 4,0x90
Lj579:
	incl	-16(%ebp)
Lj580:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj582
	jmp	Lj581
Lj582:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	leal	27(%eax),%edx
	movl	-8(%ebp),%eax
	leal	27(%eax),%eax
	call	fpc_shortstr_compare
	cmpl	$0,%eax
	jg	Lj579
	jmp	Lj581
Lj581:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj587
	jmp	Lj588
Lj587:
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	shll	$2,%ecx
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	leal	(%edx,%eax,4),%edx
	movl	-4(%ebp),%ebx
	movl	-16(%ebp),%eax
	leal	(%ebx,%eax,4),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj588:
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
TYPINFO_INSERTPROPNOSORT$PPROPLIST$PPROPINFO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETPROPLIST$PTYPEINFO$TTYPEKINDS$PPROPLIST$BOOLEAN$$LONGINT
TYPINFO_GETPROPLIST$PTYPEINFO$TTYPEKINDS$PPROPLIST$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$84,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj603
	jmp	Lj604
Lj603:
	movl	$TYPINFO_INSERTPROP$PPROPLIST$PPROPINFO$LONGINT,%eax
	movl	%eax,-36(%ebp)
	jmp	Lj607
Lj604:
	movl	$TYPINFO_INSERTPROPNOSORT$PPROPLIST$PPROPINFO$LONGINT,%eax
	movl	%eax,-36(%ebp)
Lj607:
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movswl	8(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj616
	jmp	Lj617
Lj616:
	movl	-32(%ebp),%edx
	shll	$2,%edx
	leal	-20(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj622
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETPROPINFOS$PTYPEINFO$PPROPLIST
	movl	-32(%ebp),%ebx
	decl	%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj631
	decl	-28(%ebp)
	.balign 4,0x90
Lj632:
	incl	-28(%ebp)
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	btl	%eax,-8(%ebp)
	jc	Lj635
	jmp	Lj636
Lj635:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj637
	jmp	Lj638
Lj637:
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-36(%ebp),%esi
	call	*%esi
Lj638:
	incl	-16(%ebp)
Lj636:
	cmpl	-28(%ebp),%ebx
	jg	Lj632
Lj631:
Lj622:
	call	FPC_POPADDRSTACK
	movl	-32(%ebp),%edx
	shll	$2,%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
	popl	%eax
	testl	%eax,%eax
	je	Lj623
	decl	%eax
	testl	%eax,%eax
	je	Lj624
Lj624:
	call	FPC_RERAISE
Lj623:
Lj617:
	movl	-16(%ebp),%eax
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	TYPINFO_GETPROPLIST$PTYPEINFO$PPROPLIST$$LONGINT
TYPINFO_GETPROPLIST$PTYPEINFO$PPROPLIST$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movswl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj655
	jmp	Lj656
Lj655:
	movl	-12(%ebp),%edx
	shll	$2,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETPROPINFOS$PTYPEINFO$PPROPLIST
	jmp	Lj665
Lj656:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj665:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETPROPLIST$TCLASS$PPROPLIST$$LONGINT
TYPINFO_GETPROPLIST$TCLASS$PPROPLIST$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__CLASSINFO$$POINTER
	movl	-8(%ebp),%edx
	call	TYPINFO_GETPROPLIST$PTYPEINFO$PPROPLIST$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETPROPLIST$TOBJECT$PPROPLIST$$LONGINT
TYPINFO_GETPROPLIST$TOBJECT$PPROPLIST$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	call	TYPINFO_GETPROPLIST$TCLASS$PPROPLIST$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64
TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movb	$0,-34(%ebp)
	movl	$4,-32(%ebp)
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	cmpb	$1,%al
	jb	Lj701
	decb	%al
	je	Lj704
	decb	%al
	je	Lj702
	decb	%al
	je	Lj704
	subb	$2,%al
	je	Lj704
	subb	$12,%al
	je	Lj703
	decb	%al
	je	Lj702
	decb	%al
	je	Lj705
	decb	%al
	je	Lj706
	jmp	Lj701
Lj702:
	movl	$1,-32(%ebp)
	jmp	Lj700
Lj703:
	movl	$2,-32(%ebp)
	jmp	Lj700
Lj704:
	movl	-20(%ebp),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movb	(%eax),%al
	movb	%al,-33(%ebp)
	movb	-33(%ebp),%al
	subb	$1,%al
	jbe	Lj717
	decb	%al
	subb	$1,%al
	jbe	Lj718
	jmp	Lj716
Lj717:
	movl	$1,-32(%ebp)
	jmp	Lj715
Lj718:
	movl	$2,-32(%ebp)
	jmp	Lj715
Lj716:
Lj715:
	movzbl	-33(%ebp),%eax
	cmpl	$0,%eax
	je	Lj725
	cmpl	$2,%eax
	je	Lj725
	cmpl	$4,%eax
	je	Lj725
Lj725:
	seteb	-34(%ebp)
	jmp	Lj700
Lj705:
	movl	$8,-32(%ebp)
	movb	$1,-34(%ebp)
	jmp	Lj700
Lj706:
	movl	$8,-32(%ebp)
	movb	$0,-34(%ebp)
	jmp	Lj700
Lj701:
Lj700:
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	testb	%al,%al
	je	Lj736
	decb	%al
	jb	Lj735
	subb	$1,%al
	jbe	Lj737
	jmp	Lj735
Lj736:
	cmpb	$0,-34(%ebp)
	jne	Lj738
	jmp	Lj739
Lj738:
	movl	-32(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj741
	decl	%eax
	je	Lj742
	decl	%eax
	je	Lj743
	subl	$2,%eax
	je	Lj744
	subl	$4,%eax
	je	Lj745
	jmp	Lj741
Lj742:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movsbl	(%edx),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-16(%ebp)
	movl	%eax,-12(%ebp)
	jmp	Lj740
Lj743:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movswl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-16(%ebp)
	movl	%eax,-12(%ebp)
	jmp	Lj740
Lj744:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	(%edx),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-16(%ebp)
	movl	%eax,-12(%ebp)
	jmp	Lj740
Lj745:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj740
Lj741:
Lj740:
	jmp	Lj754
Lj739:
	movl	-32(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj756
	decl	%eax
	je	Lj757
	decl	%eax
	je	Lj758
	subl	$2,%eax
	je	Lj759
	subl	$4,%eax
	je	Lj760
	jmp	Lj756
Lj757:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movzbl	(%edx),%eax
	movl	$0,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	jmp	Lj755
Lj758:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movzwl	(%edx),%edx
	movl	$0,%eax
	movl	%edx,-16(%ebp)
	movl	%eax,-12(%ebp)
	jmp	Lj755
Lj759:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-16(%ebp)
	movl	%eax,-12(%ebp)
	jmp	Lj755
Lj760:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj755
Lj756:
Lj755:
Lj754:
	jmp	Lj734
Lj737:
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	movzbl	%al,%eax
	cmpl	$1,%eax
	je	Lj769
	jmp	Lj770
Lj769:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj773
Lj770:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-28(%ebp)
Lj773:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj782
	jmp	Lj783
Lj782:
	movl	-32(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj785
	decl	%eax
	je	Lj786
	decl	%eax
	je	Lj787
	subl	$2,%eax
	je	Lj788
	subl	$4,%eax
	je	Lj789
	jmp	Lj785
Lj786:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%ecx
	call	*%ecx
	movzbl	%al,%eax
	movzbl	%al,%eax
	movl	$0,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	jmp	Lj784
Lj787:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%ecx
	call	*%ecx
	movzwl	%ax,%eax
	movzwl	%ax,%eax
	movl	$0,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	jmp	Lj784
Lj788:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%ecx
	call	*%ecx
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	jmp	Lj784
Lj789:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%ecx
	call	*%ecx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	jmp	Lj784
Lj785:
Lj784:
	jmp	Lj814
Lj783:
	movl	-32(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj816
	decl	%eax
	je	Lj817
	decl	%eax
	je	Lj818
	subl	$2,%eax
	je	Lj819
	subl	$4,%eax
	je	Lj820
	jmp	Lj816
Lj817:
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%edx
	call	*%edx
	movzbl	%al,%eax
	movzbl	%al,%eax
	movl	$0,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	jmp	Lj815
Lj818:
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%edx
	call	*%edx
	movzwl	%ax,%eax
	movzwl	%ax,%eax
	movl	$0,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	jmp	Lj815
Lj819:
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%edx
	call	*%edx
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	jmp	Lj815
Lj820:
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%edx
	call	*%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	jmp	Lj815
Lj816:
Lj815:
Lj814:
	cmpb	$0,-34(%ebp)
	jne	Lj837
	jmp	Lj838
Lj837:
	movl	-32(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj840
	decl	%eax
	je	Lj841
	decl	%eax
	je	Lj842
	jmp	Lj840
Lj841:
	movsbl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-16(%ebp)
	movl	%eax,-12(%ebp)
	jmp	Lj839
Lj842:
	movswl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-16(%ebp)
	movl	%eax,-12(%ebp)
	jmp	Lj839
Lj840:
Lj839:
Lj838:
	jmp	Lj734
Lj735:
Lj734:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64
TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	subl	$19,%eax
	cmpl	$2,%eax
	jb	Lj851
Lj851:
	jc	Lj849
	jmp	Lj850
Lj849:
	movl	$8,-12(%ebp)
	jmp	Lj854
Lj850:
	movl	$4,-12(%ebp)
Lj854:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	cmpl	$15,%eax
	stc
	je	Lj859
	subl	$19,%eax
	cmpl	$2,%eax
	jb	Lj859
Lj859:
	jnc	Lj857
	jmp	Lj858
Lj857:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movb	(%eax),%al
	subb	$1,%al
	jbe	Lj863
	decb	%al
	subb	$1,%al
	jbe	Lj862
	jmp	Lj861
Lj862:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	andl	$65535,%edx
	movl	$0,%eax
	movl	%edx,8(%ebp)
	movl	%eax,12(%ebp)
	movl	$2,-12(%ebp)
	jmp	Lj860
Lj863:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	andl	$255,%edx
	movl	$0,%eax
	movl	%edx,8(%ebp)
	movl	%eax,12(%ebp)
	movl	$1,-12(%ebp)
	jmp	Lj860
Lj861:
Lj860:
Lj858:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	testl	%eax,%eax
	je	Lj876
	decl	%eax
	jb	Lj875
	subl	$1,%eax
	jbe	Lj877
	jmp	Lj875
Lj876:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj879
	decl	%eax
	je	Lj880
	decl	%eax
	je	Lj881
	subl	$2,%eax
	je	Lj882
	subl	$4,%eax
	je	Lj883
	jmp	Lj879
Lj880:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movb	8(%ebp),%al
	movb	%al,(%edx)
	jmp	Lj878
Lj881:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movw	8(%ebp),%ax
	movw	%ax,(%edx)
	jmp	Lj878
Lj882:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	8(%ebp),%eax
	movl	%eax,(%edx)
	jmp	Lj878
Lj883:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	8(%ebp),%eax
	movl	%eax,(%edx)
	movl	12(%ebp),%eax
	movl	%eax,4(%edx)
	jmp	Lj878
Lj879:
Lj878:
	jmp	Lj874
Lj877:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	cmpl	$1,%eax
	je	Lj892
	jmp	Lj893
Lj892:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj896
Lj893:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
Lj896:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$8,%eax
	je	Lj905
	jmp	Lj906
Lj905:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj907
	jmp	Lj908
Lj907:
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
	jmp	Lj915
Lj908:
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	call	*%edx
Lj915:
	jmp	Lj920
Lj906:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj921
	jmp	Lj922
Lj921:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	8(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	call	*%ebx
	jmp	Lj929
Lj922:
	movl	8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
Lj929:
Lj920:
	jmp	Lj874
Lj875:
Lj874:
	movl	-28(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	TYPINFO_GETORDPROP$TOBJECT$ANSISTRING$$INT64
TYPINFO_GETORDPROP$TOBJECT$ANSISTRING$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETORDPROP$TOBJECT$ANSISTRING$INT64
TYPINFO_SETORDPROP$TOBJECT$ANSISTRING$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	TYPINFO_GETENUMPROP$TOBJECT$PPROPINFO$$ANSISTRING
TYPINFO_GETENUMPROP$TOBJECT$PPROPINFO$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%ecx
	call	TYPINFO_GETENUMNAME$PTYPEINFO$LONGINT$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETENUMPROP$TOBJECT$ANSISTRING$$ANSISTRING
TYPINFO_GETENUMPROP$TOBJECT$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETENUMPROP$TOBJECT$PPROPINFO$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETENUMPROP$TOBJECT$ANSISTRING$ANSISTRING
TYPINFO_SETENUMPROP$TOBJECT$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETENUMPROP$TOBJECT$PPROPINFO$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETENUMPROP$TOBJECT$PPROPINFO$ANSISTRING
TYPINFO_SETENUMPROP$TOBJECT$PPROPINFO$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj996
	jmp	Lj997
Lj996:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	call	TYPINFO_GETENUMVALUE$PTYPEINFO$ANSISTRING$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1004
	jmp	Lj1005
Lj1004:
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$11,-24(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_RTLCONSTS_SERRUNKNOWNENUMVALUE+4,%ecx
	movl	$VMT_TYPINFO_EPROPERTYERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La6:
	movl	%ebp,%ecx
	movl	$La6,%edx
	call	FPC_RAISEEXCEPTION
Lj1005:
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64
Lj997:
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETINT64PROP$TOBJECT$PPROPINFO$$INT64
TYPINFO_GETINT64PROP$TOBJECT$PPROPINFO$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETINT64PROP$TOBJECT$PPROPINFO$INT64
TYPINFO_SETINT64PROP$TOBJECT$PPROPINFO$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	TYPINFO_GETINT64PROP$TOBJECT$ANSISTRING$$INT64
TYPINFO_GETINT64PROP$TOBJECT$ANSISTRING$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETINT64PROP$TOBJECT$PPROPINFO$$INT64
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETINT64PROP$TOBJECT$ANSISTRING$INT64
TYPINFO_SETINT64PROP$TOBJECT$ANSISTRING$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETINT64PROP$TOBJECT$PPROPINFO$INT64
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	TYPINFO_GETSETPROP$TOBJECT$ANSISTRING$$ANSISTRING
TYPINFO_GETSETPROP$TOBJECT$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	TYPINFO_GETSETPROP$TOBJECT$ANSISTRING$BOOLEAN$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETSETPROP$TOBJECT$ANSISTRING$BOOLEAN$$ANSISTRING
TYPINFO_GETSETPROP$TOBJECT$ANSISTRING$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movb	-12(%ebp),%cl
	movl	-4(%ebp),%eax
	call	TYPINFO_GETSETPROP$TOBJECT$PPROPINFO$BOOLEAN$$ANSISTRING
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	TYPINFO_GETSETPROP$TOBJECT$PPROPINFO$BOOLEAN$$ANSISTRING
TYPINFO_GETSETPROP$TOBJECT$PPROPINFO$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64
	movl	%eax,%edx
	movb	-12(%ebp),%cl
	movl	-8(%ebp),%eax
	call	TYPINFO_SETTOSTRING$PPROPINFO$LONGINT$BOOLEAN$$ANSISTRING
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	TYPINFO_SETSETPROP$TOBJECT$ANSISTRING$ANSISTRING
TYPINFO_SETSETPROP$TOBJECT$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETSETPROP$TOBJECT$PPROPINFO$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETSETPROP$TOBJECT$PPROPINFO$ANSISTRING
TYPINFO_SETSETPROP$TOBJECT$PPROPINFO$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	TYPINFO_STRINGTOSET$PPROPINFO$ANSISTRING$$LONGINT
	movl	%eax,%edx
	sarl	$31,%edx
	pushl	%edx
	pushl	%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETOBJECTPROP$TOBJECT$ANSISTRING$$TOBJECT
TYPINFO_GETOBJECTPROP$TOBJECT$ANSISTRING$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	TYPINFO_GETOBJECTPROP$TOBJECT$ANSISTRING$TCLASS$$TOBJECT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETOBJECTPROP$TOBJECT$ANSISTRING$TCLASS$$TOBJECT
TYPINFO_GETOBJECTPROP$TOBJECT$ANSISTRING$TCLASS$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETOBJECTPROP$TOBJECT$PPROPINFO$TCLASS$$TOBJECT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT
TYPINFO_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	TYPINFO_GETOBJECTPROP$TOBJECT$PPROPINFO$TCLASS$$TOBJECT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETOBJECTPROP$TOBJECT$PPROPINFO$TCLASS$$TOBJECT
TYPINFO_GETOBJECTPROP$TOBJECT$PPROPINFO$TCLASS$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1168
	jmp	Lj1167
Lj1168:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1166
	jmp	Lj1167
Lj1166:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	je	Lj1169
	jmp	Lj1170
Lj1169:
	movl	$0,-16(%ebp)
Lj1170:
Lj1167:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETOBJECTPROP$TOBJECT$ANSISTRING$TOBJECT
TYPINFO_SETOBJECTPROP$TOBJECT$ANSISTRING$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETOBJECTPROP$TOBJECT$PPROPINFO$TOBJECT
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETOBJECTPROP$TOBJECT$PPROPINFO$TOBJECT
TYPINFO_SETOBJECTPROP$TOBJECT$PPROPINFO$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETOBJECTPROPCLASS$TOBJECT$ANSISTRING$$TCLASS
TYPINFO_GETOBJECTPROPCLASS$TOBJECT$ANSISTRING$$TCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$32768,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$TTYPEKINDS$$PPROPINFO
	movl	(%eax),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETOBJECTPROPCLASS$TCLASS$ANSISTRING$$TCLASS
TYPINFO_GETOBJECTPROPCLASS$TCLASS$ANSISTRING$$TCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$32768,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TCLASS$ANSISTRING$TTYPEKINDS$$PPROPINFO
	movl	(%eax),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETINTERFACEPROP$TOBJECT$ANSISTRING$$IUNKNOWN
TYPINFO_GETINTERFACEPROP$TOBJECT$ANSISTRING$$IUNKNOWN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETINTERFACEPROP$TOBJECT$PPROPINFO$$IUNKNOWN
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETINTERFACEPROP$TOBJECT$PPROPINFO$$IUNKNOWN
TYPINFO_GETINTERFACEPROP$TOBJECT$PPROPINFO$$IUNKNOWN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	call	FPC_INTF_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	-16(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETINTERFACEPROP$TOBJECT$ANSISTRING$IUNKNOWN
TYPINFO_SETINTERFACEPROP$TOBJECT$ANSISTRING$IUNKNOWN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETINTERFACEPROP$TOBJECT$PPROPINFO$IUNKNOWN
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETINTERFACEPROP$TOBJECT$PPROPINFO$IUNKNOWN
TYPINFO_SETINTERFACEPROP$TOBJECT$PPROPINFO$IUNKNOWN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$14,%al
	jb	Lj1256
	subb	$14,%al
	je	Lj1257
	subb	$8,%al
	je	Lj1258
	jmp	Lj1256
Lj1257:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	testl	%eax,%eax
	je	Lj1261
	decl	%eax
	jb	Lj1260
	subl	$1,%eax
	jbe	Lj1262
	jmp	Lj1260
Lj1261:
	movl	-12(%ebp),%eax
	call	FPC_INTF_INCR_REF
	movl	-8(%ebp),%eax
	movl	8(%eax),%ebx
	movl	-4(%ebp),%eax
	addl	%eax,%ebx
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj1259
Lj1262:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	cmpl	$1,%eax
	je	Lj1265
	jmp	Lj1266
Lj1265:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1269
Lj1266:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
Lj1269:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj1278
	jmp	Lj1279
Lj1278:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	call	*%ebx
	jmp	Lj1286
Lj1279:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
Lj1286:
	jmp	Lj1259
Lj1260:
Lj1259:
	jmp	Lj1255
Lj1258:
	movl	$VMT_SYSUTILS_EXCEPTION,%edx
	movl	$_$TYPINFO$_Ld7,%ecx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La7:
	movl	%ebp,%ecx
	movl	$La7,%edx
	call	FPC_RAISEEXCEPTION
	jmp	Lj1255
Lj1256:
Lj1255:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETRAWINTERFACEPROP$TOBJECT$ANSISTRING$$POINTER
TYPINFO_GETRAWINTERFACEPROP$TOBJECT$ANSISTRING$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETRAWINTERFACEPROP$TOBJECT$PPROPINFO$$POINTER
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETRAWINTERFACEPROP$TOBJECT$PPROPINFO$$POINTER
TYPINFO_GETRAWINTERFACEPROP$TOBJECT$PPROPINFO$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETRAWINTERFACEPROP$TOBJECT$ANSISTRING$POINTER
TYPINFO_SETRAWINTERFACEPROP$TOBJECT$ANSISTRING$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETRAWINTERFACEPROP$TOBJECT$PPROPINFO$POINTER
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETRAWINTERFACEPROP$TOBJECT$PPROPINFO$POINTER
TYPINFO_SETRAWINTERFACEPROP$TOBJECT$PPROPINFO$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$14,%al
	jb	Lj1332
	subb	$14,%al
	je	Lj1334
	subb	$8,%al
	je	Lj1333
	jmp	Lj1332
Lj1333:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	testl	%eax,%eax
	je	Lj1337
	decl	%eax
	jb	Lj1336
	subl	$1,%eax
	jbe	Lj1338
	jmp	Lj1336
Lj1337:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%edx)
	jmp	Lj1335
Lj1338:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	cmpl	$1,%eax
	je	Lj1341
	jmp	Lj1342
Lj1341:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1345
Lj1342:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
Lj1345:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj1354
	jmp	Lj1355
Lj1354:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	call	*%ebx
	jmp	Lj1362
Lj1355:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
Lj1362:
	jmp	Lj1335
Lj1336:
Lj1335:
	jmp	Lj1331
Lj1334:
	movl	$VMT_SYSUTILS_EXCEPTION,%edx
	movl	$_$TYPINFO$_Ld8,%ecx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La8:
	movl	%ebp,%ecx
	movl	$La8,%edx
	call	FPC_RAISEEXCEPTION
	jmp	Lj1331
Lj1332:
Lj1331:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING
TYPINFO_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$336,%esp
	movl	%ebx,-336(%ebp)
	movl	%esi,-332(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1375
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$7,%al
	jb	Lj1381
	subb	$7,%al
	je	Lj1384
	subb	$2,%al
	je	Lj1385
	decb	%al
	je	Lj1382
	subb	$14,%al
	je	Lj1383
	jmp	Lj1381
Lj1382:
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETWIDESTRPROP$TOBJECT$PPROPINFO$$WIDESTRING
	movl	-64(%ebp),%eax
	movl	-12(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	jmp	Lj1380
Lj1383:
	leal	-68(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETUNICODESTRPROP$TOBJECT$PPROPINFO$$UNICODESTRING
	movl	-68(%ebp),%eax
	movl	-12(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	jmp	Lj1380
Lj1384:
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	testb	%al,%al
	je	Lj1408
	decb	%al
	jb	Lj1407
	subb	$1,%al
	jbe	Lj1409
	jmp	Lj1407
Lj1408:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	-12(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	jmp	Lj1406
Lj1409:
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	movzbl	%al,%eax
	cmpl	$1,%eax
	je	Lj1414
	jmp	Lj1415
Lj1414:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1418
Lj1415:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
Lj1418:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj1427
	jmp	Lj1428
Lj1427:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	leal	-328(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	call	*%ebx
	leal	-328(%ebp),%eax
	movl	-12(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	jmp	Lj1439
Lj1428:
	leal	-324(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
	leal	-324(%ebp),%eax
	movl	-12(%ebp),%edx
	call	fpc_shortstr_to_ansistr
Lj1439:
	jmp	Lj1406
Lj1407:
Lj1406:
	jmp	Lj1380
Lj1385:
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	testb	%al,%al
	je	Lj1450
	decb	%al
	jb	Lj1449
	subb	$1,%al
	jbe	Lj1451
	jmp	Lj1449
Lj1450:
	movl	-8(%ebp),%eax
	movl	4(%eax),%esi
	movl	-4(%ebp),%eax
	addl	%eax,%esi
	movl	(%esi),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj1448
Lj1451:
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	movzbl	%al,%eax
	cmpl	$1,%eax
	je	Lj1454
	jmp	Lj1455
Lj1454:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1458
Lj1455:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
Lj1458:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj1467
	jmp	Lj1468
Lj1467:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	call	*%ebx
	jmp	Lj1475
Lj1468:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
Lj1475:
	jmp	Lj1448
Lj1449:
Lj1448:
	jmp	Lj1380
Lj1381:
Lj1380:
Lj1375:
	call	FPC_POPADDRSTACK
	leal	-68(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj1376
	call	FPC_RERAISE
Lj1376:
	movl	-336(%ebp),%ebx
	movl	-332(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING
TYPINFO_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$332,%esp
	movl	%ebx,-332(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1482
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$7,%al
	jb	Lj1486
	subb	$7,%al
	je	Lj1489
	subb	$2,%al
	je	Lj1490
	decb	%al
	je	Lj1487
	subb	$14,%al
	je	Lj1488
	jmp	Lj1486
Lj1487:
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-64(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING
	jmp	Lj1485
Lj1488:
	leal	-68(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-68(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING
	jmp	Lj1485
Lj1489:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	testl	%eax,%eax
	je	Lj1513
	decl	%eax
	jb	Lj1512
	subl	$1,%eax
	jbe	Lj1514
	jmp	Lj1512
Lj1513:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	-12(%ebp),%ecx
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	jmp	Lj1511
Lj1514:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	cmpl	$1,%eax
	je	Lj1521
	jmp	Lj1522
Lj1521:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1525
Lj1522:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
Lj1525:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj1534
	jmp	Lj1535
Lj1534:
	movl	-12(%ebp),%ecx
	leal	-328(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	leal	-328(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	call	*%ebx
	jmp	Lj1548
Lj1535:
	movl	-12(%ebp),%ecx
	leal	-324(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	leal	-324(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
Lj1548:
	jmp	Lj1511
Lj1512:
Lj1511:
	jmp	Lj1485
Lj1490:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	testl	%eax,%eax
	je	Lj1561
	decl	%eax
	jb	Lj1560
	subl	$1,%eax
	jbe	Lj1562
	jmp	Lj1560
Lj1561:
	movl	-12(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%eax
	movl	8(%eax),%ebx
	movl	-4(%ebp),%eax
	addl	%eax,%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj1559
Lj1562:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	cmpl	$1,%eax
	je	Lj1565
	jmp	Lj1566
Lj1565:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1569
Lj1566:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
Lj1569:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj1578
	jmp	Lj1579
Lj1578:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	call	*%ebx
	jmp	Lj1586
Lj1579:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
Lj1586:
	jmp	Lj1559
Lj1560:
Lj1559:
	jmp	Lj1485
Lj1486:
Lj1485:
Lj1482:
	call	FPC_POPADDRSTACK
	leal	-68(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj1483
	call	FPC_RERAISE
Lj1483:
	movl	-332(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETSTRPROP$TOBJECT$ANSISTRING$$ANSISTRING
TYPINFO_GETSTRPROP$TOBJECT$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETSTRPROP$TOBJECT$ANSISTRING$ANSISTRING
TYPINFO_SETSTRPROP$TOBJECT$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETWIDESTRPROP$TOBJECT$ANSISTRING$$WIDESTRING
TYPINFO_GETWIDESTRPROP$TOBJECT$ANSISTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETWIDESTRPROP$TOBJECT$PPROPINFO$$WIDESTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETWIDESTRPROP$TOBJECT$ANSISTRING$WIDESTRING
TYPINFO_SETWIDESTRPROP$TOBJECT$ANSISTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETWIDESTRPROP$TOBJECT$PPROPINFO$$WIDESTRING
TYPINFO_GETWIDESTRPROP$TOBJECT$PPROPINFO$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1641
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$7,%al
	jb	Lj1647
	subb	$7,%al
	je	Lj1648
	subb	$2,%al
	je	Lj1648
	decb	%al
	je	Lj1650
	subb	$14,%al
	je	Lj1649
	jmp	Lj1647
Lj1648:
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING
	movl	-64(%ebp),%eax
	movl	-12(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	jmp	Lj1646
Lj1649:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETUNICODESTRPROP$TOBJECT$PPROPINFO$$UNICODESTRING
	jmp	Lj1646
Lj1650:
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	testb	%al,%al
	je	Lj1669
	decb	%al
	jb	Lj1668
	subb	$1,%al
	jbe	Lj1670
	jmp	Lj1668
Lj1669:
	movl	-8(%ebp),%eax
	movl	4(%eax),%esi
	movl	-4(%ebp),%eax
	addl	%eax,%esi
	movl	(%esi),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj1667
Lj1670:
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	movzbl	%al,%eax
	cmpl	$1,%eax
	je	Lj1673
	jmp	Lj1674
Lj1673:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1677
Lj1674:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
Lj1677:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj1686
	jmp	Lj1687
Lj1686:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	call	*%ebx
	jmp	Lj1694
Lj1687:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
Lj1694:
	jmp	Lj1667
Lj1668:
Lj1667:
	jmp	Lj1646
Lj1647:
Lj1646:
Lj1641:
	call	FPC_POPADDRSTACK
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj1642
	call	FPC_RERAISE
Lj1642:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING
TYPINFO_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1701
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$7,%al
	jb	Lj1705
	subb	$7,%al
	je	Lj1706
	subb	$2,%al
	je	Lj1706
	decb	%al
	je	Lj1708
	subb	$14,%al
	je	Lj1707
	jmp	Lj1705
Lj1706:
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_unicodestr_to_ansistr
	movl	-64(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING
	jmp	Lj1704
Lj1707:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING
	jmp	Lj1704
Lj1708:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	testl	%eax,%eax
	je	Lj1727
	decl	%eax
	jb	Lj1726
	subl	$1,%eax
	jbe	Lj1728
	jmp	Lj1726
Lj1727:
	movl	-12(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-8(%ebp),%eax
	movl	8(%eax),%ebx
	movl	-4(%ebp),%eax
	addl	%eax,%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj1725
Lj1728:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	cmpl	$1,%eax
	je	Lj1731
	jmp	Lj1732
Lj1731:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1735
Lj1732:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
Lj1735:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj1744
	jmp	Lj1745
Lj1744:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	call	*%ebx
	jmp	Lj1752
Lj1745:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
Lj1752:
	jmp	Lj1725
Lj1726:
Lj1725:
	jmp	Lj1704
Lj1705:
Lj1704:
Lj1701:
	call	FPC_POPADDRSTACK
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj1702
	call	FPC_RERAISE
Lj1702:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETUNICODESTRPROP$TOBJECT$ANSISTRING$$UNICODESTRING
TYPINFO_GETUNICODESTRPROP$TOBJECT$ANSISTRING$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETUNICODESTRPROP$TOBJECT$PPROPINFO$$UNICODESTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETUNICODESTRPROP$TOBJECT$ANSISTRING$UNICODESTRING
TYPINFO_SETUNICODESTRPROP$TOBJECT$ANSISTRING$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETUNICODESTRPROP$TOBJECT$PPROPINFO$$UNICODESTRING
TYPINFO_GETUNICODESTRPROP$TOBJECT$PPROPINFO$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1783
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$7,%al
	jb	Lj1789
	subb	$7,%al
	je	Lj1790
	subb	$2,%al
	je	Lj1790
	decb	%al
	je	Lj1791
	subb	$14,%al
	je	Lj1792
	jmp	Lj1789
Lj1790:
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING
	movl	-64(%ebp),%eax
	movl	-12(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	jmp	Lj1788
Lj1791:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETWIDESTRPROP$TOBJECT$PPROPINFO$$WIDESTRING
	jmp	Lj1788
Lj1792:
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	testb	%al,%al
	je	Lj1811
	decb	%al
	jb	Lj1810
	subb	$1,%al
	jbe	Lj1812
	jmp	Lj1810
Lj1811:
	movl	-8(%ebp),%eax
	movl	4(%eax),%esi
	movl	-4(%ebp),%eax
	addl	%eax,%esi
	movl	(%esi),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj1809
Lj1812:
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	movzbl	%al,%eax
	cmpl	$1,%eax
	je	Lj1815
	jmp	Lj1816
Lj1815:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1819
Lj1816:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
Lj1819:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj1828
	jmp	Lj1829
Lj1828:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	call	*%ebx
	jmp	Lj1836
Lj1829:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
Lj1836:
	jmp	Lj1809
Lj1810:
Lj1809:
	jmp	Lj1788
Lj1789:
Lj1788:
Lj1783:
	call	FPC_POPADDRSTACK
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj1784
	call	FPC_RERAISE
Lj1784:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING
TYPINFO_SETUNICODESTRPROP$TOBJECT$PPROPINFO$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1843
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$7,%al
	jb	Lj1847
	subb	$7,%al
	je	Lj1848
	subb	$2,%al
	je	Lj1848
	decb	%al
	je	Lj1849
	subb	$14,%al
	je	Lj1850
	jmp	Lj1847
Lj1848:
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_unicodestr_to_ansistr
	movl	-64(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING
	jmp	Lj1846
Lj1849:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETWIDESTRPROP$TOBJECT$PPROPINFO$WIDESTRING
	jmp	Lj1846
Lj1850:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	testl	%eax,%eax
	je	Lj1869
	decl	%eax
	jb	Lj1868
	subl	$1,%eax
	jbe	Lj1870
	jmp	Lj1868
Lj1869:
	movl	-12(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-8(%ebp),%eax
	movl	8(%eax),%ebx
	movl	-4(%ebp),%eax
	addl	%eax,%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj1867
Lj1870:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	cmpl	$1,%eax
	je	Lj1873
	jmp	Lj1874
Lj1873:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1877
Lj1874:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
Lj1877:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj1886
	jmp	Lj1887
Lj1886:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	call	*%ebx
	jmp	Lj1894
Lj1887:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
Lj1894:
	jmp	Lj1867
Lj1868:
Lj1867:
	jmp	Lj1846
Lj1847:
Lj1846:
Lj1843:
	call	FPC_POPADDRSTACK
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj1844
	call	FPC_RERAISE
Lj1844:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED
TYPINFO_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-20(%ebp)
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	testb	%al,%al
	je	Lj1905
	decb	%al
	jb	Lj1904
	subb	$1,%al
	jbe	Lj1906
	jmp	Lj1904
Lj1905:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movb	(%eax),%al
	testb	%al,%al
	je	Lj1909
	decb	%al
	je	Lj1910
	decb	%al
	je	Lj1911
	decb	%al
	je	Lj1912
	decb	%al
	je	Lj1913
	jmp	Lj1908
Lj1909:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	flds	(%eax)
	fstpt	-20(%ebp)
	jmp	Lj1907
Lj1910:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	fldl	(%edx)
	fstpt	-20(%ebp)
	jmp	Lj1907
Lj1911:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-16(%ebp)
	movw	8(%edx),%ax
	movw	%ax,-12(%ebp)
	jmp	Lj1907
Lj1912:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	fildq	(%eax)
	fstpt	-20(%ebp)
	jmp	Lj1907
Lj1913:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	fildq	_$TYPINFO$_Ld9
	fildq	(%edx)
	fdivp	%st,%st(1)
	fstpt	-20(%ebp)
	jmp	Lj1907
Lj1908:
Lj1907:
	jmp	Lj1903
Lj1906:
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	movzbl	%al,%eax
	cmpl	$1,%eax
	je	Lj1926
	jmp	Lj1927
Lj1926:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj1930
Lj1927:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-28(%ebp)
Lj1930:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movb	(%eax),%al
	testb	%al,%al
	je	Lj1941
	decb	%al
	je	Lj1942
	decb	%al
	je	Lj1943
	subb	$2,%al
	je	Lj1944
	jmp	Lj1940
Lj1941:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj1947
	jmp	Lj1948
Lj1947:
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%edx
	call	*%edx
	fstpt	-20(%ebp)
	jmp	Lj1953
Lj1948:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%ecx
	call	*%ecx
	fstpt	-20(%ebp)
Lj1953:
	jmp	Lj1939
Lj1942:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj1960
	jmp	Lj1961
Lj1960:
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%edx
	call	*%edx
	fstpt	-20(%ebp)
	jmp	Lj1966
Lj1961:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%ecx
	call	*%ecx
	fstpt	-20(%ebp)
Lj1966:
	jmp	Lj1939
Lj1943:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj1973
	jmp	Lj1974
Lj1973:
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%edx
	call	*%edx
	fstpt	-20(%ebp)
	jmp	Lj1979
Lj1974:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%ecx
	call	*%ecx
	fstpt	-20(%ebp)
Lj1979:
	jmp	Lj1939
Lj1944:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj1986
	jmp	Lj1987
Lj1986:
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%edx
	call	*%edx
	fildq	_$TYPINFO$_Ld9
	fdivrp	%st,%st(1)
	fstpt	-20(%ebp)
	jmp	Lj1992
Lj1987:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%ecx
	call	*%ecx
	fildq	_$TYPINFO$_Ld9
	fdivrp	%st,%st(1)
	fstpt	-20(%ebp)
Lj1992:
	jmp	Lj1939
Lj1940:
Lj1939:
	jmp	Lj1903
Lj1904:
Lj1903:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETFLOATPROP$TOBJECT$PPROPINFO$EXTENDED
TYPINFO_SETFLOATPROP$TOBJECT$PPROPINFO$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	testl	%eax,%eax
	je	Lj2003
	decl	%eax
	jb	Lj2002
	subl	$1,%eax
	jbe	Lj2004
	jmp	Lj2002
Lj2003:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movb	(%eax),%al
	testb	%al,%al
	je	Lj2007
	decb	%al
	je	Lj2008
	decb	%al
	je	Lj2009
	decb	%al
	je	Lj2010
	decb	%al
	je	Lj2011
	jmp	Lj2006
Lj2007:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	fldt	8(%ebp)
	fstps	(%eax)
	jmp	Lj2005
Lj2008:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	fldt	8(%ebp)
	fstpl	(%edx)
	jmp	Lj2005
Lj2009:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	8(%ebp),%eax
	movl	%eax,(%edx)
	movl	12(%ebp),%eax
	movl	%eax,4(%edx)
	movw	16(%ebp),%ax
	movw	%ax,8(%edx)
	jmp	Lj2005
Lj2010:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	fldt	8(%ebp)
	fistpq	(%eax)
	jmp	Lj2005
Lj2011:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	fldt	_$TYPINFO$_Ld10
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fistpq	(%edx)
	jmp	Lj2005
Lj2006:
Lj2005:
	jmp	Lj2001
Lj2004:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	cmpl	$1,%eax
	je	Lj2024
	jmp	Lj2025
Lj2024:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj2028
Lj2025:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
Lj2028:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	movb	(%eax),%al
	testb	%al,%al
	je	Lj2039
	decb	%al
	je	Lj2040
	decb	%al
	je	Lj2041
	subb	$2,%al
	je	Lj2042
	jmp	Lj2038
Lj2039:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj2045
	jmp	Lj2046
Lj2045:
	fldt	8(%ebp)
	fstps	-20(%ebp)
	flds	-20(%ebp)
	subl	$4,%esp
	fstps	(%esp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	call	*%edx
	jmp	Lj2051
Lj2046:
	fldt	8(%ebp)
	fstps	-20(%ebp)
	flds	-20(%ebp)
	subl	$4,%esp
	fstps	(%esp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ecx
	call	*%ecx
Lj2051:
	jmp	Lj2037
Lj2040:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj2058
	jmp	Lj2059
Lj2058:
	fldt	8(%ebp)
	fstpl	-28(%ebp)
	fldl	-28(%ebp)
	subl	$8,%esp
	fstpl	(%esp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	call	*%edx
	jmp	Lj2064
Lj2059:
	fldt	8(%ebp)
	fstpl	-24(%ebp)
	fldl	-24(%ebp)
	subl	$8,%esp
	fstpl	(%esp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ecx
	call	*%ecx
Lj2064:
	jmp	Lj2037
Lj2041:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj2071
	jmp	Lj2072
Lj2071:
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	call	*%edx
	jmp	Lj2077
Lj2072:
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ecx
	call	*%ecx
Lj2077:
	jmp	Lj2037
Lj2042:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj2084
	jmp	Lj2085
Lj2084:
	fldt	_$TYPINFO$_Ld10
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	subl	$8,%esp
	fistpq	(%esp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	call	*%edx
	jmp	Lj2090
Lj2085:
	fldt	_$TYPINFO$_Ld10
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	subl	$8,%esp
	fistpq	(%esp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ecx
	call	*%ecx
Lj2090:
	jmp	Lj2037
Lj2038:
Lj2037:
	jmp	Lj2001
Lj2002:
Lj2001:
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	TYPINFO_GETFLOATPROP$TOBJECT$ANSISTRING$$EXTENDED
TYPINFO_GETFLOATPROP$TOBJECT$ANSISTRING$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED
	fstpt	-20(%ebp)
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETFLOATPROP$TOBJECT$ANSISTRING$EXTENDED
TYPINFO_SETFLOATPROP$TOBJECT$ANSISTRING$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETFLOATPROP$TOBJECT$PPROPINFO$EXTENDED
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	TYPINFO_GETMETHODPROP$TOBJECT$PPROPINFO$$TMETHOD
TYPINFO_GETMETHODPROP$TOBJECT$PPROPINFO$$TMETHOD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%eax
	movl	$0,4(%eax)
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	testb	%al,%al
	je	Lj2129
	decb	%al
	jb	Lj2128
	subb	$1,%al
	jbe	Lj2130
	jmp	Lj2128
Lj2129:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2133
	jmp	Lj2134
Lj2133:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%eax),%edx
	movl	%edx,(%ecx)
	movl	4(%eax),%eax
	movl	%eax,4(%ecx)
Lj2134:
	jmp	Lj2127
Lj2130:
	movl	-8(%ebp),%eax
	movb	26(%eax),%al
	andb	$3,%al
	movzbl	%al,%eax
	cmpl	$1,%eax
	je	Lj2137
	jmp	Lj2138
Lj2137:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj2141
Lj2138:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
Lj2141:
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj2150
	jmp	Lj2151
Lj2150:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%ebx
	call	*%ebx
	jmp	Lj2158
Lj2151:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%ecx
	call	*%ecx
Lj2158:
	jmp	Lj2127
Lj2128:
Lj2127:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETMETHODPROP$TOBJECT$PPROPINFO$TMETHOD
TYPINFO_SETMETHODPROP$TOBJECT$PPROPINFO$TMETHOD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	testl	%eax,%eax
	je	Lj2167
	decl	%eax
	jb	Lj2166
	subl	$1,%eax
	jbe	Lj2168
	jmp	Lj2166
Lj2167:
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	addl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,(%ecx)
	movl	4(%eax),%eax
	movl	%eax,4(%ecx)
	jmp	Lj2165
Lj2168:
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$2,%eax
	andl	$3,%eax
	cmpl	$1,%eax
	je	Lj2171
	jmp	Lj2172
Lj2171:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj2175
Lj2172:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
Lj2175:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	shrl	$6,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj2184
	jmp	Lj2185
Lj2184:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	call	*%ebx
	jmp	Lj2192
Lj2185:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	*%ecx
Lj2192:
	jmp	Lj2165
Lj2166:
Lj2165:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETMETHODPROP$TOBJECT$ANSISTRING$$TMETHOD
TYPINFO_GETMETHODPROP$TOBJECT$ANSISTRING$$TMETHOD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETMETHODPROP$TOBJECT$PPROPINFO$$TMETHOD
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETMETHODPROP$TOBJECT$ANSISTRING$TMETHOD
TYPINFO_SETMETHODPROP$TOBJECT$ANSISTRING$TMETHOD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETMETHODPROP$TOBJECT$PPROPINFO$TMETHOD
	leave
	ret

.text
	.balign 4,0x90
TYPINFO_CHECKVARIANTEVENT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2223
	jmp	Lj2224
Lj2223:
	movl	RESSTR_RTLCONSTS_SERRNOVARIANTSUPPORT+4,%ecx
	movl	$VMT_SYSUTILS_EXCEPTION,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La9:
	movl	%ebp,%ecx
	movl	$La9,%edx
	call	FPC_RAISEEXCEPTION
Lj2224:
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT
TYPINFO_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	TC_TYPINFO_ONGETVARIANTPROP,%eax
	call	TYPINFO_CHECKVARIANTEVENT$POINTER
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_TYPINFO_ONGETVARIANTPROP,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT
TYPINFO_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	TC_TYPINFO_ONSETVARIANTPROP,%eax
	call	TYPINFO_CHECKVARIANTEVENT$POINTER
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_TYPINFO_ONSETVARIANTPROP,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETVARIANTPROP$TOBJECT$ANSISTRING$$VARIANT
TYPINFO_GETVARIANTPROP$TOBJECT$ANSISTRING$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_SETVARIANTPROP$TOBJECT$ANSISTRING$VARIANT
TYPINFO_SETVARIANTPROP$TOBJECT$ANSISTRING$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	TYPINFO_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETPROPVALUE$TOBJECT$ANSISTRING$$VARIANT
TYPINFO_GETPROPVALUE$TOBJECT$ANSISTRING$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	TYPINFO_GETPROPVALUE$TOBJECT$ANSISTRING$BOOLEAN$$VARIANT
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_GETPROPVALUE$TOBJECT$ANSISTRING$BOOLEAN$$VARIANT
TYPINFO_GETPROPVALUE$TOBJECT$ANSISTRING$BOOLEAN$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	TC_TYPINFO_ONGETPROPVALUE,%eax
	call	TYPINFO_CHECKVARIANTEVENT$POINTER
	movl	8(%ebp),%eax
	pushl	%eax
	movb	-12(%ebp),%cl
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	TC_TYPINFO_ONGETPROPVALUE,%esi
	movl	%eax,%edx
	movl	%ebx,%eax
	call	*%esi
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	TYPINFO_SETPROPVALUE$TOBJECT$ANSISTRING$VARIANT
TYPINFO_SETPROPVALUE$TOBJECT$ANSISTRING$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	TC_TYPINFO_ONSETPROPVALUE,%eax
	call	TYPINFO_CHECKVARIANTEVENT$POINTER
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_TYPINFO_ONSETPROPVALUE,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_ISPUBLISHEDPROP$TOBJECT$ANSISTRING$$BOOLEAN
TYPINFO_ISPUBLISHEDPROP$TOBJECT$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	testl	%eax,%eax
	setneb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_ISPUBLISHEDPROP$TCLASS$ANSISTRING$$BOOLEAN
TYPINFO_ISPUBLISHEDPROP$TCLASS$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_GETPROPINFO$TCLASS$ANSISTRING$$PPROPINFO
	testl	%eax,%eax
	setneb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_PROPISTYPE$TOBJECT$ANSISTRING$TTYPEKIND$$BOOLEAN
TYPINFO_PROPISTYPE$TOBJECT$ANSISTRING$TTYPEKIND$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_PROPTYPE$TOBJECT$ANSISTRING$$TTYPEKIND
	cmpb	-12(%ebp),%al
	seteb	-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_PROPISTYPE$TCLASS$ANSISTRING$TTYPEKIND$$BOOLEAN
TYPINFO_PROPISTYPE$TCLASS$ANSISTRING$TTYPEKIND$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_PROPTYPE$TCLASS$ANSISTRING$$TTYPEKIND
	cmpb	-12(%ebp),%al
	seteb	-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_PROPTYPE$TOBJECT$ANSISTRING$$TTYPEKIND
TYPINFO_PROPTYPE$TOBJECT$ANSISTRING$$TTYPEKIND:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	(%eax),%eax
	movb	(%eax),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_PROPTYPE$TCLASS$ANSISTRING$$TTYPEKIND
TYPINFO_PROPTYPE$TCLASS$ANSISTRING$$TTYPEKIND:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TCLASS$ANSISTRING$$PPROPINFO
	movl	(%eax),%eax
	movb	(%eax),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	TYPINFO_ISSTOREDPROP$TOBJECT$ANSISTRING$$BOOLEAN
TYPINFO_ISSTOREDPROP$TOBJECT$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	TYPINFO_ISSTOREDPROP$TOBJECT$PPROPINFO$$BOOLEAN
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	INIT$_TYPINFO
INIT$_TYPINFO:
.globl	_TYPINFO_init_implicit
_TYPINFO_init_implicit:
	pushl	%ebp
	movl	%esp,%ebp
	leave
	ret

.text
	.balign 4,0x90
.globl	FINALIZE$_TYPINFO
FINALIZE$_TYPINFO:
.globl	_TYPINFO_finalize_implicit
_TYPINFO_finalize_implicit:
	pushl	%ebp
	movl	%esp,%ebp
	movl	$INIT_TYPINFO_DEF127,%edx
	movl	$TC_TYPINFO_BOOLEANIDENTS,%eax
	call	fpc_finalize
	movl	$TC_TYPINFO_DOTSEP,%eax
	call	fpc_ansistr_decr_ref
	movl	$0,TC_TYPINFO_DOTSEP
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	_$TYPINFO$_Ld11
_$TYPINFO$_Ld11:
	.byte	14
	.ascii	"EPropertyError"

.data
	.balign 4
.globl	VMT_TYPINFO_EPROPERTYERROR
VMT_TYPINFO_EPROPERTYERROR:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$TYPINFO$_Ld11
	.long	0,0
	.long	_$TYPINFO$_Ld12
	.long	RTTI_TYPINFO_EPROPERTYERROR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	SYSTEM_TOBJECT_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	0

.data
	.balign 4
.globl	_$TYPINFO$_Ld14
_$TYPINFO$_Ld14:
	.byte	21
	.ascii	"EPropertyConvertError"

.data
	.balign 4
.globl	VMT_TYPINFO_EPROPERTYCONVERTERROR
VMT_TYPINFO_EPROPERTYCONVERTERROR:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$TYPINFO$_Ld14
	.long	0,0
	.long	_$TYPINFO$_Ld15
	.long	RTTI_TYPINFO_EPROPERTYCONVERTERROR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	SYSTEM_TOBJECT_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	0

.data
	.balign 4
.globl	THREADVARLIST_TYPINFO
THREADVARLIST_TYPINFO:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.balign 4
	.short	0,1
	.long	-1,5
.globl	_$TYPINFO$_Ld1
_$TYPINFO$_Ld1:
	.ascii	"False\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$TYPINFO$_Ld2
_$TYPINFO$_Ld2:
	.ascii	"True\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$TYPINFO$_Ld3
_$TYPINFO$_Ld3:
	.ascii	".\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 4
.globl	TC_TYPINFO_BOOLEANIDENTS
TC_TYPINFO_BOOLEANIDENTS:
	.long	_$TYPINFO$_Ld1
	.long	_$TYPINFO$_Ld2

.data
	.balign 4
.globl	TC_TYPINFO_DOTSEP
TC_TYPINFO_DOTSEP:
	.long	_$TYPINFO$_Ld3

.data
	.balign 4
.globl	TC_TYPINFO_ONGETPROPVALUE
TC_TYPINFO_ONGETPROPVALUE:
	.long	0

.data
	.balign 4
.globl	TC_TYPINFO_ONSETPROPVALUE
TC_TYPINFO_ONSETPROPVALUE:
	.long	0

.data
	.balign 4
.globl	TC_TYPINFO_ONGETVARIANTPROP
TC_TYPINFO_ONGETVARIANTPROP:
	.long	0

.data
	.balign 4
.globl	TC_TYPINFO_ONSETVARIANTPROP
TC_TYPINFO_ONSETVARIANTPROP:
	.long	0

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$TYPINFO$_Ld4
_$TYPINFO$_Ld4:
	.ascii	",\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$TYPINFO$_Ld5
_$TYPINFO$_Ld5:
	.ascii	"[\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$TYPINFO$_Ld6
_$TYPINFO$_Ld6:
	.ascii	"]\000"

.data
	.balign 4
	.short	0,1
	.long	-1,48
.globl	_$TYPINFO$_Ld7
_$TYPINFO$_Ld7:
	.ascii	"Cannot set RAW interface from IUnknown interface\000"

.data
	.balign 4
	.short	0,1
	.long	-1,39
.globl	_$TYPINFO$_Ld8
_$TYPINFO$_Ld8:
	.ascii	"Cannot set interface from RAW interface\000"

.data
	.balign 4
.globl	_$TYPINFO$_Ld9
_$TYPINFO$_Ld9:
	.byte	16,39,0,0,0,0,0,0

.data
	.balign 4
.globl	_$TYPINFO$_Ld10
_$TYPINFO$_Ld10:
	.byte	0,0,0,0,0,0,64,156,12,64
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
.globl	INIT_TYPINFO_TTYPEKIND
INIT_TYPINFO_TTYPEKIND:
	.byte	3,9
	.ascii	"TTypeKind"
	.byte	1
	.long	0,26,0
	.byte	9
	.ascii	"tkUnknown"
	.byte	9
	.ascii	"tkInteger"
	.byte	6
	.ascii	"tkChar"
	.byte	13
	.ascii	"tkEnumeration"
	.byte	7
	.ascii	"tkFloat"
	.byte	5
	.ascii	"tkSet"
	.byte	8
	.ascii	"tkMethod"
	.byte	9
	.ascii	"tkSString"
	.byte	9
	.ascii	"tkLString"
	.byte	9
	.ascii	"tkAString"
	.byte	9
	.ascii	"tkWString"
	.byte	9
	.ascii	"tkVariant"
	.byte	7
	.ascii	"tkArray"
	.byte	8
	.ascii	"tkRecord"
	.byte	11
	.ascii	"tkInterface"
	.byte	7
	.ascii	"tkClass"
	.byte	8
	.ascii	"tkObject"
	.byte	7
	.ascii	"tkWChar"
	.byte	6
	.ascii	"tkBool"
	.byte	7
	.ascii	"tkInt64"
	.byte	7
	.ascii	"tkQWord"
	.byte	10
	.ascii	"tkDynArray"
	.byte	14
	.ascii	"tkInterfaceRaw"
	.byte	9
	.ascii	"tkProcVar"
	.byte	9
	.ascii	"tkUString"
	.byte	7
	.ascii	"tkUChar"
	.byte	8
	.ascii	"tkHelper"
	.byte	7
	.ascii	"typinfo"
	.byte	0

.data
	.balign 4
.globl	RTTI_TYPINFO_TTYPEKIND
RTTI_TYPINFO_TTYPEKIND:
	.byte	3,9
	.ascii	"TTypeKind"
	.byte	1
	.long	0,26,0
	.byte	9
	.ascii	"tkUnknown"
	.byte	9
	.ascii	"tkInteger"
	.byte	6
	.ascii	"tkChar"
	.byte	13
	.ascii	"tkEnumeration"
	.byte	7
	.ascii	"tkFloat"
	.byte	5
	.ascii	"tkSet"
	.byte	8
	.ascii	"tkMethod"
	.byte	9
	.ascii	"tkSString"
	.byte	9
	.ascii	"tkLString"
	.byte	9
	.ascii	"tkAString"
	.byte	9
	.ascii	"tkWString"
	.byte	9
	.ascii	"tkVariant"
	.byte	7
	.ascii	"tkArray"
	.byte	8
	.ascii	"tkRecord"
	.byte	11
	.ascii	"tkInterface"
	.byte	7
	.ascii	"tkClass"
	.byte	8
	.ascii	"tkObject"
	.byte	7
	.ascii	"tkWChar"
	.byte	6
	.ascii	"tkBool"
	.byte	7
	.ascii	"tkInt64"
	.byte	7
	.ascii	"tkQWord"
	.byte	10
	.ascii	"tkDynArray"
	.byte	14
	.ascii	"tkInterfaceRaw"
	.byte	9
	.ascii	"tkProcVar"
	.byte	9
	.ascii	"tkUString"
	.byte	7
	.ascii	"tkUChar"
	.byte	8
	.ascii	"tkHelper"
	.byte	7
	.ascii	"typinfo"
	.byte	0

.data
	.balign 4
.globl	RTTI_TYPINFO_TTYPEKIND_s2o
RTTI_TYPINFO_TTYPEKIND_s2o:
	.long	27,12
	.long	RTTI_TYPINFO_TTYPEKIND+138
	.long	9
	.long	RTTI_TYPINFO_TTYPEKIND+108
	.long	18
	.long	RTTI_TYPINFO_TTYPEKIND+192
	.long	2
	.long	RTTI_TYPINFO_TTYPEKIND+44
	.long	15
	.long	RTTI_TYPINFO_TTYPEKIND+167
	.long	21
	.long	RTTI_TYPINFO_TTYPEKIND+215
	.long	3
	.long	RTTI_TYPINFO_TTYPEKIND+51
	.long	4
	.long	RTTI_TYPINFO_TTYPEKIND+65
	.long	26
	.long	RTTI_TYPINFO_TTYPEKIND+269
	.long	19
	.long	RTTI_TYPINFO_TTYPEKIND+199
	.long	1
	.long	RTTI_TYPINFO_TTYPEKIND+34
	.long	14
	.long	RTTI_TYPINFO_TTYPEKIND+155
	.long	22
	.long	RTTI_TYPINFO_TTYPEKIND+226
	.long	8
	.long	RTTI_TYPINFO_TTYPEKIND+98
	.long	6
	.long	RTTI_TYPINFO_TTYPEKIND+79
	.long	16
	.long	RTTI_TYPINFO_TTYPEKIND+175
	.long	23
	.long	RTTI_TYPINFO_TTYPEKIND+241
	.long	20
	.long	RTTI_TYPINFO_TTYPEKIND+207
	.long	13
	.long	RTTI_TYPINFO_TTYPEKIND+146
	.long	5
	.long	RTTI_TYPINFO_TTYPEKIND+73
	.long	7
	.long	RTTI_TYPINFO_TTYPEKIND+88
	.long	25
	.long	RTTI_TYPINFO_TTYPEKIND+261
	.long	0
	.long	RTTI_TYPINFO_TTYPEKIND+24
	.long	24
	.long	RTTI_TYPINFO_TTYPEKIND+251
	.long	11
	.long	RTTI_TYPINFO_TTYPEKIND+128
	.long	17
	.long	RTTI_TYPINFO_TTYPEKIND+184
	.long	10
	.long	RTTI_TYPINFO_TTYPEKIND+118

.data
	.balign 4
.globl	RTTI_TYPINFO_TTYPEKIND_o2s
RTTI_TYPINFO_TTYPEKIND_o2s:
	.long	0
	.long	RTTI_TYPINFO_TTYPEKIND+24
	.long	RTTI_TYPINFO_TTYPEKIND+34
	.long	RTTI_TYPINFO_TTYPEKIND+44
	.long	RTTI_TYPINFO_TTYPEKIND+51
	.long	RTTI_TYPINFO_TTYPEKIND+65
	.long	RTTI_TYPINFO_TTYPEKIND+73
	.long	RTTI_TYPINFO_TTYPEKIND+79
	.long	RTTI_TYPINFO_TTYPEKIND+88
	.long	RTTI_TYPINFO_TTYPEKIND+98
	.long	RTTI_TYPINFO_TTYPEKIND+108
	.long	RTTI_TYPINFO_TTYPEKIND+118
	.long	RTTI_TYPINFO_TTYPEKIND+128
	.long	RTTI_TYPINFO_TTYPEKIND+138
	.long	RTTI_TYPINFO_TTYPEKIND+146
	.long	RTTI_TYPINFO_TTYPEKIND+155
	.long	RTTI_TYPINFO_TTYPEKIND+167
	.long	RTTI_TYPINFO_TTYPEKIND+175
	.long	RTTI_TYPINFO_TTYPEKIND+184
	.long	RTTI_TYPINFO_TTYPEKIND+192
	.long	RTTI_TYPINFO_TTYPEKIND+199
	.long	RTTI_TYPINFO_TTYPEKIND+207
	.long	RTTI_TYPINFO_TTYPEKIND+215
	.long	RTTI_TYPINFO_TTYPEKIND+226
	.long	RTTI_TYPINFO_TTYPEKIND+241
	.long	RTTI_TYPINFO_TTYPEKIND+251
	.long	RTTI_TYPINFO_TTYPEKIND+261
	.long	RTTI_TYPINFO_TTYPEKIND+269

.data
	.balign 4
.globl	INIT_TYPINFO_TORDTYPE
INIT_TYPINFO_TORDTYPE:
	.byte	3,8
	.ascii	"TOrdType"
	.byte	1
	.long	0,5,0
	.byte	7
	.ascii	"otSByte"
	.byte	7
	.ascii	"otUByte"
	.byte	7
	.ascii	"otSWord"
	.byte	7
	.ascii	"otUWord"
	.byte	7
	.ascii	"otSLong"
	.byte	7
	.ascii	"otULong"
	.byte	7
	.ascii	"typinfo"
	.byte	0

.data
	.balign 4
.globl	RTTI_TYPINFO_TORDTYPE
RTTI_TYPINFO_TORDTYPE:
	.byte	3,8
	.ascii	"TOrdType"
	.byte	1
	.long	0,5,0
	.byte	7
	.ascii	"otSByte"
	.byte	7
	.ascii	"otUByte"
	.byte	7
	.ascii	"otSWord"
	.byte	7
	.ascii	"otUWord"
	.byte	7
	.ascii	"otSLong"
	.byte	7
	.ascii	"otULong"
	.byte	7
	.ascii	"typinfo"
	.byte	0

.data
	.balign 4
.globl	RTTI_TYPINFO_TORDTYPE_s2o
RTTI_TYPINFO_TORDTYPE_s2o:
	.long	6,0
	.long	RTTI_TYPINFO_TORDTYPE+23
	.long	4
	.long	RTTI_TYPINFO_TORDTYPE+55
	.long	2
	.long	RTTI_TYPINFO_TORDTYPE+39
	.long	1
	.long	RTTI_TYPINFO_TORDTYPE+31
	.long	5
	.long	RTTI_TYPINFO_TORDTYPE+63
	.long	3
	.long	RTTI_TYPINFO_TORDTYPE+47

.data
	.balign 4
.globl	RTTI_TYPINFO_TORDTYPE_o2s
RTTI_TYPINFO_TORDTYPE_o2s:
	.long	0
	.long	RTTI_TYPINFO_TORDTYPE+23
	.long	RTTI_TYPINFO_TORDTYPE+31
	.long	RTTI_TYPINFO_TORDTYPE+39
	.long	RTTI_TYPINFO_TORDTYPE+47
	.long	RTTI_TYPINFO_TORDTYPE+55
	.long	RTTI_TYPINFO_TORDTYPE+63

.data
	.balign 4
.globl	INIT_TYPINFO_TFLOATTYPE
INIT_TYPINFO_TFLOATTYPE:
	.byte	3,10
	.ascii	"TFloatType"
	.byte	1
	.long	0,4,0
	.byte	8
	.ascii	"ftSingle"
	.byte	8
	.ascii	"ftDouble"
	.byte	10
	.ascii	"ftExtended"
	.byte	6
	.ascii	"ftComp"
	.byte	6
	.ascii	"ftCurr"
	.byte	7
	.ascii	"typinfo"
	.byte	0

.data
	.balign 4
.globl	RTTI_TYPINFO_TFLOATTYPE
RTTI_TYPINFO_TFLOATTYPE:
	.byte	3,10
	.ascii	"TFloatType"
	.byte	1
	.long	0,4,0
	.byte	8
	.ascii	"ftSingle"
	.byte	8
	.ascii	"ftDouble"
	.byte	10
	.ascii	"ftExtended"
	.byte	6
	.ascii	"ftComp"
	.byte	6
	.ascii	"ftCurr"
	.byte	7
	.ascii	"typinfo"
	.byte	0

.data
	.balign 4
.globl	RTTI_TYPINFO_TFLOATTYPE_s2o
RTTI_TYPINFO_TFLOATTYPE_s2o:
	.long	5,3
	.long	RTTI_TYPINFO_TFLOATTYPE+54
	.long	4
	.long	RTTI_TYPINFO_TFLOATTYPE+61
	.long	1
	.long	RTTI_TYPINFO_TFLOATTYPE+34
	.long	2
	.long	RTTI_TYPINFO_TFLOATTYPE+43
	.long	0
	.long	RTTI_TYPINFO_TFLOATTYPE+25

.data
	.balign 4
.globl	RTTI_TYPINFO_TFLOATTYPE_o2s
RTTI_TYPINFO_TFLOATTYPE_o2s:
	.long	0
	.long	RTTI_TYPINFO_TFLOATTYPE+25
	.long	RTTI_TYPINFO_TFLOATTYPE+34
	.long	RTTI_TYPINFO_TFLOATTYPE+43
	.long	RTTI_TYPINFO_TFLOATTYPE+54
	.long	RTTI_TYPINFO_TFLOATTYPE+61

.data
	.balign 4
.globl	INIT_TYPINFO_TMETHODKIND
INIT_TYPINFO_TMETHODKIND:
	.byte	3,11
	.ascii	"TMethodKind"
	.byte	1
	.long	0,8,0
	.byte	11
	.ascii	"mkProcedure"
	.byte	10
	.ascii	"mkFunction"
	.byte	13
	.ascii	"mkConstructor"
	.byte	12
	.ascii	"mkDestructor"
	.byte	16
	.ascii	"mkClassProcedure"
	.byte	15
	.ascii	"mkClassFunction"
	.byte	18
	.ascii	"mkClassConstructor"
	.byte	17
	.ascii	"mkClassDestructor"
	.byte	18
	.ascii	"mkOperatorOverload"
	.byte	7
	.ascii	"typinfo"
	.byte	0

.data
	.balign 4
.globl	RTTI_TYPINFO_TMETHODKIND
RTTI_TYPINFO_TMETHODKIND:
	.byte	3,11
	.ascii	"TMethodKind"
	.byte	1
	.long	0,8,0
	.byte	11
	.ascii	"mkProcedure"
	.byte	10
	.ascii	"mkFunction"
	.byte	13
	.ascii	"mkConstructor"
	.byte	12
	.ascii	"mkDestructor"
	.byte	16
	.ascii	"mkClassProcedure"
	.byte	15
	.ascii	"mkClassFunction"
	.byte	18
	.ascii	"mkClassConstructor"
	.byte	17
	.ascii	"mkClassDestructor"
	.byte	18
	.ascii	"mkOperatorOverload"
	.byte	7
	.ascii	"typinfo"
	.byte	0

.data
	.balign 4
.globl	RTTI_TYPINFO_TMETHODKIND_s2o
RTTI_TYPINFO_TMETHODKIND_s2o:
	.long	9,6
	.long	RTTI_TYPINFO_TMETHODKIND+109
	.long	7
	.long	RTTI_TYPINFO_TMETHODKIND+128
	.long	5
	.long	RTTI_TYPINFO_TMETHODKIND+93
	.long	4
	.long	RTTI_TYPINFO_TMETHODKIND+76
	.long	2
	.long	RTTI_TYPINFO_TMETHODKIND+49
	.long	3
	.long	RTTI_TYPINFO_TMETHODKIND+63
	.long	1
	.long	RTTI_TYPINFO_TMETHODKIND+38
	.long	8
	.long	RTTI_TYPINFO_TMETHODKIND+146
	.long	0
	.long	RTTI_TYPINFO_TMETHODKIND+26

.data
	.balign 4
.globl	RTTI_TYPINFO_TMETHODKIND_o2s
RTTI_TYPINFO_TMETHODKIND_o2s:
	.long	0
	.long	RTTI_TYPINFO_TMETHODKIND+26
	.long	RTTI_TYPINFO_TMETHODKIND+38
	.long	RTTI_TYPINFO_TMETHODKIND+49
	.long	RTTI_TYPINFO_TMETHODKIND+63
	.long	RTTI_TYPINFO_TMETHODKIND+76
	.long	RTTI_TYPINFO_TMETHODKIND+93
	.long	RTTI_TYPINFO_TMETHODKIND+109
	.long	RTTI_TYPINFO_TMETHODKIND+128
	.long	RTTI_TYPINFO_TMETHODKIND+146

.data
	.balign 4
.globl	INIT_TYPINFO_TPARAMFLAG
INIT_TYPINFO_TPARAMFLAG:
	.byte	3,10
	.ascii	"TParamFlag"
	.byte	1
	.long	0,5,0
	.byte	5
	.ascii	"pfVar"
	.byte	7
	.ascii	"pfConst"
	.byte	7
	.ascii	"pfArray"
	.byte	9
	.ascii	"pfAddress"
	.byte	11
	.ascii	"pfReference"
	.byte	5
	.ascii	"pfOut"
	.byte	7
	.ascii	"typinfo"
	.byte	0

.data
	.balign 4
.globl	RTTI_TYPINFO_TPARAMFLAG
RTTI_TYPINFO_TPARAMFLAG:
	.byte	3,10
	.ascii	"TParamFlag"
	.byte	1
	.long	0,5,0
	.byte	5
	.ascii	"pfVar"
	.byte	7
	.ascii	"pfConst"
	.byte	7
	.ascii	"pfArray"
	.byte	9
	.ascii	"pfAddress"
	.byte	11
	.ascii	"pfReference"
	.byte	5
	.ascii	"pfOut"
	.byte	7
	.ascii	"typinfo"
	.byte	0

.data
	.balign 4
.globl	RTTI_TYPINFO_TPARAMFLAG_s2o
RTTI_TYPINFO_TPARAMFLAG_s2o:
	.long	6,3
	.long	RTTI_TYPINFO_TPARAMFLAG+47
	.long	2
	.long	RTTI_TYPINFO_TPARAMFLAG+39
	.long	1
	.long	RTTI_TYPINFO_TPARAMFLAG+31
	.long	5
	.long	RTTI_TYPINFO_TPARAMFLAG+69
	.long	4
	.long	RTTI_TYPINFO_TPARAMFLAG+57
	.long	0
	.long	RTTI_TYPINFO_TPARAMFLAG+25

.data
	.balign 4
.globl	RTTI_TYPINFO_TPARAMFLAG_o2s
RTTI_TYPINFO_TPARAMFLAG_o2s:
	.long	0
	.long	RTTI_TYPINFO_TPARAMFLAG+25
	.long	RTTI_TYPINFO_TPARAMFLAG+31
	.long	RTTI_TYPINFO_TPARAMFLAG+39
	.long	RTTI_TYPINFO_TPARAMFLAG+47
	.long	RTTI_TYPINFO_TPARAMFLAG+57
	.long	RTTI_TYPINFO_TPARAMFLAG+69

.data
	.balign 4
.globl	INIT_TYPINFO_TPARAMFLAGS
INIT_TYPINFO_TPARAMFLAGS:
	.byte	5,11
	.ascii	"TParamFlags"
	.byte	1
	.long	INIT_TYPINFO_TPARAMFLAG

.data
	.balign 4
.globl	RTTI_TYPINFO_TPARAMFLAGS
RTTI_TYPINFO_TPARAMFLAGS:
	.byte	5,11
	.ascii	"TParamFlags"
	.byte	1
	.long	RTTI_TYPINFO_TPARAMFLAG

.data
	.balign 4
.globl	INIT_TYPINFO_TINTFFLAG
INIT_TYPINFO_TINTFFLAG:
	.byte	3,9
	.ascii	"TIntfFlag"
	.byte	1
	.long	0,3,0
	.byte	9
	.ascii	"ifHasGuid"
	.byte	15
	.ascii	"ifDispInterface"
	.byte	10
	.ascii	"ifDispatch"
	.byte	12
	.ascii	"ifHasStrGUID"
	.byte	7
	.ascii	"typinfo"
	.byte	0

.data
	.balign 4
.globl	RTTI_TYPINFO_TINTFFLAG
RTTI_TYPINFO_TINTFFLAG:
	.byte	3,9
	.ascii	"TIntfFlag"
	.byte	1
	.long	0,3,0
	.byte	9
	.ascii	"ifHasGuid"
	.byte	15
	.ascii	"ifDispInterface"
	.byte	10
	.ascii	"ifDispatch"
	.byte	12
	.ascii	"ifHasStrGUID"
	.byte	7
	.ascii	"typinfo"
	.byte	0

.data
	.balign 4
.globl	RTTI_TYPINFO_TINTFFLAG_s2o
RTTI_TYPINFO_TINTFFLAG_s2o:
	.long	4,2
	.long	RTTI_TYPINFO_TINTFFLAG+50
	.long	1
	.long	RTTI_TYPINFO_TINTFFLAG+34
	.long	0
	.long	RTTI_TYPINFO_TINTFFLAG+24
	.long	3
	.long	RTTI_TYPINFO_TINTFFLAG+61

.data
	.balign 4
.globl	RTTI_TYPINFO_TINTFFLAG_o2s
RTTI_TYPINFO_TINTFFLAG_o2s:
	.long	0
	.long	RTTI_TYPINFO_TINTFFLAG+24
	.long	RTTI_TYPINFO_TINTFFLAG+34
	.long	RTTI_TYPINFO_TINTFFLAG+50
	.long	RTTI_TYPINFO_TINTFFLAG+61

.data
	.balign 4
.globl	INIT_TYPINFO_TINTFFLAGS
INIT_TYPINFO_TINTFFLAGS:
	.byte	5,10
	.ascii	"TIntfFlags"
	.byte	1
	.long	INIT_TYPINFO_TINTFFLAG

.data
	.balign 4
.globl	RTTI_TYPINFO_TINTFFLAGS
RTTI_TYPINFO_TINTFFLAGS:
	.byte	5,10
	.ascii	"TIntfFlags"
	.byte	1
	.long	RTTI_TYPINFO_TINTFFLAG

.data
	.balign 4
.globl	INIT_TYPINFO_TINTFFLAGSBASE
INIT_TYPINFO_TINTFFLAGSBASE:
	.byte	5,14
	.ascii	"TIntfFlagsBase"
	.byte	1
	.long	INIT_TYPINFO_TINTFFLAG

.data
	.balign 4
.globl	RTTI_TYPINFO_TINTFFLAGSBASE
RTTI_TYPINFO_TINTFFLAGSBASE:
	.byte	5,14
	.ascii	"TIntfFlagsBase"
	.byte	1
	.long	RTTI_TYPINFO_TINTFFLAG

.data
	.balign 4
.globl	INIT_TYPINFO_TCALLCONV
INIT_TYPINFO_TCALLCONV:
	.byte	3,9
	.ascii	"TCallConv"
	.byte	1
	.long	0,11,0
	.byte	5
	.ascii	"ccReg"
	.byte	7
	.ascii	"ccCdecl"
	.byte	8
	.ascii	"ccPascal"
	.byte	9
	.ascii	"ccStdCall"
	.byte	10
	.ascii	"ccSafeCall"
	.byte	9
	.ascii	"ccCppdecl"
	.byte	7
	.ascii	"ccFar16"
	.byte	12
	.ascii	"ccOldFPCCall"
	.byte	12
	.ascii	"ccInternProc"
	.byte	9
	.ascii	"ccSysCall"
	.byte	11
	.ascii	"ccSoftFloat"
	.byte	10
	.ascii	"ccMWPascal"
	.byte	7
	.ascii	"typinfo"
	.byte	0

.data
	.balign 4
.globl	RTTI_TYPINFO_TCALLCONV
RTTI_TYPINFO_TCALLCONV:
	.byte	3,9
	.ascii	"TCallConv"
	.byte	1
	.long	0,11,0
	.byte	5
	.ascii	"ccReg"
	.byte	7
	.ascii	"ccCdecl"
	.byte	8
	.ascii	"ccPascal"
	.byte	9
	.ascii	"ccStdCall"
	.byte	10
	.ascii	"ccSafeCall"
	.byte	9
	.ascii	"ccCppdecl"
	.byte	7
	.ascii	"ccFar16"
	.byte	12
	.ascii	"ccOldFPCCall"
	.byte	12
	.ascii	"ccInternProc"
	.byte	9
	.ascii	"ccSysCall"
	.byte	11
	.ascii	"ccSoftFloat"
	.byte	10
	.ascii	"ccMWPascal"
	.byte	7
	.ascii	"typinfo"
	.byte	0

.data
	.balign 4
.globl	RTTI_TYPINFO_TCALLCONV_s2o
RTTI_TYPINFO_TCALLCONV_s2o:
	.long	12,1
	.long	RTTI_TYPINFO_TCALLCONV+30
	.long	5
	.long	RTTI_TYPINFO_TCALLCONV+68
	.long	6
	.long	RTTI_TYPINFO_TCALLCONV+78
	.long	8
	.long	RTTI_TYPINFO_TCALLCONV+99
	.long	11
	.long	RTTI_TYPINFO_TCALLCONV+134
	.long	7
	.long	RTTI_TYPINFO_TCALLCONV+86
	.long	2
	.long	RTTI_TYPINFO_TCALLCONV+38
	.long	0
	.long	RTTI_TYPINFO_TCALLCONV+24
	.long	4
	.long	RTTI_TYPINFO_TCALLCONV+57
	.long	10
	.long	RTTI_TYPINFO_TCALLCONV+122
	.long	3
	.long	RTTI_TYPINFO_TCALLCONV+47
	.long	9
	.long	RTTI_TYPINFO_TCALLCONV+112

.data
	.balign 4
.globl	RTTI_TYPINFO_TCALLCONV_o2s
RTTI_TYPINFO_TCALLCONV_o2s:
	.long	0
	.long	RTTI_TYPINFO_TCALLCONV+24
	.long	RTTI_TYPINFO_TCALLCONV+30
	.long	RTTI_TYPINFO_TCALLCONV+38
	.long	RTTI_TYPINFO_TCALLCONV+47
	.long	RTTI_TYPINFO_TCALLCONV+57
	.long	RTTI_TYPINFO_TCALLCONV+68
	.long	RTTI_TYPINFO_TCALLCONV+78
	.long	RTTI_TYPINFO_TCALLCONV+86
	.long	RTTI_TYPINFO_TCALLCONV+99
	.long	RTTI_TYPINFO_TCALLCONV+112
	.long	RTTI_TYPINFO_TCALLCONV+122
	.long	RTTI_TYPINFO_TCALLCONV+134

.data
	.balign 4
.globl	INIT_TYPINFO_TTYPEKINDS
INIT_TYPINFO_TTYPEKINDS:
	.byte	5,10
	.ascii	"TTypeKinds"
	.byte	5
	.long	INIT_TYPINFO_TTYPEKIND

.data
	.balign 4
.globl	RTTI_TYPINFO_TTYPEKINDS
RTTI_TYPINFO_TTYPEKINDS:
	.byte	5,10
	.ascii	"TTypeKinds"
	.byte	5
	.long	RTTI_TYPINFO_TTYPEKIND

.data
	.balign 4
.globl	INIT_TYPINFO_PVMTFIELDENTRY
INIT_TYPINFO_PVMTFIELDENTRY:
	.byte	0
	.ascii	"\016PVmtFieldEntry"

.data
	.balign 4
.globl	RTTI_TYPINFO_PVMTFIELDENTRY
RTTI_TYPINFO_PVMTFIELDENTRY:
	.byte	0
	.ascii	"\016PVmtFieldEntry"

.data
	.balign 4
.globl	INIT_TYPINFO_TVMTFIELDENTRY
INIT_TYPINFO_TVMTFIELDENTRY:
	.byte	13,14
	.ascii	"TVmtFieldEntry"
	.long	262,0

.data
	.balign 4
.globl	RTTI_TYPINFO_TVMTFIELDENTRY
RTTI_TYPINFO_TVMTFIELDENTRY:
	.byte	13,14
	.ascii	"TVmtFieldEntry"
	.long	262,3
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	6

.data
	.balign 4
.globl	INIT_TYPINFO_PVMTFIELDTABLE
INIT_TYPINFO_PVMTFIELDTABLE:
	.byte	0
	.ascii	"\016PVmtFieldTable"

.data
	.balign 4
.globl	RTTI_TYPINFO_PVMTFIELDTABLE
RTTI_TYPINFO_PVMTFIELDTABLE:
	.byte	0
	.ascii	"\016PVmtFieldTable"

.data
	.balign 4
.globl	INIT_TYPINFO_TVMTFIELDTABLE
INIT_TYPINFO_TVMTFIELDTABLE:
	.byte	13,14
	.ascii	"TVmtFieldTable"
	.long	268,0

.data
	.balign 4
.globl	RTTI_TYPINFO_DEF15
RTTI_TYPINFO_DEF15:
	.byte	12
	.ascii	"\000"
	.long	262,1
	.long	RTTI_TYPINFO_TVMTFIELDENTRY
	.long	-1

.data
	.balign 4
.globl	RTTI_TYPINFO_TVMTFIELDTABLE
RTTI_TYPINFO_TVMTFIELDTABLE:
	.byte	13,14
	.ascii	"TVmtFieldTable"
	.long	268,3
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_POINTER
	.long	2
	.long	RTTI_TYPINFO_DEF15
	.long	6

.data
	.balign 4
.globl	INIT_TYPINFO_TTYPEINFO
INIT_TYPINFO_TTYPEINFO:
	.byte	13,9
	.ascii	"TTypeInfo"
	.long	257,0

.data
	.balign 4
.globl	RTTI_TYPINFO_TTYPEINFO
RTTI_TYPINFO_TTYPEINFO:
	.byte	13,9
	.ascii	"TTypeInfo"
	.long	257,2
	.long	RTTI_TYPINFO_TTYPEKIND
	.long	0
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	1

.data
	.balign 4
.globl	INIT_TYPINFO_PTYPEINFO
INIT_TYPINFO_PTYPEINFO:
	.byte	0
	.ascii	"\011PTypeInfo"

.data
	.balign 4
.globl	RTTI_TYPINFO_PTYPEINFO
RTTI_TYPINFO_PTYPEINFO:
	.byte	0
	.ascii	"\011PTypeInfo"

.data
	.balign 4
.globl	INIT_TYPINFO_PPTYPEINFO
INIT_TYPINFO_PPTYPEINFO:
	.byte	0
	.ascii	"\012PPTypeInfo"

.data
	.balign 4
.globl	RTTI_TYPINFO_PPTYPEINFO
RTTI_TYPINFO_PPTYPEINFO:
	.byte	0
	.ascii	"\012PPTypeInfo"

.data
	.balign 4
.globl	INIT_TYPINFO_PTYPEDATA
INIT_TYPINFO_PTYPEDATA:
	.byte	0
	.ascii	"\011PTypeData"

.data
	.balign 4
.globl	RTTI_TYPINFO_PTYPEDATA
RTTI_TYPINFO_PTYPEDATA:
	.byte	0
	.ascii	"\011PTypeData"

.data
	.balign 4
.globl	INIT_TYPINFO_TTYPEDATA
INIT_TYPINFO_TTYPEDATA:
	.byte	13,9
	.ascii	"TTypeData"
	.long	1026,0

.data
	.balign 4
.globl	RTTI_TYPINFO_DEF24
RTTI_TYPINFO_DEF24:
	.byte	12
	.ascii	"\000"
	.long	1,1024
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_TYPINFO_TTYPEDATA
RTTI_TYPINFO_TTYPEDATA:
	.byte	13,9
	.ascii	"TTypeData"
	.long	1026,37
	.long	RTTI_TYPINFO_TORDTYPE
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	1
	.long	RTTI_SYSTEM_LONGINT
	.long	5
	.long	RTTI_TYPINFO_PTYPEINFO
	.long	9
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	13
	.long	RTTI_TYPINFO_PTYPEINFO
	.long	1
	.long	RTTI_TYPINFO_TFLOATTYPE
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_TCLASS
	.long	0
	.long	RTTI_TYPINFO_PTYPEINFO
	.long	4
	.long	RTTI_SYSTEM_SMALLINT
	.long	8
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	10
	.long	RTTI_TYPINFO_PTYPEINFO
	.long	0
	.long	RTTI_TYPINFO_PTYPEINFO
	.long	4
	.long	RTTI_SYSTEM_SMALLINT
	.long	8
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	10
	.long	RTTI_TYPINFO_TMETHODKIND
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1
	.long	RTTI_TYPINFO_DEF24
	.long	2
	.long	RTTI_SYSTEM_INT64
	.long	0
	.long	RTTI_SYSTEM_INT64
	.long	8
	.long	RTTI_SYSTEM_QWORD
	.long	0
	.long	RTTI_SYSTEM_QWORD
	.long	8
	.long	RTTI_TYPINFO_PTYPEINFO
	.long	0
	.long	RTTI_TYPINFO_TINTFFLAGSBASE
	.long	4
	.long	RTTI_SYSTEM_TGUID
	.long	5
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	21
	.long	RTTI_TYPINFO_PTYPEINFO
	.long	0
	.long	RTTI_TYPINFO_TINTFFLAGSBASE
	.long	4
	.long	RTTI_SYSTEM_TGUID
	.long	5
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	21
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	277
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_TYPINFO_PPTYPEINFO
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	8
	.long	RTTI_TYPINFO_PPTYPEINFO
	.long	12
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	16

.data
	.balign 4
.globl	INIT_TYPINFO_TPROPDATA
INIT_TYPINFO_TPROPDATA:
	.byte	13,9
	.ascii	"TPropData"
	.long	6,0

.data
	.balign 4
.globl	RTTI_TYPINFO_DEF26
RTTI_TYPINFO_DEF26:
	.byte	13
	.ascii	"\000"
	.long	4,1
	.long	RTTI_SYSTEM_LONGINT
	.long	0

.data
	.balign 4
.globl	RTTI_TYPINFO_TPROPDATA
RTTI_TYPINFO_TPROPDATA:
	.byte	13,9
	.ascii	"TPropData"
	.long	6,2
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_TYPINFO_DEF26
	.long	2

.data
	.balign 4
.globl	INIT_TYPINFO_PPROPINFO
INIT_TYPINFO_PPROPINFO:
	.byte	0
	.ascii	"\011PPropInfo"

.data
	.balign 4
.globl	RTTI_TYPINFO_PPROPINFO
RTTI_TYPINFO_PPROPINFO:
	.byte	0
	.ascii	"\011PPropInfo"

.data
	.balign 4
.globl	INIT_TYPINFO_TPROPINFO
INIT_TYPINFO_TPROPINFO:
	.byte	13,9
	.ascii	"TPropInfo"
	.long	283,0

.data
	.balign 4
.globl	RTTI_TYPINFO_TPROPINFO
RTTI_TYPINFO_TPROPINFO:
	.byte	13,9
	.ascii	"TPropInfo"
	.long	283,9
	.long	RTTI_TYPINFO_PTYPEINFO
	.long	0
	.long	RTTI_SYSTEM_POINTER
	.long	4
	.long	RTTI_SYSTEM_POINTER
	.long	8
	.long	RTTI_SYSTEM_POINTER
	.long	12
	.long	RTTI_SYSTEM_LONGINT
	.long	16
	.long	RTTI_SYSTEM_LONGINT
	.long	20
	.long	RTTI_SYSTEM_SMALLINT
	.long	24
	.long	RTTI_SYSTEM_BYTE
	.long	26
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	27

.data
	.balign 4
.globl	INIT_TYPINFO_TPROCINFOPROC
INIT_TYPINFO_TPROCINFOPROC:
	.byte	6,13
	.ascii	"TProcInfoProc"
	.byte	0,1,0,8
	.ascii	"PropInfo"
	.ascii	"\011PPropInfo"
	.byte	0
	.long	RTTI_TYPINFO_PPROPINFO

.data
	.balign 4
.globl	RTTI_TYPINFO_TPROCINFOPROC
RTTI_TYPINFO_TPROCINFOPROC:
	.byte	6,13
	.ascii	"TProcInfoProc"
	.byte	0,1,0,8
	.ascii	"PropInfo"
	.ascii	"\011PPropInfo"
	.byte	0
	.long	RTTI_TYPINFO_PPROPINFO

.data
	.balign 4
.globl	INIT_TYPINFO_PPROPLIST
INIT_TYPINFO_PPROPLIST:
	.byte	0
	.ascii	"\011PPropList"

.data
	.balign 4
.globl	RTTI_TYPINFO_PPROPLIST
RTTI_TYPINFO_PPROPLIST:
	.byte	0
	.ascii	"\011PPropList"

.data
	.balign 4
.globl	INIT_TYPINFO_TPROPLIST
INIT_TYPINFO_TPROPLIST:
	.byte	12
	.ascii	"\011TPropList"
	.long	4,65536
	.long	INIT_TYPINFO_PPROPINFO
	.long	-1

.data
	.balign 4
.globl	RTTI_TYPINFO_TPROPLIST
RTTI_TYPINFO_TPROPLIST:
	.byte	12
	.ascii	"\011TPropList"
	.long	4,65536
	.long	RTTI_TYPINFO_PPROPINFO
	.long	-1

.data
	.balign 4
.globl	INIT_TYPINFO_DEF185
INIT_TYPINFO_DEF185:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_TYPINFO_DEF188
INIT_TYPINFO_DEF188:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_TYPINFO_DEF191
INIT_TYPINFO_DEF191:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_TYPINFO_DEF194
INIT_TYPINFO_DEF194:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_TYPINFO_DEF244
INIT_TYPINFO_DEF244:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_TYPINFO_DEF150
INIT_TYPINFO_DEF150:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_TYPINFO_DEF151
INIT_TYPINFO_DEF151:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_TYPINFO_DEF161
INIT_TYPINFO_DEF161:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_TYPINFO_DEF127
INIT_TYPINFO_DEF127:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	_$TYPINFO$_Ld12
_$TYPINFO$_Ld12:
	.short	0
	.long	_$TYPINFO$_Ld13
	.balign 4
.globl	_$TYPINFO$_Ld13
_$TYPINFO$_Ld13:
	.short	0

.data
	.balign 4
.globl	INIT_TYPINFO_EPROPERTYERROR
INIT_TYPINFO_EPROPERTYERROR:
	.byte	15,14
	.ascii	"EPropertyError"
	.long	4,0

.data
	.balign 4
.globl	RTTI_TYPINFO_EPROPERTYERROR
RTTI_TYPINFO_EPROPERTYERROR:
	.byte	15,14
	.ascii	"EPropertyError"
	.long	VMT_TYPINFO_EPROPERTYERROR
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	7
	.ascii	"typinfo"
	.short	0

.data
	.balign 4
.globl	INIT_TYPINFO_TGETPROPVALUE
INIT_TYPINFO_TGETPROPVALUE:
	.byte	23,13
	.ascii	"TGetPropValue"

.data
	.balign 4
.globl	RTTI_TYPINFO_TGETPROPVALUE
RTTI_TYPINFO_TGETPROPVALUE:
	.byte	23,13
	.ascii	"TGetPropValue"

.data
	.balign 4
.globl	INIT_TYPINFO_TSETPROPVALUE
INIT_TYPINFO_TSETPROPVALUE:
	.byte	23,13
	.ascii	"TSetPropValue"

.data
	.balign 4
.globl	RTTI_TYPINFO_TSETPROPVALUE
RTTI_TYPINFO_TSETPROPVALUE:
	.byte	23,13
	.ascii	"TSetPropValue"

.data
	.balign 4
.globl	INIT_TYPINFO_TGETVARIANTPROP
INIT_TYPINFO_TGETVARIANTPROP:
	.byte	23,15
	.ascii	"TGetVariantProp"

.data
	.balign 4
.globl	RTTI_TYPINFO_TGETVARIANTPROP
RTTI_TYPINFO_TGETVARIANTPROP:
	.byte	23,15
	.ascii	"TGetVariantProp"

.data
	.balign 4
.globl	INIT_TYPINFO_TSETVARIANTPROP
INIT_TYPINFO_TSETVARIANTPROP:
	.byte	23,15
	.ascii	"TSetVariantProp"

.data
	.balign 4
.globl	RTTI_TYPINFO_TSETVARIANTPROP
RTTI_TYPINFO_TSETVARIANTPROP:
	.byte	23,15
	.ascii	"TSetVariantProp"

.data
	.balign 4
.globl	_$TYPINFO$_Ld15
_$TYPINFO$_Ld15:
	.short	0
	.long	_$TYPINFO$_Ld16
	.balign 4
.globl	_$TYPINFO$_Ld16
_$TYPINFO$_Ld16:
	.short	0

.data
	.balign 4
.globl	INIT_TYPINFO_EPROPERTYCONVERTERROR
INIT_TYPINFO_EPROPERTYCONVERTERROR:
	.byte	15,21
	.ascii	"EPropertyConvertError"
	.long	4,0

.data
	.balign 4
.globl	RTTI_TYPINFO_EPROPERTYCONVERTERROR
RTTI_TYPINFO_EPROPERTYCONVERTERROR:
	.byte	15,21
	.ascii	"EPropertyConvertError"
	.long	VMT_TYPINFO_EPROPERTYCONVERTERROR
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	7
	.ascii	"typinfo"
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
# End asmlist al_picdata
# Begin asmlist al_resourcestrings
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end

