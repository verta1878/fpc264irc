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
	GLOBAL MATH_$$_RANDG$EXTENDED$EXTENDED$$EXTENDED
MATH_$$_RANDG$EXTENDED$EXTENDED$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,40
	ALIGN 2
..@j900:
		call	SYSTEM_$$_RANDOM$$EXTENDED
		wait fld	tword [_$MATH$_Ld5]
		wait fmulp	st1,st0
		wait fld1
		wait fsubp	st1,st0
		wait fstp	tword [bp-20]
		DB	09bh
		wait fld	tword [bp-20]
		wait fmul	st0,st0
		wait fstp	tword [bp-40]
		DB	09bh
		call	SYSTEM_$$_RANDOM$$EXTENDED
		wait fld	tword [_$MATH$_Ld5]
		wait fmulp	st1,st0
		wait fld1
		wait fsubp	st1,st0
		wait fmul	st0,st0
		wait fld	tword [bp-40]
		wait faddp	st1,st0
		wait fstp	tword [bp-30]
		DB	09bh
		wait fld1
		wait fld	tword [bp-30]
		wait fcompp
		fstsw	[bp-32]
		mov	ah,byte [bp-31]
		sahf
		jp	..@j907
		jb	..@j902
..@j907:
		jmp	..@j900
..@j902:
		wait fld	tword [bp-30]
		wait fldln2
		wait fxch
		wait fyl2x
		wait fld	tword [_$MATH$_Ld13]
		wait fmulp	st1,st0
		wait fld	tword [bp-30]
		wait fdivp	st1,st0
		wait fsqrt
		wait fld	tword [bp-20]
		wait fmulp	st1,st0
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		wait fld	tword [bp+14]
		wait faddp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	20
EXTERN	_$MATH$_Ld13
EXTERN	_$MATH$_Ld5
EXTERN	SYSTEM_$$_RANDOM$$EXTENDED
