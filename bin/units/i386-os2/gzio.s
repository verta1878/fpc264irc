	.file "gzio.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
.globl	GZIO_GZOPEN$SHORTSTRING$SHORTSTRING$$POINTER
GZIO_GZOPEN$SHORTSTRING$SHORTSTRING$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$568,%esp
	movl	%ebx,-568(%ebp)
	movl	%esi,-564(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	leal	-303(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	movl	-8(%ebp),%edx
	leal	-559(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	movzbl	-303(%ebp),%eax
	testl	%eax,%eax
	je	Lj5
	jmp	Lj7
Lj7:
	movzbl	-559(%ebp),%eax
	testl	%eax,%eax
	je	Lj5
	jmp	Lj6
Lj5:
	movl	$0,-12(%ebp)
	jmp	Lj3
Lj6:
	leal	-32(%ebp),%eax
	movl	$832,%edx
	call	SYSTEM_GETMEM$POINTER$LONGWORD
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
	call	CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD
	movl	-32(%ebp),%edx
	movl	%eax,660(%edx)
	movl	-32(%ebp),%eax
	movb	$0,664(%eax)
	movl	-32(%ebp),%eax
	movb	$0,824(%eax)
	movl	-32(%ebp),%eax
	leal	744(%eax),%eax
	leal	-303(%ebp),%ecx
	movl	$79,%edx
	call	fpc_shortstr_to_shortstr
	movl	-32(%ebp),%eax
	movb	$0,825(%eax)
	movzbl	-559(%ebp),%eax
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jb	Lj59
	decl	-16(%ebp)
	.balign 4,0x90
Lj60:
	incl	-16(%ebp)
	movzbl	-16(%ebp),%edx
	movb	-559(%ebp,%edx,1),%dl
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
	movzbl	-559(%ebp,%edx,1),%edx
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
	call	GZIO_DESTROY$GZ_STREAMP$$LONGINT
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
	movb	$1,-47(%ebp)
	jmp	Lj90
Lj88:
	movb	$0,-47(%ebp)
Lj90:
	cmpb	$0,-47(%ebp)
	jne	Lj91
	jmp	Lj92
Lj91:
	pushl	$-15
	pushl	$8
	pushl	-28(%ebp)
	movl	-32(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	$8,%ecx
	call	ZDEFLATE_DEFLATEINIT2$Z_STREAM$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-32(%ebp),%eax
	leal	656(%eax),%eax
	movl	$16384,%edx
	call	SYSTEM_GETMEM$POINTER$LONGWORD
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
	call	GZIO_DESTROY$GZ_STREAMP$$LONGINT
	movl	$0,-12(%ebp)
	jmp	Lj3
Lj114:
	jmp	Lj120
Lj92:
	movl	-32(%ebp),%eax
	leal	652(%eax),%eax
	movl	$16384,%edx
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-32(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	652(%eax),%eax
	movl	%eax,(%edx)
	pushl	$296
	movl	-32(%ebp),%eax
	movl	$TC_ZBASE_ZLIB_VERSION,%ecx
	movl	$-15,%edx
	call	ZINFLATE_INFLATEINIT2_$Z_STREAM$LONGINT$SHORTSTRING$LONGINT$$LONGINT
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
	call	GZIO_DESTROY$GZ_STREAMP$$LONGINT
	movl	$0,-12(%ebp)
	jmp	Lj3
Lj138:
Lj120:
	movl	-32(%ebp),%eax
	movl	$16384,16(%eax)
	movl	-32(%ebp),%eax
	leal	320(%eax),%eax
	leal	-303(%ebp),%edx
	call	SYSTEM_ASSIGN$file$SHORTSTRING
	movl	-32(%ebp),%eax
	leal	320(%eax),%eax
	leal	-34(%ebp),%edx
	call	DOS_GETFATTR$formal$WORD
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj156
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj157
Lj156:
	movl	$U_DOS_DOSERROR+4,%eax
Lj157:
	movl	(%eax),%eax
	testl	%eax,%eax
	seteb	-46(%ebp)
	movb	$0,-45(%ebp)
	movl	-32(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$97,%al
	je	Lj163
	jmp	Lj162
Lj163:
	movb	-46(%ebp),%al
	testb	%al,%al
	je	Lj160
	jmp	Lj162
Lj162:
	movl	-32(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$119,%al
	je	Lj160
	jmp	Lj161
Lj160:
	movl	-32(%ebp),%eax
	leal	320(%eax),%eax
	movl	$1,%edx
	call	SYSTEM_REWRITE$file$LONGINT
	jmp	Lj168
Lj161:
	movl	-32(%ebp),%eax
	leal	320(%eax),%eax
	movl	$1,%edx
	call	SYSTEM_RESET$file$LONGINT
	movl	-32(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$97,%al
	je	Lj173
	jmp	Lj174
Lj173:
	movb	$1,-45(%ebp)
Lj174:
Lj168:
	call	SYSTEM_IORESULT$$WORD
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj177
	jmp	Lj178
Lj177:
	leal	-32(%ebp),%eax
	call	GZIO_DESTROY$GZ_STREAMP$$LONGINT
	movl	$0,-12(%ebp)
	jmp	Lj3
Lj178:
	cmpb	$0,-45(%ebp)
	jne	Lj183
	jmp	Lj184
Lj183:
	movl	-32(%ebp),%eax
	leal	320(%eax),%eax
	call	SYSTEM_FILESIZE$file$$INT64
	movl	%eax,%ebx
	movl	%edx,%esi
	call	FPC_IOCHECK
	pushl	%esi
	pushl	%ebx
	movl	-32(%ebp),%eax
	leal	320(%eax),%eax
	call	SYSTEM_SEEK$file$INT64
	call	FPC_IOCHECK
Lj184:
	movl	-32(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$97,%al
	je	Lj191
	jmp	Lj192
Lj191:
	movl	-32(%ebp),%eax
	movb	$119,825(%eax)
Lj192:
	cmpb	$0,-47(%ebp)
	jne	Lj195
	jmp	Lj196
Lj195:
	movb	TC_GZIO_GZ_MAGIC,%al
	movb	%al,-44(%ebp)
	movb	TC_GZIO_GZ_MAGIC+1,%al
	movb	%al,-43(%ebp)
	movb	$8,-42(%ebp)
	movb	$0,-41(%ebp)
	movb	$0,-40(%ebp)
	movb	$0,-39(%ebp)
	movb	$0,-38(%ebp)
	movb	$0,-37(%ebp)
	movb	$0,-36(%ebp)
	movb	$0,-35(%ebp)
	movl	-32(%ebp),%eax
	leal	320(%eax),%eax
	leal	-44(%ebp),%edx
	movl	$10,%ecx
	call	SYSTEM_BLOCKWRITE$file$formal$LONGINT
	call	FPC_IOCHECK
	movl	-32(%ebp),%eax
	movl	$10,828(%eax)
	jmp	Lj225
Lj196:
	movl	-32(%ebp),%eax
	call	GZIO_CHECK_HEADER$GZ_STREAMP
	movl	-32(%ebp),%eax
	leal	320(%eax),%eax
	call	SYSTEM_FILEPOS$file$$INT64
	movl	%eax,%ebx
	movl	%edx,%esi
	call	FPC_IOCHECK
	movl	-32(%ebp),%eax
	movl	4(%eax),%edx
	movl	$0,%eax
	subl	%edx,%ebx
	sbbl	%eax,%esi
	movl	-32(%ebp),%eax
	movl	%ebx,828(%eax)
Lj225:
	movl	-32(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj3:
	movl	-12(%ebp),%eax
	movl	-568(%ebp),%ebx
	movl	-564(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	GZIO_GZSETPARAMS$POINTER$LONGINT$LONGINT$$LONGINT
GZIO_GZSETPARAMS$POINTER$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj238
	jmp	Lj240
Lj240:
	movl	-20(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$119,%al
	jne	Lj238
	jmp	Lj239
Lj238:
	movl	$-2,-16(%ebp)
	jmp	Lj234
Lj239:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj243
	jmp	Lj244
Lj243:
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	656(%eax),%eax
	movl	%eax,12(%edx)
	leal	-24(%ebp),%eax
	pushl	%eax
	movl	-20(%ebp),%eax
	movl	656(%eax),%edx
	movl	-20(%ebp),%eax
	leal	320(%eax),%eax
	movl	$16384,%ecx
	call	SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT
	call	FPC_IOCHECK
	movl	-24(%ebp),%eax
	cmpl	$16384,%eax
	jne	Lj255
	jmp	Lj256
Lj255:
	movl	-20(%ebp),%eax
	movl	$-1,296(%eax)
Lj256:
	movl	-20(%ebp),%eax
	movl	$16384,16(%eax)
Lj244:
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	ZDEFLATE_DEFLATEPARAMS$Z_STREAM$LONGINT$LONGINT$$LONGINT
	movl	%eax,-16(%ebp)
Lj234:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
GZIO_GET_BYTE$GZ_STREAMP$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,300(%eax)
	jne	Lj271
	jmp	Lj272
Lj271:
	movl	$-1,-8(%ebp)
	jmp	Lj269
Lj272:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj275
	jmp	Lj276
Lj275:
	movl	-4(%ebp),%eax
	leal	4(%eax),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	652(%eax),%edx
	movl	-4(%ebp),%eax
	leal	320(%eax),%eax
	movl	$16384,%ecx
	call	SYSTEM_BLOCKREAD$file$formal$LONGWORD$LONGWORD
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj285
	jmp	Lj286
Lj285:
	movl	-4(%ebp),%eax
	movb	$1,300(%eax)
	call	SYSTEM_IORESULT$$WORD
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj289
	jmp	Lj290
Lj289:
	movl	-4(%ebp),%eax
	movl	$-1,296(%eax)
Lj290:
	movl	$-1,-8(%ebp)
	jmp	Lj269
Lj286:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	652(%eax),%eax
	movl	%eax,(%edx)
Lj276:
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	incl	(%eax)
Lj269:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
GZIO_GETLONG$GZ_STREAMP$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
	movb	%al,-12(%ebp)
	movl	-4(%ebp),%eax
	call	GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
	movb	%al,-11(%ebp)
	movl	-4(%ebp),%eax
	call	GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
	movb	%al,-10(%ebp)
	movl	-4(%ebp),%eax
	call	GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
	movl	%eax,-16(%ebp)
	movb	-16(%ebp),%al
	movb	%al,-9(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj319
	jmp	Lj320
Lj319:
	movl	-4(%ebp),%eax
	movl	$-3,296(%eax)
Lj320:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
GZIO_CHECK_HEADER$GZ_STREAMP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.balign 4,0x90
Lj329:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	call	GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movzbl	TC_GZIO_GZ_MAGIC(,%eax,1),%eax
	cmpl	-20(%ebp),%eax
	jne	Lj334
	jmp	Lj335
Lj334:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj336
	jmp	Lj337
Lj336:
	movl	-4(%ebp),%eax
	incl	4(%eax)
	movl	-4(%ebp),%eax
	decl	(%eax)
Lj337:
	movl	-20(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj338
	jmp	Lj339
Lj338:
	movl	-4(%ebp),%eax
	incl	4(%eax)
	movl	-4(%ebp),%eax
	decl	(%eax)
	movl	-4(%ebp),%eax
	movb	$1,824(%eax)
Lj339:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj342
	jmp	Lj343
Lj342:
	movl	-4(%ebp),%eax
	movl	$0,296(%eax)
	jmp	Lj346
Lj343:
	movl	-4(%ebp),%eax
	movl	$1,296(%eax)
Lj346:
	jmp	Lj325
Lj335:
	cmpl	$1,-16(%ebp)
	jb	Lj329
	movl	-4(%ebp),%eax
	call	GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	call	GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$8,%eax
	jne	Lj357
	jmp	Lj359
Lj359:
	movl	-12(%ebp),%eax
	andl	$224,%eax
	testl	%eax,%eax
	jne	Lj357
	jmp	Lj358
Lj357:
	movl	-4(%ebp),%eax
	movl	$-3,296(%eax)
	jmp	Lj325
Lj358:
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.balign 4,0x90
Lj364:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	call	GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
	cmpl	$5,-16(%ebp)
	jb	Lj364
	movl	-12(%ebp),%eax
	andl	$4,%eax
	testl	%eax,%eax
	jne	Lj367
	jmp	Lj368
Lj367:
	movl	-4(%ebp),%eax
	call	GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	call	GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
	shll	$8,%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj378
	.balign 4,0x90
Lj377:
	decl	-16(%ebp)
Lj378:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj380
	jmp	Lj379
Lj380:
	movl	-4(%ebp),%eax
	call	GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
	cmpl	$-1,%eax
	jne	Lj377
	jmp	Lj379
Lj379:
Lj368:
	movl	-12(%ebp),%eax
	andl	$8,%eax
	testl	%eax,%eax
	jne	Lj383
	jmp	Lj384
Lj383:
	.balign 4,0x90
Lj385:
	movl	-4(%ebp),%eax
	call	GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj387
	jmp	Lj392
Lj392:
	movl	-20(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj387
	jmp	Lj385
Lj387:
Lj384:
	movl	-12(%ebp),%eax
	andl	$16,%eax
	testl	%eax,%eax
	jne	Lj393
	jmp	Lj394
Lj393:
	.balign 4,0x90
Lj395:
	movl	-4(%ebp),%eax
	call	GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj397
	jmp	Lj402
Lj402:
	movl	-20(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj397
	jmp	Lj395
Lj397:
Lj394:
	movl	-12(%ebp),%eax
	andl	$2,%eax
	testl	%eax,%eax
	jne	Lj403
	jmp	Lj404
Lj403:
	movl	-4(%ebp),%eax
	call	GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
	movl	-4(%ebp),%eax
	call	GZIO_GET_BYTE$GZ_STREAMP$$LONGINT
Lj404:
	movl	-4(%ebp),%eax
	cmpb	$0,300(%eax)
	jne	Lj409
	jmp	Lj410
Lj409:
	movl	-4(%ebp),%eax
	movl	$-3,296(%eax)
	jmp	Lj413
Lj410:
	movl	-4(%ebp),%eax
	movl	$0,296(%eax)
Lj413:
Lj325:
	leave
	ret

.text
	.balign 4,0x90
GZIO_DESTROY$GZ_STREAMP$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj421
	jmp	Lj420
Lj420:
	movl	$-2,-8(%ebp)
	jmp	Lj416
Lj421:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	280(%eax),%eax
	testl	%eax,%eax
	jne	Lj424
	jmp	Lj425
Lj424:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	825(%eax),%al
	cmpb	$119,%al
	je	Lj426
	jmp	Lj427
Lj426:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT
	movl	%eax,-8(%ebp)
	jmp	Lj432
Lj427:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	825(%eax),%al
	cmpb	$114,%al
	je	Lj433
	jmp	Lj434
Lj433:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT
	movl	%eax,-8(%ebp)
Lj434:
Lj432:
Lj425:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	744(%eax),%eax
	testl	%eax,%eax
	jne	Lj439
	jmp	Lj440
Lj439:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	leal	320(%eax),%eax
	call	SYSTEM_CLOSE$file
	call	SYSTEM_IORESULT$$WORD
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj443
	jmp	Lj444
Lj443:
	movl	$-1,-8(%ebp)
Lj444:
Lj440:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	296(%eax),%eax
	cmpl	$0,%eax
	jl	Lj447
	jmp	Lj448
Lj447:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	296(%eax),%eax
	movl	%eax,-8(%ebp)
Lj448:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,652(%eax)
	jne	Lj451
	jmp	Lj452
Lj451:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	652(%eax),%eax
	movl	$16384,%edx
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
Lj452:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,656(%eax)
	jne	Lj457
	jmp	Lj458
Lj457:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	656(%eax),%eax
	movl	$16384,%edx
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
Lj458:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$832,%edx
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
Lj416:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT
GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj473
	jmp	Lj475
Lj475:
	movl	-20(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$114,%al
	jne	Lj473
	jmp	Lj474
Lj473:
	movl	$-2,-16(%ebp)
	jmp	Lj467
Lj474:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$-3,%eax
	je	Lj478
	jmp	Lj480
Lj480:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$-1,%eax
	je	Lj478
	jmp	Lj479
Lj478:
	movl	$-1,-16(%ebp)
	jmp	Lj467
Lj479:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$1,%eax
	je	Lj483
	jmp	Lj484
Lj483:
	movl	$0,-16(%ebp)
	jmp	Lj467
Lj484:
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,16(%eax)
	jmp	Lj492
	.balign 4,0x90
Lj491:
	movl	-20(%ebp),%eax
	cmpb	$0,824(%eax)
	jne	Lj494
	jmp	Lj495
Lj494:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj498
	jmp	Lj499
Lj498:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-28(%ebp)
Lj499:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj502
	jmp	Lj503
Lj502:
	movl	-20(%ebp),%eax
	movl	12(%eax),%edx
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	-28(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
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
Lj503:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	ja	Lj510
	jmp	Lj511
Lj510:
	leal	-44(%ebp),%eax
	pushl	%eax
	movl	-20(%ebp),%eax
	movl	12(%eax),%edx
	movl	-20(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-20(%ebp),%eax
	leal	320(%eax),%eax
	call	SYSTEM_BLOCKREAD$file$formal$LONGINT$LONGINT
	call	FPC_IOCHECK
	movl	-20(%ebp),%eax
	movl	-44(%ebp),%edx
	subl	%edx,16(%eax)
Lj511:
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
	jmp	Lj467
Lj495:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj524
	jmp	Lj523
Lj524:
	movl	-20(%ebp),%eax
	movb	300(%eax),%al
	testb	%al,%al
	je	Lj522
	jmp	Lj523
Lj522:
	movl	-20(%ebp),%eax
	leal	4(%eax),%eax
	pushl	%eax
	movl	-20(%ebp),%eax
	movl	652(%eax),%edx
	movl	-20(%ebp),%eax
	leal	320(%eax),%eax
	movl	$16384,%ecx
	call	SYSTEM_BLOCKREAD$file$formal$LONGWORD$LONGWORD
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj533
	jmp	Lj534
Lj533:
	movl	-20(%ebp),%eax
	movb	$1,300(%eax)
	call	SYSTEM_IORESULT$$WORD
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj537
	jmp	Lj538
Lj537:
	movl	-20(%ebp),%eax
	movl	$-1,296(%eax)
	jmp	Lj493
Lj538:
Lj534:
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	652(%eax),%eax
	movl	%eax,(%edx)
Lj523:
	movl	-20(%ebp),%eax
	movl	$0,%edx
	call	ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT
	movl	-20(%ebp),%edx
	movl	%eax,296(%edx)
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$1,%eax
	je	Lj549
	jmp	Lj550
Lj549:
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
	call	CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD
	movl	-20(%ebp),%edx
	movl	%eax,660(%edx)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	call	GZIO_GETLONG$GZ_STREAMP$$LONGWORD
	movl	%eax,-36(%ebp)
	movl	-20(%ebp),%eax
	call	GZIO_GETLONG$GZ_STREAMP$$LONGWORD
	movl	%eax,-40(%ebp)
	movl	-20(%ebp),%eax
	movl	660(%eax),%eax
	cmpl	-36(%ebp),%eax
	jne	Lj573
	jmp	Lj575
Lj575:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	-40(%ebp),%eax
	jne	Lj573
	jmp	Lj574
Lj573:
	movl	-20(%ebp),%eax
	movl	$-3,296(%eax)
	jmp	Lj578
Lj574:
	movl	-20(%ebp),%eax
	call	GZIO_CHECK_HEADER$GZ_STREAMP
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	testl	%eax,%eax
	je	Lj581
	jmp	Lj582
Lj581:
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-20(%ebp),%eax
	call	ZINFLATE_INFLATERESET$Z_STREAM$$LONGINT
	movl	-20(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-20(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	%edx,20(%eax)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD
	movl	-20(%ebp),%edx
	movl	%eax,660(%edx)
Lj582:
Lj578:
Lj550:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	testl	%eax,%eax
	jne	Lj601
	jmp	Lj603
Lj603:
	movl	-20(%ebp),%eax
	cmpb	$0,300(%eax)
	jne	Lj601
	jmp	Lj602
Lj601:
	jmp	Lj493
Lj602:
Lj492:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj491
	jmp	Lj493
Lj493:
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-32(%ebp)
	movl	-20(%ebp),%eax
	movl	660(%eax),%eax
	movl	-32(%ebp),%ecx
	movl	-24(%ebp),%edx
	call	CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD
	movl	-20(%ebp),%edx
	movl	%eax,660(%edx)
	movl	-20(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-16(%ebp)
Lj467:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	GZIO_GZGETC$POINTER$$LONGINT
GZIO_GZGETC$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	leal	-9(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT
	cmpl	$1,%eax
	je	Lj618
	jmp	Lj619
Lj618:
	movzbl	-9(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj628
Lj619:
	movl	$-1,-8(%ebp)
Lj628:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	GZIO_GZGETS$POINTER$PCHAR$LONGINT$$PCHAR
GZIO_GZGETS$POINTER$PCHAR$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$25,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj633
	jmp	Lj635
Lj635:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj633
	jmp	Lj634
Lj633:
	movl	$0,-16(%ebp)
	jmp	Lj631
Lj634:
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	.balign 4,0x90
Lj640:
	decl	-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-25(%ebp)
	incl	-8(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj642
	jmp	Lj654
Lj654:
	movl	-24(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj642
	jmp	Lj653
Lj653:
	movb	-25(%ebp),%al
	cmpb	$13,%al
	je	Lj642
	jmp	Lj640
Lj642:
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj659
	jmp	Lj658
Lj659:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj657
	jmp	Lj658
Lj657:
	movl	$0,-16(%ebp)
	jmp	Lj662
Lj658:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj662:
Lj631:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT
GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj669
	jmp	Lj671
Lj671:
	movl	-20(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$119,%al
	jne	Lj669
	jmp	Lj670
Lj669:
	movl	$-2,-16(%ebp)
	jmp	Lj665
Lj670:
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,(%edx)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,4(%edx)
	jmp	Lj679
	.balign 4,0x90
Lj678:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj681
	jmp	Lj682
Lj681:
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	656(%eax),%eax
	movl	%eax,12(%edx)
	leal	-24(%ebp),%eax
	pushl	%eax
	movl	-20(%ebp),%eax
	movl	656(%eax),%edx
	movl	-20(%ebp),%eax
	leal	320(%eax),%eax
	movl	$16384,%ecx
	call	SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT
	call	FPC_IOCHECK
	movl	-24(%ebp),%eax
	cmpl	$16384,%eax
	jne	Lj693
	jmp	Lj694
Lj693:
	movl	-20(%ebp),%eax
	movl	$-1,296(%eax)
	jmp	Lj680
Lj694:
	movl	-20(%ebp),%eax
	movl	$16384,16(%eax)
Lj682:
	movl	-20(%ebp),%eax
	movl	$0,%edx
	call	ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT
	movl	-20(%ebp),%edx
	movl	%eax,296(%edx)
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	testl	%eax,%eax
	jne	Lj705
	jmp	Lj706
Lj705:
	jmp	Lj680
Lj706:
Lj679:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj678
	jmp	Lj680
Lj680:
	movl	-20(%ebp),%eax
	movl	660(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	CRC_CRC32$LONGWORD$PBYTE$LONGWORD$$LONGWORD
	movl	-20(%ebp),%edx
	movl	%eax,660(%edx)
	movl	-20(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-16(%ebp)
Lj665:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	GZIO_GZPUTC$POINTER$CHAR$$LONGINT
GZIO_GZPUTC$POINTER$CHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT
	cmpl	$1,%eax
	je	Lj719
	jmp	Lj720
Lj719:
	movzbl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj729
Lj720:
	movl	$-1,-12(%ebp)
Lj729:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	GZIO_GZPUTS$POINTER$PCHAR$$LONGINT
GZIO_GZPUTS$POINTER$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	movl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
GZIO_DO_FLUSH$POINTER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-17(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj750
	jmp	Lj752
Lj752:
	movl	-24(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$119,%al
	jne	Lj750
	jmp	Lj751
Lj750:
	movl	$-2,-12(%ebp)
	jmp	Lj744
Lj751:
	movl	-24(%ebp),%eax
	movl	$0,4(%eax)
	jmp	Lj758
	.balign 4,0x90
Lj757:
	movl	-24(%ebp),%eax
	movl	16(%eax),%edx
	movl	$16384,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj762
	jmp	Lj763
Lj762:
	leal	-28(%ebp),%eax
	pushl	%eax
	movl	-24(%ebp),%eax
	movl	656(%eax),%edx
	movl	-24(%ebp),%eax
	leal	320(%eax),%eax
	movl	-16(%ebp),%ecx
	call	SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT
	movl	-28(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-16(%ebp),%ecx
	movl	$0,%ebx
	cmpl	%ebx,%eax
	jne	Lj772
	cmpl	%ecx,%edx
	jne	Lj772
	jmp	Lj773
Lj772:
	movl	-24(%ebp),%eax
	movl	$-1,296(%eax)
	movl	$-1,-12(%ebp)
	jmp	Lj744
Lj773:
	movl	-24(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	656(%eax),%eax
	movl	%eax,12(%edx)
	movl	-24(%ebp),%eax
	movl	$16384,16(%eax)
Lj763:
	cmpb	$0,-17(%ebp)
	jne	Lj782
	jmp	Lj783
Lj782:
	jmp	Lj759
Lj783:
	movl	-24(%ebp),%eax
	movl	-8(%ebp),%edx
	call	ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT
	movl	-24(%ebp),%edx
	movl	%eax,296(%edx)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj792
	jmp	Lj791
Lj792:
	movl	-24(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$-5,%eax
	je	Lj790
	jmp	Lj791
Lj790:
	movl	-24(%ebp),%eax
	movl	$0,296(%eax)
Lj791:
	movl	-24(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj795
	jmp	Lj797
Lj797:
	movl	-24(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$1,%eax
	je	Lj795
	jmp	Lj796
Lj795:
	movb	$1,-17(%ebp)
	jmp	Lj798
Lj796:
	movb	$0,-17(%ebp)
Lj798:
	movl	-24(%ebp),%eax
	movl	296(%eax),%eax
	testl	%eax,%eax
	jne	Lj801
	jmp	Lj800
Lj801:
	movl	-24(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$1,%eax
	jne	Lj799
	jmp	Lj800
Lj799:
	jmp	Lj759
Lj800:
Lj758:
	jmp	Lj757
Lj759:
	movl	-24(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$1,%eax
	je	Lj802
	jmp	Lj803
Lj802:
	movl	$0,-12(%ebp)
	jmp	Lj806
Lj803:
	movl	-24(%ebp),%eax
	movl	296(%eax),%eax
	movl	%eax,-12(%ebp)
Lj806:
Lj744:
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	GZIO_GZFLUSH$POINTER$LONGINT$$LONGINT
GZIO_GZFLUSH$POINTER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	GZIO_DO_FLUSH$POINTER$LONGINT$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj819
	jmp	Lj820
Lj819:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj809
Lj820:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$1,%eax
	je	Lj823
	jmp	Lj824
Lj823:
	movl	$0,-12(%ebp)
	jmp	Lj827
Lj824:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	movl	%eax,-12(%ebp)
Lj827:
Lj809:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	GZIO_GZREWIND$POINTER$$LONGINT
GZIO_GZREWIND$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj834
	jmp	Lj836
Lj836:
	movl	-12(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$114,%al
	jne	Lj834
	jmp	Lj835
Lj834:
	movl	$-1,-8(%ebp)
	jmp	Lj830
Lj835:
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
	je	Lj847
	jmp	Lj848
Lj847:
	pushl	$0
	pushl	$0
	movl	-12(%ebp),%eax
	leal	320(%eax),%eax
	call	SYSTEM_SEEK$file$INT64
	movl	$0,-8(%ebp)
	jmp	Lj830
Lj848:
	movl	-12(%ebp),%eax
	call	ZINFLATE_INFLATERESET$Z_STREAM$$LONGINT
	movl	-12(%ebp),%eax
	movl	828(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	-12(%ebp),%eax
	leal	320(%eax),%eax
	call	SYSTEM_SEEK$file$INT64
	call	SYSTEM_IORESULT$$WORD
	movzwl	%ax,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj830
Lj830:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	GZIO_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT
GZIO_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj867
	jmp	Lj871
Lj871:
	movl	-12(%ebp),%eax
	cmpl	$2,%eax
	je	Lj867
	jmp	Lj870
Lj870:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$-1,%eax
	je	Lj867
	jmp	Lj869
Lj869:
	movl	-20(%ebp),%eax
	movl	296(%eax),%eax
	cmpl	$-3,%eax
	je	Lj867
	jmp	Lj868
Lj867:
	movl	$-1,-16(%ebp)
	jmp	Lj863
Lj868:
	movl	-20(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$119,%al
	je	Lj874
	jmp	Lj875
Lj874:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj876
	jmp	Lj877
Lj876:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	subl	%eax,-8(%ebp)
Lj877:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj878
	jmp	Lj879
Lj878:
	movl	$-1,-16(%ebp)
	jmp	Lj863
Lj879:
	movl	-20(%ebp),%eax
	movl	652(%eax),%eax
	testl	%eax,%eax
	je	Lj882
	jmp	Lj883
Lj882:
	movl	-20(%ebp),%eax
	leal	652(%eax),%eax
	movl	$16384,%edx
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-20(%ebp),%eax
	movl	652(%eax),%eax
	movb	$0,%cl
	movl	$16384,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj883:
	jmp	Lj895
	.balign 4,0x90
Lj894:
	movl	$16384,-24(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$16384,%eax
	jl	Lj899
	jmp	Lj900
Lj899:
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj900:
	movl	-20(%ebp),%eax
	movl	652(%eax),%edx
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj911
	jmp	Lj912
Lj911:
	movl	$-1,-16(%ebp)
	jmp	Lj863
Lj912:
	movl	-24(%ebp),%eax
	subl	%eax,-8(%ebp)
Lj895:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj894
	jmp	Lj896
Lj896:
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj863
Lj875:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	je	Lj917
	jmp	Lj918
Lj917:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	addl	%eax,-8(%ebp)
Lj918:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj919
	jmp	Lj920
Lj919:
	movl	$-1,-16(%ebp)
	jmp	Lj863
Lj920:
	movl	-20(%ebp),%eax
	cmpb	$0,824(%eax)
	jne	Lj923
	jmp	Lj924
Lj923:
	movl	-20(%ebp),%eax
	movl	$0,4(%eax)
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	652(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	-20(%ebp),%eax
	leal	320(%eax),%eax
	call	SYSTEM_SEEK$file$INT64
	call	SYSTEM_IORESULT$$WORD
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj933
	jmp	Lj934
Lj933:
	movl	$-1,-16(%ebp)
	jmp	Lj863
Lj934:
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj863
Lj924:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jbe	Lj943
	jmp	Lj944
Lj943:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	subl	%eax,-8(%ebp)
	jmp	Lj945
Lj944:
	movl	-4(%ebp),%eax
	call	GZIO_GZREWIND$POINTER$$LONGINT
	testl	%eax,%eax
	jne	Lj946
	jmp	Lj947
Lj946:
	movl	$-1,-16(%ebp)
	jmp	Lj863
Lj947:
Lj945:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj954
	jmp	Lj953
Lj954:
	movl	-20(%ebp),%eax
	movl	656(%eax),%eax
	testl	%eax,%eax
	je	Lj952
	jmp	Lj953
Lj952:
	movl	-20(%ebp),%eax
	leal	656(%eax),%eax
	movl	$16384,%edx
	call	SYSTEM_GETMEM$POINTER$LONGWORD
Lj953:
	jmp	Lj960
	.balign 4,0x90
Lj959:
	movl	$16384,-24(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$16384,%eax
	jl	Lj964
	jmp	Lj965
Lj964:
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj965:
	movl	-20(%ebp),%eax
	movl	656(%eax),%edx
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jbe	Lj976
	jmp	Lj977
Lj976:
	movl	$-1,-16(%ebp)
	jmp	Lj863
Lj977:
	movl	-24(%ebp),%eax
	subl	%eax,-8(%ebp)
Lj960:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj959
	jmp	Lj961
Lj961:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp)
Lj863:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	GZIO_GZTELL$POINTER$$LONGINT
GZIO_GZTELL$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	$0,%edx
	call	GZIO_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	GZIO_GZEOF$POINTER$$BOOLEAN
GZIO_GZEOF$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj996
	jmp	Lj998
Lj998:
	movl	-12(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$114,%al
	jne	Lj996
	jmp	Lj997
Lj996:
	movb	$0,-5(%ebp)
	jmp	Lj1001
Lj997:
	movl	-12(%ebp),%eax
	movb	300(%eax),%al
	movb	%al,-5(%ebp)
Lj1001:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
GZIO_PUTLONG$file$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.balign 4,0x90
Lj1008:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	andl	$255,%eax
	movb	%al,-13(%ebp)
	leal	-13(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	SYSTEM_BLOCKWRITE$file$formal$LONGINT
	call	FPC_IOCHECK
	movl	-8(%ebp),%eax
	shrl	$8,%eax
	movl	%eax,-8(%ebp)
	cmpl	$3,-12(%ebp)
	jl	Lj1008
	leave
	ret

.text
	.balign 4,0x90
.globl	GZIO_GZCLOSE$POINTER$$LONGINT
GZIO_GZCLOSE$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1023
	jmp	Lj1024
Lj1023:
	movl	$-2,-8(%ebp)
	jmp	Lj1019
Lj1024:
	movl	-16(%ebp),%eax
	movb	825(%eax),%al
	cmpb	$119,%al
	je	Lj1027
	jmp	Lj1028
Lj1027:
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	GZIO_DO_FLUSH$POINTER$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1035
	jmp	Lj1036
Lj1035:
	leal	-4(%ebp),%eax
	call	GZIO_DESTROY$GZ_STREAMP$$LONGINT
	movl	%eax,-8(%ebp)
	jmp	Lj1019
Lj1036:
	movl	-16(%ebp),%eax
	movl	660(%eax),%edx
	movl	-16(%ebp),%eax
	leal	320(%eax),%eax
	call	GZIO_PUTLONG$file$LONGWORD
	movl	-16(%ebp),%eax
	movl	8(%eax),%edx
	movl	-16(%ebp),%eax
	leal	320(%eax),%eax
	call	GZIO_PUTLONG$file$LONGWORD
Lj1028:
	leal	-4(%ebp),%eax
	call	GZIO_DESTROY$GZ_STREAMP$$LONGINT
	movl	%eax,-8(%ebp)
Lj1019:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	GZIO_GZERROR$POINTER$SMALLINT$$SHORTSTRING
GZIO_GZERROR$POINTER$SMALLINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$796,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-272(%ebp)
	movl	-272(%ebp),%eax
	testl	%eax,%eax
	je	Lj1057
	jmp	Lj1058
Lj1057:
	movl	-8(%ebp),%eax
	movw	$-2,(%eax)
	movl	-12(%ebp),%edx
	movl	$-2,%eax
	call	ZBASE_ZERROR$LONGINT$$SHORTSTRING
Lj1058:
	movl	-272(%ebp),%eax
	movl	-8(%ebp),%edx
	movw	296(%eax),%ax
	movw	%ax,(%edx)
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj1067
	jmp	Lj1068
Lj1067:
	movl	-12(%ebp),%edx
	movl	$0,%eax
	call	ZBASE_ZERROR$LONGINT$$SHORTSTRING
	jmp	Lj1053
Lj1068:
	movl	-272(%ebp),%eax
	leal	24(%eax),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$-1,%ax
	je	Lj1079
	jmp	Lj1080
Lj1079:
	movb	$0,-268(%ebp)
Lj1080:
	movzbl	-268(%ebp),%eax
	testl	%eax,%eax
	je	Lj1083
	jmp	Lj1084
Lj1083:
	movl	-272(%ebp),%eax
	movl	296(%eax),%eax
	leal	-528(%ebp),%edx
	call	ZBASE_ZERROR$LONGINT$$SHORTSTRING
	leal	-528(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
Lj1084:
	pushl	$2
	movl	-272(%ebp),%eax
	leal	744(%eax),%ecx
	leal	-796(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leal	-796(%ebp),%eax
	movl	%eax,-540(%ebp)
	movl	$_$GZIO$_Ld2,%eax
	movl	%eax,-536(%ebp)
	leal	-268(%ebp),%eax
	movl	%eax,-532(%ebp)
	leal	-540(%ebp),%ecx
	leal	-528(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat_multi
	leal	-528(%ebp),%ecx
	movl	-272(%ebp),%eax
	leal	664(%eax),%eax
	movl	$79,%edx
	call	fpc_shortstr_to_shortstr
	movl	-272(%ebp),%eax
	leal	664(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
Lj1053:
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_GZIO
THREADVARLIST_GZIO:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
TC_GZIO_GZ_MAGIC:
	.byte	31,139

.data
	.balign 4
.globl	_$GZIO$_Ld1
_$GZIO$_Ld1:
	.ascii	"\000\000"

.data
	.balign 4
.globl	_$GZIO$_Ld2
_$GZIO$_Ld2:
	.ascii	"\002: \000"
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

