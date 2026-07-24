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
	GLOBAL MATH_$$_SAMEVALUE$DOUBLE$DOUBLE$$BOOLEAN
MATH_$$_SAMEVALUE$DOUBLE$DOUBLE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		wait fldz
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	MATH_$$_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	MATH_$$_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN
