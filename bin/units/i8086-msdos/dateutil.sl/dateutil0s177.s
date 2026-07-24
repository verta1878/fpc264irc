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
	GLOBAL DATEUTILS_$$_TRYMODIFIEDJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN
DATEUTILS_$$_TRYMODIFIEDJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,10
		wait fld	qword [bp+6]
		wait fld	tword [_$DATEUTILS$_Ld25]
		wait faddp	st1,st0
		wait fstp	qword [bp-10]
		DB	09bh
		wait fld	qword [bp-10]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		mov	ax,word [bp+4]
		push	ax
		call	DATEUTILS_$$_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	DATEUTILS_$$_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN
EXTERN	_$DATEUTILS$_Ld25
