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
	GLOBAL DATEUTILS$_$SCANDATETIME$crcF9EFF852_$$_INTSCANDATE$PCHAR$SMALLINT$SMALLINT
DATEUTILS$_$SCANDATETIME$crcF9EFF852_$$_INTSCANDATE$PCHAR$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	word [bp-24],0
		mov	ax,1
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j3447
		mov	word [bp-2],0
		mov	byte [bp-7],32
		jmp	..@j3454
	ALIGN 2
..@j3453:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-8],al
		mov	bx,word [bp+10]
		cmp	byte [bx-27],0
		je	..@j3460
		jmp	..@j3461
..@j3460:
		cmp	byte [bp-8],77
		je	..@j3464
		jmp	..@j3463
..@j3464:
		cmp	byte [bp-7],72
		je	..@j3462
		jmp	..@j3463
..@j3462:
		push	bp
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANPATLEN$$SMALLINT
		mov	word [bp-6],ax
		cmp	word [bp-6],2
		jg	..@j3469
		jmp	..@j3470
..@j3469:
		lea	ax,[bp-24]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SHHMMERROR+2]
		mov	dx,word [bp+4]
		mov	ax,word [bp-2]
		add	ax,dx
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-28],cx
		mov	word [bp-26],ax
		mov	word [bp-30],0
		lea	ax,[bp-30]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-24]
		call	DATEUTILS_$$_RAISEEXCEPTION$ANSISTRING
..@j3470:
		push	bp
		mov	ax,2
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANFIXEDINT$crc8B9E2020
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-28],cx
		mov	word [bp-26],ax
		wait fild	dword [bp-28]
		wait fld	tword [_$DATEUTILS$_Ld30]
		wait fmulp	st1,st0
		mov	bx,word [bp+10]
		wait fld	qword [bx-26]
		wait faddp	st1,st0
		mov	bx,word [bp+10]
		wait fstp	qword [bx-26]
		DB	09bh
		jmp	..@j3487
..@j3463:
		mov	al,byte [bp-8]
		cmp	al,9
		jb	..@j3489
		sub	al,9
		je	..@j3504
		sub	al,25
		je	..@j3501
		sub	al,5
		je	..@j3501
		sub	al,8
		je	..@j3499
		sub	al,11
		je	..@j3500
		sub	al,5
		je	..@j3503
		sub	al,2
		je	..@j3498
		sub	al,2
		je	..@j3502
		dec	al
		je	..@j3491
		sub	al,4
		je	..@j3490
		sub	al,5
		je	..@j3496
		dec	al
		je	..@j3492
		sub	al,5
		je	..@j3493
		dec	al
		je	..@j3497
		sub	al,5
		je	..@j3495
		dec	al
		je	..@j3494
		jmp	..@j3489
..@j3490:
		push	bp
		mov	ax,2
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANFIXEDINT$crc8B9E2020
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-28],cx
		mov	word [bp-26],ax
		wait fild	dword [bp-28]
		wait fld	tword [_$DATEUTILS$_Ld31]
		wait fmulp	st1,st0
		mov	bx,word [bp+10]
		wait fld	qword [bx-26]
		wait faddp	st1,st0
		mov	bx,word [bp+10]
		wait fstp	qword [bx-26]
		DB	09bh
		jmp	..@j3488
..@j3491:
		push	bp
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANPATLEN$$SMALLINT
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		cmp	ax,1
		jl	..@j3516
		dec	ax
		dec	ax
		jle	..@j3517
		dec	ax
		je	..@j3518
		dec	ax
		je	..@j3519
		dec	ax
		je	..@j3520
		dec	ax
		je	..@j3521
		jmp	..@j3516
..@j3517:
		push	bp
		mov	ax,2
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANFIXEDINT$crc8B9E2020
		mov	bx,word [bp+10]
		mov	word [bx-18],ax
		jmp	..@j3515
