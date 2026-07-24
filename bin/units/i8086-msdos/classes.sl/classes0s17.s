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
	GLOBAL CLASSES$_$TBITS_$__$$_CLEARALL
CLASSES$_$TBITS_$__$$_CLEARALL:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	dx,word [bx+4]
		mov	di,word [bx+6]
		sub	dx,1
		sbb	di,0
		mov	word [bp-4],0
		mov	word [bp-2],0
		cmp	di,word [bp-2]
		jl	..@j329
		jg	..@j331
		cmp	dx,word [bp-4]
		jb	..@j329
..@j331:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j330:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	word [bx+si],0
		mov	word [bx+si+2],0
		cmp	di,word [bp-2]
		jg	..@j330
		jl	..@j334
		cmp	dx,word [bp-4]
		ja	..@j330
..@j334:
..@j329:
		mov	sp,bp
		pop	bp
		ret	2
