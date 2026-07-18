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
	GLOBAL CLASSES$_$TBASICACTIONLINK_$__$$_CHANGE
CLASSES$_$TBASICACTIONLINK_$__$$_CHANGE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx+2],0
		jne	..@j13078
		jmp	..@j13079
..@j13078:
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	bx,word [bp+4]
		push	word [bx+6]
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		call	ax
..@j13079:
		mov	sp,bp
		pop	bp
		ret	2
