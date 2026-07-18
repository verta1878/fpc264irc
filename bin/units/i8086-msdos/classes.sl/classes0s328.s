BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTRINGS_$__$$_SETDELIMITEDTEXT$ANSISTRING
CLASSES$_$TSTRINGS_$__$$_SETDELIMITEDTEXT$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,810
		mov	word [bp-810],0
		mov	word [bp-40],0
		mov	word [bp-38],0
		mov	word [bp-36],0
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j7356
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_BEGINUPDATE
		mov	word [bp-2],1
		mov	word [bp-4],1
		mov	byte [bp-5],0
		mov	ax,1
		push	ax
		lea	ax,[bp-32]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j7368
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+92]
		call	ax
		mov	bx,word [bp+6]
		cmp	byte [bx+17],0
		jne	..@j7373
		jmp	..@j7374
..@j7373:
		jmp	..@j7376
	ALIGN 2
..@j7375:
		cmp	byte [bp-5],0
		jne	..@j7381
		jmp	..@j7379
..@j7381:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7382
		mov	bx,word [bx-2]
..@j7382:
		cmp	bx,word [bp-2]
		jge	..@j7380
		jmp	..@j7379
..@j7380:
		mov	di,word [bp+6]
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		mov	al,byte [di+8]
		cmp	al,byte [bx+si-1]
		je	..@j7378
		jmp	..@j7379
..@j7378:
		inc	word [bp-2]
..@j7379:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7385
		mov	bx,word [bx-2]
..@j7385:
		cmp	bx,word [bp-2]
		jge	..@j7383
		jmp	..@j7384
..@j7383:
		mov	di,word [bp+6]
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		mov	al,byte [di+7]
		cmp	al,byte [bx+si-1]
		je	..@j7386
		jmp	..@j7387
..@j7386:
		mov	ax,word [bp-2]
		inc	ax
		mov	word [bp-4],ax
		jmp	..@j7391
	ALIGN 2
..@j7390:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7396
		mov	bx,word [bx-2]
..@j7396:
		cmp	bx,word [bp-4]
		jge	..@j7395
		jmp	..@j7394
..@j7395:
		mov	di,word [bp+6]
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	al,byte [di+7]
		cmp	al,byte [bx+si-1]
		je	..@j7393
		jmp	..@j7394
..@j7393:
		add	word [bp-4],2
		jmp	..@j7397
..@j7394:
		inc	word [bp-4]
..@j7397:
..@j7391:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7399
		mov	bx,word [bx-2]
..@j7399:
		cmp	bx,word [bp-4]
		jge	..@j7398
		jmp	..@j7392
..@j7398:
		mov	di,word [bp+6]
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	al,byte [di+7]
		cmp	al,byte [bx+si-1]
		jne	..@j7390
		jmp	..@j7400
..@j7400:
		mov	ax,word [bp-4]
		inc	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7402
		mov	bx,word [bx-2]
..@j7402:
		cmp	ax,bx
		jle	..@j7401
		jmp	..@j7392
..@j7401:
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	si,ax
		inc	si
		mov	di,word [bp+6]
		mov	al,byte [bx+si-1]
		cmp	al,byte [di+7]
		je	..@j7390
		jmp	..@j7392
..@j7392:
		push	word [bp+6]
		lea	ax,[bp-36]
		push	ax
		lea	ax,[bp-38]
		push	ax
		push	word [bp+4]
		mov	ax,word [bp-2]
		inc	ax
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,dx
		dec	ax
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-38]
		lea	ax,[bp-40]
		push	ax
		lea	ax,[bp-296]
		push	ax
		mov	ax,255
		push	ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+7]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-552],ax
		lea	ax,[bp-552]
		push	ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+7]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-808],ax
		lea	ax,[bp-808]
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-296]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-40]
		lea	ax,[bp-810]
		push	ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+7]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-810]
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
		push	word [bp-36]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
		mov	ax,word [bp-4]
		inc	ax
		mov	word [bp-2],ax
		jmp	..@j7447
..@j7387:
		mov	ax,word [bp-2]
		mov	word [bp-4],ax
		jmp	..@j7451
	ALIGN 2
..@j7450:
		inc	word [bp-4]
..@j7451:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7454
		mov	bx,word [bx-2]
..@j7454:
		cmp	bx,word [bp-4]
		jge	..@j7453
		jmp	..@j7452
..@j7453:
		mov	di,word [bp+6]
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	al,byte [di+8]
		cmp	al,byte [bx+si-1]
		jne	..@j7450
		jmp	..@j7452
..@j7452:
		push	word [bp+6]
		lea	ax,[bp-810]
		push	ax
		push	word [bp+4]
		push	word [bp-2]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,dx
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-810]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
..@j7447:
		jmp	..@j7469
..@j7384:
		cmp	byte [bp-5],0
		jne	..@j7470
		jmp	..@j7471
..@j7470:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
..@j7471:
..@j7469:
		mov	byte [bp-5],1
..@j7376:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7478
		mov	bx,word [bx-2]
..@j7478:
		cmp	bx,word [bp-2]
		jge	..@j7375
		jmp	..@j7377
..@j7377:
		jmp	..@j7479
..@j7374:
		jmp	..@j7481
	ALIGN 2
..@j7480:
		cmp	byte [bp-5],0
		jne	..@j7486
		jmp	..@j7484
..@j7486:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7487
		mov	bx,word [bx-2]
