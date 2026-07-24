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
	GLOBAL DATEUTILS_$$_ISINLEAPYEAR$TDATETIME$$BOOLEAN
DATEUTILS_$$_ISINLEAPYEAR$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_YEAROF$TDATETIME$$WORD
		push	ax
		call	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
EXTERN	DATEUTILS_$$_YEAROF$TDATETIME$$WORD
