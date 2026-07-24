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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_SETSUBCOMPONENT$BOOLEAN
CLASSES$_$TCOMPONENT_$__$$_SETSUBCOMPONENT$BOOLEAN:
		push	bp
		mov	bp,sp
		cmp	byte [bp+4],0
		jne	..@j12865
		jmp	..@j12866
..@j12865:
		mov	bx,word [bp+6]
		mov	al,byte [bx+24]
		mov	ah,0
		or	ax,4
		mov	byte [bx+24],al
		jmp	..@j12867
..@j12866:
		mov	bx,word [bp+6]
		mov	al,byte [bx+24]
		mov	ah,0
		and	ax,-5
		mov	byte [bx+24],al
..@j12867:
		mov	sp,bp
		pop	bp
		ret	4
