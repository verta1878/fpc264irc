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
	GLOBAL CLASSES$_$TDATAMODULE_$__$$_AFTERCONSTRUCTION
CLASSES$_$TDATAMODULE_$__$$_AFTERCONSTRUCTION:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	byte [bx+54],0
		je	..@j13447
		jmp	..@j13448
..@j13447:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+108]
		call	ax
..@j13448:
		mov	sp,bp
		pop	bp
		ret	2
