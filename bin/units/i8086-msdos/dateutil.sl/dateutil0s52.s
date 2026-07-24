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
	GLOBAL DATEUTILS_$$_ENDOFADAY$WORD$WORD$WORD$$TDATETIME
DATEUTILS_$$_ENDOFADAY$WORD$WORD$WORD$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
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
		ret	6
EXTERN	DATEUTILS_$$_ENDOFTHEDAY$TDATETIME$$TDATETIME
EXTERN	SYSUTILS_$$_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
