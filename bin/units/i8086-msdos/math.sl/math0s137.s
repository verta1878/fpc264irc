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
	GLOBAL MATH_$$_MINVALUE$PINTEGER$SMALLINT$$SMALLINT
MATH_$$_MINVALUE$PINTEGER$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	dx,word [bp+4]
		dec	dx
		mov	word [bp-4],1
		cmp	dx,word [bp-4]
		jl	..@j1628
		dec	word [bp-4]
	ALIGN 2
..@j1629:
		inc	word [bp-4]
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		cmp	ax,word [bp-2]
		jl	..@j1630
		jmp	..@j1631
..@j1630:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-2],ax
..@j1631:
		cmp	dx,word [bp-4]
		jg	..@j1629
..@j1628:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
