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
	GLOBAL SYSUTILS$_$INTSTRTOTIME$crc43AF2F28_$$_SPLITELEMENTS$TTIMEVALUES$SMALLINT$$BOOLEAN
SYSUTILS$_$INTSTRTOTIME$crc43AF2F28_$$_SPLITELEMENTS$TTIMEVALUES$SMALLINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,812
		mov	word [bp-808],0
		mov	word [bp-806],0
		mov	word [bp-804],0
		mov	ax,1
		push	ax
		lea	ax,[bp-288]
		push	ax
		lea	ax,[bp-282]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10489
		mov	byte [bp-1],0
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	byte [bp-18],0
		mov	word [bp-12],0
		mov	ax,word [bp+6]
		push	ax
		mov	ax,8
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	word [bp-4],0
		jmp	..@j10508
	ALIGN 2
..@j10507:
		inc	word [bp-4]
..@j10508:
		mov	bx,word [bp+8]
		mov	ax,word [bx+8]
		cmp	ax,word [bp-4]
		jg	..@j10510
		jmp	..@j10509
..@j10510:
		mov	bx,word [bp+8]
		mov	bx,word [bx+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si],32
		je	..@j10507
		jmp	..@j10509
..@j10509:
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+8]
		dec	ax
		cmp	ax,word [bp-4]
		jl	..@j10513
		jmp	..@j10516
..@j10516:
		mov	bx,word [bp+8]
		mov	bx,word [bx+10]
		mov	si,word [bp-4]
		mov	di,word [bp+8]
		mov	al,byte [bx+si]
		cmp	al,byte [di+4]
		je	..@j10513
		jmp	..@j10515
..@j10515:
		mov	bx,word [bp+8]
		mov	bx,word [bx+10]
		mov	si,word [bp-4]
		mov	di,word [bp+8]
		mov	di,word [di+6]
		mov	al,byte [bx+si]
		cmp	al,byte [di+3]
		je	..@j10513
		jmp	..@j10514
..@j10513:
		jmp	..@j10489
..@j10514:
		mov	bx,word [bp+8]
		mov	bx,word [bx+10]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j10519
..@j10519:
		mov	al,0
		jnc	..@j10520
		inc	ax
..@j10520:
		mov	byte [bp-17],al
		jmp	..@j10522
	ALIGN 2
..@j10521:
		mov	bx,word [bp+8]
		mov	bx,word [bx+10]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	byte [bp-275],al
		mov	al,byte [bp-275]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j10528
..@j10528:
		jc	..@j10526
		jmp	..@j10527
..@j10526:
		cmp	byte [bp-17],0
		je	..@j10529
		jmp	..@j10531
..@j10531:
		cmp	word [bp-12],3
		jg	..@j10529
		jmp	..@j10530
..@j10529:
		jmp	..@j10489
..@j10530:
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		cmp	byte [bp-275],48
		jne	..@j10534
		jmp	..@j10535
..@j10534:
		mov	ax,word [bp-6]
		mov	word [bp-14],ax
		jmp	..@j10538
..@j10535:
		mov	word [bp-14],-1
..@j10538:
		jmp	..@j10542
	ALIGN 2
..@j10541:
		cmp	word [bp-14],-1
		je	..@j10546
		jmp	..@j10545
..@j10546:
		mov	bx,word [bp+8]
		mov	bx,word [bx+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si],48
		jne	..@j10544
		jmp	..@j10545
..@j10544:
		mov	ax,word [bp-4]
		mov	word [bp-14],ax
..@j10545:
		inc	word [bp-4]
..@j10542:
		mov	bx,word [bp+8]
		mov	ax,word [bx+8]
		dec	ax
		cmp	ax,word [bp-4]
		jg	..@j10549
		jmp	..@j10543
..@j10549:
		mov	bx,word [bp+8]
		mov	bx,word [bx+10]
		mov	ax,word [bp-4]
		inc	ax
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j10550
..@j10550:
		jc	..@j10541
		jmp	..@j10543
..@j10543:
		cmp	word [bp-14],-1
		je	..@j10551
		jmp	..@j10552
..@j10551:
		mov	ax,word [bp-4]
		mov	word [bp-14],ax
