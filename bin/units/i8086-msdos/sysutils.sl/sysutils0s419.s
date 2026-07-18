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
	GLOBAL SYSUTILS_$$_SUPPORTS$IUNKNOWN$TGUID$formal$$BOOLEAN
SYSUTILS_$$_SUPPORTS$IUNKNOWN$TGUID$formal$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+8],0
		jne	..@j13608
		jmp	..@j13607
..@j13608:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		call	[bx]
		add	sp,6
		cmp	dx,0
		jne	..@j13607
		cmp	ax,0
		jne	..@j13607
		jmp	..@j13606
..@j13606:
		mov	byte [bp-1],1
		jmp	..@j13615
..@j13607:
		mov	byte [bp-1],0
..@j13615:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
