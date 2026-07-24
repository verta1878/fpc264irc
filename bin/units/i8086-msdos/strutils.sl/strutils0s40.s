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
	GLOBAL STRUTILS_$$_ANSIMATCHSTR$ANSISTRING$array_of_ANSISTRING$$BOOLEAN
STRUTILS_$$_ANSIMATCHSTR$ANSISTRING$array_of_ANSISTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	STRUTILS_$$_ANSIINDEXSTR$ANSISTRING$array_of_ANSISTRING$$SMALLINT
		cmp	ax,-1
		mov	al,0
		je	..@j1205
		inc	ax
..@j1205:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	STRUTILS_$$_ANSIINDEXSTR$ANSISTRING$array_of_ANSISTRING$$SMALLINT
