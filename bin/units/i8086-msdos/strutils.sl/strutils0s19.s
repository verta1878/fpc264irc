BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL STRUTILS_$$_STRINGREPLACEFAST$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
STRUTILS_$$_STRINGREPLACEFAST$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,56
		mov	word [bp-2],0
		mov	word [bp-8],0
		mov	word [bp-10],0
		mov	ax,1
		push	ax
		lea	ax,[bp-36]
		push	ax
		lea	ax,[bp-30]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j498
		cmp	word [bp+8],0
		je	..@j500
		jmp	..@j502
..@j502:
		mov	si,word [bp+8]
		test	si,si
		je	..@j503
		mov	si,word [si-2]
..@j503:
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j504
		mov	bx,word [bx-2]
..@j504:
		cmp	si,bx
		jg	..@j500
		jmp	..@j501
..@j500:
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+10]
		call	fpc_ansistr_assign
		jmp	..@j498
..@j501:
		mov	ax,word [bp+12]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j515
		mov	bx,word [bx-2]
..@j515:
		mov	word [bp-22],bx
		mov	word [bp-4],0
		mov	word [bp-6],0
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,2
		test	ax,ax
		jne	..@j520
		jmp	..@j521
..@j520:
		lea	ax,[bp-8]
		push	ax
		push	word [bp+8]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+14]
		call	ax
		lea	ax,[bp-10]
		push	ax
		push	word [bp+8]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+16]
		call	ax
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j532
		mov	bx,word [bx-2]
..@j532:
		mov	word [bp-12],bx
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j535
		mov	bx,word [bx-2]
..@j535:
		mov	word [bp-14],bx
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j538
		mov	bx,word [bx-2]
..@j538:
		mov	word [bp-24],bx
		jmp	..@j540
	ALIGN 2
..@j539:
		mov	bx,word [bp+10]
		mov	si,word [bp-12]
		mov	ax,word [bp-10]
		mov	word [bp-54],ax
		mov	di,word [bp-22]
		mov	al,byte [bx+si-1]
		mov	bx,word [bp-54]
		cmp	al,byte [bx+di-1]
		je	..@j542
		jmp	..@j544
..@j544:
		mov	bx,word [bp+10]
		mov	si,word [bp-12]
		mov	ax,word [bp-8]
		mov	word [bp-52],ax
		mov	di,word [bp-22]
		mov	al,byte [bx+si-1]
		mov	bx,word [bp-52]
		cmp	al,byte [bx+di-1]
		je	..@j542
		jmp	..@j543
..@j542:
		mov	ax,word [bp-22]
		dec	ax
		mov	word [bp-16],ax
		mov	ax,word [bp-12]
		dec	ax
		mov	word [bp-18],ax
		jmp	..@j550
	ALIGN 2
..@j549:
		mov	bx,word [bp+10]
		mov	si,word [bp-18]
		mov	ax,word [bp-10]
		mov	word [bp-48],ax
		mov	di,word [bp-16]
		mov	al,byte [bx+si-1]
		mov	bx,word [bp-48]
		cmp	al,byte [bx+di-1]
		je	..@j552
		jmp	..@j554
..@j554:
		mov	bx,word [bp+10]
		mov	si,word [bp-18]
		mov	ax,word [bp-8]
		mov	word [bp-46],ax
		mov	di,word [bp-16]
		mov	al,byte [bx+si-1]
		mov	bx,word [bp-46]
		cmp	al,byte [bx+di-1]
		je	..@j552
		jmp	..@j553
..@j552:
		dec	word [bp-16]
		dec	word [bp-18]
		jmp	..@j555
..@j553:
		jmp	..@j551
..@j555:
..@j550:
		cmp	word [bp-16],1
		jge	..@j549
		jmp	..@j551
..@j551:
		cmp	word [bp-16],0
		je	..@j556
		jmp	..@j557
..@j556:
		mov	ax,word [bp-18]
		inc	ax
		mov	word [bp-40],ax
		mov	word [bp-42],bp
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		je	..@j563
		jmp	..@j564
..@j563:
		push	bp
		call	STRUTILS$_$STRINGREPLACEFAST$crcB7088804_$$_RESIZEALLOCATEDMATCHES
..@j564:
		mov	bx,word [bp-2]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-40]
		mov	word [bx+si],ax
		inc	word [bp-4]
		mov	ax,word [bp-22]
		add	word [bp-12],ax
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,1
		test	ax,ax
		je	..@j569
		jmp	..@j570
..@j569:
		jmp	..@j541
..@j570:
		jmp	..@j571
..@j557:
		inc	word [bp-12]
..@j571:
		jmp	..@j572
..@j543:
		inc	word [bp-12]
..@j572:
..@j540:
		mov	ax,word [bp-12]
		cmp	ax,word [bp-14]
		jle	..@j539
		jmp	..@j541
..@j541:
		jmp	..@j573
..@j521:
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j576
		mov	bx,word [bx-2]
..@j576:
		mov	word [bp-12],bx
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j579
		mov	bx,word [bx-2]
..@j579:
		mov	word [bp-14],bx
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j582
		mov	bx,word [bx-2]
