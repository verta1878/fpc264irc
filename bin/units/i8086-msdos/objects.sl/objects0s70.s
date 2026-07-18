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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_AT$LONGINT$$POINTER
OBJECTS$_$TCOLLECTION_$__$$_AT$LONGINT$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jl	..@j1739
		jg	..@j1741
		cmp	dx,0
		jb	..@j1739
		jmp	..@j1741
..@j1741:
		mov	bx,word [bp+8]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+6]
		jl	..@j1739
		jg	..@j1740
		cmp	dx,word [bp+4]
		jbe	..@j1739
		jmp	..@j1740
		jmp	..@j1740
..@j1739:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,-1
		push	ax
		push	word [bp+4]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+18]
		call	ax
		mov	word [bp-2],0
		jmp	..@j1750
..@j1740:
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-2],ax
..@j1750:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
