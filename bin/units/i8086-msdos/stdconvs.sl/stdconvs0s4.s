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
	GLOBAL STDCONVS_$$_CELSIUSTOKELVIN$DOUBLE$$DOUBLE
STDCONVS_$$_CELSIUSTOKELVIN$DOUBLE$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,8
		wait fld	qword [bp+4]
		wait fld	tword [_$STDCONVS$_Ld5]
		wait faddp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	_$STDCONVS$_Ld5
