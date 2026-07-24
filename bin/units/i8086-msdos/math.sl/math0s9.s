BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL MATH_$$_DEGTORAD$EXTENDED$$EXTENDED
MATH_$$_DEGTORAD$EXTENDED$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,10
		wait fldpi
		wait fld	tword [_$MATH$_Ld1]
		wait fdivp	st1,st0
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	_$MATH$_Ld1
