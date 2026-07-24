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
	GLOBAL MATH_$$_IFTHEN$BOOLEAN$SMALLINT$SMALLINT$$SMALLINT
MATH_$$_IFTHEN$BOOLEAN$SMALLINT$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	byte [bp+8],0
		jne	..@j2318
		jmp	..@j2319
..@j2318:
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		jmp	..@j2322
..@j2319:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
..@j2322:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
