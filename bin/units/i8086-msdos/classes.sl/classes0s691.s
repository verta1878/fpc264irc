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
	GLOBAL CLASSES_$$_POINTSEQUAL$TSMALLPOINT$TSMALLPOINT$$BOOLEAN
CLASSES_$$_POINTSEQUAL$TSMALLPOINT$TSMALLPOINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	ax,word [si]
		mov	dx,word [si+2]
		cmp	dx,word [bx+2]
		jne	..@j14590
		cmp	ax,word [bx]
		jne	..@j14590
		jmp	..@j14589
		jmp	..@j14590
..@j14589:
		mov	byte [bp-1],1
		jmp	..@j14591
..@j14590:
		mov	byte [bp-1],0
..@j14591:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
