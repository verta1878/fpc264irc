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
	GLOBAL MATH_$$_MIN$SMALLINT$SMALLINT$$SMALLINT
MATH_$$_MIN$SMALLINT$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+6]
		cmp	ax,word [bp+4]
		jl	..@j1803
		jmp	..@j1804
..@j1803:
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		jmp	..@j1807
..@j1804:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
..@j1807:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
