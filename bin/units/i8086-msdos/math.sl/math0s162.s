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
	GLOBAL MATH_$$_INRANGE$SMALLINT$SMALLINT$SMALLINT$$BOOLEAN
MATH_$$_INRANGE$SMALLINT$SMALLINT$SMALLINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+8]
		cmp	ax,word [bp+6]
		jge	..@j1901
		jmp	..@j1900
..@j1901:
		mov	ax,word [bp+8]
		cmp	ax,word [bp+4]
		jle	..@j1899
		jmp	..@j1900
..@j1899:
		mov	byte [bp-1],1
		jmp	..@j1902
..@j1900:
		mov	byte [bp-1],0
..@j1902:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
