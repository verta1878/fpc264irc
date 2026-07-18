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
	GLOBAL CLASSES$_$TSIMPLESTATUSPROCTHREAD_$__$$_TERMINATECALLBACK$TOBJECT
CLASSES$_$TSIMPLESTATUSPROCTHREAD_$__$$_TERMINATECALLBACK$TOBJECT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		cmp	word [bx+26],0
		jne	..@j10641
		jmp	..@j10642
..@j10641:
		push	word [bp+4]
		mov	bx,word [bp+6]
		push	word [bx+32]
		mov	bx,word [bp+6]
		mov	ax,word [bx+26]
		call	ax
..@j10642:
		mov	sp,bp
		pop	bp
		ret	4
