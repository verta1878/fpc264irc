# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_INFBLOCK_INFLATE_BLOCKS_RESET$INFLATE_BLOCKS_STATE$Z_STREAM$PCARDINAL
_INFBLOCK_INFLATE_BLOCKS_RESET$INFLATE_BLOCKS_STATE$Z_STREAM$PCARDINAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5
	jmp	Lj6
Lj5:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,(%edx)
Lj6:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$4,%eax
	je	Lj9
	jmp	Lj11
Lj11:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$5,%eax
	je	Lj9
	jmp	Lj10
Lj9:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj10:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$6,%eax
	je	Lj14
	jmp	Lj15
Lj14:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_INFCODES_INFLATE_CODES_FREE$PINFLATE_CODES_STATE$Z_STREAM$stub
Lj15:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	movl	-4(%ebp),%eax
	movl	$0,32(%eax)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,52(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,48(%edx)
	movl	-4(%ebp),%eax
	cmpl	$0,56(%eax)
	jne	Lj30
	jmp	Lj31
Lj30:
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	movl	-4(%ebp),%ebx
	movl	56(%ebx),%ebx
	call	*%ebx
	movl	-4(%ebp),%edx
	movl	%eax,60(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,288(%edx)
Lj31:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INFBLOCK_INFLATE_BLOCKS_NEW$Z_STREAM$CHECK_FUNC$LONGWORD$$PINFLATE_BLOCKS_STATE
_INFBLOCK_INFLATE_BLOCKS_NEW$Z_STREAM$CHECK_FUNC$LONGWORD$$PINFLATE_BLOCKS_STATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$64,%eax
	call	Lfpc_getmem$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj50
	jmp	Lj51
Lj50:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj42
Lj51:
	movl	-20(%ebp),%eax
	leal	36(%eax),%eax
	movl	$11520,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	je	Lj58
	jmp	Lj59
Lj58:
	movl	-20(%ebp),%eax
	call	Lfpc_freemem$stub
	movl	$0,-16(%ebp)
	jmp	Lj42
Lj59:
	movl	-20(%ebp),%eax
	leal	40(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	je	Lj68
	jmp	Lj69
Lj68:
	movl	-20(%ebp),%eax
	movl	36(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-20(%ebp),%eax
	call	Lfpc_freemem$stub
	movl	$0,-16(%ebp)
	jmp	Lj42
Lj69:
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,44(%edx)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,44(%edx)
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,56(%eax)
	movl	-20(%ebp),%eax
	movl	$0,(%eax)
	movl	-20(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	$0,%ecx
	call	L_INFBLOCK_INFLATE_BLOCKS_RESET$INFLATE_BLOCKS_STATE$Z_STREAM$PCARDINAL$stub
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj42:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INFBLOCK_INFLATE_BLOCKS$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT
_INFBLOCK_INFLATE_BLOCKS$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-84(%ebp)
	call	Lj91
Lj91:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	cmpl	48(%eax),%edx
	jb	Lj102
	jmp	Lj103
Lj102:
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-40(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-44(%ebp)
	jmp	Lj106
Lj103:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-40(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-44(%ebp)
Lj106:
	jmp	Lj110
	.align 2
Lj109:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj114
	decl	%eax
	je	Lj115
	decl	%eax
	je	Lj116
	decl	%eax
	je	Lj117
	decl	%eax
	je	Lj118
	decl	%eax
	je	Lj119
	decl	%eax
	je	Lj120
	decl	%eax
	je	Lj121
	decl	%eax
	je	Lj122
	decl	%eax
	je	Lj123
	jmp	Lj113
Lj114:
	jmp	Lj125
	.align 2
Lj124:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj127
	jmp	Lj128
Lj127:
	movl	$0,-12(%ebp)
	jmp	Lj131
Lj128:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj131:
	decl	-36(%ebp)
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-28(%ebp),%ecx
	shll	%cl,%eax
	movl	-24(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-24(%ebp)
	incl	-32(%ebp)
	addl	$8,-28(%ebp)
Lj125:
	movl	-28(%ebp),%eax
	cmpl	$3,%eax
	jb	Lj124
	jmp	Lj126
Lj126:
	movl	-24(%ebp),%eax
	andl	$7,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	andl	$1,%eax
	movl	-4(%ebp),%edx
	movb	%al,24(%edx)
	movl	-20(%ebp),%eax
	shrl	$1,%eax
	testl	%eax,%eax
	je	Lj160
	decl	%eax
	je	Lj161
	decl	%eax
	je	Lj162
	decl	%eax
	je	Lj163
	jmp	Lj159
Lj160:
	movl	-24(%ebp),%eax
	shrl	$3,%eax
	movl	%eax,-24(%ebp)
	subl	$3,-28(%ebp)
	movl	-28(%ebp),%eax
	andl	$7,%eax
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	subl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	$1,(%eax)
	jmp	Lj158
Lj161:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-60(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-56(%ebp),%ecx
	leal	-52(%ebp),%edx
	leal	-48(%ebp),%eax
	call	L_INFTREES_INFLATE_TREES_FIXED$LONGWORD$LONGWORD$PINFLATE_HUFT$PINFLATE_HUFT$Z_STREAM$$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-60(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-56(%ebp),%ecx
	movl	-52(%ebp),%edx
	movl	-48(%ebp),%eax
	call	L_INFCODES_INFLATE_CODES_NEW$crc1CD4BDA7$stub
	movl	-4(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj194
	jmp	Lj195
Lj194:
	movl	$-4,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj195:
	movl	-24(%ebp),%eax
	shrl	$3,%eax
	movl	%eax,-24(%ebp)
	subl	$3,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	$6,(%eax)
	jmp	Lj158
Lj162:
	movl	-24(%ebp),%eax
	shrl	$3,%eax
	movl	%eax,-24(%ebp)
	subl	$3,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	$3,(%eax)
	jmp	Lj158
Lj163:
	movl	-24(%ebp),%eax
	shrl	$3,%eax
	movl	%eax,-24(%ebp)
	subl	$3,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	$9,(%eax)
	movl	-8(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$INFBLOCK$_Ld1$non_lazy_ptr-Lj91(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$-3,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
	jmp	Lj158
Lj159:
Lj158:
	jmp	Lj112
Lj115:
	jmp	Lj255
	.align 2
Lj254:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj257
	jmp	Lj258
Lj257:
	movl	$0,-12(%ebp)
	jmp	Lj261
Lj258:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj261:
	decl	-36(%ebp)
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-28(%ebp),%ecx
	shll	%cl,%eax
	movl	-24(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-24(%ebp)
	incl	-32(%ebp)
	addl	$8,-28(%ebp)
Lj255:
	movl	-28(%ebp),%eax
	cmpl	$32,%eax
	jb	Lj254
	jmp	Lj256
Lj256:
	movl	-24(%ebp),%eax
	notl	%eax
	shrl	$16,%eax
	andl	$65535,%eax
	movl	-24(%ebp),%edx
	andl	$65535,%edx
	cmpl	%edx,%eax
	jne	Lj282
	jmp	Lj283
Lj282:
	movl	-4(%ebp),%eax
	movl	$9,(%eax)
	movl	-8(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$INFBLOCK$_Ld2$non_lazy_ptr-Lj91(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$-3,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj283:
	movl	-24(%ebp),%eax
	andl	$65535,%eax
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	movl	$0,-28(%ebp)
	movl	$0,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj318
	jmp	Lj319
Lj318:
	movl	-4(%ebp),%eax
	movl	$2,(%eax)
	jmp	Lj322
Lj319:
	movl	-4(%ebp),%eax
	cmpb	$0,24(%eax)
	jne	Lj323
	jmp	Lj324
Lj323:
	movl	-4(%ebp),%eax
	movl	$7,(%eax)
	jmp	Lj327
Lj324:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj327:
Lj322:
	jmp	Lj112
Lj116:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj330
	jmp	Lj331
Lj330:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj331:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj350
	jmp	Lj351
Lj350:
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	cmpl	44(%eax),%edx
	je	Lj354
	jmp	Lj353
Lj354:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	48(%eax),%eax
	cmpl	40(%edx),%eax
	jne	Lj352
	jmp	Lj353
Lj352:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	cmpl	48(%eax),%edx
	jb	Lj357
	jmp	Lj358
Lj357:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	-40(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movl	%eax,-44(%ebp)
	jmp	Lj361
Lj358:
	movl	-4(%ebp),%eax
	movl	44(%eax),%edx
	movl	-40(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-44(%ebp)
Lj361:
Lj353:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj364
	jmp	Lj365
Lj364:
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	cmpl	48(%eax),%edx
	jb	Lj378
	jmp	Lj379
Lj378:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	-40(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movl	%eax,-44(%ebp)
	jmp	Lj382
Lj379:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-40(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-44(%ebp)
Lj382:
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	cmpl	44(%edx),%eax
	je	Lj387
	jmp	Lj386
Lj387:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	48(%eax),%eax
	cmpl	40(%edx),%eax
	jne	Lj385
	jmp	Lj386
Lj385:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	cmpl	48(%edx),%eax
	jb	Lj390
	jmp	Lj391
Lj390:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	-40(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movl	%eax,-44(%ebp)
	jmp	Lj394
Lj391:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-40(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-44(%ebp)
Lj394:
Lj386:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj397
	jmp	Lj398
Lj397:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj398:
Lj365:
Lj351:
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-36(%ebp),%eax
	ja	Lj421
	jmp	Lj422
Lj421:
	movl	-36(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj422:
	movl	-20(%ebp),%eax
	cmpl	-44(%ebp),%eax
	ja	Lj425
	jmp	Lj426
Lj425:
	movl	-44(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj426:
	movl	-40(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-20(%ebp),%eax
	addl	%eax,-32(%ebp)
	movl	-20(%ebp),%eax
	subl	%eax,-36(%ebp)
	movl	-20(%ebp),%eax
	addl	%eax,-40(%ebp)
	movl	-20(%ebp),%eax
	subl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj435
	jmp	Lj436
Lj435:
	movl	-4(%ebp),%eax
	cmpb	$0,24(%eax)
	jne	Lj437
	jmp	Lj438
Lj437:
	movl	-4(%ebp),%eax
	movl	$7,(%eax)
	jmp	Lj441
Lj438:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj441:
Lj436:
	jmp	Lj112
Lj117:
	jmp	Lj445
	.align 2
Lj444:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj447
	jmp	Lj448
Lj447:
	movl	$0,-12(%ebp)
	jmp	Lj451
Lj448:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj451:
	decl	-36(%ebp)
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-28(%ebp),%ecx
	shll	%cl,%eax
	movl	-24(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-24(%ebp)
	incl	-32(%ebp)
	addl	$8,-28(%ebp)
Lj445:
	movl	-28(%ebp),%eax
	cmpl	$14,%eax
	jb	Lj444
	jmp	Lj446
Lj446:
	movl	-24(%ebp),%eax
	andl	$16383,%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-20(%ebp),%eax
	andl	$31,%eax
	cmpl	$29,%eax
	ja	Lj476
	jmp	Lj478
Lj478:
	movl	-20(%ebp),%eax
	shrl	$5,%eax
	andl	$31,%eax
	cmpl	$29,%eax
	ja	Lj476
	jmp	Lj477
Lj476:
	movl	-4(%ebp),%eax
	movl	$9,(%eax)
	movl	-8(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$INFBLOCK$_Ld3$non_lazy_ptr-Lj91(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$-3,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj477:
	movl	-20(%ebp),%edx
	andl	$31,%edx
	addl	$258,%edx
	movl	-20(%ebp),%eax
	shrl	$5,%eax
	andl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%edx
	shll	$2,%edx
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj513
	jmp	Lj514
Lj513:
	movl	$-4,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj514:
	movl	-24(%ebp),%eax
	shrl	$14,%eax
	movl	%eax,-24(%ebp)
	subl	$14,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$4,(%eax)
	jmp	Lj541
	jmp	Lj112
Lj118:
Lj541:
	jmp	Lj543
	.align 2
Lj542:
	jmp	Lj546
	.align 2
Lj545:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj548
	jmp	Lj549
Lj548:
	movl	$0,-12(%ebp)
	jmp	Lj552
Lj549:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj552:
	decl	-36(%ebp)
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-28(%ebp),%ecx
	shll	%cl,%eax
	movl	-24(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-24(%ebp)
	incl	-32(%ebp)
	addl	$8,-28(%ebp)
Lj546:
	movl	-28(%ebp),%eax
	cmpl	$3,%eax
	jb	Lj545
	jmp	Lj547
Lj547:
	movl	-4(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_TC_INFBLOCK_BORDER$non_lazy_ptr-Lj91(%ebx),%edx
	movzwl	(%edx,%eax,2),%edx
	movl	-24(%ebp),%eax
	andl	$7,%eax
	movl	%eax,(%ecx,%edx,4)
	movl	-4(%ebp),%eax
	incl	8(%eax)
	movl	-24(%ebp),%eax
	shrl	$3,%eax
	movl	%eax,-24(%ebp)
	subl	$3,-28(%ebp)
Lj543:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	shrl	$10,%eax
	addl	$4,%eax
	movl	-4(%ebp),%edx
	cmpl	8(%edx),%eax
	ja	Lj542
	jmp	Lj544
Lj544:
	jmp	Lj578
	.align 2
Lj577:
	movl	-4(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_TC_INFBLOCK_BORDER$non_lazy_ptr-Lj91(%ebx),%edx
	movzwl	(%edx,%eax,2),%eax
	movl	$0,(%ecx,%eax,4)
	movl	-4(%ebp),%eax
	incl	8(%eax)
Lj578:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$19,%eax
	jb	Lj577
	jmp	Lj579
Lj579:
	movl	-4(%ebp),%eax
	movl	$7,16(%eax)
	movl	$268435454,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	movl	%eax,12(%esp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	leal	16(%edx),%ecx
	movl	$536870910,%edx
	call	L_INFTREES_INFLATE_TREES_BITS$crc52DECA56$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj600
	jmp	Lj601
Lj600:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-3,%eax
	je	Lj606
	jmp	Lj607
Lj606:
	movl	-4(%ebp),%eax
	movl	$9,(%eax)
Lj607:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj601:
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$5,(%eax)
	jmp	Lj632
	jmp	Lj112
Lj119:
Lj632:
	jmp	Lj634
	.align 2
Lj633:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	andl	$31,%edx
	addl	$258,%edx
	movl	-20(%ebp),%eax
	shrl	$5,%eax
	andl	$31,%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	cmpl	8(%eax),%edx
	jbe	Lj638
	jmp	Lj639
Lj638:
	jmp	Lj635
Lj639:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj643
	.align 2
Lj642:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj645
	jmp	Lj646
Lj645:
	movl	$0,-12(%ebp)
	jmp	Lj649
Lj646:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj649:
	decl	-36(%ebp)
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-28(%ebp),%ecx
	shll	%cl,%eax
	movl	-24(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-24(%ebp)
	incl	-32(%ebp)
	addl	$8,-28(%ebp)
Lj643:
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj642
	jmp	Lj644
Lj644:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	-20(%ebp),%eax
	movl	L_TC_INFUTIL_INFLATE_MASK$non_lazy_ptr-Lj91(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	movl	-24(%ebp),%edx
	andl	%edx,%eax
	shll	$3,%eax
	addl	%eax,-64(%ebp)
	movl	-64(%ebp),%eax
	movzbl	1(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-64(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	-76(%ebp),%eax
	cmpl	$16,%eax
	jb	Lj676
	jmp	Lj677
Lj676:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	subl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-76(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
	movl	-4(%ebp),%eax
	incl	8(%eax)
	jmp	Lj682
Lj677:
	movl	-76(%ebp),%eax
	cmpl	$18,%eax
	je	Lj683
	jmp	Lj684
Lj683:
	movl	$7,-68(%ebp)
	movl	$11,-72(%ebp)
	jmp	Lj689
Lj684:
	movl	-76(%ebp),%eax
	subl	$14,%eax
	movl	%eax,-68(%ebp)
	movl	$3,-72(%ebp)
Lj689:
	jmp	Lj695
	.align 2
Lj694:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj697
	jmp	Lj698
Lj697:
	movl	$0,-12(%ebp)
	jmp	Lj701
Lj698:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj701:
	decl	-36(%ebp)
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-28(%ebp),%ecx
	shll	%cl,%eax
	movl	-24(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-24(%ebp)
	incl	-32(%ebp)
	addl	$8,-28(%ebp)
Lj695:
	movl	-20(%ebp),%eax
	movl	-68(%ebp),%edx
	addl	%edx,%eax
	cmpl	-28(%ebp),%eax
	ja	Lj694
	jmp	Lj696
Lj696:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	subl	%eax,-28(%ebp)
	movl	-68(%ebp),%eax
	movl	L_TC_INFUTIL_INFLATE_MASK$non_lazy_ptr-Lj91(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	movl	-24(%ebp),%edx
	andl	%edx,%eax
	addl	%eax,-72(%ebp)
	movl	-24(%ebp),%eax
	movl	-68(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-24(%ebp)
	movl	-68(%ebp),%eax
	subl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%ecx
	andl	$31,%ecx
	addl	$258,%ecx
	movl	-20(%ebp),%eax
	shrl	$5,%eax
	andl	$31,%eax
	addl	%eax,%ecx
	movl	-68(%ebp),%eax
	movl	-72(%ebp),%edx
	addl	%edx,%eax
	cmpl	%eax,%ecx
	jb	Lj730
	jmp	Lj732
Lj732:
	movl	-76(%ebp),%eax
	cmpl	$16,%eax
	je	Lj733
	jmp	Lj731
Lj733:
	movl	-68(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj730
	jmp	Lj731
Lj730:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	$9,(%eax)
	movl	-8(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$INFBLOCK$_Ld4$non_lazy_ptr-Lj91(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$-3,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj731:
	movl	-76(%ebp),%eax
	cmpl	$16,%eax
	je	Lj764
	jmp	Lj765
Lj764:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-68(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-76(%ebp)
	jmp	Lj768
Lj765:
	movl	$0,-76(%ebp)
Lj768:
	.align 2
Lj771:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-68(%ebp),%ecx
	movl	-76(%ebp),%eax
	movl	%eax,(%edx,%ecx,4)
	incl	-68(%ebp)
	decl	-72(%ebp)
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj773
	jmp	Lj771
Lj773:
	movl	-4(%ebp),%eax
	movl	-68(%ebp),%edx
	movl	%edx,8(%eax)
Lj682:
Lj634:
	jmp	Lj633
Lj635:
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	movl	$9,-48(%ebp)
	movl	$6,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$268435454,4(%esp)
	movl	$536870910,28(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-60(%ebp),%eax
	movl	%eax,12(%esp)
	leal	-56(%ebp),%eax
	movl	%eax,16(%esp)
	leal	-52(%ebp),%eax
	movl	%eax,20(%esp)
	leal	-48(%ebp),%eax
	movl	%eax,24(%esp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,8(%esp)
	movl	-20(%ebp),%edx
	shrl	$5,%edx
	andl	$31,%edx
	incl	%edx
	movl	-20(%ebp),%eax
	andl	$31,%eax
	addl	$257,%eax
	movl	-4(%ebp),%ecx
	movl	12(%ecx),%ecx
	call	L_INFTREES_INFLATE_TREES_DYNAMIC$crc8EE46EC4$stub
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj812
	jmp	Lj813
Lj812:
	movl	-20(%ebp),%eax
	cmpl	$-3,%eax
	je	Lj814
	jmp	Lj815
Lj814:
	movl	-4(%ebp),%eax
	movl	$9,(%eax)
Lj815:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj813:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-60(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-56(%ebp),%ecx
	movl	-52(%ebp),%edx
	movl	-48(%ebp),%eax
	call	L_INFCODES_INFLATE_CODES_NEW$crc1CD4BDA7$stub
	movl	%eax,-80(%ebp)
	movl	-80(%ebp),%eax
	testl	%eax,%eax
	je	Lj850
	jmp	Lj851
Lj850:
	movl	$-4,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj851:
	movl	-4(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-4(%ebp),%eax
	movl	$6,(%eax)
	jmp	Lj876
	jmp	Lj112
Lj120:
Lj876:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFCODES_INFLATE_CODES$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj895
	jmp	Lj896
Lj895:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj896:
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_INFCODES_INFLATE_CODES_FREE$PINFLATE_CODES_STATE$Z_STREAM$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	cmpl	48(%edx),%eax
	jb	Lj921
	jmp	Lj922
Lj921:
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-40(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-44(%ebp)
	jmp	Lj925
Lj922:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-40(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-44(%ebp)
Lj925:
	movl	-4(%ebp),%eax
	movb	24(%eax),%al
	testb	%al,%al
	je	Lj928
	jmp	Lj929
Lj928:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj110
Lj929:
	movl	-4(%ebp),%eax
	movl	$7,(%eax)
	jmp	Lj934
	jmp	Lj112
Lj121:
Lj934:
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	48(%eax),%eax
	cmpl	52(%edx),%eax
	jne	Lj947
	jmp	Lj948
Lj947:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj948:
	movl	-4(%ebp),%eax
	movl	$8,(%eax)
	jmp	Lj969
	jmp	Lj112
Lj122:
Lj969:
	movl	$1,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
	jmp	Lj112
Lj123:
	movl	$-3,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
	jmp	Lj112
Lj113:
	movl	$-2,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INFUTIL_INFLATE_FLUSH$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj90
Lj112:
Lj110:
	jmp	Lj109
Lj90:
	movl	-16(%ebp),%eax
	movl	-84(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INFBLOCK_INFLATE_BLOCKS_FREE$PINFLATE_BLOCKS_STATE$Z_STREAM$$LONGINT
_INFBLOCK_INFLATE_BLOCKS_FREE$PINFLATE_BLOCKS_STATE$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	$0,%ecx
	call	L_INFBLOCK_INFLATE_BLOCKS_RESET$INFLATE_BLOCKS_STATE$Z_STREAM$PCARDINAL$stub
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	call	Lfpc_freemem$stub
	movl	$0,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INFBLOCK_INFLATE_SET_DICTIONARY$INFLATE_BLOCKS_STATE$array_of_BYTE$LONGWORD
_INFBLOCK_INFLATE_SET_DICTIONARY$INFLATE_BLOCKS_STATE$array_of_BYTE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%edx
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,52(%edx)
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	addl	%eax,52(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,48(%edx)
	leave
	ret

.text
	.align 4
.globl	_INFBLOCK_INFLATE_BLOCKS_SYNC_POINT$INFLATE_BLOCKS_STATE$$LONGINT
_INFBLOCK_INFLATE_BLOCKS_SYNC_POINT$INFLATE_BLOCKS_STATE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	seteb	%al
	movzbl	%al,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_INFBLOCK
_THREADVARLIST_INFBLOCK:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 1
.globl	_TC_INFBLOCK_BORDER
_TC_INFBLOCK_BORDER:
	.short	16,17,18,0,8,7,9,6,10,5,11,4,12,3,13,2,14,1,15

.const
	.align 2
.globl	_$INFBLOCK$_Ld1
_$INFBLOCK$_Ld1:
	.ascii	"\022invalid block type\000"

.const
	.align 2
.globl	_$INFBLOCK$_Ld2
_$INFBLOCK$_Ld2:
	.ascii	"\034invalid stored block lengths\000"

.const
	.align 2
.globl	_$INFBLOCK$_Ld3
_$INFBLOCK$_Ld3:
	.ascii	"#too many length or distance symbols\000"

.const
	.align 2
.globl	_$INFBLOCK$_Ld4
_$INFBLOCK$_Ld4:
	.ascii	"\031invalid bit length repeat\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INFCODES_INFLATE_CODES_FREE$PINFLATE_CODES_STATE$Z_STREAM$stub:
.indirect_symbol _INFCODES_INFLATE_CODES_FREE$PINFLATE_CODES_STATE$Z_STREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_getmem$stub:
.indirect_symbol fpc_getmem
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

Lfpc_freemem$stub:
.indirect_symbol fpc_freemem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INFBLOCK_INFLATE_BLOCKS_RESET$INFLATE_BLOCKS_STATE$Z_STREAM$PCARDINAL$stub:
.indirect_symbol _INFBLOCK_INFLATE_BLOCKS_RESET$INFLATE_BLOCKS_STATE$Z_STREAM$PCARDINAL
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

L_INFTREES_INFLATE_TREES_FIXED$LONGWORD$LONGWORD$PINFLATE_HUFT$PINFLATE_HUFT$Z_STREAM$$LONGINT$stub:
.indirect_symbol _INFTREES_INFLATE_TREES_FIXED$LONGWORD$LONGWORD$PINFLATE_HUFT$PINFLATE_HUFT$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INFCODES_INFLATE_CODES_NEW$crc1CD4BDA7$stub:
.indirect_symbol _INFCODES_INFLATE_CODES_NEW$crc1CD4BDA7
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

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INFTREES_INFLATE_TREES_BITS$crc52DECA56$stub:
.indirect_symbol _INFTREES_INFLATE_TREES_BITS$crc52DECA56
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INFTREES_INFLATE_TREES_DYNAMIC$crc8EE46EC4$stub:
.indirect_symbol _INFTREES_INFLATE_TREES_DYNAMIC$crc8EE46EC4
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INFCODES_INFLATE_CODES$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _INFCODES_INFLATE_CODES$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT
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
L_$INFBLOCK$_Ld1$non_lazy_ptr:
.indirect_symbol _$INFBLOCK$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$INFBLOCK$_Ld2$non_lazy_ptr:
.indirect_symbol _$INFBLOCK$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$INFBLOCK$_Ld3$non_lazy_ptr:
.indirect_symbol _$INFBLOCK$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_INFBLOCK_BORDER$non_lazy_ptr:
.indirect_symbol _TC_INFBLOCK_BORDER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_INFUTIL_INFLATE_MASK$non_lazy_ptr:
.indirect_symbol _TC_INFUTIL_INFLATE_MASK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$INFBLOCK$_Ld4$non_lazy_ptr:
.indirect_symbol _$INFBLOCK$_Ld4
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

