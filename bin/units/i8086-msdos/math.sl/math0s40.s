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
	GLOBAL MATH_$$_ARSINH$EXTENDED$$EXTENDED
MATH_$$_ARSINH$EXTENDED$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,10
		wait fld	tword [bp+4]
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		wait fld1
		wait faddp	st1,st0
		wait fsqrt
		wait fld	tword [bp+4]
		wait faddp	st1,st0
		wait fldln2
		wait fxch
		wait fyl2x
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	10
