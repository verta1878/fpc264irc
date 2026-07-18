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
	GLOBAL DATEUTILS_$$_NTHDAYOFWEEK$TDATETIME$$WORD
DATEUTILS_$$_NTHDAYOFWEEK$TDATETIME$$WORD:
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
		call	DATEUTILS_$$_DAYOFTHEMONTH$TDATETIME$$WORD
		push	ax
		call	DATEUTILS_$$_INTERNALNTHDAYOFWEEK$WORD$$WORD
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	DATEUTILS_$$_INTERNALNTHDAYOFWEEK$WORD$$WORD
EXTERN	DATEUTILS_$$_DAYOFTHEMONTH$TDATETIME$$WORD
