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
	GLOBAL MATH_$$_COMPAREVALUE$SMALLINT$SMALLINT$$TVALUERELATIONSHIP
MATH_$$_COMPAREVALUE$SMALLINT$SMALLINT$$TVALUERELATIONSHIP:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	byte [bp-1],1
		mov	ax,word [bp+6]
		cmp	ax,word [bp+4]
		je	..@j2347
		jmp	..@j2348
..@j2347:
		mov	byte [bp-1],0
		jmp	..@j2351
..@j2348:
		mov	ax,word [bp+6]
		cmp	ax,word [bp+4]
		jl	..@j2352
		jmp	..@j2353
..@j2352:
		mov	byte [bp-1],-1
..@j2353:
..@j2351:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
