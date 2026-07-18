# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_INFTREES_HUFT_BUILD$crcDF6367C2
_INFTREES_HUFT_BUILD$crcDF6367C2:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-276(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-84(%ebp),%eax
	movb	$0,%cl
	movl	$64,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-100(%ebp)
	cmpl	-100(%ebp),%eax
	jb	Lj12
	decl	-100(%ebp)
	.align 2
Lj13:
	incl	-100(%ebp)
	movl	-4(%ebp),%edx
	movl	-100(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	incl	-84(%ebp,%edx,4)
	cmpl	-100(%ebp),%eax
	ja	Lj13
Lj12:
	movl	-84(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj14
	jmp	Lj15
Lj14:
	movl	32(%ebp),%eax
	movl	$0,(%eax)
	movl	28(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-16(%ebp)
	jmp	Lj3
Lj15:
	movl	28(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-112(%ebp)
	movl	$1,-104(%ebp)
	decl	-104(%ebp)
	.align 2
Lj26:
	incl	-104(%ebp)
	movl	-104(%ebp),%eax
	movl	-84(%ebp,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj27
	jmp	Lj28
Lj27:
	jmp	Lj25
Lj28:
	cmpl	$15,-104(%ebp)
	jb	Lj26
Lj25:
	movl	-104(%ebp),%eax
	movl	%eax,-108(%ebp)
	movl	-112(%ebp),%eax
	cmpl	-104(%ebp),%eax
	jb	Lj31
	jmp	Lj32
Lj31:
	movl	-104(%ebp),%eax
	movl	%eax,-112(%ebp)
Lj32:
	movl	$15,-100(%ebp)
	incl	-100(%ebp)
	.align 2
Lj37:
	decl	-100(%ebp)
	movl	-100(%ebp),%eax
	movl	-84(%ebp,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj38
	jmp	Lj39
Lj38:
	jmp	Lj36
Lj39:
	cmpl	$1,-100(%ebp)
	ja	Lj37
Lj36:
	movl	-100(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	-112(%ebp),%eax
	cmpl	-100(%ebp),%eax
	ja	Lj42
	jmp	Lj43
Lj42:
	movl	-100(%ebp),%eax
	movl	%eax,-112(%ebp)
Lj43:
	movl	28(%ebp),%edx
	movl	-112(%ebp),%eax
	movl	%eax,(%edx)
	movl	$1,%eax
	movl	-104(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,-268(%ebp)
	jmp	Lj51
	.align 2
Lj50:
	movl	-104(%ebp),%eax
	movl	-84(%ebp,%eax,4),%eax
	subl	%eax,-268(%ebp)
	movl	-268(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj53
	jmp	Lj54
Lj53:
	movl	$-3,-16(%ebp)
	jmp	Lj3
Lj54:
	incl	-104(%ebp)
	movl	-268(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-268(%ebp)
Lj51:
	movl	-104(%ebp),%eax
	cmpl	-100(%ebp),%eax
	jb	Lj50
	jmp	Lj52
Lj52:
	movl	-100(%ebp),%eax
	movl	-84(%ebp,%eax,4),%eax
	subl	%eax,-268(%ebp)
	movl	-268(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj59
	jmp	Lj60
Lj59:
	movl	$-3,-16(%ebp)
	jmp	Lj3
Lj60:
	movl	-100(%ebp),%edx
	movl	-268(%ebp),%eax
	addl	%eax,-84(%ebp,%edx,4)
	movl	$0,-256(%ebp)
	movl	$0,-104(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,-120(%ebp)
	leal	-252(%ebp),%eax
	movl	%eax,-264(%ebp)
	decl	-100(%ebp)
	jmp	Lj72
	.align 2
Lj71:
	movl	-120(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,-104(%ebp)
	movl	-264(%ebp),%eax
	movl	-104(%ebp),%edx
	movl	%edx,(%eax)
	addl	$4,-120(%ebp)
	addl	$4,-264(%ebp)
	decl	-100(%ebp)
Lj72:
	movl	-100(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj71
	jmp	Lj73
Lj73:
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-100(%ebp)
	cmpl	-100(%ebp),%eax
	jb	Lj77
	decl	-100(%ebp)
	.align 2
Lj78:
	incl	-100(%ebp)
	movl	-4(%ebp),%edx
	movl	-100(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-104(%ebp)
	movl	-104(%ebp),%edx
	testl	%edx,%edx
	jne	Lj81
	jmp	Lj82
Lj81:
	movl	12(%ebp),%ebx
	movl	-104(%ebp),%edx
	movl	-260(%ebp,%edx,4),%edx
	movl	-100(%ebp),%ecx
	movl	%ecx,(%ebx,%edx,4)
	movl	-104(%ebp),%edx
	incl	-260(%ebp,%edx,4)
Lj82:
	cmpl	-100(%ebp),%eax
	ja	Lj78
Lj77:
	movl	-92(%ebp),%eax
	movl	-260(%ebp,%eax,4),%eax
	movl	%eax,-8(%ebp)
	movl	$0,-100(%ebp)
	movl	$0,-260(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-120(%ebp)
	movl	$-1,-96(%ebp)
	movl	-112(%ebp),%eax
	negl	%eax
	movl	%eax,-196(%ebp)
	movl	$0,-192(%ebp)
	movl	$0,-124(%ebp)
	movl	$0,-272(%ebp)
	jmp	Lj104
	.align 2
Lj103:
	movl	-108(%ebp),%eax
	movl	-84(%ebp,%eax,4),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj109
	.align 2
Lj108:
	decl	-20(%ebp)
	jmp	Lj112
	.align 2
Lj111:
	incl	-96(%ebp)
	movl	-112(%ebp),%eax
	addl	%eax,-196(%ebp)
	movl	-92(%ebp),%edx
	movl	-196(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-272(%ebp)
	movl	-272(%ebp),%eax
	cmpl	-112(%ebp),%eax
	ja	Lj116
	jmp	Lj117
Lj116:
	movl	-112(%ebp),%eax
	movl	%eax,-272(%ebp)
Lj117:
	movl	-108(%ebp),%edx
	movl	-196(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-104(%ebp)
	movl	$1,%eax
	movl	-104(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,-88(%ebp)
	movl	-20(%ebp),%eax
	incl	%eax
	cmpl	-88(%ebp),%eax
	jb	Lj124
	jmp	Lj125
Lj124:
	movl	-20(%ebp),%eax
	incl	%eax
	subl	%eax,-88(%ebp)
	movl	-108(%ebp),%eax
	leal	-84(%ebp,%eax,4),%eax
	movl	%eax,-264(%ebp)
	movl	-104(%ebp),%eax
	cmpl	-272(%ebp),%eax
	jb	Lj128
	jmp	Lj129
Lj128:
	incl	-104(%ebp)
	jmp	Lj131
	.align 2
Lj130:
	movl	-88(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-88(%ebp)
	addl	$4,-264(%ebp)
	movl	-264(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-88(%ebp),%eax
	jae	Lj135
	jmp	Lj136
Lj135:
	jmp	Lj132
Lj136:
	movl	-264(%ebp),%eax
	movl	(%eax),%eax
	subl	%eax,-88(%ebp)
	incl	-104(%ebp)
Lj131:
	movl	-104(%ebp),%eax
	cmpl	-272(%ebp),%eax
	jb	Lj130
	jmp	Lj132
Lj132:
Lj129:
Lj125:
	movl	$1,%eax
	movl	-104(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,-272(%ebp)
	movl	16(%ebp),%eax
	movl	(%eax),%edx
	movl	-272(%ebp),%eax
	addl	%eax,%edx
	cmpl	$1440,%edx
	ja	Lj139
	jmp	Lj140
Lj139:
	movl	$-4,-16(%ebp)
	jmp	Lj3
Lj140:
	movl	24(%ebp),%edx
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	leal	(%edx,%eax,8),%eax
	movl	%eax,-124(%ebp)
	movl	-96(%ebp),%eax
	movl	-124(%ebp),%edx
	movl	%edx,-192(%ebp,%eax,4)
	movl	16(%ebp),%eax
	movl	-272(%ebp),%edx
	addl	%edx,(%eax)
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	jne	Lj147
	jmp	Lj148
Lj147:
	movl	-96(%ebp),%eax
	movl	-100(%ebp),%edx
	movl	%edx,-260(%ebp,%eax,4)
	movb	-112(%ebp),%al
	movb	%al,-131(%ebp)
	movb	-104(%ebp),%al
	movb	%al,-132(%ebp)
	movl	-196(%ebp),%ecx
	movl	-112(%ebp),%eax
	subl	%eax,%ecx
	movl	-100(%ebp),%eax
	shrl	%cl,%eax
	movl	%eax,-104(%ebp)
	movl	-96(%ebp),%eax
	decl	%eax
	movl	-192(%ebp,%eax,4),%edx
	movl	-124(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	shrl	$3,%edx
	movl	-104(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-128(%ebp)
	movl	-96(%ebp),%eax
	decl	%eax
	movl	-192(%ebp,%eax,4),%edx
	movl	-104(%ebp),%ecx
	movl	-132(%ebp),%eax
	movl	%eax,(%edx,%ecx,8)
	movl	-128(%ebp),%eax
	movl	%eax,4(%edx,%ecx,8)
	jmp	Lj161
Lj148:
	movl	32(%ebp),%edx
	movl	-124(%ebp),%eax
	movl	%eax,(%edx)
Lj161:
Lj112:
	movl	-196(%ebp),%edx
	movl	-112(%ebp),%eax
	addl	%eax,%edx
	cmpl	-108(%ebp),%edx
	jl	Lj111
	jmp	Lj113
Lj113:
	movl	-108(%ebp),%eax
	movl	-196(%ebp),%edx
	subl	%edx,%eax
	movb	%al,-131(%ebp)
	movl	12(%ebp),%eax
	movl	-8(%ebp),%edx
	leal	(%eax,%edx,4),%eax
	cmpl	-120(%ebp),%eax
	jbe	Lj166
	jmp	Lj167
Lj166:
	movb	$192,-132(%ebp)
	jmp	Lj170
Lj167:
	movl	-120(%ebp),%eax
	movl	(%eax),%eax
	cmpl	52(%ebp),%eax
	jb	Lj171
	jmp	Lj172
Lj171:
	movl	-120(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$256,%eax
	jb	Lj173
	jmp	Lj174
Lj173:
	movb	$0,-132(%ebp)
	jmp	Lj177
Lj174:
	movb	$96,-132(%ebp)
Lj177:
	movl	-120(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-128(%ebp)
	addl	$4,-120(%ebp)
	jmp	Lj182
Lj172:
	movl	40(%ebp),%ecx
	movl	-120(%ebp),%eax
	movl	(%eax),%eax
	movl	52(%ebp),%edx
	subl	%edx,%eax
	movl	(%ecx,%eax,4),%eax
	addl	$16,%eax
	addl	$64,%eax
	movb	%al,-132(%ebp)
	movl	48(%ebp),%ecx
	movl	-120(%ebp),%eax
	movl	(%eax),%eax
	movl	52(%ebp),%edx
	subl	%edx,%eax
	movl	(%ecx,%eax,4),%eax
	movl	%eax,-128(%ebp)
	addl	$4,-120(%ebp)
Lj182:
Lj170:
	movl	-108(%ebp),%ecx
	movl	-196(%ebp),%eax
	subl	%eax,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	%eax,-88(%ebp)
	movl	-100(%ebp),%eax
	movl	-196(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-104(%ebp)
	jmp	Lj192
	.align 2
Lj191:
	movl	-124(%ebp),%edx
	movl	-104(%ebp),%ecx
	movl	-132(%ebp),%eax
	movl	%eax,(%edx,%ecx,8)
	movl	-128(%ebp),%eax
	movl	%eax,4(%edx,%ecx,8)
	movl	-88(%ebp),%eax
	addl	%eax,-104(%ebp)
Lj192:
	movl	-104(%ebp),%eax
	cmpl	-272(%ebp),%eax
	jb	Lj191
	jmp	Lj193
Lj193:
	movl	-108(%ebp),%ecx
	decl	%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	%eax,-104(%ebp)
	jmp	Lj199
	.align 2
Lj198:
	movl	-100(%ebp),%edx
	movl	-104(%ebp),%eax
	xorl	%eax,%edx
	movl	%edx,-100(%ebp)
	movl	-104(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-104(%ebp)
Lj199:
	movl	-100(%ebp),%eax
	movl	-104(%ebp),%edx
	andl	%edx,%eax
	testl	%eax,%eax
	jne	Lj198
	jmp	Lj200
Lj200:
	movl	-100(%ebp),%eax
	movl	-104(%ebp),%edx
	xorl	%edx,%eax
	movl	%eax,-100(%ebp)
	movl	$1,%eax
	movl	-196(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-116(%ebp)
	jmp	Lj210
	.align 2
Lj209:
	decl	-96(%ebp)
	movl	-112(%ebp),%eax
	subl	%eax,-196(%ebp)
	movl	$1,%eax
	movl	-196(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-116(%ebp)
Lj210:
	movl	-100(%ebp),%edx
	movl	-116(%ebp),%eax
	andl	%eax,%edx
	movl	-96(%ebp),%eax
	cmpl	-260(%ebp,%eax,4),%edx
	jne	Lj209
	jmp	Lj211
Lj211:
Lj109:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj108
	jmp	Lj110
Lj110:
	incl	-108(%ebp)
Lj104:
	movl	-108(%ebp),%eax
	cmpl	-92(%ebp),%eax
	jle	Lj103
	jmp	Lj105
Lj105:
	movl	-268(%ebp),%eax
	testl	%eax,%eax
	jne	Lj216
	jmp	Lj215
Lj216:
	movl	-92(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj214
	jmp	Lj215
Lj214:
	movl	$-5,-16(%ebp)
	jmp	Lj219
Lj215:
	movl	$0,-16(%ebp)
Lj219:
Lj3:
	movl	-16(%ebp),%eax
	movl	-276(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INFTREES_INFLATE_TREES_BITS$crc52DECA56
_INFTREES_INFLATE_TREES_BITS$crc52DECA56:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-32(%ebp)
	call	Lj223
Lj223:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-24(%ebp)
	leal	-28(%ebp),%eax
	movl	$76,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj230
	jmp	Lj231
Lj230:
	movl	$-4,-16(%ebp)
	jmp	Lj222
Lj231:
	movl	$536870910,(%esp)
	movl	$30,28(%esp)
	movl	$30,36(%esp)
	movl	$19,44(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	16(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,20(%esp)
	movl	L_TC_INFTREES_CPLEXT$non_lazy_ptr-Lj223(%ebx),%eax
	movl	%eax,32(%esp)
	movl	L_TC_INFTREES_CPLENS$non_lazy_ptr-Lj223(%ebx),%eax
	movl	%eax,40(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	20(%ebp),%eax
	movl	%eax,24(%esp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$19,%ecx
	call	L_INFTREES_HUFT_BUILD$crcDF6367C2$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$-3,%eax
	je	Lj266
	jmp	Lj267
Lj266:
	movl	8(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$INFTREES$_Ld1$non_lazy_ptr-Lj223(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj274
Lj267:
	movl	-20(%ebp),%eax
	cmpl	$-5,%eax
	je	Lj275
	jmp	Lj277
Lj277:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj275
	jmp	Lj276
Lj275:
	movl	8(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$INFTREES$_Ld2$non_lazy_ptr-Lj223(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$-3,-20(%ebp)
Lj276:
Lj274:
	movl	-28(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj222:
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INFTREES_INFLATE_TREES_DYNAMIC$crc8EE46EC4
_INFTREES_INFLATE_TREES_DYNAMIC$crc8EE46EC4:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-32(%ebp)
	call	Lj291
Lj291:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-24(%ebp)
	leal	-28(%ebp),%eax
	movl	$1152,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj298
	jmp	Lj299
Lj298:
	movl	$-4,-16(%ebp)
	jmp	Lj290
Lj299:
	movl	$536870910,(%esp)
	movl	$30,28(%esp)
	movl	$30,36(%esp)
	movl	$257,44(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	16(%ebp),%eax
	movl	%eax,16(%esp)
	movl	32(%ebp),%eax
	movl	%eax,20(%esp)
	movl	L_TC_INFTREES_CPLEXT$non_lazy_ptr-Lj291(%ebx),%eax
	movl	%eax,32(%esp)
	movl	L_TC_INFTREES_CPLENS$non_lazy_ptr-Lj291(%ebx),%eax
	movl	%eax,40(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	24(%ebp),%eax
	movl	%eax,24(%esp)
	movl	-4(%ebp),%ecx
	movl	36(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_INFTREES_HUFT_BUILD$crcDF6367C2$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj334
	jmp	Lj336
Lj336:
	movl	32(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj334
	jmp	Lj335
Lj334:
	movl	-20(%ebp),%eax
	cmpl	$-3,%eax
	je	Lj337
	jmp	Lj338
Lj337:
	movl	8(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$INFTREES$_Ld3$non_lazy_ptr-Lj291(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj345
Lj338:
	movl	-20(%ebp),%eax
	cmpl	$-4,%eax
	jne	Lj346
	jmp	Lj347
Lj346:
	movl	8(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$INFTREES$_Ld4$non_lazy_ptr-Lj291(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$-3,-20(%ebp)
Lj347:
Lj345:
	movl	-28(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj290
Lj335:
	movl	$536870910,(%esp)
	movl	$29,28(%esp)
	movl	$29,36(%esp)
	movl	$0,44(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	16(%ebp),%eax
	movl	%eax,16(%esp)
	movl	28(%ebp),%eax
	movl	%eax,20(%esp)
	movl	L_TC_INFTREES_CPDEXT$non_lazy_ptr-Lj291(%ebx),%eax
	movl	%eax,32(%esp)
	movl	L_TC_INFTREES_CPDIST$non_lazy_ptr-Lj291(%ebx),%eax
	movl	%eax,40(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	20(%ebp),%eax
	movl	%eax,24(%esp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	leal	(%edx,%eax,4),%eax
	movl	-8(%ebp),%ecx
	movl	$536870910,%edx
	call	L_INFTREES_HUFT_BUILD$crcDF6367C2$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj392
	jmp	Lj394
Lj394:
	movl	28(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj395
	jmp	Lj393
Lj395:
	movl	-4(%ebp),%eax
	cmpl	$257,%eax
	ja	Lj392
	jmp	Lj393
Lj392:
	movl	-20(%ebp),%eax
	cmpl	$-3,%eax
	je	Lj396
	jmp	Lj397
Lj396:
	movl	8(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$INFTREES$_Ld3$non_lazy_ptr-Lj291(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj404
Lj397:
	movl	-20(%ebp),%eax
	cmpl	$-5,%eax
	je	Lj405
	jmp	Lj406
Lj405:
	movl	8(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$INFTREES$_Ld4$non_lazy_ptr-Lj291(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$-3,-20(%ebp)
	jmp	Lj415
Lj406:
	movl	-20(%ebp),%eax
	cmpl	$-4,%eax
	jne	Lj416
	jmp	Lj417
Lj416:
	movl	8(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$INFTREES$_Ld5$non_lazy_ptr-Lj291(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$-3,-20(%ebp)
Lj417:
Lj415:
Lj404:
	movl	-28(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj290
Lj393:
	movl	-28(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	$0,-16(%ebp)
Lj290:
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INFTREES_INFLATE_TREES_FIXED$LONGWORD$LONGWORD$PINFLATE_HUFT$PINFLATE_HUFT$Z_STREAM$$LONGINT
_INFTREES_INFLATE_TREES_FIXED$LONGWORD$LONGWORD$PINFLATE_HUFT$PINFLATE_HUFT$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-36(%ebp)
	call	Lj435
Lj435:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_TC_INFTREES_FIXED_BUILT$non_lazy_ptr-Lj435(%ebx),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj436
	jmp	Lj437
Lj436:
	movl	$0,-32(%ebp)
	leal	-24(%ebp),%eax
	movl	$1152,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj444
	jmp	Lj445
Lj444:
	movl	$-4,-16(%ebp)
	jmp	Lj434
Lj445:
	leal	-28(%ebp),%eax
	movl	$1152,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj452
	jmp	Lj453
Lj452:
	movl	-24(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	$-4,-16(%ebp)
	jmp	Lj434
Lj453:
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj460:
	incl	-20(%ebp)
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	$8,(%eax,%edx,4)
	cmpl	$143,-20(%ebp)
	jl	Lj460
	movl	$144,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj465:
	incl	-20(%ebp)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	$9,(%edx,%eax,4)
	cmpl	$255,-20(%ebp)
	jl	Lj465
	movl	$256,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj470:
	incl	-20(%ebp)
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	$7,(%eax,%edx,4)
	cmpl	$279,-20(%ebp)
	jl	Lj470
	movl	$280,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj475:
	incl	-20(%ebp)
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	$8,(%eax,%edx,4)
	cmpl	$287,-20(%ebp)
	jl	Lj475
	movl	L_U_INFTREES_FIXED_BL$non_lazy_ptr-Lj435(%ebx),%eax
	movl	$9,(%eax)
	movl	$536870910,(%esp)
	movl	$543,12(%esp)
	movl	$30,28(%esp)
	movl	$30,36(%esp)
	movl	$257,44(%esp)
	leal	-32(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_U_INFTREES_FIXED_MEM$non_lazy_ptr-Lj435(%ebx),%eax
	movl	%eax,16(%esp)
	movl	L_U_INFTREES_FIXED_BL$non_lazy_ptr-Lj435(%ebx),%eax
	movl	%eax,20(%esp)
	movl	L_TC_INFTREES_CPLEXT$non_lazy_ptr-Lj435(%ebx),%eax
	movl	%eax,32(%esp)
	movl	L_TC_INFTREES_CPLENS$non_lazy_ptr-Lj435(%ebx),%eax
	movl	%eax,40(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_U_INFTREES_FIXED_TL$non_lazy_ptr-Lj435(%ebx),%eax
	movl	%eax,24(%esp)
	movl	-24(%ebp),%eax
	movl	$288,%ecx
	movl	$287,%edx
	call	L_INFTREES_HUFT_BUILD$crcDF6367C2$stub
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj512:
	incl	-20(%ebp)
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	$5,(%eax,%edx,4)
	cmpl	$29,-20(%ebp)
	jl	Lj512
	movl	L_U_INFTREES_FIXED_BD$non_lazy_ptr-Lj435(%ebx),%eax
	movl	$5,(%eax)
	movl	$536870910,(%esp)
	movl	$543,12(%esp)
	movl	$29,28(%esp)
	movl	$29,36(%esp)
	movl	$0,44(%esp)
	leal	-32(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_U_INFTREES_FIXED_MEM$non_lazy_ptr-Lj435(%ebx),%eax
	movl	%eax,16(%esp)
	movl	L_U_INFTREES_FIXED_BD$non_lazy_ptr-Lj435(%ebx),%eax
	movl	%eax,20(%esp)
	movl	L_TC_INFTREES_CPDEXT$non_lazy_ptr-Lj435(%ebx),%eax
	movl	%eax,32(%esp)
	movl	L_TC_INFTREES_CPDIST$non_lazy_ptr-Lj435(%ebx),%eax
	movl	%eax,40(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_U_INFTREES_FIXED_TD$non_lazy_ptr-Lj435(%ebx),%eax
	movl	%eax,24(%esp)
	movl	-24(%ebp),%eax
	movl	$30,%ecx
	movl	$287,%edx
	call	L_INFTREES_HUFT_BUILD$crcDF6367C2$stub
	movl	-28(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-24(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	L_TC_INFTREES_FIXED_BUILT$non_lazy_ptr-Lj435(%ebx),%eax
	movb	$1,(%eax)
Lj437:
	movl	-4(%ebp),%edx
	movl	L_U_INFTREES_FIXED_BL$non_lazy_ptr-Lj435(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	L_U_INFTREES_FIXED_BD$non_lazy_ptr-Lj435(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%edx
	movl	L_U_INFTREES_FIXED_TL$non_lazy_ptr-Lj435(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	12(%ebp),%edx
	movl	L_U_INFTREES_FIXED_TD$non_lazy_ptr-Lj435(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	$0,-16(%ebp)
Lj434:
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_INFTREES_FIXED_MEM
.data
.zerofill __DATA, __common, _U_INFTREES_FIXED_MEM, 4352,2




	.align 2
.globl _U_INFTREES_FIXED_BL
.data
.zerofill __DATA, __common, _U_INFTREES_FIXED_BL, 4,2




	.align 2
.globl _U_INFTREES_FIXED_BD
.data
.zerofill __DATA, __common, _U_INFTREES_FIXED_BD, 4,2




	.align 2
.globl _U_INFTREES_FIXED_TL
.data
.zerofill __DATA, __common, _U_INFTREES_FIXED_TL, 4,2




	.align 2
.globl _U_INFTREES_FIXED_TD
.data
.zerofill __DATA, __common, _U_INFTREES_FIXED_TD, 4,2



.data
	.align 2
.globl	_THREADVARLIST_INFTREES
_THREADVARLIST_INFTREES:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_INFTREES_CPLENS
_TC_INFTREES_CPLENS:
	.long	3,4,5,6,7,8,9,10,11,13,15,17,19,23,27,31,35,43,51,59,67,83,99,115,131,163,195,227,258,0,0

.data
	.align 2
.globl	_TC_INFTREES_CPLEXT
_TC_INFTREES_CPLEXT:
	.long	0,0,0,0,0,0,0,0,1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,0,112,112

.data
	.align 2
.globl	_TC_INFTREES_CPDIST
_TC_INFTREES_CPDIST:
	.long	1,2,3,4,5,7,9,13,17,25,33,49,65,97,129,193,257,385,513,769,1025,1537,2049,3073,4097,6145,8193,12289
	.long	16385,24577

.data
	.align 2
.globl	_TC_INFTREES_CPDEXT
_TC_INFTREES_CPDEXT:
	.long	0,0,0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13

.const
	.align 2
.globl	_$INFTREES$_Ld1
_$INFTREES$_Ld1:
	.ascii	"'oversubscribed dynamic bit lengths tree\000"

.const
	.align 2
.globl	_$INFTREES$_Ld2
_$INFTREES$_Ld2:
	.ascii	"#incomplete dynamic bit lengths tree\000"

.const
	.align 2
.globl	_$INFTREES$_Ld3
_$INFTREES$_Ld3:
	.ascii	"\"oversubscribed literal/length tree\000"

.const
	.align 2
.globl	_$INFTREES$_Ld4
_$INFTREES$_Ld4:
	.ascii	"\036incomplete literal/length tree\000"

.const
	.align 2
.globl	_$INFTREES$_Ld5
_$INFTREES$_Ld5:
	.ascii	" empty distance tree with lengths\000"

.data
.globl	_TC_INFTREES_FIXED_BUILT
_TC_INFTREES_FIXED_BUILT:
	.byte	0
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
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

L_INFTREES_HUFT_BUILD$crcDF6367C2$stub:
.indirect_symbol _INFTREES_HUFT_BUILD$crcDF6367C2
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_shortstr$stub:
.indirect_symbol fpc_shortstr_to_shortstr
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
L_TC_INFTREES_CPLEXT$non_lazy_ptr:
.indirect_symbol _TC_INFTREES_CPLEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_INFTREES_CPLENS$non_lazy_ptr:
.indirect_symbol _TC_INFTREES_CPLENS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$INFTREES$_Ld1$non_lazy_ptr:
.indirect_symbol _$INFTREES$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$INFTREES$_Ld2$non_lazy_ptr:
.indirect_symbol _$INFTREES$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$INFTREES$_Ld3$non_lazy_ptr:
.indirect_symbol _$INFTREES$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$INFTREES$_Ld4$non_lazy_ptr:
.indirect_symbol _$INFTREES$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_INFTREES_CPDEXT$non_lazy_ptr:
.indirect_symbol _TC_INFTREES_CPDEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_INFTREES_CPDIST$non_lazy_ptr:
.indirect_symbol _TC_INFTREES_CPDIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$INFTREES$_Ld5$non_lazy_ptr:
.indirect_symbol _$INFTREES$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_INFTREES_FIXED_BUILT$non_lazy_ptr:
.indirect_symbol _TC_INFTREES_FIXED_BUILT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_INFTREES_FIXED_BL$non_lazy_ptr:
.indirect_symbol _U_INFTREES_FIXED_BL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_INFTREES_FIXED_MEM$non_lazy_ptr:
.indirect_symbol _U_INFTREES_FIXED_MEM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_INFTREES_FIXED_TL$non_lazy_ptr:
.indirect_symbol _U_INFTREES_FIXED_TL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_INFTREES_FIXED_BD$non_lazy_ptr:
.indirect_symbol _U_INFTREES_FIXED_BD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_INFTREES_FIXED_TD$non_lazy_ptr:
.indirect_symbol _U_INFTREES_FIXED_TD
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

