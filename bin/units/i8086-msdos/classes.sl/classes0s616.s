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
	GLOBAL CLASSES$_$TBASICACTION_$__$$_CHANGE
CLASSES$_$TBASICACTION_$__$$_CHANGE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx+30],0
		jne	..@j13257
		jmp	..@j13258
..@j13257:
		mov	bx,word [bp+4]
		push	word [bx+32]
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	ax,word [bx+30]
		call	ax
..@j13258:
		mov	sp,bp
		pop	bp
		ret	2
