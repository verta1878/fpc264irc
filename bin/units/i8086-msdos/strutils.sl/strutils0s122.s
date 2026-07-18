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
	GLOBAL STRUTILS_$$_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT
STRUTILS_$$_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	word [bp-8],0
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j3482
		mov	bx,word [bx-2]
..@j3482:
		cmp	bx,0
		jg	..@j3481
		jmp	..@j3480
..@j3481:
		mov	bx,word [bp+4]
		cmp	byte [bx],45
		je	..@j3479
		jmp	..@j3480
..@j3479:
		mov	byte [bp-11],1
		jmp	..@j3483
..@j3480:
		mov	byte [bp-11],0
..@j3483:
		cmp	byte [bp-11],0
		jne	..@j3484
		jmp	..@j3485
..@j3484:
		inc	word [bp-8]
..@j3485:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j3488
		mov	bx,word [bx-2]
..@j3488:
		mov	word [bp-10],bx
		jmp	..@j3490
	ALIGN 2
..@j3489:
		inc	word [bp-8]
		mov	bx,word [bp+4]
		mov	si,word [bp-8]
		mov	al,byte [bx+si-1]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-5],al
		mov	al,byte [bp-5]
		mov	ah,0
		sub	ax,67
		cmp	ax,2
		jb	..@j3498
		cmp	ax,6
		stc
		je	..@j3498
		sub	ax,9
		cmp	ax,2
		jb	..@j3498
		cmp	ax,10
		stc
		je	..@j3498
		cmp	ax,12
		stc
		je	..@j3498
		clc
..@j3498:
		jc	..@j3496
		jmp	..@j3497
..@j3496:
		mov	ax,word [bp-8]
		inc	ax
		cmp	ax,word [bp-10]
		jle	..@j3499
		jmp	..@j3500
..@j3499:
		mov	bx,word [bp+4]
		mov	ax,word [bp-8]
		mov	si,ax
		inc	si
		mov	al,byte [bx+si-1]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-6],al
		jmp	..@j3505
..@j3500:
		mov	byte [bp-6],0
..@j3505:
		mov	al,byte [bp-6]
		mov	ah,0
		sub	ax,67
		cmp	ax,2
		jb	..@j3511
		cmp	ax,6
		stc
		je	..@j3511
		sub	ax,9
		cmp	ax,2
		jb	..@j3511
		cmp	ax,10
		stc
		je	..@j3511
		cmp	ax,12
		stc
		je	..@j3511
		clc
..@j3511:
		jc	..@j3510
		jmp	..@j3509
..@j3510:
		mov	al,byte [bp-5]
		mov	ah,0
		mov	si,ax
		shl	si,1
		mov	al,byte [bp-6]
		mov	ah,0
		mov	bx,ax
		shl	bx,1
		mov	ax,word [TC_$STRUTILS$_$ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_$$_ROMANVALUES+si-134]
		cmp	ax,word [TC_$STRUTILS$_$ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_$$_ROMANVALUES+bx-134]
		jb	..@j3508
		jmp	..@j3509
..@j3508:
		mov	al,byte [bp-6]
		mov	ah,0
		mov	bx,ax
		shl	bx,1
		mov	ax,word [TC_$STRUTILS$_$ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_$$_ROMANVALUES+bx-134]
		mov	dx,0
		add	word [bp-4],ax
		adc	word [bp-2],dx
		mov	al,byte [bp-5]
		mov	ah,0
		mov	bx,ax
		shl	bx,1
		mov	ax,word [TC_$STRUTILS$_$ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_$$_ROMANVALUES+bx-134]
		mov	dx,0
		sub	word [bp-4],ax
		sbb	word [bp-2],dx
		inc	word [bp-8]
		jmp	..@j3512
..@j3509:
		mov	al,byte [bp-5]
		mov	ah,0
		mov	bx,ax
		shl	bx,1
		mov	ax,word [TC_$STRUTILS$_$ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_$$_ROMANVALUES+bx-134]
		mov	dx,0
		add	word [bp-4],ax
		adc	word [bp-2],dx
..@j3512:
		jmp	..@j3513
..@j3497:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j3473
..@j3513:
..@j3490:
		mov	ax,word [bp-8]
		cmp	ax,word [bp-10]
		jl	..@j3489
		jmp	..@j3491
..@j3491:
		cmp	byte [bp-11],0
		jne	..@j3516
		jmp	..@j3517
..@j3516:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j3517:
..@j3473:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$STRUTILS$_$ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_$$_ROMANVALUES
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
