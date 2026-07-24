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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_UPDATEACTION$TBASICACTION$$BOOLEAN
CLASSES$_$TCOMPONENT_$__$$_UPDATEACTION$TBASICACTION$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		push	word [bp+6]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+112]
		call	ax
		test	al,al
		jne	..@j12870
		jmp	..@j12871
..@j12870:
		push	word [bp+4]
		push	word [bp+6]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+114]
		call	ax
		mov	byte [bp-1],1
		jmp	..@j12882
..@j12871:
		mov	byte [bp-1],0
..@j12882:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
