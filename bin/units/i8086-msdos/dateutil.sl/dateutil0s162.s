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
	GLOBAL DATEUTILS_$$_DECODEDAYOFWEEKINMONTH$TDATETIME$WORD$WORD$WORD$WORD
DATEUTILS_$$_DECODEDAYOFWEEKINMONTH$TDATETIME$WORD$WORD$WORD$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
		mov	bx,word [bp+4]
		mov	word [bx],ax
		push	word [bp-2]
		call	DATEUTILS_$$_INTERNALNTHDAYOFWEEK$WORD$$WORD
		mov	bx,word [bp+6]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	DATEUTILS_$$_INTERNALNTHDAYOFWEEK$WORD$$WORD
EXTERN	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
EXTERN	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
