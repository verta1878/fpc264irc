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
	GLOBAL SYSUTILS_$$_ADJUSTLINEBREAKS$ANSISTRING$TTEXTLINEBREAKSTYLE$$ANSISTRING
SYSUTILS_$$_ADJUSTLINEBREAKS$ANSISTRING$TTEXTLINEBREAKSTYLE$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j3492
		mov	bx,word [bx-2]
..@j3492:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-18],cx
		mov	word [bp-16],ax
		mov	ax,word [bp-18]
		mov	word [bp-6],ax
		mov	word [bp-10],1
		mov	word [bp-8],0
		jmp	..@j3498
	ALIGN 2
..@j3497:
		mov	bx,word [bp+6]
		mov	si,word [bp-10]
		mov	al,byte [bx+si-1]
		cmp	al,10
		jb	..@j3501
		sub	al,10
		je	..@j3502
		sub	al,3
		je	..@j3503
		jmp	..@j3501
..@j3502:
		mov	dx,word [bp+4]
		mov	ax,0
		cmp	ax,0
		jne	..@j3505
		cmp	dx,1
		jne	..@j3505
		jmp	..@j3504
..@j3504:
		inc	word [bp-6]
..@j3505:
		jmp	..@j3500
..@j3503:
		mov	dx,word [bp+4]
		mov	ax,0
		cmp	ax,0
		jne	..@j3507
		cmp	dx,1
		jne	..@j3507
		jmp	..@j3506
..@j3506:
		mov	dx,word [bp-10]
		mov	ax,word [bp-8]
		cmp	ax,word [bp-16]
		jl	..@j3510
		jg	..@j3509
		cmp	dx,word [bp-18]
		jb	..@j3510
		jmp	..@j3509
		jmp	..@j3509
..@j3510:
		mov	bx,word [bp+6]
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		add	ax,1
		adc	dx,0
		mov	si,ax
		cmp	byte [bx+si-1],10
		je	..@j3508
		jmp	..@j3509
..@j3508:
		add	word [bp-10],1
		adc	word [bp-8],0
		jmp	..@j3511
..@j3509:
		inc	word [bp-6]
..@j3511:
		jmp	..@j3512
..@j3507:
		mov	dx,word [bp-10]
		mov	ax,word [bp-8]
		cmp	ax,word [bp-16]
		jl	..@j3515
		jg	..@j3514
		cmp	dx,word [bp-18]
		jb	..@j3515
		jmp	..@j3514
		jmp	..@j3514
..@j3515:
		mov	bx,word [bp+6]
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		add	ax,1
		adc	dx,0
		mov	si,ax
		cmp	byte [bx+si-1],10
		je	..@j3513
		jmp	..@j3514
..@j3513:
		dec	word [bp-6]
..@j3514:
..@j3512:
		jmp	..@j3500
..@j3501:
..@j3500:
		add	word [bp-10],1
		adc	word [bp-8],0
..@j3498:
		mov	dx,word [bp-10]
		mov	ax,word [bp-8]
		cmp	ax,word [bp-16]
		jl	..@j3497
		jg	..@j3499
		cmp	dx,word [bp-18]
		jbe	..@j3497
		jmp	..@j3499
		jmp	..@j3499
..@j3499:
		mov	ax,word [bp-6]
		cwd
		cmp	dx,word [bp-16]
		jne	..@j3517
		cmp	ax,word [bp-18]
		jne	..@j3517
		jmp	..@j3516
		jmp	..@j3517
..@j3516:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
		jmp	..@j3522
..@j3517:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-6]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp+8]
		push	ax
		call	fpc_ansistr_unique
		push	ax
		push	word [bp-6]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	word [bp-14],0
		mov	word [bp-12],0
		mov	word [bp-10],0
		mov	word [bp-8],0
		jmp	..@j3544
	ALIGN 2
..@j3543:
		mov	bx,word [bp-2]
		mov	si,word [bp-10]
		mov	al,byte [bx+si]
		cmp	al,10
		jb	..@j3547
		sub	al,10
		je	..@j3548
		sub	al,3
		je	..@j3549
		jmp	..@j3547
..@j3548:
		mov	dx,word [bp+4]
		mov	ax,0
		cmp	ax,0
		jne	..@j3551
		cmp	dx,1
		jne	..@j3551
		jmp	..@j3550
..@j3550:
		mov	bx,word [bp-4]
		mov	si,word [bp-14]
		mov	byte [bx+si],13
		add	word [bp-14],1
		adc	word [bp-12],0
..@j3551:
		mov	bx,word [bp-4]
		mov	si,word [bp-14]
		mov	byte [bx+si],10
		add	word [bp-14],1
		adc	word [bp-12],0
		add	word [bp-10],1
		adc	word [bp-8],0
		jmp	..@j3546
..@j3549:
		mov	dx,word [bp+4]
		mov	ax,0
		cmp	ax,0
		jne	..@j3557
		cmp	dx,1
		jne	..@j3557
		jmp	..@j3556
..@j3556:
		mov	bx,word [bp-4]
		mov	si,word [bp-14]
		mov	byte [bx+si],13
		add	word [bp-14],1
		adc	word [bp-12],0
..@j3557:
		mov	bx,word [bp-4]
		mov	si,word [bp-14]
		mov	byte [bx+si],10
		add	word [bp-14],1
		adc	word [bp-12],0
		add	word [bp-10],1
		adc	word [bp-8],0
		mov	bx,word [bp-2]
		mov	si,word [bp-10]
		cmp	byte [bx+si],10
		je	..@j3562
		jmp	..@j3563
..@j3562:
		add	word [bp-10],1
		adc	word [bp-8],0
..@j3563:
		jmp	..@j3546
..@j3547:
		mov	ax,word [bp-4]
		mov	word [bp-20],ax
		mov	di,word [bp-14]
		mov	bx,word [bp-2]
		mov	si,word [bp-10]
		mov	al,byte [bx+si]
		mov	bx,word [bp-20]
		mov	byte [bx+di],al
		add	word [bp-14],1
		adc	word [bp-12],0
		add	word [bp-10],1
		adc	word [bp-8],0
..@j3546:
..@j3544:
		mov	dx,word [bp-10]
		mov	ax,word [bp-8]
		cmp	ax,word [bp-16]
		jl	..@j3543
		jg	..@j3545
		cmp	dx,word [bp-18]
		jb	..@j3543
		jmp	..@j3545
		jmp	..@j3545
..@j3545:
..@j3522:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	fpc_ansistr_assign
