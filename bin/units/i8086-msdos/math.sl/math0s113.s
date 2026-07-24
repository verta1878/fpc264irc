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
	GLOBAL MATH_$$_POPNVARIANCE$PDOUBLE$SMALLINT$$EXTENDED
MATH_$$_POPNVARIANCE$PDOUBLE$SMALLINT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,14
		push	word [bp+6]
		push	word [bp+4]
		call	MATH_$$_TOTALVARIANCE$PDOUBLE$SMALLINT$$EXTENDED
		mov	ax,word [bp+4]
		cwd
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		wait fild	dword [bp-14]
		wait fdivp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	MATH_$$_TOTALVARIANCE$PDOUBLE$SMALLINT$$EXTENDED
