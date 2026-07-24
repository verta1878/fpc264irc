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
	GLOBAL STRUTILS_$$_EQUALWITHCASE$CHAR$CHAR$$BOOLEAN
STRUTILS_$$_EQUALWITHCASE$CHAR$CHAR$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	al,byte [bp+6]
		cmp	al,byte [bp+4]
		mov	al,0
		jne	..@j1818
		inc	ax
..@j1818:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