..@j3518:
		push	bp
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		lea	ax,[bx+70]
		push	ax
		mov	ax,6
		push	ax
		mov	bx,word [bp+10]
		push	word [bx+8]
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_FINDMATCH$crc912DF5FF
		mov	bx,word [bp+10]
		mov	word [bx-18],ax
		jmp	..@j3515
..@j3519:
		push	bp
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		lea	ax,[bx+84]
		push	ax
		mov	ax,6
		push	ax
		mov	bx,word [bp+10]
		push	word [bx+8]
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_FINDMATCH$crc912DF5FF
		mov	bx,word [bp+10]
		mov	word [bx-18],ax
		jmp	..@j3515
..@j3520:
		push	bp
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+10]
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_MATCHPATTERN$ANSISTRING
		jmp	..@j3515
..@j3521:
		push	bp
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+12]
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_MATCHPATTERN$ANSISTRING
		jmp	..@j3515
..@j3516:
..@j3515:
		jmp	..@j3488
..@j3492:
		push	bp
		mov	ax,2
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANFIXEDINT$crc8B9E2020
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-28],cx
		mov	word [bp-26],ax
		wait fild	dword [bp-28]
		wait fld	tword [_$DATEUTILS$_Ld30]
		wait fmulp	st1,st0
		mov	bx,word [bp+10]
		wait fld	qword [bx-26]
		wait faddp	st1,st0
		mov	bx,word [bp+10]
		wait fstp	qword [bx-26]
		DB	09bh
		jmp	..@j3488
..@j3493:
		push	bp
		mov	ax,2
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANFIXEDINT$crc8B9E2020
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-28],cx
		mov	word [bp-26],ax
		wait fild	dword [bp-28]
		wait fld	tword [_$DATEUTILS$_Ld32]
		wait fmulp	st1,st0
		mov	bx,word [bp+10]
		wait fld	qword [bx-26]
		wait faddp	st1,st0
		mov	bx,word [bp+10]
		wait fstp	qword [bx-26]
		DB	09bh
		jmp	..@j3488
..@j3494:
		push	bp
		mov	ax,3
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANFIXEDINT$crc8B9E2020
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-28],cx
		mov	word [bp-26],ax
		wait fild	dword [bp-28]
		wait fld	tword [_$DATEUTILS$_Ld18]
		wait fmulp	st1,st0
		mov	bx,word [bp+10]
		wait fld	qword [bx-26]
		wait faddp	st1,st0
		mov	bx,word [bp+10]
		wait fstp	qword [bx-26]
		DB	09bh
		jmp	..@j3488
..@j3495:
		push	bp
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANPATLEN$$SMALLINT
		mov	word [bp-6],ax
		push	bp
		push	word [bp-6]
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANFIXEDINT$crc8B9E2020
		mov	bx,word [bp+10]
		mov	word [bx-14],ax
		cmp	word [bp-6],2
		jle	..@j3584
		jmp	..@j3585
..@j3584:
		call	SYSUTILS_$$_NOW$$TDATETIME
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	DATEUTILS_$$_YEAROF$TDATETIME$$WORD
		mov	dx,0
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	bx,word [bx+98]
		mov	cx,0
		sub	ax,bx
		sbb	dx,cx
		mov	word [bp-4],ax
		mov	cx,word [bp-4]
		mov	ax,5243
		imul	cx
		mov	ax,cx
		mov	cl,3
		sar	dx,cl
		mov	cl,15
		shr	ax,cl
		add	dx,ax
		mov	ax,100
		mul	dx
		mov	bx,word [bp+10]
		add	word [bx-14],ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		cmp	word [bx+98],0
		ja	..@j3592
		jmp	..@j3591
..@j3592:
		mov	bx,word [bp+10]
		mov	ax,word [bx-14]
		cmp	ax,word [bp-4]
		jl	..@j3590
		jmp	..@j3591
..@j3590:
		mov	bx,word [bp+10]
		add	word [bx-14],100