..@j582:
		mov	word [bp-24],bx
		jmp	..@j584
	ALIGN 2
..@j583:
		mov	bx,word [bp+10]
		mov	si,word [bp-12]
		mov	ax,word [bp+8]
		mov	word [bp-50],ax
		mov	di,word [bp-22]
		mov	al,byte [bx+si-1]
		mov	bx,word [bp-50]
		cmp	al,byte [bx+di-1]
		je	..@j586
		jmp	..@j587
..@j586:
		mov	ax,word [bp-22]
		dec	ax
		mov	word [bp-16],ax
		mov	ax,word [bp-12]
		dec	ax
		mov	word [bp-18],ax
		jmp	..@j593
	ALIGN 2
..@j592:
		mov	bx,word [bp+10]
		mov	si,word [bp-18]
		mov	ax,word [bp+8]
		mov	word [bp-44],ax
		mov	di,word [bp-16]
		mov	al,byte [bx+si-1]
		mov	bx,word [bp-44]
		cmp	al,byte [bx+di-1]
		je	..@j595
		jmp	..@j596
..@j595:
		dec	word [bp-16]
		dec	word [bp-18]
		jmp	..@j597
..@j596:
		jmp	..@j594
..@j597:
..@j593:
		cmp	word [bp-16],1
		jge	..@j592
		jmp	..@j594
..@j594:
		cmp	word [bp-16],0
		je	..@j598
		jmp	..@j599
..@j598:
		mov	ax,word [bp-18]
		inc	ax
		mov	word [bp-40],ax
		mov	word [bp-42],bp
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		je	..@j605
		jmp	..@j606
..@j605:
		push	bp
		call	STRUTILS$_$STRINGREPLACEFAST$crcB7088804_$$_RESIZEALLOCATEDMATCHES
..@j606:
		mov	bx,word [bp-2]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-40]
		mov	word [bx+si],ax
		inc	word [bp-4]
		mov	ax,word [bp-22]
		add	word [bp-12],ax
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,1
		test	ax,ax
		je	..@j611
		jmp	..@j612
..@j611:
		jmp	..@j585
..@j612:
		jmp	..@j613
..@j599:
		inc	word [bp-12]
..@j613:
		jmp	..@j614
..@j587:
		inc	word [bp-12]
..@j614:
..@j584:
		mov	ax,word [bp-12]
		cmp	ax,word [bp-14]
		jle	..@j583
		jmp	..@j585
..@j585:
..@j573:
		mov	ax,word [bp+12]
		push	ax
		mov	ax,word [bp-4]
		mul	word [bp-22]
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j619
		mov	bx,word [bx-2]
..@j619:
		sub	bx,ax
		mov	ax,word [bp-4]
		mul	word [bp-24]
		add	ax,bx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	word [bp-12],1
		mov	word [bp-18],1
		mov	ax,word [bp-4]
		dec	ax
		mov	word [bp-56],ax
		mov	word [bp-16],0
		mov	ax,word [bp-56]
		cmp	ax,word [bp-16]
		jl	..@j629
		dec	word [bp-16]
	ALIGN 2
..@j630:
		inc	word [bp-16]
		mov	bx,word [bp-2]
		mov	ax,word [bp-16]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	dx,word [bp-12]
		sub	ax,dx
		mov	word [bp-20],ax
		cmp	word [bp-20],0
		jg	..@j633
		jmp	..@j634
..@j633:
		mov	bx,word [bp+10]
		mov	si,word [bp-12]
		lea	ax,[bx+si-1]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-18]
		lea	ax,[bx+si-1]
		push	ax
		push	word [bp-20]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-20]
		add	word [bp-18],ax
		mov	ax,word [bp-20]
		add	word [bp-12],ax
..@j634:
		cmp	word [bp-24],0
		jg	..@j643
		jmp	..@j644
..@j643:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-18]
		lea	ax,[bx+si-1]
		push	ax
		push	word [bp-24]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-24]
		add	word [bp-18],ax
..@j644:
		mov	ax,word [bp-22]
		add	word [bp-12],ax
		mov	ax,word [bp-56]
		cmp	ax,word [bp-16]
		jg	..@j630
..@j629:
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j655
		mov	bx,word [bx-2]
..@j655:
		cmp	bx,word [bp-18]
		jge	..@j653
		jmp	..@j654
..@j653:
		mov	bx,word [bp+10]
		mov	si,word [bp-12]
		lea	ax,[bx+si-1]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-18]
		lea	ax,[bx+si-1]
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j664
		mov	bx,word [bx-2]
..@j664:
		mov	ax,word [bp-18]
		sub	bx,ax
		inc	bx
		push	bx
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j654:
..@j498:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		mov	ax,word RTTI_$STRUTILS_$$_DEF207
		push	ax
		call	fpc_finalize
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j499
		call	FPC_RERAISE
..@j499:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_finalize
EXTERN	RTTI_$STRUTILS_$$_DEF207
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	STRUTILS$_$STRINGREPLACEFAST$crcB7088804_$$_RESIZEALLOCATEDMATCHES
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
