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
	GLOBAL DATEUTILS_$$_DATETIMETOMODIFIEDJULIANDATE$TDATETIME$$DOUBLE
DATEUTILS_$$_DATETIMETOMODIFIEDJULIANDATE$TDATETIME$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,8
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_DATETIMETOJULIANDATE$TDATETIME$$DOUBLE
		wait fld	tword [_$DATEUTILS$_Ld25]
		wait fsubp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	_$DATEUTILS$_Ld25
EXTERN	DATEUTILS_$$_DATETIMETOJULIANDATE$TDATETIME$$DOUBLE