..@j10552:
		mov	ax,word [bp-4]
		inc	ax
		mov	dx,word [bp-14]
		sub	ax,dx
		mov	word [bp-8],ax
		cmp	word [bp-8],2
		jle	..@j10557
		jmp	..@j10559
..@j10559:
		cmp	word [bp-8],3
		jle	..@j10560
		jmp	..@j10558
..@j10560:
		cmp	word [bp-12],3
		je	..@j10557
		jmp	..@j10558
..@j10557:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-546]
		push	ax
		mov	bx,word [bp+8]
		mov	dx,word [bx+10]
		mov	ax,word [bp-14]
		add	ax,dx
		push	ax
		push	word [bp-8]
		call	SYSUTILS$_$INTSTRTOTIME$crc43AF2F28_$$_STRPAS$PCHAR$SMALLINT$$SHORTSTRING
		lea	ax,[bp-546]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	fpc_val_uint_shortstr
		mov	word [bp-16],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-12]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-16]
		mov	word [bx+si],ax
		inc	word [bp-12]
		mov	byte [bp-17],0
		jmp	..@j10579
..@j10558:
		jmp	..@j10489
..@j10579:
		jmp	..@j10580
..@j10527:
		cmp	byte [bp-275],32
		je	..@j10581
		jmp	..@j10582
..@j10581:
		jmp	..@j10583
..@j10582:
		mov	bx,word [bp+8]
		mov	al,byte [bx+4]
		cmp	al,byte [bp-275]
		je	..@j10584
		jmp	..@j10585
..@j10584:
		cmp	byte [bp-17],0
		jne	..@j10586
		jmp	..@j10588
..@j10588:
		cmp	word [bp-12],2
		jg	..@j10586
		jmp	..@j10587
..@j10586:
		jmp	..@j10489
..@j10587:
		mov	byte [bp-17],1
		mov	byte [bp-18],0
		jmp	..@j10593
..@j10585:
		mov	bx,word [bp+8]
		mov	bx,word [bx+6]
		mov	al,byte [bx+3]
		cmp	al,byte [bp-275]
		je	..@j10594
		jmp	..@j10595
..@j10594:
		cmp	byte [bp-17],0
		jne	..@j10596
		jmp	..@j10599
..@j10599:
		cmp	byte [bp-18],0
		jne	..@j10596
		jmp	..@j10598
..@j10598:
		cmp	word [bp-12],3
		jne	..@j10596
		jmp	..@j10597
..@j10596:
		jmp	..@j10489
..@j10597:
		mov	byte [bp-17],1
		mov	byte [bp-18],1
		jmp	..@j10604
..@j10595:
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jne	..@j10605
		jmp	..@j10607
..@j10607:
		cmp	byte [bp-17],0
		jne	..@j10605
		jmp	..@j10606
..@j10605:
		jmp	..@j10489
..@j10606:
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		jmp	..@j10611
	ALIGN 2
..@j10610:
		inc	word [bp-4]
..@j10611:
		mov	bx,word [bp+8]
		mov	ax,word [bx+8]
		dec	ax
		cmp	ax,word [bp-4]
		jg	..@j10614
		jmp	..@j10612
..@j10614:
		mov	bx,word [bp+8]
		mov	ax,word [bx+10]
		mov	word [bp-812],ax
		mov	ax,word [bp-4]
		inc	ax
		mov	word [bp-810],ax
		mov	ax,word _$SYSUTILS$_Ld663
		push	ax
		lea	ax,[bp-354]
		push	ax
		mov	bx,word [bp+8]
		mov	al,byte [bx+4]
		mov	ah,0
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_set
		lea	ax,[bp-354]
		push	ax
		lea	ax,[bp-322]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+6]
		mov	al,byte [bx+3]
		mov	ah,0
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_set
		mov	bx,word [bp-812]
		mov	si,word [bp-810]
		mov	al,byte [bx+si]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [bp+si-322],ax
		je	..@j10613
		jmp	..@j10612
..@j10613:
		mov	bx,word [bp+8]
		mov	bx,word [bx+10]
		mov	ax,word [bp-4]
		inc	ax
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j10631
..@j10631:
		jnc	..@j10610
		jmp	..@j10612
