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
	GLOBAL DATEUTILS_$$_WEEKOFTHEYEAR$TDATETIME$WORD$$WORD
DATEUTILS_$$_WEEKOFTHEYEAR$TDATETIME$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	DATEUTILS_$$_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	DATEUTILS_$$_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD
