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
	GLOBAL STRUTILS_$$_ANSICONTAINSSTR$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_$$_ANSICONTAINSSTR$ANSISTRING$ANSISTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		push	word [bp+6]
		call	SYSUTILS_$$_ANSIPOS$ANSISTRING$ANSISTRING$$SMALLINT
		cmp	ax,0
		mov	al,0
		jle	..@j1131
		inc	ax
..@j1131:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_ANSIPOS$ANSISTRING$ANSISTRING$$SMALLINT
