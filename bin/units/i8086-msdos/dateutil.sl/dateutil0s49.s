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
	GLOBAL DATEUTILS_$$_ENDOFTHEDAY$TDATETIME$$TDATETIME
DATEUTILS_$$_ENDOFTHEDAY$TDATETIME$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,14
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		mov	ax,23
		push	ax
		mov	ax,59
		push	ax
		mov	ax,59
		push	ax
		mov	ax,999
		push	ax
		call	DATEUTILS_$$_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	DATEUTILS_$$_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
EXTERN	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
