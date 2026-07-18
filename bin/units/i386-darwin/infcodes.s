# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_INFCODES_INFLATE_CODES_NEW$crc1CD4BDA7
_INFCODES_INFLATE_CODES_NEW$crc1CD4BDA7:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$28,%eax
	call	Lfpc_getmem$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj11
	jmp	Lj12
Lj11:
	movl	-20(%ebp),%eax
	movl	$0,(%eax)
	movl	-20(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,16(%eax)
	movl	-20(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,17(%eax)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-20(%ebp),%edx
	movl	12(%ebp),%eax
	movl	%eax,24(%edx)
Lj12:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INFCODES_INFLATE_CODES$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT
_INFCODES_INFLATE_CODES$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-64(%ebp)
	call	Lj26
Lj26:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%edx
	movl	-48(%ebp),%eax
	cmpl	48(%edx),%eax
	jb	Lj39
	jmp	Lj40
Lj39:
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-48(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-52(%ebp)
	jmp	Lj43
Lj40:
	movl	-4(%ebp),%eax
	movl	44(%eax),%edx
	movl	-48(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-52(%ebp)
Lj43:
	jmp	Lj47
	.align 2
Lj46:
	movl	-60(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj51
	decl	%eax
	je	Lj52
	decl	%eax
	je	Lj53
	decl	%eax
	je	Lj54
	decl	%eax
	je	Lj55
	decl	%eax
	je	Lj56
	decl	%eax
	je	Lj57
	decl	%eax
	je	Lj58
	decl	%eax
	je	Lj59
	decl	%eax
	je	Lj60
	jmp	Lj50
Lj51:
	movl	-52(%ebp),%eax
	cmpl	$258,%eax
	jae	Lj63
	jmp	Lj62
Lj63:
	movl	-44(%ebp),%eax
	cmpl	$10,%eax
	jae	Lj61
	jmp	Lj62
Lj61:
	movl	-4(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-60(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,8(%esp)
	movl	-60(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-60(%ebp),%eax
	movzbl	17(%eax),%edx
	movl	-60(%ebp),%eax
	movzbl	16(%eax),%eax
	call	L_INFFAST_INFLATE_FAST$crc5A0381D8$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	cmpl	48(%eax),%edx
	jb	Lj98
	jmp	Lj99
Lj98:
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-48(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-52(%ebp)
	jmp	Lj102
Lj99:
	movl	-4(%ebp),%eax
	movl	44(%eax),%edx
	movl	-48(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-52(%ebp)
Lj102:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj105
	jmp	Lj106
Lj105:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	je	Lj107
	jmp	Lj108
Lj107:
	movl	-60(%ebp),%eax
	movl	$7,(%eax)
	jmp	Lj111
Lj108:
	movl	-60(%ebp),%eax
	movl	$9,(%eax)
Lj111:
	jmp	Lj47
Lj106:
Lj62:
	movl	-60(%ebp),%edx
	movl	-60(%ebp),%eax
	movzbl	16(%eax),%eax
	movl	%eax,12(%edx)
	movl	-60(%ebp),%edx
	movl	-60(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,8(%edx)
	movl	-60(%ebp),%eax
	movl	$1,(%eax)
	jmp	Lj49
Lj52:
	movl	-60(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj123
	.align 2
Lj122:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	jne	Lj125
	jmp	Lj126
Lj125:
	movl	$0,-12(%ebp)
	jmp	Lj129
Lj126:
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj25
Lj129:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-36(%ebp),%ecx
	shll	%cl,%eax
	movl	-32(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-32(%ebp)
	incl	-40(%ebp)
	addl	$8,-36(%ebp)
Lj123:
	movl	-36(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj122
	jmp	Lj124
Lj124:
	movl	-60(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	L_TC_INFUTIL_INFLATE_MASK$non_lazy_ptr-Lj26(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	movl	-32(%ebp),%edx
	andl	%edx,%eax
	shll	$3,%eax
	addl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movzbl	1(%eax),%ecx
	movl	-32(%ebp),%eax
	shrl	%cl,%eax
	movl	%eax,-32(%ebp)
	movl	-24(%ebp),%eax
	movzbl	1(%eax),%eax
	subl	%eax,-36(%ebp)
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj156
	jmp	Lj157
Lj156:
	movl	-60(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,8(%edx)
	movl	-60(%ebp),%eax
	movl	$6,(%eax)
	jmp	Lj47
Lj157:
	movl	-28(%ebp),%eax
	andl	$16,%eax
	testl	%eax,%eax
	jne	Lj162
	jmp	Lj163
Lj162:
	movl	-28(%ebp),%edx
	andl	$15,%edx
	movl	-60(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-60(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movl	-60(%ebp),%eax
	movl	$2,(%eax)
	jmp	Lj47
Lj163:
	movl	-28(%ebp),%eax
	andl	$64,%eax
	testl	%eax,%eax
	je	Lj170
	jmp	Lj171
Lj170:
	movl	-60(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-24(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	leal	(%edx,%eax,8),%eax
	movl	-60(%ebp),%edx
	movl	%eax,8(%edx)
	jmp	Lj47
Lj171:
	movl	-28(%ebp),%eax
	andl	$32,%eax
	testl	%eax,%eax
	jne	Lj176
	jmp	Lj177
Lj176:
	movl	-60(%ebp),%eax
	movl	$7,(%eax)
	jmp	Lj47
Lj177:
	movl	-60(%ebp),%eax
	movl	$9,(%eax)
	movl	-8(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$INFCODES$_Ld1$non_lazy_ptr-Lj26(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$-3,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj25
	jmp	Lj49
Lj53:
	movl	-60(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj211
	.align 2
Lj210:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	jne	Lj213
	jmp	Lj214
Lj213:
	movl	$0,-12(%ebp)
	jmp	Lj217
Lj214:
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj25
Lj217:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-36(%ebp),%ecx
	shll	%cl,%eax
	movl	-32(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-32(%ebp)
	incl	-40(%ebp)
	addl	$8,-36(%ebp)
Lj211:
	movl	-36(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj210
	jmp	Lj212
Lj212:
	movl	-20(%ebp),%edx
	movl	L_TC_INFUTIL_INFLATE_MASK$non_lazy_ptr-Lj26(%ebx),%eax
	movl	(%eax,%edx,4),%eax
	movl	-32(%ebp),%edx
	andl	%edx,%eax
	movl	-60(%ebp),%edx
	addl	%eax,4(%edx)
	movl	-32(%ebp),%eax
	movl	-20(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-32(%ebp)
	movl	-20(%ebp),%eax
	subl	%eax,-36(%ebp)
	movl	-60(%ebp),%edx
	movl	-60(%ebp),%eax
	movzbl	17(%eax),%eax
	movl	%eax,12(%edx)
	movl	-60(%ebp),%edx
	movl	-60(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,8(%edx)
	movl	-60(%ebp),%eax
	movl	$3,(%eax)
	jmp	Lj49
Lj54:
	movl	-60(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj249
	.align 2
Lj248:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	jne	Lj251
	jmp	Lj252
Lj251:
	movl	$0,-12(%ebp)
	jmp	Lj255
Lj252:
	movl	-4(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj25
Lj255:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-36(%ebp),%ecx
	shll	%cl,%eax
	movl	-32(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-32(%ebp)
	incl	-40(%ebp)
	addl	$8,-36(%ebp)
Lj249:
	movl	-36(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj248
	jmp	Lj250
Lj250:
	movl	-60(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	L_TC_INFUTIL_INFLATE_MASK$non_lazy_ptr-Lj26(%ebx),%eax
	movl	(%eax,%edx,4),%eax
	movl	-32(%ebp),%edx
	andl	%edx,%eax
	leal	(%ecx,%eax,8),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movzbl	1(%eax),%ecx
	movl	-32(%ebp),%eax
	shrl	%cl,%eax
	movl	%eax,-32(%ebp)
	movl	-24(%ebp),%eax
	movzbl	1(%eax),%eax
	subl	%eax,-36(%ebp)
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	andl	$16,%eax
	testl	%eax,%eax
	jne	Lj282
	jmp	Lj283
Lj282:
	movl	-28(%ebp),%eax
	andl	$15,%eax
	movl	-60(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-60(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,12(%edx)
	movl	-60(%ebp),%eax
	movl	$4,(%eax)
	jmp	Lj47
Lj283:
	movl	-28(%ebp),%eax
	andl	$64,%eax
	testl	%eax,%eax
	je	Lj290
	jmp	Lj291
Lj290:
	movl	-60(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-24(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	leal	(%edx,%eax,8),%eax
	movl	-60(%ebp),%edx
	movl	%eax,8(%edx)
	jmp	Lj47
Lj291:
	movl	-60(%ebp),%eax
	movl	$9,(%eax)
	movl	-8(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$INFCODES$_Ld2$non_lazy_ptr-Lj26(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$-3,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj25
	jmp	Lj49
Lj55:
	movl	-60(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj327
	.align 2
Lj326:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	jne	Lj329
	jmp	Lj330
Lj329:
	movl	$0,-12(%ebp)
	jmp	Lj333
Lj330:
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj25
Lj333:
	decl	-44(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-36(%ebp),%ecx
	shll	%cl,%eax
	movl	-32(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-32(%ebp)
	incl	-40(%ebp)
	addl	$8,-36(%ebp)
Lj327:
	movl	-36(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj326
	jmp	Lj328
Lj328:
	movl	-20(%ebp),%eax
	movl	L_TC_INFUTIL_INFLATE_MASK$non_lazy_ptr-Lj26(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	movl	-32(%ebp),%edx
	andl	%edx,%eax
	movl	-60(%ebp),%edx
	addl	%eax,12(%edx)
	movl	-32(%ebp),%eax
	movl	-20(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-32(%ebp)
	movl	-20(%ebp),%eax
	subl	%eax,-36(%ebp)
	movl	-60(%ebp),%eax
	movl	$5,(%eax)
	jmp	Lj49
Lj56:
	movl	-48(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-60(%ebp),%eax
	movl	12(%eax),%eax
	subl	%eax,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	40(%eax),%eax
	subl	%eax,%edx
	movl	-60(%ebp),%eax
	cmpl	12(%eax),%edx
	jb	Lj360
	jmp	Lj361
Lj360:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	40(%eax),%eax
	subl	%eax,%edx
	movl	-60(%ebp),%eax
	movl	12(%eax),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	subl	%edx,-56(%ebp)
Lj361:
	jmp	Lj365
	.align 2
Lj364:
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj367
	jmp	Lj368
Lj367:
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	cmpl	44(%eax),%edx
	je	Lj371
	jmp	Lj370
Lj371:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	48(%eax),%eax
	cmpl	40(%edx),%eax
	jne	Lj369
	jmp	Lj370
Lj369:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	cmpl	48(%eax),%edx
	jb	Lj374
	jmp	Lj375
Lj374:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movl	%eax,-52(%ebp)
	jmp	Lj378
Lj375:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-52(%ebp)
Lj378:
Lj370:
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj381
	jmp	Lj382
Lj381:
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	cmpl	48(%eax),%edx
	jb	Lj395
	jmp	Lj396
Lj395:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movl	%eax,-52(%ebp)
	jmp	Lj399
Lj396:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-52(%ebp)
Lj399:
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	cmpl	44(%eax),%edx
	je	Lj404
	jmp	Lj403
Lj404:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	48(%eax),%eax
	cmpl	40(%edx),%eax
	jne	Lj402
	jmp	Lj403
Lj402:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%edx
	movl	-48(%ebp),%eax
	cmpl	48(%edx),%eax
	jb	Lj407
	jmp	Lj408
Lj407:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movl	%eax,-52(%ebp)
	jmp	Lj411
Lj408:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-52(%ebp)
Lj411:
Lj403:
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj414
	jmp	Lj415
Lj414:
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj25
Lj415:
Lj382:
Lj368:
	movl	$0,-12(%ebp)
	movl	-48(%ebp),%edx
	movl	-56(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-48(%ebp)
	incl	-56(%ebp)
	decl	-52(%ebp)
	movl	-4(%ebp),%eax
	movl	-56(%ebp),%edx
	cmpl	44(%eax),%edx
	je	Lj438
	jmp	Lj439
Lj438:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-56(%ebp)
Lj439:
	movl	-60(%ebp),%eax
	decl	4(%eax)
Lj365:
	movl	-60(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj364
	jmp	Lj366
Lj366:
	movl	-60(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj49
Lj57:
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj444
	jmp	Lj445
Lj444:
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	cmpl	44(%eax),%edx
	je	Lj448
	jmp	Lj447
Lj448:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	48(%eax),%eax
	cmpl	40(%edx),%eax
	jne	Lj446
	jmp	Lj447
Lj446:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	cmpl	48(%eax),%edx
	jb	Lj451
	jmp	Lj452
Lj451:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movl	%eax,-52(%ebp)
	jmp	Lj455
Lj452:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-52(%ebp)
Lj455:
Lj447:
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj458
	jmp	Lj459
Lj458:
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	cmpl	48(%eax),%edx
	jb	Lj472
	jmp	Lj473
Lj472:
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-48(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-52(%ebp)
	jmp	Lj476
Lj473:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-52(%ebp)
Lj476:
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	cmpl	44(%eax),%edx
	je	Lj481
	jmp	Lj480
Lj481:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	48(%eax),%eax
	cmpl	40(%edx),%eax
	jne	Lj479
	jmp	Lj480
Lj479:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%edx
	movl	-48(%ebp),%eax
	cmpl	48(%edx),%eax
	jb	Lj484
	jmp	Lj485
Lj484:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movl	%eax,-52(%ebp)
	jmp	Lj488
Lj485:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-52(%ebp)
Lj488:
Lj480:
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj491
	jmp	Lj492
Lj491:
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj25
Lj492:
Lj459:
Lj445:
	movl	$0,-12(%ebp)
	movl	-48(%ebp),%edx
	movl	-60(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,(%edx)
	incl	-48(%ebp)
	decl	-52(%ebp)
	movl	-60(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj49
Lj58:
	movl	-36(%ebp),%eax
	cmpl	$7,%eax
	ja	Lj517
	jmp	Lj518
Lj517:
	subl	$8,-36(%ebp)
	incl	-44(%ebp)
	decl	-40(%ebp)
Lj518:
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%edx
	movl	-48(%ebp),%eax
	cmpl	48(%edx),%eax
	jb	Lj531
	jmp	Lj532
Lj531:
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-48(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-52(%ebp)
	jmp	Lj535
Lj532:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-52(%ebp)
Lj535:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	48(%eax),%eax
	cmpl	52(%edx),%eax
	jne	Lj538
	jmp	Lj539
Lj538:
	movl	-4(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj25
Lj539:
	movl	-60(%ebp),%eax
	movl	$8,(%eax)
	jmp	Lj49
Lj59:
	movl	$1,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj25
	jmp	Lj49
Lj60:
	movl	$-3,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj25
	jmp	Lj49
Lj50:
	movl	$-2,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj25
Lj49:
Lj47:
	jmp	Lj46
	movl	$-2,-16(%ebp)
Lj25:
	movl	-16(%ebp),%eax
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INFCODES_INFLATE_CODES_FREE$PINFLATE_CODES_STATE$Z_STREAM
_INFCODES_INFLATE_CODES_FREE$PINFLATE_CODES_STATE$Z_STREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	Lfpc_freemem$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_INFCODES
_THREADVARLIST_INFCODES:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$INFCODES$_Ld1
_$INFCODES$_Ld1:
	.ascii	"\033invalid literal/length code\000"

.const
	.align 2
.globl	_$INFCODES$_Ld2
_$INFCODES$_Ld2:
	.ascii	"\025invalid distance code\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_getmem$stub:
.indirect_symbol fpc_getmem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INFFAST_INFLATE_FAST$crc5A0381D8$stub:
.indirect_symbol _INFFAST_INFLATE_FAST$crc5A0381D8
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT
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

Lfpc_freemem$stub:
.indirect_symbol fpc_freemem
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
L_TC_INFUTIL_INFLATE_MASK$non_lazy_ptr:
.indirect_symbol _TC_INFUTIL_INFLATE_MASK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$INFCODES$_Ld1$non_lazy_ptr:
.indirect_symbol _$INFCODES$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$INFCODES$_Ld2$non_lazy_ptr:
.indirect_symbol _$INFCODES$_Ld2
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

