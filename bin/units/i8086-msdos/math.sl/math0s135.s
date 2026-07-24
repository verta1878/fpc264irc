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
	GLOBAL MATH_$$_MAXINTVALUE$array_of_SMALLINT$$SMALLINT
MATH_$$_MAXINTVALUE$array_of_SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	dx,word [bp+4]
		mov	word [bp-4],1
		cmp	dx,word [bp-4]
		jl	..@j1607
		dec	word [bp-4]
	ALIGN 2
..@j1608:
		inc	word [bp-4]
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		cmp	ax,word [bp-2]
		jg	..@j1609
		jmp	..@j1610
..@j1609:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-2],ax
..@j1610:
		cmp	dx,word [bp-4]
		jg	..@j1608
..@j1607:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
