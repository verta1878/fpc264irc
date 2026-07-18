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
	GLOBAL DATEUTILS_$$_WITHINPASTMONTHS$TDATETIME$TDATETIME$SMALLINT$$BOOLEAN
DATEUTILS_$$_WITHINPASTMONTHS$TDATETIME$TDATETIME$SMALLINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+14]
		cld
		mov	cx,4
		rep
		movsw
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_MONTHSBETWEEN$TDATETIME$TDATETIME$$SMALLINT
		cmp	ax,word [bp+4]
		mov	al,0
		jg	..@j1194
		inc	ax
..@j1194:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	18
EXTERN	DATEUTILS_$$_MONTHSBETWEEN$TDATETIME$TDATETIME$$SMALLINT
