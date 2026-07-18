# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_GZIO_GZOPEN$SHORTSTRING$SHORTSTRING$$POINTER
_GZIO_GZOPEN$SHORTSTRING$SHORTSTRING$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$680,%esp
	movl	%ebx,-668(%ebp)
	movl	%esi,-664(%ebp)
	movl	%edi,-660(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	leal	-397(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movl	-8(%ebp),%edx
	leal	-653(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movzbl	-397(%ebp),%eax
	testl	%eax,%eax
	je	Lj5
	jmp	Lj7
Lj7:
	movzbl	-653(%ebp),%eax
	testl	%eax,%eax
	je	Lj5
	jmp	Lj6
Lj5:
	movl	$0,-12(%ebp)
	jmp	Lj3
Lj6:
	leal	-32(%ebp),%eax
	movl	$832,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	cmpl	$0,-32(%ebp)
	jne	Lj15
	jmp	Lj14
Lj14:
	movl	$0,-12(%ebp)
	jmp	Lj3
Lj15:
	movl	$-1,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	-32(%ebp),%eax
	movl	$0,(%eax)
	movl	-32(%ebp),%eax
	movl	$0,12(%eax)
	movl	-32(%ebp),%eax
	movl	$0,4(%eax)
	movl	-32(%ebp),%eax
	movl	$0,16(%eax)
	movl	-32(%ebp),%eax
	movl	$0,296(%eax)
	movl	-32(%ebp),%eax
	movb	$0,300(%eax)
	movl	-32(%ebp),%eax
	movl	$0,652(%eax)
	movl	-32(%ebp),%eax
	movl	$0,656(%eax)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$stub
	movl	-32(%ebp),%edx
	movl	%eax,660(%edx)
	movl	-32(%ebp),%eax
	movb	$0,664(%eax)
	movl	-32(%ebp),%eax
	movb	$0,824(%eax)
	movl	-32(%ebp),%eax
	leal	744(%eax),%eax
	leal	-397(%ebp),%ecx
	movl	$79,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-32(%ebp),%eax
	movb	$0,825(%eax)
	movzbl	-653(%ebp),%eax
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jb	Lj59
	decl	-16(%ebp)
	.align 2
Lj60:
	incl	-16(%ebp)
	movzbl	-16(%ebp),%edx
	movb	-653(%ebp,%edx,1),%dl
	cmpb	$48,%dl
	jb	Lj62
	subb	$48,%dl
	subb	$9,%dl
	jbe	Lj66
	subb	$40,%dl
	je	Lj65
	subb	$5,%dl
	je	Lj67
	subb	$2,%dl
	je	Lj68
	subb	$10,%dl
	je	Lj63
	subb	$5,%dl
	je	Lj64
	jmp	Lj62
Lj63:
	movl	-32(%ebp),%edx
	movb	$114,825(%edx)
	jmp	Lj61
Lj64:
	movl	-32(%ebp),%edx
	movb	$119,825(%edx)
	jmp	Lj61
Lj65:
	movl	-32(%ebp),%edx
	movb	$97,825(%edx)
	jmp	Lj61
Lj66:
	movzbl	-16(%ebp),%edx
	movzbl	-653(%ebp,%edx,1),%edx
	subl	$48,%edx
	movl	%edx,-24(%ebp)
	jmp	Lj61
Lj67:
	movl	$1,-28(%ebp)
	jmp	Lj61
Lj68:
	movl	$2,-28(%ebp)
	jmp	Lj61
Lj62:
Lj61:
	cmpl	-16(%ebp),%eax
	ja	Lj60
Lj59:
	movl	-32(%ebp),%eax
	movb	825(%eax),%al
	testb	%al,%al
	je	Lj81
	jmp	Lj82
Lj81:
	leal	-32(%ebp),%eax
	call	L_GZIO_DESTROY$GZ_STREAMP$$LONGINT$stub
	movl	$0,-12(%ebp)
	jmp	Lj3
Lj82:
	movl	-32(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$97,%al
	je	Lj87
	jmp	Lj89
Lj89:
	movl	-32(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$119,%al
	je	Lj87
	jmp	Lj88
Lj87:
	movb	$1,-141(%ebp)
	jmp	Lj90
Lj88:
	movb	$0,-141(%ebp)
Lj90:
	cmpb	$0,-141(%ebp)
	jne	Lj91
	jmp	Lj92
Lj91:
	movl	$8,4(%esp)
	movl	$-15,8(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-32(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	$8,%ecx
	call	L_ZDEFLATE_DEFLATEINIT2$Z_STREAM$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-32(%ebp),%eax
	leal	656(%eax),%eax
	movl	$16384,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-32(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	656(%eax),%eax
	movl	%eax,12(%edx)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj113
	jmp	Lj115
Lj115:
	movl	-32(%ebp),%eax
	movl	656(%eax),%eax
	testl	%eax,%eax
	je	Lj113
	jmp	Lj114
Lj113:
	leal	-32(%ebp),%eax
	call	L_GZIO_DESTROY$GZ_STREAMP$$LONGINT$stub
	movl	$0,-12(%ebp)
	jmp	Lj3
Lj114:
	jmp	Lj120
Lj92:
	movl	-32(%ebp),%eax
	leal	652(%eax),%eax
	movl	$16384,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-32(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	652(%eax),%eax
	movl	%eax,(%edx)
	movl	$296,(%esp)
	movl	-32(%ebp),%eax
	movl	L_TC_ZBASE_ZLIB_VERSION$non_lazy_ptr-Lj4(%ebx),%ecx
	movl	$-15,%edx
	call	L_ZINFLATE_INFLATEINIT2_$Z_STREAM$LONGINT$SHORTSTRING$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj137
	jmp	Lj139
Lj139:
	movl	-32(%ebp),%eax
	movl	652(%eax),%eax
	testl	%eax,%eax
	je	Lj137
	jmp	Lj138
Lj137:
	leal	-32(%ebp),%eax
	call	L_GZIO_DESTROY$GZ_STREAMP$$LONGINT$stub
	movl	$0,-12(%ebp)
	jmp	Lj3
Lj138:
Lj120:
	movl	-32(%ebp),%eax
	movl	$16384,16(%eax)
	movl	-32(%ebp),%eax
	leal	320(%eax),%eax
	leal	-397(%ebp),%edx
	call	L_SYSTEM_ASSIGN$file$SHORTSTRING$stub
	leal	-128(%ebp),%edx
	leal	-397(%ebp),%eax
	call	L_BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT$stub
	cmpl	$0,%eax
	setgeb	-140(%ebp)
	movb	$0,-139(%ebp)
	movl	-32(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$97,%al
	je	Lj161
	jmp	Lj160
Lj161:
	movb	-140(%ebp),%al
	testb	%al,%al
	je	Lj158
	jmp	Lj160
Lj160:
	movl	-32(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$119,%al
	je	Lj158
	jmp	Lj159
Lj158:
	movl	-32(%ebp),%eax
	leal	320(%eax),%eax
	movl	$1,%edx
	call	L_SYSTEM_REWRITE$file$LONGINT$stub
	jmp	Lj166
Lj159:
	movl	-32(%ebp),%eax
	leal	320(%eax),%eax
	movl	$1,%edx
	call	L_SYSTEM_RESET$file$LONGINT$stub
	movl	-32(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$97,%al
	je	Lj171
	jmp	Lj172
Lj171:
	movb	$1,-139(%ebp)
Lj172:
Lj166:
	call	L_SYSTEM_IORESULT$$WORD$stub
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj175
	jmp	Lj176
Lj175:
	leal	-32(%ebp),%eax
	call	L_GZIO_DESTROY$GZ_STREAMP$$LONGINT$stub
	movl	$0,-12(%ebp)
	jmp	Lj3
Lj176:
	cmpb	$0,-139(%ebp)
	jne	Lj181
	jmp	Lj182
Lj181:
	movl	-32(%ebp),%eax
	leal	320(%eax),%eax
	call	L_SYSTEM_FILESIZE$file$$INT64$stub
	movl	%eax,%esi
	movl	%edx,%edi
	call	LFPC_IOCHECK$stub
	movl	%edi,4(%esp)
	movl	%esi,(%esp)
	movl	-32(%ebp),%eax
	leal	320(%eax),%eax
	call	L_SYSTEM_SEEK$file$INT64$stub
	call	LFPC_IOCHECK$stub
Lj182:
	movl	-32(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$97,%al
	je	Lj189
	jmp	Lj190
Lj189:
	movl	-32(%ebp),%eax
	movb	$119,825(%eax)
Lj190:
	cmpb	$0,-141(%ebp)
	jne	Lj193
	jmp	Lj194
Lj193:
	movl	L_TC_GZIO_GZ_MAGIC$non_lazy_ptr-Lj4(%ebx),%eax
	movb	(%eax),%al
	movb	%al,-138(%ebp)
	movl	L_TC_GZIO_GZ_MAGIC$non_lazy_ptr-Lj4(%ebx),%eax
	movb	1(%eax),%al
	movb	%al,-137(%ebp)
	movb	$8,-136(%ebp)
	movb	$0,-135(%ebp)
	movb	$0,-134(%ebp)
	movb	$0,-133(%ebp)
	movb	$0,-132(%ebp)
	movb	$0,-131(%ebp)
	movb	$0,-130(%ebp)
	movb	$0,-129(%ebp)
	movl	-32(%ebp),%eax
	leal	320(%eax),%eax
	leal	-138(%ebp),%edx
	movl	$10,%ecx
	call	L_SYSTEM_BLOCKWRITE$file$formal$LONGINT$stub
	call	LFPC_IOCHECK$stub
	movl	-32(%ebp),%eax
	movl	$10,828(%eax)
	jmp	Lj223
Lj194:
	movl	-32(%ebp),%eax
	call	L_GZIO_CHECK_HEADER$GZ_STREAMP$stub
	movl	-32(%ebp),%eax
	leal	320(%eax),%eax
	call	L_SYSTEM_FILEPOS$file$$INT64$stub
	movl	%eax,%esi
	movl	%edx,%edi
	call	LFPC_IOCHECK$stub
	movl	-32(%ebp),%eax
	movl	4(%eax),%edx
	movl	$0,%eax
	subl	%edx,%esi
	sbbl	%eax,%edi
	movl	-32(%ebp),%eax
	movl	%esi,828(%eax)
Lj223:
	movl	-32(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj3:
	movl	-12(%ebp),%eax
	movl	-668(%ebp),%ebx
	movl	-664(%ebp),%esi
	movl	-660(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_GZIO_GZSETPARAMS$POINTER$LONGINT$LONGINT$$LONGINT
_GZIO_GZSETPARAMS$POINTER$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj236
	jmp	Lj238
Lj238:
	movl	-20(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$119,%al
	jne	Lj236
	jmp	Lj237
Lj236:
	movl	$-2,-16(%ebp)
	jmp	Lj232
Lj237:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj241
	jmp	Lj242
Lj241:
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	656(%eax),%eax
	movl	%eax,12(%edx)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	656(%eax),%edx
	movl	-20(%ebp),%eax
	leal	320(%eax),%eax
	movl	$16384,%ecx
	call	L_SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT$stub
	call	LFPC_IOCHECK$stub
	movl	-24(%ebp),%eax
	cmpl	$16384,%eax
	jne	Lj253
	jmp	Lj254
Lj253:
	movl	-20(%ebp),%eax
	movl	$-1,296(%eax)
Lj254:
	movl	-20(%ebp),%eax
	movl	$16384,16(%eax)
Lj242:
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_ZDEFLATE_DEFLATEPARAMS$Z_STREAM$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
Lj232:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,300(%eax)
	jne	Lj269
	jmp	Lj270
Lj269:
	movl	$-1,-8(%ebp)
	jmp	Lj267
Lj270:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj273
	jmp	Lj274
Lj273:
	movl	-4(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	652(%eax),%edx
	movl	-4(%ebp),%eax
	leal	320(%eax),%eax
	movl	$16384,%ecx
	call	L_SYSTEM_BLOCKREAD$file$formal$LONGWORD$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj283
	jmp	Lj284
Lj283:
	movl	-4(%ebp),%eax
	movb	$1,300(%eax)
	call	L_SYSTEM_IORESULT$$WORD$stub
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj287
	jmp	Lj288
Lj287:
	movl	-4(%ebp),%eax
	movl	$-1,296(%eax)
Lj288:
	movl	$-1,-8(%ebp)
	jmp	Lj267
Lj284:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	652(%eax),%eax
	movl	%eax,(%edx)
Lj274:
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	incl	(%eax)
Lj267:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GZIO_GETLONG$GZ_STREAMP$$LONGWORD
_GZIO_GETLONG$GZ_STREAMP$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub
	movb	%al,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub
	movb	%al,-11(%ebp)
	movl	-4(%ebp),%eax
	call	L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub
	movb	%al,-10(%ebp)
	movl	-4(%ebp),%eax
	call	L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movb	-16(%ebp),%al
	movb	%al,-9(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj317
	jmp	Lj318
Lj317:
	movl	-4(%ebp),%eax
	movl	$-3,296(%eax)
Lj318:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GZIO_CHECK_HEADER$GZ_STREAMP
_GZIO_CHECK_HEADER$GZ_STREAMP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj324
Lj324:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj327:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	call	L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%edx
	movl	L_TC_GZIO_GZ_MAGIC$non_lazy_ptr-Lj324(%ebx),%eax
	movzbl	(%eax,%edx,1),%eax
	cmpl	-20(%ebp),%eax
	jne	Lj332
	jmp	Lj333
Lj332:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj334
	jmp	Lj335
Lj334:
	movl	-4(%ebp),%eax
	incl	4(%eax)
	movl	-4(%ebp),%eax
	decl	(%eax)
Lj335:
	movl	-20(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj336
	jmp	Lj337
Lj336:
	movl	-4(%ebp),%eax
	incl	4(%eax)
	movl	-4(%ebp),%eax
	decl	(%eax)
	movl	-4(%ebp),%eax
	movb	$1,824(%eax)
Lj337:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj340
	jmp	Lj341
Lj340:
	movl	-4(%ebp),%eax
	movl	$0,296(%eax)
	jmp	Lj344
Lj341:
	movl	-4(%ebp),%eax
	movl	$1,296(%eax)
Lj344:
	jmp	Lj323
Lj333:
	cmpl	$1,-16(%ebp)
	jb	Lj327
	movl	-4(%ebp),%eax
	call	L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$8,%eax
	jne	Lj355
	jmp	Lj357
Lj357:
	movl	-12(%ebp),%eax
	andl	$224,%eax
	testl	%eax,%eax
	jne	Lj355
	jmp	Lj356
Lj355:
	movl	-4(%ebp),%eax
	movl	$-3,296(%eax)
	jmp	Lj323
Lj356:
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj362:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	call	L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub
	cmpl	$5,-16(%ebp)
	jb	Lj362
	movl	-12(%ebp),%eax
	andl	$4,%eax
	testl	%eax,%eax
	jne	Lj365
	jmp	Lj366
Lj365:
	movl	-4(%ebp),%eax
	call	L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	call	L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub
	shll	$8,%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj376
	.align 2
Lj375:
	decl	-16(%ebp)
Lj376:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj378
	jmp	Lj377
Lj378:
	movl	-4(%ebp),%eax
	call	L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub
	cmpl	$-1,%eax
	jne	Lj375
	jmp	Lj377
Lj377:
Lj366:
	movl	-12(%ebp),%eax
	andl	$8,%eax
	testl	%eax,%eax
	jne	Lj381
	jmp	Lj382
Lj381:
	.align 2
Lj383:
	movl	-4(%ebp),%eax
	call	L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj385
	jmp	Lj390
Lj390:
	movl	-20(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj385
	jmp	Lj383
Lj385:
Lj382:
	movl	-12(%ebp),%eax
	andl	$16,%eax
	testl	%eax,%eax
	jne	Lj391
	jmp	Lj392
Lj391:
	.align 2
Lj393:
	movl	-4(%ebp),%eax
	call	L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj395
	jmp	Lj400
Lj400:
	movl	-20(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj395
	jmp	Lj393
Lj395:
Lj392:
	movl	-12(%ebp),%eax
	andl	$2,%eax
	testl	%eax,%eax
	jne	Lj401
	jmp	Lj402
Lj401:
	movl	-4(%ebp),%eax
	call	L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub
	movl	-4(%ebp),%eax
	call	L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub
Lj402:
	movl	-4(%ebp),%eax
	cmpb	$0,300(%eax)
	jne	Lj407
	jmp	Lj408
Lj407:
	movl	-4(%ebp),%eax
	movl	$-3,296(%eax)
	jmp	Lj411
Lj408:
	movl	-4(%ebp),%eax
	movl	$0,296(%eax)
Lj411:
Lj323:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GZIO_DESTROY$GZ_STREAMP$$LONGINT
_GZIO_DESTROY$GZ_STREAMP$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj419
	jmp	Lj418
Lj418:
	movl	$-2,-8(%ebp)
	jmp	Lj414
Lj419:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	280(%eax),%eax
	testl	%eax,%eax
	jne	Lj422
	jmp	Lj423
Lj422:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	825(%eax),%al
	cmpb	$119,%al
	je	Lj424
	jmp	Lj425
Lj424:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj430
Lj425:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	825(%eax),%al
	cmpb	$114,%al
	je	Lj431
	jmp	Lj432
Lj431:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT$stub
	movl	%eax,-8(%ebp)
Lj432:
Lj430:
Lj423:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	744(%eax),%eax
	testl	%eax,%eax
	jne	Lj437
	jmp	Lj438
Lj437:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	leal	320(%eax),%eax
	call	L_SYSTEM_CLOSE$file$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj441
	jmp	Lj442
Lj441:
	movl	$-1,-8(%ebp)
Lj442:
Lj438:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	296(%eax),%eax
	cmpl	$0,%eax
	jl	Lj445
	jmp	Lj446
Lj445:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	296(%eax),%eax
	movl	%eax,-8(%ebp)
Lj446:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,652(%eax)
	jne	Lj449
	jmp	Lj450
Lj449:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	652(%eax),%eax
	movl	$16384,%edx
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
Lj450:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,656(%eax)
	jne	Lj455
	jmp	Lj456
Lj455:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	656(%eax),%eax
	movl	$16384,%edx
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
Lj456:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$832,%edx
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
Lj414:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT
_GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj471
	jmp	Lj473
Lj473:
	movl	-20(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$114,%al
	jne	Lj471
	jmp	Lj472
Lj471:
	movl	$-2,-16(%ebp)
	jmp	Lj465
Lj472:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$-3,%eax
	je	Lj476
	jmp	Lj478
Lj478:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$-1,%eax
	je	Lj476
	jmp	Lj477
Lj476:
	movl	$-1,-16(%ebp)
	jmp	Lj465
Lj477:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$1,%eax
	je	Lj481
	jmp	Lj482
Lj481:
	movl	$0,-16(%ebp)
	jmp	Lj465
Lj482:
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,16(%eax)
	jmp	Lj490
	.align 2
Lj489:
	movl	-20(%ebp),%eax
	cmpb	$0,824(%eax)
	jne	Lj492
	jmp	Lj493
Lj492:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj496
	jmp	Lj497
Lj496:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-28(%ebp)
Lj497:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj500
	jmp	Lj501
Lj500:
	movl	-20(%ebp),%eax
	movl	12(%eax),%edx
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	-28(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,12(%eax)
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	%eax,(%edx)
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	subl	%eax,16(%edx)
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	subl	%eax,4(%edx)
Lj501:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	ja	Lj508
	jmp	Lj509
Lj508:
	leal	-44(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%edx
	movl	-20(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-20(%ebp),%eax
	leal	320(%eax),%eax
	call	L_SYSTEM_BLOCKREAD$file$formal$LONGINT$LONGINT$stub
	call	LFPC_IOCHECK$stub
	movl	-20(%ebp),%eax
	movl	-44(%ebp),%edx
	subl	%edx,16(%eax)
Lj509:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	subl	%eax,-12(%ebp)
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,8(%eax)
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,20(%eax)
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj465
Lj493:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj522
	jmp	Lj521
Lj522:
	movl	-20(%ebp),%eax
	movb	300(%eax),%al
	testb	%al,%al
	je	Lj520
	jmp	Lj521
Lj520:
	movl	-20(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	652(%eax),%edx
	movl	-20(%ebp),%eax
	leal	320(%eax),%eax
	movl	$16384,%ecx
	call	L_SYSTEM_BLOCKREAD$file$formal$LONGWORD$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj531
	jmp	Lj532
Lj531:
	movl	-20(%ebp),%eax
	movb	$1,300(%eax)
	call	L_SYSTEM_IORESULT$$WORD$stub
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj535
	jmp	Lj536
Lj535:
	movl	-20(%ebp),%eax
	movl	$-1,296(%eax)
	jmp	Lj491
Lj536:
Lj532:
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	652(%eax),%eax
	movl	%eax,(%edx)
Lj521:
	movl	-20(%ebp),%eax
	movl	$0,%edx
	call	L_ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	-20(%ebp),%edx
	movl	%eax,296(%edx)
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$1,%eax
	je	Lj547
	jmp	Lj548
Lj547:
	movl	$0,-32(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-32(%ebp)
	movl	-20(%ebp),%eax
	movl	660(%eax),%eax
	movl	-32(%ebp),%ecx
	movl	-24(%ebp),%edx
	call	L_CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$stub
	movl	-20(%ebp),%edx
	movl	%eax,660(%edx)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	call	L_GZIO_GETLONG$GZ_STREAMP$$LONGWORD$stub
	movl	%eax,-36(%ebp)
	movl	-20(%ebp),%eax
	call	L_GZIO_GETLONG$GZ_STREAMP$$LONGWORD$stub
	movl	%eax,-40(%ebp)
	movl	-20(%ebp),%eax
	movl	660(%eax),%eax
	cmpl	-36(%ebp),%eax
	jne	Lj571
	jmp	Lj573
Lj573:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	-40(%ebp),%eax
	jne	Lj571
	jmp	Lj572
Lj571:
	movl	-20(%ebp),%eax
	movl	$-3,296(%eax)
	jmp	Lj576
Lj572:
	movl	-20(%ebp),%eax
	call	L_GZIO_CHECK_HEADER$GZ_STREAMP$stub
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	testl	%eax,%eax
	je	Lj579
	jmp	Lj580
Lj579:
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-20(%ebp),%eax
	call	L_ZINFLATE_INFLATERESET$Z_STREAM$$LONGINT$stub
	movl	-20(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-20(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	%edx,20(%eax)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$stub
	movl	-20(%ebp),%edx
	movl	%eax,660(%edx)
Lj580:
Lj576:
Lj548:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	testl	%eax,%eax
	jne	Lj599
	jmp	Lj601
Lj601:
	movl	-20(%ebp),%eax
	cmpb	$0,300(%eax)
	jne	Lj599
	jmp	Lj600
Lj599:
	jmp	Lj491
Lj600:
Lj490:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj489
	jmp	Lj491
Lj491:
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-32(%ebp)
	movl	-20(%ebp),%eax
	movl	660(%eax),%eax
	movl	-32(%ebp),%ecx
	movl	-24(%ebp),%edx
	call	L_CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$stub
	movl	-20(%ebp),%edx
	movl	%eax,660(%edx)
	movl	-20(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-16(%ebp)
Lj465:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GZIO_GZGETC$POINTER$$LONGINT
_GZIO_GZGETC$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-9(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT$stub
	cmpl	$1,%eax
	je	Lj616
	jmp	Lj617
Lj616:
	movzbl	-9(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj626
Lj617:
	movl	$-1,-8(%ebp)
Lj626:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GZIO_GZGETS$POINTER$PCHAR$LONGINT$$PCHAR
_GZIO_GZGETS$POINTER$PCHAR$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj631
	jmp	Lj633
Lj633:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj631
	jmp	Lj632
Lj631:
	movl	$0,-16(%ebp)
	jmp	Lj629
Lj632:
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	.align 2
Lj638:
	decl	-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-25(%ebp)
	incl	-8(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj640
	jmp	Lj652
Lj652:
	movl	-24(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj640
	jmp	Lj651
Lj651:
	movb	-25(%ebp),%al
	cmpb	$13,%al
	je	Lj640
	jmp	Lj638
Lj640:
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj657
	jmp	Lj656
Lj657:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj655
	jmp	Lj656
Lj655:
	movl	$0,-16(%ebp)
	jmp	Lj660
Lj656:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj660:
Lj629:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT
_GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj667
	jmp	Lj669
Lj669:
	movl	-20(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$119,%al
	jne	Lj667
	jmp	Lj668
Lj667:
	movl	$-2,-16(%ebp)
	jmp	Lj663
Lj668:
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,(%edx)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,4(%edx)
	jmp	Lj677
	.align 2
Lj676:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj679
	jmp	Lj680
Lj679:
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	656(%eax),%eax
	movl	%eax,12(%edx)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	656(%eax),%edx
	movl	-20(%ebp),%eax
	leal	320(%eax),%eax
	movl	$16384,%ecx
	call	L_SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT$stub
	call	LFPC_IOCHECK$stub
	movl	-24(%ebp),%eax
	cmpl	$16384,%eax
	jne	Lj691
	jmp	Lj692
Lj691:
	movl	-20(%ebp),%eax
	movl	$-1,296(%eax)
	jmp	Lj678
Lj692:
	movl	-20(%ebp),%eax
	movl	$16384,16(%eax)
Lj680:
	movl	-20(%ebp),%eax
	movl	$0,%edx
	call	L_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	-20(%ebp),%edx
	movl	%eax,296(%edx)
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	testl	%eax,%eax
	jne	Lj703
	jmp	Lj704
Lj703:
	jmp	Lj678
Lj704:
Lj677:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj676
	jmp	Lj678
Lj678:
	movl	-20(%ebp),%eax
	movl	660(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$stub
	movl	-20(%ebp),%edx
	movl	%eax,660(%edx)
	movl	-20(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-16(%ebp)
Lj663:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GZIO_GZPUTC$POINTER$CHAR$$LONGINT
_GZIO_GZPUTC$POINTER$CHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT$stub
	cmpl	$1,%eax
	je	Lj717
	jmp	Lj718
Lj717:
	movzbl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj727
Lj718:
	movl	$-1,-12(%ebp)
Lj727:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GZIO_GZPUTS$POINTER$PCHAR$$LONGINT
_GZIO_GZPUTS$POINTER$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GZIO_DO_FLUSH$POINTER$LONGINT$$LONGINT
_GZIO_DO_FLUSH$POINTER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-17(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj748
	jmp	Lj750
Lj750:
	movl	-24(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$119,%al
	jne	Lj748
	jmp	Lj749
Lj748:
	movl	$-2,-12(%ebp)
	jmp	Lj742
Lj749:
	movl	-24(%ebp),%eax
	movl	$0,4(%eax)
	jmp	Lj756
	.align 2
Lj755:
	movl	-24(%ebp),%eax
	movl	16(%eax),%edx
	movl	$16384,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj760
	jmp	Lj761
Lj760:
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	656(%eax),%edx
	movl	-24(%ebp),%eax
	leal	320(%eax),%eax
	movl	-16(%ebp),%ecx
	call	L_SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT$stub
	movl	-28(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-16(%ebp),%ecx
	movl	$0,%ebx
	cmpl	%ebx,%eax
	jne	Lj770
	cmpl	%ecx,%edx
	jne	Lj770
	jmp	Lj771
Lj770:
	movl	-24(%ebp),%eax
	movl	$-1,296(%eax)
	movl	$-1,-12(%ebp)
	jmp	Lj742
Lj771:
	movl	-24(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	656(%eax),%eax
	movl	%eax,12(%edx)
	movl	-24(%ebp),%eax
	movl	$16384,16(%eax)
Lj761:
	cmpb	$0,-17(%ebp)
	jne	Lj780
	jmp	Lj781
Lj780:
	jmp	Lj757
Lj781:
	movl	-24(%ebp),%eax
	movl	-8(%ebp),%edx
	call	L_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	-24(%ebp),%edx
	movl	%eax,296(%edx)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj790
	jmp	Lj789
Lj790:
	movl	-24(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$-5,%eax
	je	Lj788
	jmp	Lj789
Lj788:
	movl	-24(%ebp),%eax
	movl	$0,296(%eax)
Lj789:
	movl	-24(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj793
	jmp	Lj795
Lj795:
	movl	-24(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$1,%eax
	je	Lj793
	jmp	Lj794
Lj793:
	movb	$1,-17(%ebp)
	jmp	Lj796
Lj794:
	movb	$0,-17(%ebp)
Lj796:
	movl	-24(%ebp),%eax
	movl	296(%eax),%eax
	testl	%eax,%eax
	jne	Lj799
	jmp	Lj798
Lj799:
	movl	-24(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$1,%eax
	jne	Lj797
	jmp	Lj798
Lj797:
	jmp	Lj757
Lj798:
Lj756:
	jmp	Lj755
Lj757:
	movl	-24(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$1,%eax
	je	Lj800
	jmp	Lj801
Lj800:
	movl	$0,-12(%ebp)
	jmp	Lj804
Lj801:
	movl	-24(%ebp),%eax
	movl	296(%eax),%eax
	movl	%eax,-12(%ebp)
Lj804:
Lj742:
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GZIO_GZFLUSH$POINTER$LONGINT$$LONGINT
_GZIO_GZFLUSH$POINTER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GZIO_DO_FLUSH$POINTER$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj817
	jmp	Lj818
Lj817:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj807
Lj818:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$1,%eax
	je	Lj821
	jmp	Lj822
Lj821:
	movl	$0,-12(%ebp)
	jmp	Lj825
Lj822:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	movl	%eax,-12(%ebp)
Lj825:
Lj807:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GZIO_GZREWIND$POINTER$$LONGINT
_GZIO_GZREWIND$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj832
	jmp	Lj834
Lj834:
	movl	-12(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$114,%al
	jne	Lj832
	jmp	Lj833
Lj832:
	movl	$-1,-8(%ebp)
	jmp	Lj828
Lj833:
	movl	-12(%ebp),%eax
	movl	$0,296(%eax)
	movl	-12(%ebp),%eax
	movb	$0,300(%eax)
	movl	-12(%ebp),%eax
	movl	$0,4(%eax)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	652(%eax),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	828(%eax),%eax
	testl	%eax,%eax
	je	Lj845
	jmp	Lj846
Lj845:
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-12(%ebp),%eax
	leal	320(%eax),%eax
	call	L_SYSTEM_SEEK$file$INT64$stub
	movl	$0,-8(%ebp)
	jmp	Lj828
Lj846:
	movl	-12(%ebp),%eax
	call	L_ZINFLATE_INFLATERESET$Z_STREAM$$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	828(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-12(%ebp),%eax
	leal	320(%eax),%eax
	call	L_SYSTEM_SEEK$file$INT64$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movzwl	%ax,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj828
Lj828:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GZIO_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT
_GZIO_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj865
	jmp	Lj869
Lj869:
	movl	-12(%ebp),%eax
	cmpl	$2,%eax
	je	Lj865
	jmp	Lj868
Lj868:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$-1,%eax
	je	Lj865
	jmp	Lj867
Lj867:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$-3,%eax
	je	Lj865
	jmp	Lj866
Lj865:
	movl	$-1,-16(%ebp)
	jmp	Lj861
Lj866:
	movl	-20(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$119,%al
	je	Lj872
	jmp	Lj873
Lj872:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj874
	jmp	Lj875
Lj874:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	subl	%eax,-8(%ebp)
Lj875:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj876
	jmp	Lj877
Lj876:
	movl	$-1,-16(%ebp)
	jmp	Lj861
Lj877:
	movl	-20(%ebp),%eax
	movl	652(%eax),%eax
	testl	%eax,%eax
	je	Lj880
	jmp	Lj881
Lj880:
	movl	-20(%ebp),%eax
	leal	652(%eax),%eax
	movl	$16384,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	652(%eax),%eax
	movb	$0,%cl
	movl	$16384,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj881:
	jmp	Lj893
	.align 2
Lj892:
	movl	$16384,-24(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$16384,%eax
	jl	Lj897
	jmp	Lj898
Lj897:
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj898:
	movl	-20(%ebp),%eax
	movl	652(%eax),%edx
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj909
	jmp	Lj910
Lj909:
	movl	$-1,-16(%ebp)
	jmp	Lj861
Lj910:
	movl	-24(%ebp),%eax
	subl	%eax,-8(%ebp)
Lj893:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj892
	jmp	Lj894
Lj894:
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj861
Lj873:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	je	Lj915
	jmp	Lj916
Lj915:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	addl	%eax,-8(%ebp)
Lj916:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj917
	jmp	Lj918
Lj917:
	movl	$-1,-16(%ebp)
	jmp	Lj861
Lj918:
	movl	-20(%ebp),%eax
	cmpb	$0,824(%eax)
	jne	Lj921
	jmp	Lj922
Lj921:
	movl	-20(%ebp),%eax
	movl	$0,4(%eax)
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	652(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-20(%ebp),%eax
	leal	320(%eax),%eax
	call	L_SYSTEM_SEEK$file$INT64$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj931
	jmp	Lj932
Lj931:
	movl	$-1,-16(%ebp)
	jmp	Lj861
Lj932:
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj861
Lj922:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jbe	Lj941
	jmp	Lj942
Lj941:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	subl	%eax,-8(%ebp)
	jmp	Lj943
Lj942:
	movl	-4(%ebp),%eax
	call	L_GZIO_GZREWIND$POINTER$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj944
	jmp	Lj945
Lj944:
	movl	$-1,-16(%ebp)
	jmp	Lj861
Lj945:
Lj943:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj952
	jmp	Lj951
Lj952:
	movl	-20(%ebp),%eax
	movl	656(%eax),%eax
	testl	%eax,%eax
	je	Lj950
	jmp	Lj951
Lj950:
	movl	-20(%ebp),%eax
	leal	656(%eax),%eax
	movl	$16384,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
Lj951:
	jmp	Lj958
	.align 2
Lj957:
	movl	$16384,-24(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$16384,%eax
	jl	Lj962
	jmp	Lj963
Lj962:
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj963:
	movl	-20(%ebp),%eax
	movl	656(%eax),%edx
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jbe	Lj974
	jmp	Lj975
Lj974:
	movl	$-1,-16(%ebp)
	jmp	Lj861
Lj975:
	movl	-24(%ebp),%eax
	subl	%eax,-8(%ebp)
Lj958:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj957
	jmp	Lj959
Lj959:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp)
Lj861:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GZIO_GZTELL$POINTER$$LONGINT
_GZIO_GZTELL$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	$0,%edx
	call	L_GZIO_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GZIO_GZEOF$POINTER$$BOOLEAN
_GZIO_GZEOF$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj994
	jmp	Lj996
Lj996:
	movl	-12(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$114,%al
	jne	Lj994
	jmp	Lj995
Lj994:
	movb	$0,-5(%ebp)
	jmp	Lj999
Lj995:
	movl	-12(%ebp),%eax
	movb	300(%eax),%al
	movb	%al,-5(%ebp)
Lj999:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GZIO_PUTLONG$file$LONGWORD
_GZIO_PUTLONG$file$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj1006:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	andl	$255,%eax
	movb	%al,-13(%ebp)
	leal	-13(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_SYSTEM_BLOCKWRITE$file$formal$LONGINT$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%eax
	shrl	$8,%eax
	movl	%eax,-8(%ebp)
	cmpl	$3,-12(%ebp)
	jl	Lj1006
	leave
	ret

.text
	.align 4
.globl	_GZIO_GZCLOSE$POINTER$$LONGINT
_GZIO_GZCLOSE$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1021
	jmp	Lj1022
Lj1021:
	movl	$-2,-8(%ebp)
	jmp	Lj1017
Lj1022:
	movl	-16(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$119,%al
	je	Lj1025
	jmp	Lj1026
Lj1025:
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	L_GZIO_DO_FLUSH$POINTER$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1033
	jmp	Lj1034
Lj1033:
	leal	-4(%ebp),%eax
	call	L_GZIO_DESTROY$GZ_STREAMP$$LONGINT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1017
Lj1034:
	movl	-16(%ebp),%eax
	movl	660(%eax),%edx
	movl	-16(%ebp),%eax
	leal	320(%eax),%eax
	call	L_GZIO_PUTLONG$file$LONGWORD$stub
	movl	-16(%ebp),%eax
	movl	8(%eax),%edx
	movl	-16(%ebp),%eax
	leal	320(%eax),%eax
	call	L_GZIO_PUTLONG$file$LONGWORD$stub
Lj1026:
	leal	-4(%ebp),%eax
	call	L_GZIO_DESTROY$GZ_STREAMP$$LONGINT$stub
	movl	%eax,-8(%ebp)
Lj1017:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GZIO_GZERROR$POINTER$SMALLINT$$SHORTSTRING
_GZIO_GZERROR$POINTER$SMALLINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$808,%esp
	movl	%ebx,-800(%ebp)
	call	Lj1052
Lj1052:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-272(%ebp)
	movl	-272(%ebp),%eax
	testl	%eax,%eax
	je	Lj1055
	jmp	Lj1056
Lj1055:
	movl	-8(%ebp),%eax
	movw	$-2,(%eax)
	movl	-12(%ebp),%edx
	movl	$-2,%eax
	call	L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub
Lj1056:
	movl	-272(%ebp),%eax
	movl	-8(%ebp),%edx
	movw	296(%eax),%ax
	movw	%ax,(%edx)
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj1065
	jmp	Lj1066
Lj1065:
	movl	-12(%ebp),%edx
	movl	$0,%eax
	call	L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub
	jmp	Lj1051
Lj1066:
	movl	-272(%ebp),%eax
	leal	24(%eax),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$-1,%ax
	je	Lj1077
	jmp	Lj1078
Lj1077:
	movb	$0,-268(%ebp)
Lj1078:
	movzbl	-268(%ebp),%eax
	testl	%eax,%eax
	je	Lj1081
	jmp	Lj1082
Lj1081:
	movl	-272(%ebp),%eax
	movl	296(%eax),%eax
	leal	-528(%ebp),%edx
	call	L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub
	leal	-528(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
Lj1082:
	movl	$2,(%esp)
	movl	-272(%ebp),%eax
	leal	744(%eax),%ecx
	leal	-796(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-796(%ebp),%eax
	movl	%eax,-540(%ebp)
	movl	L_$GZIO$_Ld2$non_lazy_ptr-Lj1052(%ebx),%eax
	movl	%eax,-536(%ebp)
	leal	-268(%ebp),%eax
	movl	%eax,-532(%ebp)
	leal	-540(%ebp),%ecx
	leal	-528(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
	leal	-528(%ebp),%ecx
	movl	-272(%ebp),%eax
	leal	664(%eax),%eax
	movl	$79,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-272(%ebp),%eax
	leal	664(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
Lj1051:
	movl	-800(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_GZIO
_THREADVARLIST_GZIO:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	_TC_GZIO_GZ_MAGIC
_TC_GZIO_GZ_MAGIC:
	.byte	31,139

.const
	.align 2
.globl	_$GZIO$_Ld1
_$GZIO$_Ld1:
	.ascii	"\000\000"

.const
	.align 2
.globl	_$GZIO$_Ld2
_$GZIO$_Ld2:
	.ascii	"\002: \000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SHORTSTR_ASSIGN$stub:
.indirect_symbol FPC_SHORTSTR_ASSIGN
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

L_CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$stub:
.indirect_symbol _CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD
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

L_GZIO_DESTROY$GZ_STREAMP$$LONGINT$stub:
.indirect_symbol _GZIO_DESTROY$GZ_STREAMP$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATEINIT2$Z_STREAM$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATEINIT2$Z_STREAM$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATEINIT2_$Z_STREAM$LONGINT$SHORTSTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATEINIT2_$Z_STREAM$LONGINT$SHORTSTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$file$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_ASSIGN$file$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_REWRITE$file$LONGINT$stub:
.indirect_symbol _SYSTEM_REWRITE$file$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RESET$file$LONGINT$stub:
.indirect_symbol _SYSTEM_RESET$file$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_IORESULT$$WORD$stub:
.indirect_symbol _SYSTEM_IORESULT$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILESIZE$file$$INT64$stub:
.indirect_symbol _SYSTEM_FILESIZE$file$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_IOCHECK$stub:
.indirect_symbol FPC_IOCHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SEEK$file$INT64$stub:
.indirect_symbol _SYSTEM_SEEK$file$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_BLOCKWRITE$file$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_BLOCKWRITE$file$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_CHECK_HEADER$GZ_STREAMP$stub:
.indirect_symbol _GZIO_CHECK_HEADER$GZ_STREAMP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILEPOS$file$$INT64$stub:
.indirect_symbol _SYSTEM_FILEPOS$file$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATEPARAMS$Z_STREAM$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATEPARAMS$Z_STREAM$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_BLOCKREAD$file$formal$LONGWORD$LONGWORD$stub:
.indirect_symbol _SYSTEM_BLOCKREAD$file$formal$LONGWORD$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GET_BYTE$GZ_STREAMP$$LONGINT$stub:
.indirect_symbol _GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
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

L_ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT
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

L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$LONGWORD
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

L_SYSTEM_BLOCKREAD$file$formal$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_BLOCKREAD$file$formal$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GETLONG$GZ_STREAMP$$LONGWORD$stub:
.indirect_symbol _GZIO_GETLONG$GZ_STREAMP$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATERESET$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATERESET$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT$stub:
.indirect_symbol _GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT
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

L_GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT$stub:
.indirect_symbol _GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT
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

L_GZIO_DO_FLUSH$POINTER$LONGINT$$LONGINT$stub:
.indirect_symbol _GZIO_DO_FLUSH$POINTER$LONGINT$$LONGINT
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

L_GZIO_GZREWIND$POINTER$$LONGINT$stub:
.indirect_symbol _GZIO_GZREWIND$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _GZIO_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_PUTLONG$file$LONGWORD$stub:
.indirect_symbol _GZIO_PUTLONG$file$LONGWORD
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

Lfpc_shortstr_concat_multi$stub:
.indirect_symbol fpc_shortstr_concat_multi
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
L_TC_GZIO_GZ_MAGIC$non_lazy_ptr:
.indirect_symbol _TC_GZIO_GZ_MAGIC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GZIO$_Ld2$non_lazy_ptr:
.indirect_symbol _$GZIO$_Ld2
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

