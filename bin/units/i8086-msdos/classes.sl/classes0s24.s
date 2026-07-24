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
	GLOBAL CLASSES$_$TBITS_$__$$_EQUALS$TBITS$$BOOLEAN
CLASSES$_$TBITS_$__$$_EQUALS$TBITS$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	byte [bp-1],0
		mov	ax,word [bp+6]
		mov	word [bp-12],ax
		push	word [bp+4]
		call	CLASSES$_$TBITS_$__$$_GETFSIZE$$LONGINT
		mov	bx,word [bp-12]
		cmp	dx,word [bx+6]
		jg	..@j469
		jl	..@j470
		mov	bx,word [bp-12]
		cmp	ax,word [bx+4]
		ja	..@j469
		jmp	..@j470
		jmp	..@j470
..@j469:
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		sub	dx,1
		sbb	ax,0
		mov	word [bp-6],dx
		mov	word [bp-4],ax
		jmp	..@j475
..@j470:
		push	word [bp+4]
		call	CLASSES$_$TBITS_$__$$_GETFSIZE$$LONGINT
		sub	ax,1
		sbb	dx,0
		mov	word [bp-6],ax
		mov	word [bp-4],dx
..@j475:
		mov	ax,word [bp-6]
		mov	word [bp-20],ax
		mov	dx,word [bp-4]
		mov	word [bp-10],0
		mov	word [bp-8],0
		cmp	dx,word [bp-8]
		jl	..@j483
		jg	..@j485
		mov	ax,word [bp-20]
		cmp	ax,word [bp-10]
		jb	..@j483
..@j485:
		sub	word [bp-10],1
		sbb	word [bp-8],0
	ALIGN 2
..@j484:
		add	word [bp-10],1
		adc	word [bp-8],0
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		mov	word [bp-14],ax
		mov	ax,word [bp-10]
		mov	di,ax
		mov	cl,2
		shl	di,cl
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [bp-18],ax
		mov	ax,word [bp-10]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	bx,word [bp-14]
		mov	ax,word [bx+di]
		mov	bx,word [bp-14]
		mov	cx,word [bx+di+2]
		mov	bx,word [bp-18]
		cmp	cx,word [bx+si+2]
		jne	..@j486
		mov	bx,word [bp-18]
		cmp	ax,word [bx+si]
		jne	..@j486
		jmp	..@j487
		jmp	..@j487
..@j486:
		jmp	..@j465
..@j487:
		cmp	dx,word [bp-8]
		jg	..@j484
		jl	..@j488
		mov	ax,word [bp-20]
		cmp	ax,word [bp-10]
		ja	..@j484
..@j488:
..@j483:
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		sub	dx,1
		sbb	ax,0
		cmp	ax,word [bp-4]
		jg	..@j489
		jl	..@j490
		cmp	dx,word [bp-6]
		ja	..@j489
		jmp	..@j490
		jmp	..@j490
..@j489:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-22],ax
		mov	di,word [bx+6]
		mov	ax,word [bp-22]
		mov	word [bp-22],ax
		sub	word [bp-22],1
		sbb	di,0
		mov	ax,word [bp-22]
		mov	word [bp-22],ax
		mov	dx,word [bp-6]
		mov	ax,word [bp-4]
		mov	word [bp-10],dx
		mov	word [bp-8],ax
		cmp	di,word [bp-8]
		jl	..@j494
		jg	..@j496
		mov	ax,word [bp-22]
		cmp	ax,word [bp-10]
		jb	..@j494
..@j496:
		sub	word [bp-10],1
		sbb	word [bp-8],0
	ALIGN 2
..@j495:
		add	word [bp-10],1
		adc	word [bp-8],0
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bp-10]
		mov	word [bp-16],ax
		mov	cl,2
		shl	word [bp-16],cl
		mov	si,word [bp-16]
		mov	ax,word [bx+si]
		mov	si,word [bp-16]
		mov	dx,word [bx+si+2]
		cmp	dx,0
		jne	..@j497
		cmp	ax,0
		jne	..@j497
		jmp	..@j498
..@j497:
		jmp	..@j465
..@j498:
		cmp	di,word [bp-8]
		jg	..@j495
		jl	..@j499
		mov	ax,word [bp-22]
		cmp	ax,word [bp-10]
		ja	..@j495
..@j499:
..@j494:
		jmp	..@j500
..@j490:
		push	word [bp+4]
		call	CLASSES$_$TBITS_$__$$_GETFSIZE$$LONGINT
		sub	ax,1
		sbb	dx,0
		cmp	dx,word [bp-4]
		jg	..@j501
		jl	..@j502
		cmp	ax,word [bp-6]
		ja	..@j501
		jmp	..@j502
		jmp	..@j502
..@j501:
		push	word [bp+4]
		call	CLASSES$_$TBITS_$__$$_GETFSIZE$$LONGINT
		sub	ax,1
		sbb	dx,0
		mov	bx,word [bp-6]
		mov	cx,word [bp-4]
		mov	word [bp-10],bx
		mov	word [bp-8],cx
		cmp	dx,word [bp-8]
		jl	..@j510
		jg	..@j512
		cmp	ax,word [bp-10]
		jb	..@j510
..@j512:
		sub	word [bp-10],1
		sbb	word [bp-8],0
	ALIGN 2
..@j511:
		add	word [bp-10],1
		adc	word [bp-8],0
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	cx,word [bp-10]
		mov	si,cx
		mov	cl,2
		shl	si,cl
		mov	cx,word [bx+si]
		mov	bx,word [bx+si+2]
		cmp	bx,0
		jne	..@j513
		cmp	cx,0
		jne	..@j513
		jmp	..@j514
..@j513:
		jmp	..@j465
..@j514:
		cmp	dx,word [bp-8]
		jg	..@j511
		jl	..@j515
		cmp	ax,word [bp-10]
		ja	..@j511
..@j515:
..@j510:
..@j502:
..@j500:
		mov	byte [bp-1],1
..@j465:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TBITS_$__$$_GETFSIZE$$LONGINT
