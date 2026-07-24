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
	GLOBAL MATH_$$_MEAN$PSINGLE$LONGINT$$EXTENDED
MATH_$$_MEAN$PSINGLE$LONGINT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	MATH_$$_SUM$PSINGLE$LONGINT$$EXTENDED
		wait fstp	tword [bp-10]
		DB	09bh
		wait fild	dword [bp+4]
		wait fld	tword [bp-10]
		wait fdivrp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	MATH_$$_SUM$PSINGLE$LONGINT$$EXTENDED
