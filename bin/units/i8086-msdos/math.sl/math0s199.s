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
	GLOBAL MATH_$$_ROUNDTO$SINGLE$TROUNDTORANGE$$SINGLE
MATH_$$_ROUNDTO$SINGLE$TROUNDTORANGE$$SINGLE:
		push	bp
		mov	bp,sp
		sub	sp,16
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
		wait fstp	dword [bp-8]
		DB	09bh
		wait fld	dword [bp-8]
		wait fdivr	dword [bp+6]
		wait fistp	qword [bp-16]
		DB	09bh
		wait fild	qword [bp-16]
		wait fmul	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
		wait fld	dword [bp-4]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	MATH_$$_INTPOWER$EXTENDED$SMALLINT$$EXTENDED
EXTERN	_$MATH$_Ld23
