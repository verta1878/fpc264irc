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
	GLOBAL CLASSES_$$_INVALIDPOINT$TSMALLPOINT$$BOOLEAN
CLASSES_$$_INVALIDPOINT$TSMALLPOINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		cmp	word [bx],-1
		je	..@j14608
		jmp	..@j14607
..@j14608:
		mov	bx,word [bp+4]
		cmp	word [bx+2],-1
		je	..@j14606
		jmp	..@j14607
..@j14606:
		mov	byte [bp-1],1
		jmp	..@j14609
..@j14607:
		mov	byte [bp-1],0
..@j14609:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
