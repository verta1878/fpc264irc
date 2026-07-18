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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_DESTROYCOMPONENTS
CLASSES$_$TCOMPONENT_$__$$_DESTROYCOMPONENTS:
		push	bp
		mov	bp,sp
		sub	sp,2
		jmp	..@j12645
	ALIGN 2
..@j12644:
		mov	bx,word [bp+4]
		push	word [bx+12]
		call	CLASSES$_$TFPLIST_$__$$_LAST$$POINTER
		mov	word [bp-2],ax
		push	word [bp+4]
		push	word [bp-2]
		call	CLASSES$_$TCOMPONENT_$__$$_REMOVE$TCOMPONENT
		push	word [bp-2]
		mov	ax,1
		push	ax
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j12645:
		mov	bx,word [bp+4]
		cmp	word [bx+12],0
		jne	..@j12644
		jmp	..@j12646
..@j12646:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TCOMPONENT_$__$$_REMOVE$TCOMPONENT
EXTERN	CLASSES$_$TFPLIST_$__$$_LAST$$POINTER
