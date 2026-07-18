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
	GLOBAL DATEUTILS_$$_ENDOFAWEEK$WORD$WORD$$TDATETIME
DATEUTILS_$$_ENDOFAWEEK$WORD$WORD$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,7
		push	ax
		call	DATEUTILS_$$_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	DATEUTILS_$$_ENDOFTHEDAY$TDATETIME$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	DATEUTILS_$$_ENDOFTHEDAY$TDATETIME$$TDATETIME
EXTERN	DATEUTILS_$$_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME
