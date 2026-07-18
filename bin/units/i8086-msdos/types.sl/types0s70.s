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
	GLOBAL TYPES_$$_PTINRECT$TRECT$TPOINT$$BOOLEAN
TYPES_$$_PTINRECT$TRECT$TPOINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	dx,word [si+4]
		mov	ax,word [si+6]
		cmp	ax,word [bx+6]
		jg	..@j595
		jl	..@j592
		cmp	dx,word [bx+4]
		jae	..@j595
		jmp	..@j592
		jmp	..@j592
..@j595:
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	dx,word [si+4]
		mov	ax,word [si+6]
		cmp	ax,word [bx+14]
		jl	..@j594
		jg	..@j592
		cmp	dx,word [bx+12]
		jb	..@j594
		jmp	..@j592
		jmp	..@j592
..@j594:
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		cmp	dx,word [si+2]
		jg	..@j593
		jl	..@j592
		cmp	ax,word [si]
		jae	..@j593
		jmp	..@j592
		jmp	..@j592
..@j593:
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	dx,word [si]
		mov	ax,word [si+2]
		cmp	ax,word [bx+10]
		jl	..@j591
		jg	..@j592
		cmp	dx,word [bx+8]
		jb	..@j591
		jmp	..@j592
		jmp	..@j592
..@j591:
		mov	byte [bp-1],1
		jmp	..@j596
..@j592:
		mov	byte [bp-1],0
..@j596:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
