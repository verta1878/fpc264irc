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
	GLOBAL STRUTILS_$$_EXTRACTWORD$SMALLINT$ANSISTRING$TSYSCHARSET$$ANSISTRING
STRUTILS_$$_EXTRACTWORD$SMALLINT$ANSISTRING$TSYSCHARSET$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	STRUTILS_$$_EXTRACTWORDPOS$SMALLINT$ANSISTRING$TSYSCHARSET$SMALLINT$$ANSISTRING
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	STRUTILS_$$_EXTRACTWORDPOS$SMALLINT$ANSISTRING$TSYSCHARSET$SMALLINT$$ANSISTRING
