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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_FREEITEM$POINTER
OBJECTS$_$TCOLLECTION_$__$$_FREEITEM$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j1927
		jmp	..@j1928
..@j1927:
		mov	ax,word [bp-2]
		push	ax
		mov	ax,-1
		push	ax
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
..@j1928:
		mov	sp,bp
		pop	bp
		ret	4
