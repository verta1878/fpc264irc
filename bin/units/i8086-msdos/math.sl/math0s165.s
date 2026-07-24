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
	GLOBAL MATH_$$_ENSURERANGE$SMALLINT$SMALLINT$SMALLINT$$SMALLINT
MATH_$$_ENSURERANGE$SMALLINT$SMALLINT$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jl	..@j1921
		jmp	..@j1922
..@j1921:
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		jmp	..@j1925
..@j1922:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+4]
		jg	..@j1926
		jmp	..@j1927
..@j1926:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
..@j1927:
..@j1925:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