..@j10612:
		mov	ax,word [bp-4]
		inc	ax
		mov	dx,word [bp-6]
		sub	ax,dx
		mov	word [bp-8],ax
		lea	ax,[bp-274]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-802]
		push	ax
		mov	bx,word [bp+8]
		mov	dx,word [bx+10]
		mov	ax,word [bp-6]
		add	ax,dx
		push	ax
		push	word [bp-8]
		call	SYSUTILS$_$INTSTRTOTIME$crc43AF2F28_$$_STRPAS$PCHAR$SMALLINT$$SHORTSTRING
		lea	ax,[bp-802]
		push	ax
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-804]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-804]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+6]
		push	word [bx+14]
		call	fpc_ansistr_assign
		lea	ax,[bp-806]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-806]
		push	ax
		lea	ax,[bp-808]
		push	ax
		lea	ax,[bp-274]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-808]
		call	fpc_ansistr_assign
		push	word [bp-806]
		push	word [bp-804]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+20]
		call	ax
		test	ax,ax
		je	..@j10648
		jmp	..@j10649
..@j10648:
		mov	bx,word [bp+4]
		mov	word [bx],1
		jmp	..@j10672
..@j10649:
		lea	ax,[bp-808]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-808]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+6]
		push	word [bx+16]
		call	fpc_ansistr_assign
		lea	ax,[bp-806]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-806]
		push	ax
		lea	ax,[bp-804]
		push	ax
		lea	ax,[bp-274]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-804]
		call	fpc_ansistr_assign
		push	word [bp-806]
		push	word [bp-808]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+20]
		call	ax
		test	ax,ax
		je	..@j10673
		jmp	..@j10674
..@j10673:
		mov	bx,word [bp+4]
		mov	word [bx],2
		jmp	..@j10697
..@j10674:
		lea	ax,[bp-808]
		push	ax
		lea	ax,[bp-274]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-808]
		mov	ax,word _$SYSUTILS$_Ld664
		push	ax
		call	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
		test	ax,ax
		je	..@j10698
		jmp	..@j10699
..@j10698:
		mov	bx,word [bp+4]
		mov	word [bx],1
		jmp	..@j10712
..@j10699:
		lea	ax,[bp-808]
		push	ax
		lea	ax,[bp-274]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-808]
		mov	ax,word _$SYSUTILS$_Ld665
		push	ax
		call	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
		test	ax,ax
		je	..@j10713
		jmp	..@j10714
..@j10713:
		mov	bx,word [bp+4]
		mov	word [bx],2
		jmp	..@j10727
..@j10714:
		jmp	..@j10489
..@j10727:
..@j10712:
..@j10697:
..@j10672:
		cmp	word [bp-12],0
		je	..@j10728
		jmp	..@j10729
..@j10728:
		mov	byte [bp-17],1
		jmp	..@j10732
..@j10729:
		mov	word [bp-12],4
		mov	byte [bp-17],0
..@j10732:
..@j10604:
..@j10593:
..@j10583:
..@j10580:
		inc	word [bp-4]
..@j10522:
		mov	bx,word [bp+8]
		mov	ax,word [bx+8]
		cmp	ax,word [bp-4]
		jg	..@j10521
		jmp	..@j10523
..@j10523:
		cmp	word [bp-12],0
		je	..@j10737
		jmp	..@j10740
..@j10740:
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jne	..@j10741
		jmp	..@j10739
..@j10741:
		mov	bx,word [bp+6]
		cmp	word [bx],12
		ja	..@j10737
		jmp	..@j10742
..@j10742:
		mov	bx,word [bp+6]
		cmp	word [bx],0
		je	..@j10737
		jmp	..@j10739
..@j10739:
		cmp	byte [bp-17],0
		jne	..@j10737
		jmp	..@j10738
..@j10737:
		jmp	..@j10489
..@j10738:
		mov	byte [bp-1],1
..@j10489:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-808]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-806]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-804]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j10490
		call	FPC_RERAISE
..@j10490:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	_$SYSUTILS$_Ld665
EXTERN	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
EXTERN	_$SYSUTILS$_Ld664
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	fpc_shortstr_to_ansistr
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_varset_set
EXTERN	_$SYSUTILS$_Ld663
EXTERN	fpc_val_uint_shortstr
EXTERN	SYSUTILS$_$INTSTRTOTIME$crc43AF2F28_$$_STRPAS$PCHAR$SMALLINT$$SHORTSTRING
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
