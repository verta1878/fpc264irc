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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_FREEONRELEASE
CLASSES$_$TCOMPONENT_$__$$_FREEONRELEASE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx+20],0
		jne	..@j12764
		jmp	..@j12765
..@j12764:
		mov	bx,word [bp+4]
		push	word [bx+20]
		mov	bx,word [bp+4]
		mov	bx,word [bx+20]
		mov	bx,word [bx]
		mov	ax,word [bx+16]
		call	ax
..@j12765:
		mov	sp,bp
		pop	bp
		ret	2
