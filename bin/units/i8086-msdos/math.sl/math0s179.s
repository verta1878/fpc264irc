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
	GLOBAL MATH_$$_SAMEVALUE$EXTENDED$EXTENDED$$BOOLEAN
MATH_$$_SAMEVALUE$EXTENDED$EXTENDED$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+22]
		push	word [bp+20]
		push	word [bp+18]
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		wait fldz
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	MATH_$$_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	20
EXTERN	MATH_$$_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN
