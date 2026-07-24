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
	GLOBAL STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_ISNUMBER$CHAR$$BOOLEAN
STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_ISNUMBER$CHAR$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	al,byte [bp+4]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j1614
..@j1614:
		mov	al,0
		jnc	..@j1615
		inc	ax
..@j1615:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
