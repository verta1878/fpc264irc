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
	GLOBAL MATH_$$_SUM$array_of_SINGLE$$EXTENDED
MATH_$$_SUM$array_of_SINGLE$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	MATH_$$_SUM$PSINGLE$LONGINT$$EXTENDED
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	MATH_$$_SUM$PSINGLE$LONGINT$$EXTENDED
