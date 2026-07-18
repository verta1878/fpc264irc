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
	GLOBAL CLASSES$_$TBITS_$__$$_FINDFIRSTBIT$BOOLEAN$$LONGINT
CLASSES$_$TBITS_$__$$_FINDFIRSTBIT$BOOLEAN$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		mov	bx,word [bp+6]
		mov	al,byte [bp+4]
		mov	byte [bx+16],al
		cmp	byte [bp+4],0
		je	..@j534
		jmp	..@j535
..@j534:
		mov	word [bp-24],-1
		mov	word [bp-22],-1
		jmp	..@j538
..@j535:
		mov	word [bp-24],0
		mov	word [bp-22],0
..@j538:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	dx,word [bx+6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-32],ax
		mov	word [bp-30],dx
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	ax,word [bp-30]
		cmp	ax,word [bp-6]
		jl	..@j544
		jg	..@j546
		mov	ax,word [bp-32]
		cmp	ax,word [bp-8]
		jb	..@j544
..@j546:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j545:
		add	word [bp-8],1
		adc	word [bp-6],0
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	dx,word [bx+si]
		mov	ax,word [bx+si+2]
		cmp	ax,word [bp-22]
		jne	..@j547
		cmp	dx,word [bp-24]
		jne	..@j547
		jmp	..@j548
		jmp	..@j548
..@j547:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,5
..@j551:
		shl	ax,1
		rcl	dx,1
		loop	..@j551
		mov	word [bp-16],ax
		mov	word [bp-14],dx
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		add	ax,31
		adc	dx,0
		push	dx
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		mov	dx,word [bx+10]
		sub	ax,1
		sbb	dx,0
		push	dx
		push	ax
		call	CLASSES_$$_LIMIN$LONGINT$LONGINT$$LONGINT
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		mov	ax,word [bp-20]
		mov	word [bp-28],ax
		mov	ax,word [bp-18]
		mov	word [bp-26],ax
		mov	dx,word [bp-16]
		mov	ax,word [bp-14]
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		mov	ax,word [bp-26]
		cmp	ax,word [bp-10]
		jl	..@j561
		jg	..@j563
		mov	ax,word [bp-28]
		cmp	ax,word [bp-12]
		jb	..@j561
..@j563:
		sub	word [bp-12],1
		sbb	word [bp-10],0
	ALIGN 2
..@j562:
		add	word [bp-12],1
		adc	word [bp-10],0
		push	word [bp+6]
		push	word [bp-10]
		push	word [bp-12]
		call	CLASSES$_$TBITS_$__$$_GET$LONGINT$$BOOLEAN
		cmp	al,byte [bp+4]
		je	..@j564
		jmp	..@j565
..@j564:
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j561
..@j565:
		mov	ax,word [bp-26]
		cmp	ax,word [bp-10]
		jg	..@j562
		jl	..@j572
		mov	ax,word [bp-28]
		cmp	ax,word [bp-12]
		ja	..@j562
..@j572:
..@j561:
		jmp	..@j544
..@j548:
		mov	ax,word [bp-30]
		cmp	ax,word [bp-6]
		jg	..@j545
		jl	..@j573
		mov	ax,word [bp-32]
		cmp	ax,word [bp-8]
		ja	..@j545
..@j573:
..@j544:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	word [bx+12],ax
		mov	ax,word [bp-2]
		mov	word [bx+14],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TBITS_$__$$_GET$LONGINT$$BOOLEAN
EXTERN	CLASSES_$$_LIMIN$LONGINT$LONGINT$$LONGINT