..@j3591:
..@j3585:
		jmp	..@j3488
..@j3496:
		push	bp
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANPATLEN$$SMALLINT
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		cmp	ax,1
		jl	..@j3598
		dec	ax
		dec	ax
		jle	..@j3599
		dec	ax
		je	..@j3600
		dec	ax
		je	..@j3601
		jmp	..@j3598
..@j3599:
		push	bp
		mov	ax,2
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANFIXEDINT$crc8B9E2020
		mov	bx,word [bp+10]
		mov	word [bx-16],ax
		jmp	..@j3597
..@j3600:
		push	bp
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		lea	ax,[bx+22]
		push	ax
		mov	ax,11
		push	ax
		mov	bx,word [bp+10]
		push	word [bx+8]
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_FINDMATCH$crc912DF5FF
		mov	bx,word [bp+10]
		mov	word [bx-16],ax
		jmp	..@j3597
..@j3601:
		push	bp
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		lea	ax,[bx+46]
		push	ax
		mov	ax,11
		push	ax
		mov	bx,word [bp+10]
		push	word [bx+8]
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_FINDMATCH$crc912DF5FF
		mov	bx,word [bp+10]
		mov	word [bx-16],ax
		jmp	..@j3597
..@j3598:
..@j3597:
		jmp	..@j3488
..@j3497:
		push	bp
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANPATLEN$$SMALLINT
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		cmp	ax,1
		jl	..@j3633
		dec	ax
		je	..@j3634
		dec	ax
		je	..@j3635
		jmp	..@j3633
..@j3634:
		push	bp
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+10]
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_MATCHPATTERN$ANSISTRING
		jmp	..@j3632
..@j3635:
		push	bp
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+20]
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_MATCHPATTERN$ANSISTRING
		jmp	..@j3632
..@j3633:
..@j3632:
		jmp	..@j3488
..@j3498:
		push	bp
		mov	ax,word TC_$DATEUTILS_$$_AMPMFORMATTING
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		lea	ax,[bx+si]
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_FINDIMATCH$crc12577BA1
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		test	ax,ax
		jl	..@j3655
		test	ax,ax
		je	..@j3656
		dec	ax
		je	..@j3657
		dec	ax
		je	..@j3658
		jmp	..@j3655
..@j3656:
		push	bp
		mov	ax,word _$DATEUTILS$_Ld33
		mov	word [bp-28],ax
		mov	ax,word _$DATEUTILS$_Ld34
		mov	word [bp-26],ax
		lea	ax,[bp-28]
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+8]
		mov	si,word [bp+10]
		mov	si,word [si-12]
		lea	ax,[bx+si-1]
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_FINDIMATCH$crc12577BA1
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		test	ax,ax
		jl	..@j3670
		test	ax,ax
		je	..@j3671
		dec	ax
		je	..@j3672
		jmp	..@j3670
..@j3671:
		jmp	..@j3669
..@j3672:
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	qword [si-26]
		wait fld	tword [_$DATEUTILS$_Ld3]
		wait faddp	st1,st0
		wait fstp	qword [bx-26]
		DB	09bh
		jmp	..@j3669
..@j3670:
		push	bp
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_ARRAYMATCHERROR
..@j3669:
		mov	bx,word [TC_$DATEUTILS_$$_AMPMFORMATTING]
		test	bx,bx
		je	..@j3677
		mov	bx,word [bx-2]
..@j3677:
		add	word [bp-2],bx
		mov	bx,word [bp+10]
		add	word [bx-12],2
		jmp	..@j3654
..@j3657:
		mov	bx,word [bp+10]
		mov	bx,word [bx+8]
		mov	si,word [bp+10]
		mov	si,word [si-12]
		mov	al,byte [bx+si-1]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		cmp	al,65
		jb	..@j3679
		sub	al,65
		je	..@j3680
		sub	al,15
		je	..@j3681
		jmp	..@j3679
