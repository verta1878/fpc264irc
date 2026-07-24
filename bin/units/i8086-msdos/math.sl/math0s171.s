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
	GLOBAL MATH_$$_ISZERO$DOUBLE$$BOOLEAN
MATH_$$_ISZERO$DOUBLE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		wait fld	qword [bp+4]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		push	word [_$MATH$_Ld20+8]
		push	word [_$MATH$_Ld20+6]
		push	word [_$MATH$_Ld20+4]
		push	word [_$MATH$_Ld20+2]
		push	word [_$MATH$_Ld20]
		call	MATH_$$_ISZERO$EXTENDED$EXTENDED$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	MATH_$$_ISZERO$EXTENDED$EXTENDED$$BOOLEAN
EXTERN	_$MATH$_Ld20
