# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_ZDEFLATE_INSERT_STRING$DEFLATE_STATE$LONGWORD$LONGWORD
_ZDEFLATE_INSERT_STRING$DEFLATE_STATE$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-8(%ebp),%eax
	addl	$2,%eax
	movzbl	(%edx,%eax,1),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	64(%eax),%eax
	movl	80(%ecx),%ecx
	shll	%cl,%eax
	xorl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	andl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,64(%eax)
	movl	-4(%ebp),%eax
	movl	60(%eax),%edx
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movzwl	(%edx,%eax,2),%eax
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	44(%edx),%edx
	andl	%edx,%eax
	movl	-12(%ebp),%edx
	movw	(%edx),%dx
	movw	%dx,(%ecx,%eax,2)
	movl	-4(%ebp),%eax
	movl	60(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movw	-8(%ebp),%dx
	movw	%dx,(%ecx,%eax,2)
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_DEFLATEINIT2_$crcDF54DF8C
_ZDEFLATE_DEFLATEINIT2_$crcDF54DF8C:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-288(%ebp)
	call	Lj14
Lj14:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-24(%ebp)
	movl	12(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj17
	jmp	Lj20
Lj20:
	movl	12(%ebp),%eax
	movb	1(%eax),%dl
	movl	L_TC_ZBASE_ZLIB_VERSION$non_lazy_ptr-Lj14(%ebx),%eax
	cmpb	1(%eax),%dl
	jne	Lj17
	jmp	Lj19
Lj19:
	movl	8(%ebp),%eax
	cmpl	$296,%eax
	jne	Lj17
	jmp	Lj18
Lj17:
	movl	$-6,-16(%ebp)
	jmp	Lj13
Lj18:
	movl	-4(%ebp),%eax
	movb	$0,24(%eax)
	movl	-8(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj25
	jmp	Lj26
Lj25:
	movl	$6,-8(%ebp)
Lj26:
	movl	24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj29
	jmp	Lj30
Lj29:
	movl	$1,-24(%ebp)
	movl	24(%ebp),%eax
	negl	%eax
	movl	%eax,24(%ebp)
Lj30:
	movl	20(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj35
	jmp	Lj44
Lj44:
	movl	20(%ebp),%eax
	cmpl	$9,%eax
	jg	Lj35
	jmp	Lj43
Lj43:
	movl	-12(%ebp),%eax
	cmpl	$8,%eax
	jne	Lj35
	jmp	Lj42
Lj42:
	movl	24(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj35
	jmp	Lj41
Lj41:
	movl	24(%ebp),%eax
	cmpl	$15,%eax
	jg	Lj35
	jmp	Lj40
Lj40:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj35
	jmp	Lj39
Lj39:
	movl	-8(%ebp),%eax
	cmpl	$9,%eax
	jg	Lj35
	jmp	Lj38
Lj38:
	movl	16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj35
	jmp	Lj37
Lj37:
	movl	16(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj35
	jmp	Lj36
Lj35:
	movl	$-2,-16(%ebp)
	jmp	Lj13
Lj36:
	leal	-20(%ebp),%eax
	movl	$5820,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj51
	jmp	Lj52
Lj51:
	movl	$-4,-16(%ebp)
	jmp	Lj13
Lj52:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,280(%eax)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-20(%ebp),%eax
	movl	24(%ebp),%edx
	movl	%edx,40(%eax)
	movl	-20(%ebp),%edx
	movl	$1,%eax
	movl	40(%edx),%ecx
	shll	%cl,%eax
	movl	-20(%ebp),%edx
	movl	%eax,36(%edx)
	movl	-20(%ebp),%eax
	movl	36(%eax),%edx
	decl	%edx
	movl	-20(%ebp),%eax
	movl	%edx,44(%eax)
	movl	20(%ebp),%edx
	addl	$7,%edx
	movl	-20(%ebp),%eax
	movl	%edx,72(%eax)
	movl	-20(%ebp),%edx
	movl	$1,%eax
	movl	72(%edx),%ecx
	shll	%cl,%eax
	movl	-20(%ebp),%edx
	movl	%eax,68(%edx)
	movl	-20(%ebp),%eax
	movl	68(%eax),%edx
	decl	%edx
	movl	-20(%ebp),%eax
	movl	%edx,76(%eax)
	movl	-20(%ebp),%eax
	movl	72(%eax),%edx
	addl	$3,%edx
	decl	%edx
	movl	$-1431655765,%eax
	mull	%edx
	shrl	$1,%edx
	movl	-20(%ebp),%eax
	movl	%edx,80(%eax)
	movl	-20(%ebp),%eax
	movl	36(%eax),%edx
	shll	$1,%edx
	movl	-20(%ebp),%eax
	leal	48(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	36(%eax),%edx
	shll	$1,%edx
	movl	-20(%ebp),%eax
	leal	56(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	68(%eax),%edx
	shll	$1,%edx
	movl	-20(%ebp),%eax
	leal	60(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	20(%ebp),%ecx
	addl	$6,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	-20(%ebp),%edx
	movl	%eax,5776(%edx)
	movl	-20(%ebp),%eax
	movl	5776(%eax),%edx
	shll	$2,%edx
	leal	-28(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-20(%ebp),%eax
	movl	5776(%eax),%eax
	shll	$2,%eax
	movl	-20(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-20(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	je	Lj97
	jmp	Lj101
Lj101:
	movl	-20(%ebp),%eax
	movl	56(%eax),%eax
	testl	%eax,%eax
	je	Lj97
	jmp	Lj100
Lj100:
	movl	-20(%ebp),%eax
	movl	60(%eax),%eax
	testl	%eax,%eax
	je	Lj97
	jmp	Lj99
Lj99:
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj97
	jmp	Lj98
Lj97:
	leal	-284(%ebp),%edx
	movl	$-4,%eax
	call	L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub
	leal	-284(%ebp),%ecx
	movl	-4(%ebp),%eax
	leal	24(%eax),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT$stub
	movl	$-4,-16(%ebp)
	jmp	Lj13
Lj98:
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	5776(%eax),%eax
	shrl	$1,%eax
	leal	(%edx,%eax,2),%eax
	movl	-20(%ebp),%edx
	movl	%eax,5784(%edx)
	movl	-20(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	$3,%eax
	mull	5776(%edx)
	leal	(%ecx,%eax,1),%eax
	movl	-20(%ebp),%edx
	movl	%eax,5772(%edx)
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,120(%eax)
	movl	-20(%ebp),%eax
	movl	16(%ebp),%edx
	movl	%edx,124(%eax)
	movl	-20(%ebp),%eax
	movb	-12(%ebp),%dl
	movb	%dl,29(%eax)
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_DEFLATERESET$Z_STREAM$$LONGINT$stub
	movl	%eax,-16(%ebp)
Lj13:
	movl	-16(%ebp),%eax
	movl	-288(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_DEFLATEINIT2$Z_STREAM$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$LONGINT
_ZDEFLATE_DEFLATEINIT2$Z_STREAM$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj131
Lj131:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$296,(%esp)
	movl	L_TC_ZBASE_ZLIB_VERSION$non_lazy_ptr-Lj131(%ebx),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	16(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_DEFLATEINIT2_$crcDF54DF8C$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_DEFLATEINIT_$Z_STREAMP$LONGINT$SHORTSTRING$LONGINT$$LONGINT
_ZDEFLATE_DEFLATEINIT_$Z_STREAMP$LONGINT$SHORTSTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj152
	jmp	Lj153
Lj152:
	movl	$-2,-16(%ebp)
	jmp	Lj156
Lj153:
	movl	$0,8(%esp)
	movl	$8,12(%esp)
	movl	$15,16(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	$8,%ecx
	call	L_ZDEFLATE_DEFLATEINIT2_$crcDF54DF8C$stub
	movl	%eax,-16(%ebp)
Lj156:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT
_ZDEFLATE_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	call	Lj176
Lj176:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$296,(%esp)
	movl	$0,8(%esp)
	movl	$8,12(%esp)
	movl	$15,16(%esp)
	movl	L_TC_ZBASE_ZLIB_VERSION$non_lazy_ptr-Lj176(%ebx),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$8,%ecx
	call	L_ZDEFLATE_DEFLATEINIT2_$crcDF54DF8C$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_DEFLATESETDICTIONARY$Z_STREAM$PBYTE$LONGWORD$$LONGINT
_ZDEFLATE_DEFLATESETDICTIONARY$Z_STREAM$PBYTE$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	testl	%eax,%eax
	je	Lj201
	jmp	Lj204
Lj204:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj201
	jmp	Lj203
Lj203:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	4(%eax),%eax
	cmpl	$42,%eax
	jne	Lj201
	jmp	Lj202
Lj201:
	movl	$-2,-16(%ebp)
	jmp	Lj195
Lj202:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	288(%eax),%eax
	call	L_ADLER_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,288(%edx)
	movl	-24(%ebp),%eax
	cmpl	$3,%eax
	jb	Lj217
	jmp	Lj218
Lj217:
	movl	$0,-16(%ebp)
	jmp	Lj195
Lj218:
	movl	-20(%ebp),%eax
	movl	36(%eax),%eax
	subl	$262,%eax
	movl	%eax,-36(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-36(%ebp),%eax
	ja	Lj223
	jmp	Lj224
Lj223:
	movl	-36(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	addl	%eax,-8(%ebp)
Lj224:
	movl	-20(%ebp),%eax
	movl	48(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,100(%eax)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,84(%eax)
	movl	-20(%ebp),%eax
	movl	48(%eax),%eax
	movzbl	(%eax),%edx
	movl	-20(%ebp),%eax
	movl	%edx,64(%eax)
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	64(%eax),%eax
	movl	80(%edx),%ecx
	shll	%cl,%eax
	movl	-20(%ebp),%edx
	movl	48(%edx),%edx
	movzbl	1(%edx),%edx
	xorl	%edx,%eax
	movl	-20(%ebp),%edx
	movl	76(%edx),%edx
	andl	%edx,%eax
	movl	-20(%ebp),%edx
	movl	%eax,64(%edx)
	movl	-24(%ebp),%ebx
	subl	$3,%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jb	Lj242
	decl	-28(%ebp)
	.align 2
Lj243:
	incl	-28(%ebp)
	movl	-20(%ebp),%eax
	leal	-32(%ebp),%ecx
	movl	-28(%ebp),%edx
	call	L_ZDEFLATE_INSERT_STRING$DEFLATE_STATE$LONGWORD$LONGWORD$stub
	cmpl	-28(%ebp),%ebx
	ja	Lj243
Lj242:
	movl	$0,-16(%ebp)
Lj195:
	movl	-16(%ebp),%eax
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_DEFLATERESET$Z_STREAM$$LONGINT
_ZDEFLATE_DEFLATERESET$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	testl	%eax,%eax
	je	Lj254
	jmp	Lj255
Lj254:
	movl	$-2,-8(%ebp)
	jmp	Lj252
Lj255:
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movb	$0,24(%eax)
	movl	-4(%ebp),%eax
	movl	$2,284(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,20(%eax)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,16(%edx)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$0,%eax
	jl	Lj272
	jmp	Lj273
Lj272:
	movl	-12(%ebp),%eax
	movl	$0,24(%eax)
Lj273:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	jne	Lj276
	jmp	Lj277
Lj276:
	movl	-12(%ebp),%eax
	movl	$113,4(%eax)
	jmp	Lj280
Lj277:
	movl	-12(%ebp),%eax
	movl	$42,4(%eax)
Lj280:
	movl	-4(%ebp),%eax
	movl	$1,288(%eax)
	movl	-12(%ebp),%eax
	movl	$0,32(%eax)
	movl	-12(%ebp),%eax
	call	L_TREES__TR_INIT$DEFLATE_STATE$stub
	movl	-12(%ebp),%eax
	call	L_ZDEFLATE_LM_INIT$DEFLATE_STATE$stub
	movl	$0,-8(%ebp)
Lj252:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_DEFLATEPARAMS$Z_STREAM$LONGINT$LONGINT$$LONGINT
_ZDEFLATE_DEFLATEPARAMS$Z_STREAM$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	call	Lj294
Lj294:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	testl	%eax,%eax
	je	Lj297
	jmp	Lj298
Lj297:
	movl	$-2,-16(%ebp)
	jmp	Lj293
Lj298:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj303
	jmp	Lj304
Lj303:
	movl	$6,-8(%ebp)
Lj304:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj307
	jmp	Lj311
Lj311:
	movl	-8(%ebp),%eax
	cmpl	$9,%eax
	jg	Lj307
	jmp	Lj310
Lj310:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj307
	jmp	Lj309
Lj309:
	movl	-12(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj307
	jmp	Lj308
Lj307:
	movl	$-2,-16(%ebp)
	jmp	Lj293
Lj308:
	movl	-20(%ebp),%eax
	movl	120(%eax),%eax
	imull	$12,%eax
	movl	L_TC_ZDEFLATE_CONFIGURATION_TABLE$non_lazy_ptr-Lj294(%ebx),%edx
	movl	8(%edx,%eax),%eax
	movl	%eax,-24(%ebp)
	leal	-24(%ebp),%ecx
	movl	-8(%ebp),%eax
	imull	$12,%eax
	movl	L_TC_ZDEFLATE_CONFIGURATION_TABLE$non_lazy_ptr-Lj294(%ebx),%edx
	leal	8(%edx,%eax),%eax
	cmpl	%eax,%ecx
	jne	Lj318
	jmp	Lj317
Lj318:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj316
	jmp	Lj317
Lj316:
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-28(%ebp)
Lj317:
	movl	-20(%ebp),%eax
	movl	120(%eax),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj325
	jmp	Lj326
Lj325:
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,120(%edx)
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%eax
	imull	$12,%eax
	movl	L_TC_ZDEFLATE_CONFIGURATION_TABLE$non_lazy_ptr-Lj294(%ebx),%edx
	movzwl	2(%edx,%eax),%eax
	movl	%eax,5816(%ecx)
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%eax
	imull	$12,%eax
	movl	L_TC_ZDEFLATE_CONFIGURATION_TABLE$non_lazy_ptr-Lj294(%ebx),%edx
	movzwl	(%edx,%eax),%eax
	movl	%eax,128(%ecx)
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%eax
	imull	$12,%eax
	movl	L_TC_ZDEFLATE_CONFIGURATION_TABLE$non_lazy_ptr-Lj294(%ebx),%edx
	movzwl	4(%edx,%eax),%eax
	movl	%eax,132(%ecx)
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%eax
	imull	$12,%eax
	movl	L_TC_ZDEFLATE_CONFIGURATION_TABLE$non_lazy_ptr-Lj294(%ebx),%edx
	movzwl	6(%edx,%eax),%eax
	movl	%eax,116(%ecx)
Lj326:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,124(%edx)
	movl	-28(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj293:
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_PUTSHORTMSB$DEFLATE_STATE$LONGWORD
_ZDEFLATE_PUTSHORTMSB$DEFLATE_STATE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-8(%ebp),%eax
	shrl	$8,%eax
	movb	%al,(%ecx,%edx,1)
	movl	-4(%ebp),%eax
	incl	20(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-8(%ebp),%eax
	andl	$255,%eax
	movb	%al,(%ecx,%edx,1)
	movl	-4(%ebp),%eax
	incl	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_FLUSH_PENDING$Z_STREAM
_ZDEFLATE_FLUSH_PENDING$Z_STREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	cmpl	16(%eax),%edx
	ja	Lj353
	jmp	Lj354
Lj353:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-8(%ebp)
Lj354:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj357
	jmp	Lj358
Lj357:
	jmp	Lj347
Lj358:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	movl	12(%edx),%edx
	movl	-8(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,12(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,16(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,20(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,16(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,20(%eax)
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj365
	jmp	Lj366
Lj365:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,16(%edx)
Lj366:
Lj347:
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT
_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-296(%ebp)
	movl	%esi,-292(%ebp)
	call	Lj370
Lj370:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	testl	%eax,%eax
	je	Lj371
	jmp	Lj374
Lj374:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj371
	jmp	Lj373
Lj373:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj371
	jmp	Lj372
Lj371:
	movl	$-2,-12(%ebp)
	jmp	Lj369
Lj372:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj379
	jmp	Lj382
Lj382:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj383
	jmp	Lj381
Lj383:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj379
	jmp	Lj381
Lj381:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$666,%eax
	je	Lj384
	jmp	Lj380
Lj384:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	jne	Lj379
	jmp	Lj380
Lj379:
	leal	-288(%ebp),%edx
	movl	$-2,%eax
	call	L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub
	leal	-288(%ebp),%ecx
	movl	-4(%ebp),%eax
	leal	24(%eax),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$-2,-12(%ebp)
	jmp	Lj369
Lj380:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj397
	jmp	Lj398
Lj397:
	leal	-288(%ebp),%edx
	movl	$-5,%eax
	call	L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub
	leal	-288(%ebp),%ecx
	movl	-4(%ebp),%eax
	leal	24(%eax),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$-5,-12(%ebp)
	jmp	Lj369
Lj398:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$42,%eax
	je	Lj417
	jmp	Lj418
Lj417:
	movl	-20(%ebp),%eax
	movl	40(%eax),%eax
	movl	$0,%edx
	subl	$8,%eax
	sbbl	$0,%edx
	shldl	$4,%eax,%edx
	shll	$4,%eax
	addl	$8,%eax
	adcl	$0,%edx
	shldl	$8,%eax,%edx
	shll	$8,%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	120(%eax),%eax
	decl	%eax
	shrl	$1,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$3,%eax
	ja	Lj423
	jmp	Lj424
Lj423:
	movl	$3,-28(%ebp)
Lj424:
	movl	-28(%ebp),%eax
	shll	$6,%eax
	movl	-24(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	100(%eax),%eax
	testl	%eax,%eax
	jne	Lj429
	jmp	Lj430
Lj429:
	movl	-24(%ebp),%eax
	orl	$32,%eax
	movl	%eax,-24(%ebp)
Lj430:
	movl	-24(%ebp),%eax
	xorl	%edx,%edx
	movl	$31,%ecx
	divl	%ecx
	movl	$31,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	addl	%edx,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	$113,4(%eax)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	call	L_ZDEFLATE_PUTSHORTMSB$DEFLATE_STATE$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	100(%eax),%eax
	testl	%eax,%eax
	jne	Lj439
	jmp	Lj440
Lj439:
	movl	-4(%ebp),%eax
	movl	288(%eax),%edx
	shrl	$16,%edx
	movl	-20(%ebp),%eax
	call	L_ZDEFLATE_PUTSHORTMSB$DEFLATE_STATE$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	288(%eax),%edx
	andl	$65535,%edx
	movl	-20(%ebp),%eax
	call	L_ZDEFLATE_PUTSHORTMSB$DEFLATE_STATE$LONGWORD$stub
Lj440:
	movl	-4(%ebp),%eax
	movl	$1,288(%eax)
Lj418:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj451
	jmp	Lj452
Lj451:
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_FLUSH_PENDING$Z_STREAM$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj455
	jmp	Lj456
Lj455:
	movl	-20(%ebp),%eax
	movl	$-1,32(%eax)
	movl	$0,-12(%ebp)
	jmp	Lj369
Lj456:
	jmp	Lj461
Lj452:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj465
	jmp	Lj463
Lj465:
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj464
	jmp	Lj463
Lj464:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	jne	Lj462
	jmp	Lj463
Lj462:
	leal	-288(%ebp),%edx
	movl	$-5,%eax
	call	L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub
	leal	-288(%ebp),%ecx
	movl	-4(%ebp),%eax
	leal	24(%eax),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$-5,-12(%ebp)
	jmp	Lj369
Lj463:
Lj461:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$666,%eax
	je	Lj480
	jmp	Lj479
Lj480:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj478
	jmp	Lj479
Lj478:
	leal	-288(%ebp),%edx
	movl	$-5,%eax
	call	L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub
	leal	-288(%ebp),%ecx
	movl	-4(%ebp),%eax
	leal	24(%eax),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$-5,-12(%ebp)
	jmp	Lj369
Lj479:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj493
	jmp	Lj496
Lj496:
	movl	-20(%ebp),%eax
	movl	108(%eax),%eax
	testl	%eax,%eax
	jne	Lj493
	jmp	Lj495
Lj495:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj497
	jmp	Lj494
Lj497:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$666,%eax
	jne	Lj493
	jmp	Lj494
Lj493:
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	120(%ecx),%ecx
	imull	$12,%ecx
	movl	L_TC_ZDEFLATE_CONFIGURATION_TABLE$non_lazy_ptr-Lj370(%ebx),%esi
	movl	8(%esi,%ecx),%ecx
	call	*%ecx
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$2,%eax
	je	Lj504
	jmp	Lj506
Lj506:
	movl	-32(%ebp),%eax
	cmpl	$3,%eax
	je	Lj504
	jmp	Lj505
Lj504:
	movl	-20(%ebp),%eax
	movl	$666,4(%eax)
Lj505:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj509
	jmp	Lj511
Lj511:
	movl	-32(%ebp),%eax
	cmpl	$2,%eax
	je	Lj509
	jmp	Lj510
Lj509:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj512
	jmp	Lj513
Lj512:
	movl	-20(%ebp),%eax
	movl	$-1,32(%eax)
Lj513:
	movl	$0,-12(%ebp)
	jmp	Lj369
Lj510:
	movl	-32(%ebp),%eax
	cmpl	$1,%eax
	je	Lj518
	jmp	Lj519
Lj518:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj520
	jmp	Lj521
Lj520:
	movl	-20(%ebp),%eax
	call	L_TREES__TR_ALIGN$DEFLATE_STATE$stub
	jmp	Lj524
Lj521:
	movb	$0,(%esp)
	movl	-20(%ebp),%eax
	movl	$0,%ecx
	movl	$0,%edx
	call	L_TREES__TR_STORED_BLOCK$DEFLATE_STATE$PBYTE$LONGINT$BOOLEAN$stub
	movl	-8(%ebp),%eax
	cmpl	$3,%eax
	je	Lj533
	jmp	Lj534
Lj533:
	movl	-20(%ebp),%eax
	movl	60(%eax),%edx
	movl	-20(%ebp),%eax
	movl	68(%eax),%eax
	decl	%eax
	movw	$0,(%edx,%eax,2)
	movl	-20(%ebp),%eax
	movl	68(%eax),%edx
	decl	%edx
	shll	$1,%edx
	movl	-20(%ebp),%eax
	movl	60(%eax),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj534:
Lj524:
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_FLUSH_PENDING$Z_STREAM$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj545
	jmp	Lj546
Lj545:
	movl	-20(%ebp),%eax
	movl	$-1,32(%eax)
	movl	$0,-12(%ebp)
	jmp	Lj369
Lj546:
Lj519:
Lj494:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	jne	Lj551
	jmp	Lj552
Lj551:
	movl	$0,-12(%ebp)
	jmp	Lj369
Lj552:
	movl	-20(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	jne	Lj555
	jmp	Lj556
Lj555:
	movl	$1,-12(%ebp)
	jmp	Lj369
Lj556:
	movl	-4(%ebp),%eax
	movl	288(%eax),%edx
	shrl	$16,%edx
	movl	-20(%ebp),%eax
	call	L_ZDEFLATE_PUTSHORTMSB$DEFLATE_STATE$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	288(%eax),%edx
	andl	$65535,%edx
	movl	-20(%ebp),%eax
	call	L_ZDEFLATE_PUTSHORTMSB$DEFLATE_STATE$LONGWORD$stub
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_FLUSH_PENDING$Z_STREAM$stub
	movl	-20(%ebp),%eax
	movl	$-1,24(%eax)
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj571
	jmp	Lj572
Lj571:
	movl	$0,-12(%ebp)
	jmp	Lj575
Lj572:
	movl	$1,-12(%ebp)
Lj575:
Lj369:
	movl	-12(%ebp),%eax
	movl	-296(%ebp),%ebx
	movl	-292(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT
_ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	testl	%eax,%eax
	je	Lj580
	jmp	Lj581
Lj580:
	movl	$-2,-8(%ebp)
	jmp	Lj578
Lj581:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$42,%eax
	jne	Lj591
	jmp	Lj589
Lj591:
	movl	-12(%ebp),%eax
	cmpl	$113,%eax
	jne	Lj590
	jmp	Lj589
Lj590:
	movl	-12(%ebp),%eax
	cmpl	$666,%eax
	jne	Lj588
	jmp	Lj589
Lj588:
	movl	$-2,-8(%ebp)
	jmp	Lj578
Lj589:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-16(%ebp),%eax
	movl	60(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-16(%ebp),%eax
	movl	56(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-16(%ebp),%eax
	movl	48(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	$0,280(%eax)
	movl	-12(%ebp),%eax
	cmpl	$113,%eax
	je	Lj606
	jmp	Lj607
Lj606:
	movl	$-3,-8(%ebp)
	jmp	Lj610
Lj607:
	movl	$0,-8(%ebp)
Lj610:
Lj578:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_DEFLATECOPY$Z_STREAMP$Z_STREAMP$$LONGINT
_ZDEFLATE_DEFLATECOPY$Z_STREAMP$Z_STREAMP$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj615
	jmp	Lj618
Lj618:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj615
	jmp	Lj617
Lj617:
	movl	-8(%ebp),%eax
	movl	280(%eax),%eax
	testl	%eax,%eax
	je	Lj615
	jmp	Lj616
Lj615:
	movl	$-2,-12(%ebp)
	jmp	Lj613
Lj616:
	movl	-8(%ebp),%eax
	movl	280(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%edi
	movl	-8(%ebp),%esi
	cld
	movl	$74,%ecx
	rep
	movsl
	leal	-16(%ebp),%eax
	movl	$5820,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj629
	jmp	Lj630
Lj629:
	movl	$-4,-12(%ebp)
	jmp	Lj613
Lj630:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,280(%edx)
	movl	-16(%ebp),%edi
	movl	-20(%ebp),%esi
	cld
	movl	$1455,%ecx
	rep
	movsl
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	-16(%ebp),%eax
	movl	36(%eax),%edx
	shll	$1,%edx
	movl	-16(%ebp),%eax
	leal	48(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-16(%ebp),%eax
	movl	36(%eax),%edx
	shll	$1,%edx
	movl	-16(%ebp),%eax
	leal	56(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-16(%ebp),%eax
	movl	68(%eax),%edx
	shll	$1,%edx
	movl	-16(%ebp),%eax
	leal	60(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-16(%ebp),%eax
	movl	5776(%eax),%edx
	shll	$2,%edx
	leal	-24(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-16(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	je	Lj657
	jmp	Lj661
Lj661:
	movl	-16(%ebp),%eax
	movl	56(%eax),%eax
	testl	%eax,%eax
	je	Lj657
	jmp	Lj660
Lj660:
	movl	-16(%ebp),%eax
	movl	60(%eax),%eax
	testl	%eax,%eax
	je	Lj657
	jmp	Lj659
Lj659:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj657
	jmp	Lj658
Lj657:
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT$stub
	movl	$-4,-12(%ebp)
	jmp	Lj613
Lj658:
	movl	-16(%ebp),%eax
	movl	36(%eax),%ecx
	shll	$1,%ecx
	movl	-16(%ebp),%eax
	movl	48(%eax),%edx
	movl	-20(%ebp),%eax
	movl	48(%eax),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	36(%eax),%ecx
	shll	$1,%ecx
	movl	-16(%ebp),%eax
	movl	56(%eax),%edx
	movl	-20(%ebp),%eax
	movl	56(%eax),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	68(%eax),%ecx
	shll	$1,%ecx
	movl	-16(%ebp),%eax
	movl	60(%eax),%edx
	movl	-20(%ebp),%eax
	movl	60(%eax),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	8(%eax),%edx
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	12(%ecx),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	16(%eax),%eax
	movl	8(%edx),%edx
	subl	%edx,%eax
	leal	(%ecx,%eax,1),%eax
	movl	-16(%ebp),%edx
	movl	%eax,16(%edx)
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	5776(%eax),%eax
	shrl	$1,%eax
	leal	(%edx,%eax,2),%eax
	movl	-16(%ebp),%edx
	movl	%eax,5784(%edx)
	movl	-16(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-16(%ebp),%edx
	movl	$3,%eax
	mull	5776(%edx)
	leal	(%ecx,%eax,1),%edx
	movl	-16(%ebp),%eax
	movl	%edx,5772(%eax)
	movl	-16(%ebp),%eax
	leal	136(%eax),%eax
	movl	-16(%ebp),%edx
	movl	%eax,2828(%edx)
	movl	-16(%ebp),%eax
	leal	2428(%eax),%eax
	movl	-16(%ebp),%edx
	movl	%eax,2840(%edx)
	movl	-16(%ebp),%eax
	leal	2672(%eax),%eax
	movl	-16(%ebp),%edx
	movl	%eax,2852(%edx)
	movl	$0,-12(%ebp)
Lj613:
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_READ_BUF$Z_STREAMP$PBYTE$LONGWORD$$LONGWORD
_ZDEFLATE_READ_BUF$Z_STREAMP$PBYTE$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	ja	Lj708
	jmp	Lj709
Lj708:
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj709:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,4(%eax)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj712
	jmp	Lj713
Lj712:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj714
	jmp	Lj715
Lj714:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	288(%eax),%eax
	movl	-20(%ebp),%ecx
	call	L_ADLER_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,288(%edx)
Lj715:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,8(%eax)
Lj713:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_LM_INIT$DEFLATE_STATE
_ZDEFLATE_LM_INIT$DEFLATE_STATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj733
Lj733:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,52(%edx)
	movl	-4(%ebp),%eax
	movl	60(%eax),%edx
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	decl	%eax
	movw	$0,(%edx,%eax,2)
	movl	-4(%ebp),%eax
	movl	68(%eax),%edx
	decl	%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	movl	120(%eax),%eax
	imull	$12,%eax
	movl	L_TC_ZDEFLATE_CONFIGURATION_TABLE$non_lazy_ptr-Lj733(%ebx),%edx
	movzwl	2(%edx,%eax),%eax
	movl	-4(%ebp),%edx
	movl	%eax,5816(%edx)
	movl	-4(%ebp),%eax
	movl	120(%eax),%eax
	imull	$12,%eax
	movl	L_TC_ZDEFLATE_CONFIGURATION_TABLE$non_lazy_ptr-Lj733(%ebx),%edx
	movzwl	(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	movl	%edx,128(%eax)
	movl	-4(%ebp),%eax
	movl	120(%eax),%eax
	imull	$12,%eax
	movl	L_TC_ZDEFLATE_CONFIGURATION_TABLE$non_lazy_ptr-Lj733(%ebx),%edx
	movzwl	4(%edx,%eax),%eax
	movl	-4(%ebp),%edx
	movl	%eax,132(%edx)
	movl	-4(%ebp),%eax
	movl	120(%eax),%eax
	imull	$12,%eax
	movl	L_TC_ZDEFLATE_CONFIGURATION_TABLE$non_lazy_ptr-Lj733(%ebx),%edx
	movzwl	6(%edx,%eax),%eax
	movl	-4(%ebp),%edx
	movl	%eax,116(%edx)
	movl	-4(%ebp),%eax
	movl	$0,100(%eax)
	movl	-4(%ebp),%eax
	movl	$0,84(%eax)
	movl	-4(%ebp),%eax
	movl	$0,108(%eax)
	movl	-4(%ebp),%eax
	movl	$2,112(%eax)
	movl	-4(%ebp),%eax
	movl	$2,88(%eax)
	movl	-4(%ebp),%eax
	movb	$0,96(%eax)
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_LONGEST_MATCH$DEFLATE_STATE$LONGWORD$$LONGWORD
_ZDEFLATE_LONGEST_MATCH$DEFLATE_STATE$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	116(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	leal	(%edx,%eax,1),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	132(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	subl	$262,%eax
	movl	%eax,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	cmpl	-60(%ebp),%eax
	ja	Lj778
	jmp	Lj779
Lj778:
	movl	-4(%ebp),%eax
	movl	100(%eax),%edx
	movl	-60(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-40(%ebp)
	jmp	Lj782
Lj779:
	movl	$0,-40(%ebp)
Lj782:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	addl	$258,%eax
	leal	(%edx,%eax,1),%eax
	movl	%eax,-52(%ebp)
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	decl	%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-53(%ebp)
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-54(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	112(%eax),%eax
	cmpl	128(%edx),%eax
	jae	Lj795
	jmp	Lj796
Lj795:
	movl	-16(%ebp),%eax
	shrl	$2,%eax
	movl	%eax,-16(%ebp)
Lj796:
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%eax
	cmpl	108(%edx),%eax
	ja	Lj799
	jmp	Lj800
Lj799:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	movl	%eax,-36(%ebp)
Lj800:
	.align 2
Lj803:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	-8(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	-32(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	-54(%ebp),%al
	jne	Lj808
	jmp	Lj811
Lj811:
	movl	-24(%ebp),%edx
	movl	-32(%ebp),%eax
	decl	%eax
	movb	(%edx,%eax,1),%al
	cmpb	-53(%ebp),%al
	jne	Lj808
	jmp	Lj810
Lj810:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj808
	jmp	Lj809
Lj808:
	jmp	Lj812
Lj809:
	incl	-24(%ebp)
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax),%al
	cmpb	1(%edx),%al
	jne	Lj813
	jmp	Lj814
Lj813:
	jmp	Lj812
Lj814:
	addl	$2,-20(%ebp)
	incl	-24(%ebp)
	.align 2
Lj815:
	incl	-20(%ebp)
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj818
	jmp	Lj819
Lj818:
	jmp	Lj817
Lj819:
	incl	-20(%ebp)
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj820
	jmp	Lj821
Lj820:
	jmp	Lj817
Lj821:
	incl	-20(%ebp)
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj822
	jmp	Lj823
Lj822:
	jmp	Lj817
Lj823:
	incl	-20(%ebp)
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj824
	jmp	Lj825
Lj824:
	jmp	Lj817
Lj825:
	incl	-20(%ebp)
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj826
	jmp	Lj827
Lj826:
	jmp	Lj817
Lj827:
	incl	-20(%ebp)
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj828
	jmp	Lj829
Lj828:
	jmp	Lj817
Lj829:
	incl	-20(%ebp)
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj830
	jmp	Lj831
Lj830:
	jmp	Lj817
Lj831:
	incl	-20(%ebp)
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj832
	jmp	Lj833
Lj832:
	jmp	Lj817
Lj833:
	movl	-20(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jae	Lj817
	jmp	Lj815
Lj817:
	movl	-52(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	$258,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-28(%ebp)
	movl	-52(%ebp),%eax
	movl	%eax,-20(%ebp)
	subl	$258,-20(%ebp)
	movl	-28(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj838
	jmp	Lj839
Lj838:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,104(%eax)
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-28(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jge	Lj844
	jmp	Lj845
Lj844:
	jmp	Lj805
Lj845:
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	decl	%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-53(%ebp)
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-54(%ebp)
Lj839:
Lj812:
	movl	-44(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-48(%ebp),%edx
	andl	%edx,%eax
	movzwl	(%ecx,%eax,2),%eax
	movl	%eax,-8(%ebp)
	decl	-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jbe	Lj805
	jmp	Lj852
Lj852:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj805
	jmp	Lj803
Lj805:
	movl	-4(%ebp),%edx
	movl	-32(%ebp),%eax
	cmpl	108(%edx),%eax
	jbe	Lj853
	jmp	Lj854
Lj853:
	movl	-32(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj857
Lj854:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	movl	%eax,-12(%ebp)
Lj857:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_FILL_WINDOW$DEFLATE_STATE
_ZDEFLATE_FILL_WINDOW$DEFLATE_STATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-24(%ebp)
	.align 2
Lj864:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	52(%eax),%ecx
	movl	108(%edx),%eax
	subl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	subl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj872
	jmp	Lj870
Lj872:
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	testl	%eax,%eax
	je	Lj871
	jmp	Lj870
Lj871:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	testl	%eax,%eax
	je	Lj869
	jmp	Lj870
Lj869:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj875
Lj870:
	movl	-20(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj876
	jmp	Lj877
Lj876:
	decl	-20(%ebp)
	jmp	Lj878
Lj877:
	movl	-24(%ebp),%edx
	movl	$0,%ecx
	subl	$262,%edx
	sbbl	$0,%ecx
	movl	-24(%ebp),%ebx
	movl	$0,%eax
	addl	%ebx,%edx
	adcl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	movl	$0,%ebx
	cmpl	%ebx,%ecx
	jl	Lj879
	jg	Lj880
	cmpl	%eax,%edx
	jbe	Lj879
	jmp	Lj880
Lj879:
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-24(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	movl	-4(%ebp),%edx
	movl	48(%edx),%edx
	movl	-24(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,104(%eax)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,100(%eax)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	subl	%eax,84(%edx)
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%edx
	movl	-8(%ebp),%eax
	leal	(%edx,%eax,2),%eax
	movl	%eax,-16(%ebp)
	.align 2
Lj891:
	subl	$2,-16(%ebp)
	movl	-16(%ebp),%eax
	movzwl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jae	Lj896
	jmp	Lj897
Lj896:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	-16(%ebp),%edx
	movw	%ax,(%edx)
	jmp	Lj900
Lj897:
	movl	-16(%ebp),%eax
	movw	$0,(%eax)
Lj900:
	decl	-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj893
	jmp	Lj891
Lj893:
	movl	-24(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%edx
	movl	-8(%ebp),%eax
	leal	(%edx,%eax,2),%eax
	movl	%eax,-16(%ebp)
	.align 2
Lj907:
	subl	$2,-16(%ebp)
	movl	-16(%ebp),%eax
	movzwl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jae	Lj912
	jmp	Lj913
Lj912:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	-16(%ebp),%edx
	movw	%ax,(%edx)
	jmp	Lj916
Lj913:
	movl	-16(%ebp),%eax
	movw	$0,(%eax)
Lj916:
	decl	-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj909
	jmp	Lj907
Lj909:
	movl	-24(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj880:
Lj878:
Lj875:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj919
	jmp	Lj920
Lj919:
	jmp	Lj860
Lj920:
	movl	-4(%ebp),%eax
	movl	48(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	100(%eax),%eax
	movl	108(%edx),%edx
	addl	%edx,%eax
	leal	(%ecx,%eax,1),%edx
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_ZDEFLATE_READ_BUF$Z_STREAMP$PBYTE$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,108(%eax)
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	cmpl	$3,%eax
	jae	Lj929
	jmp	Lj930
Lj929:
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	movl	-4(%ebp),%eax
	movl	%edx,64(%eax)
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	incl	%eax
	movzbl	(%edx,%eax,1),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	64(%eax),%eax
	movl	80(%ecx),%ecx
	shll	%cl,%eax
	xorl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	andl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,64(%eax)
Lj930:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	cmpl	$262,%eax
	jae	Lj866
	jmp	Lj935
Lj935:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj866
	jmp	Lj864
Lj866:
Lj860:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_FLUSH_BLOCK_ONLY$DEFLATE_STATE$BOOLEAN
_ZDEFLATE_FLUSH_BLOCK_ONLY$DEFLATE_STATE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	cmpl	$0,%eax
	jge	Lj938
	jmp	Lj939
Lj938:
	movb	-8(%ebp),%al
	movb	%al,(%esp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	100(%eax),%ecx
	movl	84(%ebx),%eax
	subl	%eax,%ecx
	movl	-4(%ebp),%eax
	call	L_TREES__TR_FLUSH_BLOCK$DEFLATE_STATE$PBYTE$LONGINT$BOOLEAN$$LONGINT$stub
	jmp	Lj948
Lj939:
	movb	-8(%ebp),%al
	movb	%al,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	100(%eax),%ecx
	movl	84(%edx),%eax
	subl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_TREES__TR_FLUSH_BLOCK$DEFLATE_STATE$PBYTE$LONGINT$BOOLEAN$$LONGINT$stub
Lj948:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	movl	%eax,84(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_ZDEFLATE_FLUSH_PENDING$Z_STREAM$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_DEFLATE_STORED$DEFLATE_STATE$LONGINT$$BLOCK_STATE
_ZDEFLATE_DEFLATE_STORED$DEFLATE_STATE$LONGINT$$BLOCK_STATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$65535,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	subl	$5,%eax
	cmpl	-16(%ebp),%eax
	jl	Lj965
	jmp	Lj966
Lj965:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	subl	$5,%eax
	movl	%eax,-16(%ebp)
Lj966:
	jmp	Lj970
	.align 2
Lj969:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	cmpl	$1,%eax
	jbe	Lj972
	jmp	Lj973
Lj972:
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_FILL_WINDOW$DEFLATE_STATE$stub
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	testl	%eax,%eax
	je	Lj978
	jmp	Lj977
Lj978:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj976
	jmp	Lj977
Lj976:
	movl	$0,-12(%ebp)
	jmp	Lj961
Lj977:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	testl	%eax,%eax
	je	Lj981
	jmp	Lj982
Lj981:
	jmp	Lj971
Lj982:
Lj973:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	108(%eax),%eax
	addl	%eax,100(%edx)
	movl	-4(%ebp),%eax
	movl	$0,108(%eax)
	movl	-4(%ebp),%eax
	movl	84(%eax),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	testl	%eax,%eax
	je	Lj987
	jmp	Lj989
Lj989:
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	cmpl	-20(%ebp),%eax
	jge	Lj987
	jmp	Lj988
Lj987:
	movl	-4(%ebp),%eax
	movl	100(%eax),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,108(%eax)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,100(%edx)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_ZDEFLATE_FLUSH_BLOCK_ONLY$DEFLATE_STATE$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj998
	jmp	Lj999
Lj998:
	movl	$0,-12(%ebp)
	jmp	Lj961
Lj999:
Lj988:
	movl	-4(%ebp),%eax
	movl	100(%eax),%edx
	movl	$0,%ecx
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	$0,%ebx
	subl	%eax,%edx
	sbbl	%ebx,%ecx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	$0,%ebx
	subl	$262,%eax
	sbbl	$0,%ebx
	cmpl	%ebx,%ecx
	jg	Lj1002
	jl	Lj1003
	cmpl	%eax,%edx
	jae	Lj1002
	jmp	Lj1003
Lj1002:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_ZDEFLATE_FLUSH_BLOCK_ONLY$DEFLATE_STATE$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj1008
	jmp	Lj1009
Lj1008:
	movl	$0,-12(%ebp)
	jmp	Lj961
Lj1009:
Lj1003:
Lj970:
	jmp	Lj969
Lj971:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	seteb	%dl
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_FLUSH_BLOCK_ONLY$DEFLATE_STATE$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj1016
	jmp	Lj1017
Lj1016:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	je	Lj1018
	jmp	Lj1019
Lj1018:
	movl	$2,-12(%ebp)
	jmp	Lj1022
Lj1019:
	movl	$0,-12(%ebp)
Lj1022:
	jmp	Lj961
Lj1017:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	je	Lj1025
	jmp	Lj1026
Lj1025:
	movl	$3,-12(%ebp)
	jmp	Lj1029
Lj1026:
	movl	$1,-12(%ebp)
Lj1029:
Lj961:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_DEFLATE_FAST$DEFLATE_STATE$LONGINT$$BLOCK_STATE
_ZDEFLATE_DEFLATE_FAST$DEFLATE_STATE$LONGINT$$BLOCK_STATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj1037
	.align 2
Lj1036:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	cmpl	$262,%eax
	jb	Lj1039
	jmp	Lj1040
Lj1039:
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_FILL_WINDOW$DEFLATE_STATE$stub
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	cmpl	$262,%eax
	jb	Lj1045
	jmp	Lj1044
Lj1045:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1043
	jmp	Lj1044
Lj1043:
	movl	$0,-12(%ebp)
	jmp	Lj1032
Lj1044:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	testl	%eax,%eax
	je	Lj1048
	jmp	Lj1049
Lj1048:
	jmp	Lj1038
Lj1049:
Lj1040:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	cmpl	$3,%eax
	jae	Lj1050
	jmp	Lj1051
Lj1050:
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	100(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_INSERT_STRING$DEFLATE_STATE$LONGWORD$LONGWORD$stub
Lj1051:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1060
	jmp	Lj1059
Lj1060:
	movl	-4(%ebp),%eax
	movl	100(%eax),%edx
	movl	$0,%ecx
	movl	-16(%ebp),%eax
	movl	$0,%ebx
	subl	%eax,%edx
	sbbl	%ebx,%ecx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	$0,%ebx
	subl	$262,%eax
	sbbl	$0,%ebx
	cmpl	%ebx,%ecx
	jl	Lj1058
	jg	Lj1059
	cmpl	%eax,%edx
	jbe	Lj1058
	jmp	Lj1059
Lj1058:
	movl	-4(%ebp),%eax
	movl	124(%eax),%eax
	cmpl	$2,%eax
	jne	Lj1061
	jmp	Lj1062
Lj1061:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_LONGEST_MATCH$DEFLATE_STATE$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,88(%edx)
Lj1062:
Lj1059:
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	cmpl	$3,%eax
	jae	Lj1069
	jmp	Lj1070
Lj1069:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	100(%eax),%edx
	movl	104(%ecx),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	88(%eax),%ecx
	subl	$3,%ecx
	movl	-4(%ebp),%eax
	call	L_TREES__TR_TALLY$DEFLATE_STATE$LONGWORD$LONGWORD$$BOOLEAN$stub
	movb	%al,-17(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	88(%eax),%eax
	subl	%eax,108(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	88(%eax),%eax
	cmpl	5816(%edx),%eax
	jbe	Lj1081
	jmp	Lj1080
Lj1081:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	cmpl	$3,%eax
	jae	Lj1079
	jmp	Lj1080
Lj1079:
	movl	-4(%ebp),%eax
	decl	88(%eax)
	.align 2
Lj1082:
	movl	-4(%ebp),%eax
	incl	100(%eax)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	100(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_INSERT_STRING$DEFLATE_STATE$LONGWORD$LONGWORD$stub
	movl	-4(%ebp),%eax
	decl	88(%eax)
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	testl	%eax,%eax
	je	Lj1084
	jmp	Lj1082
Lj1084:
	movl	-4(%ebp),%eax
	incl	100(%eax)
	jmp	Lj1091
Lj1080:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	88(%eax),%eax
	addl	%eax,100(%edx)
	movl	-4(%ebp),%eax
	movl	$0,88(%eax)
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	movl	-4(%ebp),%eax
	movl	%edx,64(%eax)
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	incl	%eax
	movzbl	(%edx,%eax,1),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	64(%eax),%eax
	movl	80(%ecx),%ecx
	shll	%cl,%eax
	xorl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	andl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,64(%eax)
Lj1091:
	jmp	Lj1098
Lj1070:
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	movzbl	(%edx,%eax,1),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_TREES__TR_TALLY$DEFLATE_STATE$LONGWORD$LONGWORD$$BOOLEAN$stub
	movb	%al,-17(%ebp)
	movl	-4(%ebp),%eax
	decl	108(%eax)
	movl	-4(%ebp),%eax
	incl	100(%eax)
Lj1098:
	cmpb	$0,-17(%ebp)
	jne	Lj1107
	jmp	Lj1108
Lj1107:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_ZDEFLATE_FLUSH_BLOCK_ONLY$DEFLATE_STATE$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj1113
	jmp	Lj1114
Lj1113:
	movl	$0,-12(%ebp)
	jmp	Lj1032
Lj1114:
Lj1108:
Lj1037:
	jmp	Lj1036
Lj1038:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	seteb	%dl
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_FLUSH_BLOCK_ONLY$DEFLATE_STATE$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj1121
	jmp	Lj1122
Lj1121:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	je	Lj1123
	jmp	Lj1124
Lj1123:
	movl	$2,-12(%ebp)
	jmp	Lj1127
Lj1124:
	movl	$0,-12(%ebp)
Lj1127:
	jmp	Lj1032
Lj1122:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	je	Lj1130
	jmp	Lj1131
Lj1130:
	movl	$3,-12(%ebp)
	jmp	Lj1134
Lj1131:
	movl	$1,-12(%ebp)
Lj1134:
Lj1032:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZDEFLATE_DEFLATE_SLOW$DEFLATE_STATE$LONGINT$$BLOCK_STATE
_ZDEFLATE_DEFLATE_SLOW$DEFLATE_STATE$LONGINT$$BLOCK_STATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	.align 2
Lj1141:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	cmpl	$262,%eax
	jb	Lj1144
	jmp	Lj1145
Lj1144:
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_FILL_WINDOW$DEFLATE_STATE$stub
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	cmpl	$262,%eax
	jb	Lj1150
	jmp	Lj1149
Lj1150:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1148
	jmp	Lj1149
Lj1148:
	movl	$0,-12(%ebp)
	jmp	Lj1137
Lj1149:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	testl	%eax,%eax
	je	Lj1153
	jmp	Lj1154
Lj1153:
	jmp	Lj1143
Lj1154:
Lj1145:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	cmpl	$3,%eax
	jae	Lj1155
	jmp	Lj1156
Lj1155:
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	100(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_INSERT_STRING$DEFLATE_STATE$LONGWORD$LONGWORD$stub
Lj1156:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	movl	%eax,112(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	movl	%eax,92(%edx)
	movl	-4(%ebp),%eax
	movl	$2,88(%eax)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1172
	jmp	Lj1170
Lj1172:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	112(%eax),%eax
	cmpl	5816(%edx),%eax
	jb	Lj1171
	jmp	Lj1170
Lj1171:
	movl	-4(%ebp),%eax
	movl	100(%eax),%ecx
	movl	$0,%ebx
	movl	-16(%ebp),%eax
	movl	$0,%edx
	subl	%eax,%ecx
	sbbl	%edx,%ebx
	movl	-4(%ebp),%eax
	movl	36(%eax),%edx
	movl	$0,%eax
	subl	$262,%edx
	sbbl	$0,%eax
	cmpl	%eax,%ebx
	jl	Lj1169
	jg	Lj1170
	cmpl	%edx,%ecx
	jbe	Lj1169
	jmp	Lj1170
Lj1169:
	movl	-4(%ebp),%eax
	movl	124(%eax),%eax
	cmpl	$2,%eax
	jne	Lj1173
	jmp	Lj1174
Lj1173:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_LONGEST_MATCH$DEFLATE_STATE$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,88(%edx)
Lj1174:
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	cmpl	$5,%eax
	jbe	Lj1183
	jmp	Lj1182
Lj1183:
	movl	-4(%ebp),%eax
	movl	124(%eax),%eax
	cmpl	$1,%eax
	je	Lj1181
	jmp	Lj1184
Lj1184:
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	cmpl	$3,%eax
	je	Lj1185
	jmp	Lj1182
Lj1185:
	movl	-4(%ebp),%eax
	movl	100(%eax),%ebx
	movl	$0,%ecx
	movl	-4(%ebp),%eax
	movl	104(%eax),%edx
	movl	$0,%eax
	subl	%edx,%ebx
	sbbl	%eax,%ecx
	cmpl	$0,%ecx
	jg	Lj1181
	jl	Lj1182
	cmpl	$4096,%ebx
	ja	Lj1181
	jmp	Lj1182
Lj1181:
	movl	-4(%ebp),%eax
	movl	$2,88(%eax)
Lj1182:
Lj1170:
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	cmpl	$3,%eax
	jae	Lj1190
	jmp	Lj1189
Lj1190:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	88(%eax),%eax
	cmpl	112(%edx),%eax
	jbe	Lj1188
	jmp	Lj1189
Lj1188:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	100(%eax),%edx
	movl	108(%ecx),%eax
	addl	%eax,%edx
	subl	$3,%edx
	movl	%edx,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	100(%eax),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	112(%eax),%ecx
	subl	$3,%ecx
	movl	-4(%ebp),%eax
	call	L_TREES__TR_TALLY$DEFLATE_STATE$LONGWORD$LONGWORD$$BOOLEAN$stub
	movb	%al,-17(%ebp)
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	decl	%eax
	movl	-4(%ebp),%edx
	subl	%eax,108(%edx)
	movl	-4(%ebp),%eax
	subl	$2,112(%eax)
	.align 2
Lj1201:
	movl	-4(%ebp),%eax
	incl	100(%eax)
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	cmpl	-24(%ebp),%eax
	jbe	Lj1204
	jmp	Lj1205
Lj1204:
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	100(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_INSERT_STRING$DEFLATE_STATE$LONGWORD$LONGWORD$stub
Lj1205:
	movl	-4(%ebp),%eax
	decl	112(%eax)
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	testl	%eax,%eax
	je	Lj1203
	jmp	Lj1201
Lj1203:
	movl	-4(%ebp),%eax
	movb	$0,96(%eax)
	movl	-4(%ebp),%eax
	movl	$2,88(%eax)
	movl	-4(%ebp),%eax
	incl	100(%eax)
	cmpb	$0,-17(%ebp)
	jne	Lj1216
	jmp	Lj1217
Lj1216:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_ZDEFLATE_FLUSH_BLOCK_ONLY$DEFLATE_STATE$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj1222
	jmp	Lj1223
Lj1222:
	movl	$0,-12(%ebp)
	jmp	Lj1137
Lj1223:
Lj1217:
	jmp	Lj1226
Lj1189:
	movl	-4(%ebp),%eax
	cmpb	$0,96(%eax)
	jne	Lj1227
	jmp	Lj1228
Lj1227:
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	decl	%eax
	movzbl	(%edx,%eax,1),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_TREES__TR_TALLY$DEFLATE_STATE$LONGWORD$LONGWORD$$BOOLEAN$stub
	movb	%al,-17(%ebp)
	cmpb	$0,-17(%ebp)
	jne	Lj1237
	jmp	Lj1238
Lj1237:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_ZDEFLATE_FLUSH_BLOCK_ONLY$DEFLATE_STATE$BOOLEAN$stub
Lj1238:
	movl	-4(%ebp),%eax
	incl	100(%eax)
	movl	-4(%ebp),%eax
	decl	108(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj1243
	jmp	Lj1244
Lj1243:
	movl	$0,-12(%ebp)
	jmp	Lj1137
Lj1244:
	jmp	Lj1247
Lj1228:
	movl	-4(%ebp),%eax
	movb	$1,96(%eax)
	movl	-4(%ebp),%eax
	incl	100(%eax)
	movl	-4(%ebp),%eax
	decl	108(%eax)
Lj1247:
Lj1226:
	jmp	Lj1141
Lj1143:
	movl	-4(%ebp),%eax
	cmpb	$0,96(%eax)
	jne	Lj1250
	jmp	Lj1251
Lj1250:
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	decl	%eax
	movzbl	(%edx,%eax,1),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_TREES__TR_TALLY$DEFLATE_STATE$LONGWORD$LONGWORD$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movb	$0,96(%eax)
Lj1251:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	seteb	%dl
	movl	-4(%ebp),%eax
	call	L_ZDEFLATE_FLUSH_BLOCK_ONLY$DEFLATE_STATE$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj1264
	jmp	Lj1265
Lj1264:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	je	Lj1266
	jmp	Lj1267
Lj1266:
	movl	$2,-12(%ebp)
	jmp	Lj1270
Lj1267:
	movl	$0,-12(%ebp)
Lj1270:
	jmp	Lj1137
Lj1265:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	je	Lj1273
	jmp	Lj1274
Lj1273:
	movl	$3,-12(%ebp)
	jmp	Lj1277
Lj1274:
	movl	$1,-12(%ebp)
Lj1277:
Lj1137:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_ZDEFLATE
_THREADVARLIST_ZDEFLATE:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	_TC_ZDEFLATE_DEFLATE_COPYRIGHT
_TC_ZDEFLATE_DEFLATE_COPYRIGHT:
	.byte	52
	.ascii	" deflate 1.1.2 Copyright 1995-1998 Jean-loup Gailly"
	.ascii	" "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                  "

.data
	.align 2
.globl	_TC_ZDEFLATE_CONFIGURATION_TABLE
_TC_ZDEFLATE_CONFIGURATION_TABLE:
	.short	0,0,0,0
	.long	_ZDEFLATE_DEFLATE_STORED$DEFLATE_STATE$LONGINT$$BLOCK_STATE
	.short	4,4,8,4
	.long	_ZDEFLATE_DEFLATE_FAST$DEFLATE_STATE$LONGINT$$BLOCK_STATE
	.short	4,5,16,8
	.long	_ZDEFLATE_DEFLATE_FAST$DEFLATE_STATE$LONGINT$$BLOCK_STATE
	.short	4,6,32,32
	.long	_ZDEFLATE_DEFLATE_FAST$DEFLATE_STATE$LONGINT$$BLOCK_STATE
	.short	4,4,16,16
	.long	_ZDEFLATE_DEFLATE_SLOW$DEFLATE_STATE$LONGINT$$BLOCK_STATE
	.short	8,16,32,32
	.long	_ZDEFLATE_DEFLATE_SLOW$DEFLATE_STATE$LONGINT$$BLOCK_STATE
	.short	8,16,128,128
	.long	_ZDEFLATE_DEFLATE_SLOW$DEFLATE_STATE$LONGINT$$BLOCK_STATE
	.short	8,32,128,256
	.long	_ZDEFLATE_DEFLATE_SLOW$DEFLATE_STATE$LONGINT$$BLOCK_STATE
	.short	32,128,258,1024
	.long	_ZDEFLATE_DEFLATE_SLOW$DEFLATE_STATE$LONGINT$$BLOCK_STATE
	.short	32,258,258,4096
	.long	_ZDEFLATE_DEFLATE_SLOW$DEFLATE_STATE$LONGINT$$BLOCK_STATE

.const
	.align 2
.globl	_$ZDEFLATE$_Ld1
_$ZDEFLATE$_Ld1:
	.ascii	"\000\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub:
.indirect_symbol _ZBASE_ZERROR$LONGINT$$SHORTSTRING
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

L_ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATERESET$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATERESET$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATEINIT2_$crcDF54DF8C$stub:
.indirect_symbol _ZDEFLATE_DEFLATEINIT2_$crcDF54DF8C
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ADLER_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$stub:
.indirect_symbol _ADLER_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD
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

L_ZDEFLATE_INSERT_STRING$DEFLATE_STATE$LONGWORD$LONGWORD$stub:
.indirect_symbol _ZDEFLATE_INSERT_STRING$DEFLATE_STATE$LONGWORD$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES__TR_INIT$DEFLATE_STATE$stub:
.indirect_symbol _TREES__TR_INIT$DEFLATE_STATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_LM_INIT$DEFLATE_STATE$stub:
.indirect_symbol _ZDEFLATE_LM_INIT$DEFLATE_STATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_PUTSHORTMSB$DEFLATE_STATE$LONGWORD$stub:
.indirect_symbol _ZDEFLATE_PUTSHORTMSB$DEFLATE_STATE$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_FLUSH_PENDING$Z_STREAM$stub:
.indirect_symbol _ZDEFLATE_FLUSH_PENDING$Z_STREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES__TR_ALIGN$DEFLATE_STATE$stub:
.indirect_symbol _TREES__TR_ALIGN$DEFLATE_STATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES__TR_STORED_BLOCK$DEFLATE_STATE$PBYTE$LONGINT$BOOLEAN$stub:
.indirect_symbol _TREES__TR_STORED_BLOCK$DEFLATE_STATE$PBYTE$LONGINT$BOOLEAN
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_READ_BUF$Z_STREAMP$PBYTE$LONGWORD$$LONGWORD$stub:
.indirect_symbol _ZDEFLATE_READ_BUF$Z_STREAMP$PBYTE$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES__TR_FLUSH_BLOCK$DEFLATE_STATE$PBYTE$LONGINT$BOOLEAN$$LONGINT$stub:
.indirect_symbol _TREES__TR_FLUSH_BLOCK$DEFLATE_STATE$PBYTE$LONGINT$BOOLEAN$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_FILL_WINDOW$DEFLATE_STATE$stub:
.indirect_symbol _ZDEFLATE_FILL_WINDOW$DEFLATE_STATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_FLUSH_BLOCK_ONLY$DEFLATE_STATE$BOOLEAN$stub:
.indirect_symbol _ZDEFLATE_FLUSH_BLOCK_ONLY$DEFLATE_STATE$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_LONGEST_MATCH$DEFLATE_STATE$LONGWORD$$LONGWORD$stub:
.indirect_symbol _ZDEFLATE_LONGEST_MATCH$DEFLATE_STATE$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES__TR_TALLY$DEFLATE_STATE$LONGWORD$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _TREES__TR_TALLY$DEFLATE_STATE$LONGWORD$LONGWORD$$BOOLEAN
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
L_TC_ZBASE_ZLIB_VERSION$non_lazy_ptr:
.indirect_symbol _TC_ZBASE_ZLIB_VERSION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_ZDEFLATE_CONFIGURATION_TABLE$non_lazy_ptr:
.indirect_symbol _TC_ZDEFLATE_CONFIGURATION_TABLE
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