..@j3680:
		jmp	..@j3678
..@j3681:
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	qword [si-26]
		wait fld	tword [_$DATEUTILS$_Ld3]
		wait faddp	st1,st0
		wait fstp	qword [bx-26]
		DB	09bh
		jmp	..@j3678
..@j3679:
		push	bp
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_ARRAYMATCHERROR
..@j3678:
		mov	bx,word [TC_$DATEUTILS_$$_AMPMFORMATTING+2]
		test	bx,bx
		je	..@j3688
		mov	bx,word [bx-2]
..@j3688:
		add	word [bp-2],bx
		mov	bx,word [bp+10]
		inc	word [bx-12]
		jmp	..@j3654
..@j3658:
		push	bp
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	ax,word [bx+14]
		mov	word [bp-28],ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	ax,word [bx+16]
		mov	word [bp-26],ax
		lea	ax,[bp-28]
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+8]
		mov	si,word [bp+10]
		mov	si,word [si-12]
		lea	ax,[bx+si-1]
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_FINDIMATCH$crc12577BA1
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		test	ax,ax
		jl	..@j3700
		test	ax,ax
		je	..@j3701
		dec	ax
		je	..@j3702
		jmp	..@j3700
..@j3701:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	bx,word [bx+14]
		test	bx,bx
		je	..@j3703
		mov	bx,word [bx-2]
..@j3703:
		mov	si,word [bp+10]
		add	word [si-12],bx
		jmp	..@j3699
..@j3702:
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	qword [si-26]
		wait fld	tword [_$DATEUTILS$_Ld3]
		wait faddp	st1,st0
		wait fstp	qword [bx-26]
		DB	09bh
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	bx,word [bx+16]
		test	bx,bx
		je	..@j3706
		mov	bx,word [bx-2]
..@j3706:
		mov	si,word [bp+10]
		add	word [si-12],bx
		jmp	..@j3699
..@j3700:
		push	bp
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_ARRAYMATCHERROR
..@j3699:
		mov	bx,word [TC_$DATEUTILS_$$_AMPMFORMATTING+4]
		test	bx,bx
		je	..@j3709
		mov	bx,word [bx-2]
..@j3709:
		add	word [bp-2],bx
		add	word [bp-2],2
		mov	bx,word [bp+10]
		add	word [bx-12],2
		jmp	..@j3654
..@j3655:
		push	bp
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_MATCHCHAR$CHAR
..@j3654:
		jmp	..@j3488
..@j3499:
		push	bp
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	al,byte [bx+5]
		mov	ah,0
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_MATCHCHAR$CHAR
		jmp	..@j3488
..@j3500:
		push	bp
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	al,byte [bx+6]
		mov	ah,0
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_MATCHCHAR$CHAR
		mov	al,byte [bp-7]
		mov	byte [bp-8],al
		jmp	..@j3488
..@j3501:
		mov	bx,word [bp+10]
		mov	al,byte [bp-8]
		mov	byte [bx-27],al
		inc	word [bp-2]
		jmp	..@j3488
