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
	GLOBAL STRUTILS_$$_POSSET$TSYSCHARSET$ANSISTRING$$SMALLINT
STRUTILS_$$_POSSET$TSYSCHARSET$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,1
		push	ax
		call	STRUTILS_$$_POSSETEX$TSYSCHARSET$ANSISTRING$SMALLINT$$SMALLINT
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	STRUTILS_$$_POSSETEX$TSYSCHARSET$ANSISTRING$SMALLINT$$SMALLINT