..@j7487:
		cmp	bx,word [bp-2]
		jge	..@j7485
		jmp	..@j7484
..@j7485:
		mov	di,word [bp+6]
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		mov	al,byte [di+8]
		cmp	al,byte [bx+si-1]
		je	..@j7483
		jmp	..@j7484
..@j7483:
		inc	word [bp-2]
..@j7484:
		jmp	..@j7489
	ALIGN 2
..@j7488:
		inc	word [bp-2]
..@j7489:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7492
		mov	bx,word [bx-2]
..@j7492:
		cmp	bx,word [bp-2]
		jge	..@j7491
		jmp	..@j7490
..@j7491:
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		cmp	byte [bx+si-1],32
		jbe	..@j7488
		jmp	..@j7490
..@j7490:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7495
		mov	bx,word [bx-2]
..@j7495:
		cmp	bx,word [bp-2]
		jge	..@j7493
		jmp	..@j7494
..@j7493:
		mov	di,word [bp+6]
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		mov	al,byte [di+7]
		cmp	al,byte [bx+si-1]
		je	..@j7496
		jmp	..@j7497
..@j7496:
		mov	ax,word [bp-2]
		inc	ax
		mov	word [bp-4],ax
		jmp	..@j7501
	ALIGN 2
..@j7500:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7506
		mov	bx,word [bx-2]
..@j7506:
		cmp	bx,word [bp-4]
		jge	..@j7505
		jmp	..@j7504
..@j7505:
		mov	di,word [bp+6]
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	al,byte [di+7]
		cmp	al,byte [bx+si-1]
		je	..@j7503
		jmp	..@j7504
..@j7503:
		add	word [bp-4],2
		jmp	..@j7507
..@j7504:
		inc	word [bp-4]
..@j7507:
..@j7501:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7509
		mov	bx,word [bx-2]
..@j7509:
		cmp	bx,word [bp-4]
		jge	..@j7508
		jmp	..@j7502
..@j7508:
		mov	di,word [bp+6]
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	al,byte [di+7]
		cmp	al,byte [bx+si-1]
		jne	..@j7500
		jmp	..@j7510
..@j7510:
		mov	ax,word [bp-4]
		inc	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7512
		mov	bx,word [bx-2]
..@j7512:
		cmp	ax,bx
		jle	..@j7511
		jmp	..@j7502
..@j7511:
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	si,ax
		inc	si
		mov	di,word [bp+6]
		mov	al,byte [bx+si-1]
		cmp	al,byte [di+7]
		je	..@j7500
		jmp	..@j7502
..@j7502:
		push	word [bp+6]
		lea	ax,[bp-810]
		push	ax
		lea	ax,[bp-40]
		push	ax
		push	word [bp+4]
		mov	ax,word [bp-2]
		inc	ax
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,dx
		dec	ax
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-40]
		lea	ax,[bp-38]
		push	ax
		lea	ax,[bp-296]
		push	ax
		mov	ax,255
		push	ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+7]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-552],ax
		lea	ax,[bp-552]
		push	ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+7]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-808],ax
		lea	ax,[bp-808]
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-296]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-38]
		lea	ax,[bp-36]
		push	ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+7]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-36]
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
		push	word [bp-810]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
		mov	ax,word [bp-4]
		inc	ax
		mov	word [bp-2],ax
		jmp	..@j7557
..@j7497:
		mov	ax,word [bp-2]
		mov	word [bp-4],ax
		jmp	..@j7561
	ALIGN 2
..@j7560:
		inc	word [bp-4]
..@j7561:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7565
		mov	bx,word [bx-2]
..@j7565:
		cmp	bx,word [bp-4]
		jge	..@j7564
		jmp	..@j7562
..@j7564:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],32
		ja	..@j7563
		jmp	..@j7562
..@j7563:
		mov	di,word [bp+6]
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	al,byte [di+8]
		cmp	al,byte [bx+si-1]
		jne	..@j7560
		jmp	..@j7562
..@j7562:
		push	word [bp+6]
		lea	ax,[bp-810]
		push	ax
		push	word [bp+4]
		push	word [bp-2]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,dx
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-810]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
..@j7557:
		jmp	..@j7580
..@j7494:
		cmp	byte [bp-5],0
		jne	..@j7581
		jmp	..@j7582
..@j7581:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
..@j7582:
..@j7580:
		jmp	..@j7588
	ALIGN 2
..@j7587:
		inc	word [bp-2]
..@j7588:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7591
		mov	bx,word [bx-2]
..@j7591:
		cmp	bx,word [bp-2]
		jge	..@j7590
		jmp	..@j7589
..@j7590:
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		cmp	byte [bx+si-1],32
		jbe	..@j7587
		jmp	..@j7589
..@j7589:
		mov	byte [bp-5],1
..@j7481:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j7594
		mov	bx,word [bx-2]
..@j7594:
		cmp	bx,word [bp-2]
		jge	..@j7480
		jmp	..@j7482
..@j7482:
..@j7479:
..@j7368:
		call	FPC_POPADDRSTACK
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
		pop	ax
		test	ax,ax
		je	..@j7369
		call	FPC_RERAISE
..@j7369:
..@j7356:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-810]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-40]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-38]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-36]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j7357
		call	FPC_RERAISE
..@j7357:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_shortstr_to_ansistr
EXTERN	fpc_shortstr_concat
EXTERN	fpc_ansistr_copy
EXTERN	CLASSES$_$TSTRINGS_$__$$_BEGINUPDATE
EXTERN	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