..@j3502:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	ax,word [bx+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	bx,word [bx+10]
		test	bx,bx
		je	..@j3732
		mov	bx,word [bx-2]
..@j3732:
		push	bx
		mov	dx,word [bp-2]
		mov	ax,word [bp+4]
		add	ax,dx
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_$$_INTSCANDATE$PCHAR$SMALLINT$SMALLINT
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	ax,word [bx+20]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	bx,word [bx+20]
		test	bx,bx
		je	..@j3741
		mov	bx,word [bx-2]
..@j3741:
		push	bx
		mov	dx,word [bp-2]
		mov	ax,word [bp+4]
		add	ax,dx
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_$$_INTSCANDATE$PCHAR$SMALLINT$SMALLINT
		inc	word [bp-2]
		jmp	..@j3488
..@j3503:
		inc	word [bp-2]
		mov	bx,word [bp+10]
		inc	word [bx-12]
		jmp	..@j3488
..@j3504:
		jmp	..@j3745
	ALIGN 2
..@j3744:
		mov	bx,word [bp+10]
		inc	word [bx-12]
..@j3745:
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [bx-12]
		cmp	ax,word [si-10]
		jle	..@j3747
		jmp	..@j3746
..@j3747:
		mov	bx,word [bp+10]
		mov	bx,word [bx+8]
		mov	si,word [bp+10]
		mov	si,word [si-12]
		mov	al,byte [bx+si-1]
		mov	ah,0
		cmp	ax,10
		je	..@j3748
		cmp	ax,13
		je	..@j3748
		cmp	ax,32
		je	..@j3748
..@j3748:
		je	..@j3744
		jmp	..@j3746
..@j3746:
		inc	word [bp-2]
		jmp	..@j3488
..@j3489:
		push	bp
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_MATCHCHAR$CHAR
..@j3488:
..@j3487:
		mov	al,byte [bp-8]
		mov	byte [bp-7],al
		jmp	..@j3755
..@j3461:
		mov	bx,word [bp+10]
		mov	al,byte [bx-27]
		cmp	al,byte [bp-8]
		je	..@j3756
		jmp	..@j3757
..@j3756:
		mov	bx,word [bp+10]
		mov	byte [bx-27],0
		inc	word [bp-2]
		jmp	..@j3760
..@j3757:
		push	bp
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_MATCHCHAR$CHAR
..@j3760:
..@j3755:
..@j3454:
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [bx-12]
		cmp	ax,word [si-10]
		jle	..@j3765
		jmp	..@j3455
..@j3765:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jl	..@j3453
		jmp	..@j3455
..@j3455:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jl	..@j3769
		jmp	..@j3767
..@j3769:
		cmp	word [bp+6],0
		jg	..@j3768
		jmp	..@j3767
..@j3768:
		mov	bx,word [bp+8]
		mov	ax,word [bp+6]
		dec	ax
		mov	si,ax
		cmp	byte [bx+si],9
		jne	..@j3766
		jmp	..@j3767
..@j3766:
		lea	ax,[bp-24]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SFULLPATTERN+2]
		mov	dx,word [bp+4]
		mov	ax,word [bp-2]
		add	ax,dx
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-28],cx
		mov	word [bp-26],ax
		mov	word [bp-30],0
		lea	ax,[bp-30]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-24]
		call	DATEUTILS_$$_RAISEEXCEPTION$ANSISTRING
..@j3767:
..@j3447:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3448
		call	FPC_RERAISE
..@j3448:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	RESSTR_$SYSCONST_$$_SFULLPATTERN
EXTERN	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_MATCHCHAR$CHAR
EXTERN	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_ARRAYMATCHERROR
EXTERN	_$DATEUTILS$_Ld3
EXTERN	_$DATEUTILS$_Ld34
EXTERN	_$DATEUTILS$_Ld33
EXTERN	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_FINDIMATCH$crc12577BA1
EXTERN	TC_$DATEUTILS_$$_AMPMFORMATTING
EXTERN	DATEUTILS_$$_YEAROF$TDATETIME$$WORD
EXTERN	SYSUTILS_$$_NOW$$TDATETIME
EXTERN	_$DATEUTILS$_Ld18
EXTERN	_$DATEUTILS$_Ld32
EXTERN	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_MATCHPATTERN$ANSISTRING
EXTERN	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_FINDMATCH$crc912DF5FF
EXTERN	_$DATEUTILS$_Ld31
EXTERN	_$DATEUTILS$_Ld30
EXTERN	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANFIXEDINT$crc8B9E2020
EXTERN	DATEUTILS_$$_RAISEEXCEPTION$ANSISTRING
EXTERN	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
EXTERN	RESSTR_$SYSCONST_$$_SHHMMERROR
EXTERN	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANPATLEN$$SMALLINT
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
