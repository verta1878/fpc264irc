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
	GLOBAL MATH_$$_LDEXP$EXTENDED$SMALLINT$$EXTENDED
MATH_$$_LDEXP$EXTENDED$SMALLINT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [_$MATH$_Ld5+8]
		push	word [_$MATH$_Ld5+6]
		push	word [_$MATH$_Ld5+4]
		push	word [_$MATH$_Ld5+2]
		push	word [_$MATH$_Ld5]
		push	word [bp+4]
		call	MATH_$$_INTPOWER$EXTENDED$SMALLINT$$EXTENDED
		wait fld	tword [bp+6]
		wait fmulp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	MATH_$$_INTPOWER$EXTENDED$SMALLINT$$EXTENDED
EXTERN	_$MATH$_Ld5
