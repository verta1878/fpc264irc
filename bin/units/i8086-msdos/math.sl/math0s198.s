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
	GLOBAL MATH_$$_ROUNDTO$EXTENDED$TROUNDTORANGE$$EXTENDED
MATH_$$_ROUNDTO$EXTENDED$TROUNDTORANGE$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [_$MATH$_Ld23+8]
		push	word [_$MATH$_Ld23+6]
		push	word [_$MATH$_Ld23+4]
		push	word [_$MATH$_Ld23+2]
		push	word [_$MATH$_Ld23]
		mov	al,byte [bp+4]
		cbw
		mov	dx,ax
		push	dx
		call	MATH_$$_INTPOWER$EXTENDED$SMALLINT$$EXTENDED
		wait fstp	tword [bp-20]
		DB	09bh
		wait fld	tword [bp-20]
		wait fld	tword [bp+6]
		wait fdivrp	st1,st0
		wait fistp	qword [bp-28]
		DB	09bh
		wait fild	qword [bp-28]
		wait fld	tword [bp-20]
		wait fmulp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	MATH_$$_INTPOWER$EXTENDED$SMALLINT$$EXTENDED
EXTERN	_$MATH$_Ld23
