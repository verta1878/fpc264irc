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
	GLOBAL DATEUTILS_$$_MODIFIEDJULIANDATETODATETIME$DOUBLE$$TDATETIME
DATEUTILS_$$_MODIFIEDJULIANDATETODATETIME$DOUBLE$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,16
		wait fld	qword [bp+4]
		wait fld	tword [_$DATEUTILS$_Ld25]
		wait faddp	st1,st0
		wait fstp	qword [bp-16]
		DB	09bh
		wait fld	qword [bp-16]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	DATEUTILS_$$_JULIANDATETODATETIME$DOUBLE$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	DATEUTILS_$$_JULIANDATETODATETIME$DOUBLE$$TDATETIME
EXTERN	_$DATEUTILS$_Ld25
