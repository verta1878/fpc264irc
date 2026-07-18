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
	GLOBAL MATH_$$_TAN$EXTENDED$$EXTENDED
MATH_$$_TAN$EXTENDED$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,30
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-30]
		push	ax
		call	MATH_$$_SINCOS$EXTENDED$EXTENDED$EXTENDED
		wait fld	tword [bp-30]
		wait fld	tword [bp-20]
		wait fdivrp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	MATH_$$_SINCOS$EXTENDED$EXTENDED$EXTENDED
