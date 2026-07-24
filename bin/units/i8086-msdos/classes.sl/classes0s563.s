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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_SETINLINE$BOOLEAN
CLASSES$_$TCOMPONENT_$__$$_SETINLINE$BOOLEAN:
		push	bp
		mov	bp,sp
		cmp	byte [bp+4],0
		jne	..@j12404
		jmp	..@j12405
..@j12404:
		mov	bx,word [bp+6]
		mov	al,byte [bx+23]
		mov	ah,0
		or	ax,2
		mov	byte [bx+23],al
		jmp	..@j12406
..@j12405:
		mov	bx,word [bp+6]
		mov	al,byte [bx+23]
		mov	ah,0
		and	ax,-3
		mov	byte [bx+23],al
..@j12406:
		mov	sp,bp
		pop	bp
		ret	4
