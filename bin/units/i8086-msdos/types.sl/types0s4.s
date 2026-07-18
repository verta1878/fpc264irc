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
	GLOBAL TYPES$_$TSIZE_$__$$_ISZERO$$BOOLEAN
TYPES$_$TSIZE_$__$$_ISZERO$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		cmp	dx,0
		jne	..@j18
		cmp	ax,0
		jne	..@j18
		jmp	..@j19
..@j19:
		mov	bx,word [bp+4]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,0
		jne	..@j18
		cmp	dx,0
		jne	..@j18
		jmp	..@j17
..@j17:
		mov	byte [bp-1],1
		jmp	..@j20
..@j18:
		mov	byte [bp-1],0
..@j20:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
