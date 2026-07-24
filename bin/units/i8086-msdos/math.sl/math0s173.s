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
	GLOBAL MATH_$$_ISZERO$EXTENDED$$BOOLEAN
MATH_$$_ISZERO$EXTENDED$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		push	word [_$MATH$_Ld21+8]
		push	word [_$MATH$_Ld21+6]
		push	word [_$MATH$_Ld21+4]
		push	word [_$MATH$_Ld21+2]
		push	word [_$MATH$_Ld21]
		call	MATH_$$_ISZERO$EXTENDED$EXTENDED$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	MATH_$$_ISZERO$EXTENDED$EXTENDED$$BOOLEAN
EXTERN	_$MATH$_Ld21
