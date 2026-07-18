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
	GLOBAL MATH_$$_SUMSANDSQUARES$array_of_EXTENDED$EXTENDED$EXTENDED
MATH_$$_SUMSANDSQUARES$array_of_EXTENDED$EXTENDED$EXTENDED:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+8]
		inc	ax
		push	ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	MATH_$$_SUMSANDSQUARES$PEXTENDED$SMALLINT$EXTENDED$EXTENDED
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	MATH_$$_SUMSANDSQUARES$PEXTENDED$SMALLINT$EXTENDED$EXTENDED
