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
	GLOBAL MATH_$$_SIGN$SMALLINT$$TVALUESIGN
MATH_$$_SIGN$SMALLINT$$TVALUESIGN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		jl	..@j39
		jmp	..@j40
..@j39:
		mov	byte [bp-1],-1
		jmp	..@j43
..@j40:
		cmp	word [bp+4],0
		jg	..@j44
		jmp	..@j45
..@j44:
		mov	byte [bp-1],1
		jmp	..@j48
..@j45:
		mov	byte [bp-1],0
..@j48:
..@j43:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
