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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENT$SMALLINT$$TCOMPONENT
CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENT$SMALLINT$$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		cmp	word [bx+12],0
		je	..@j12017
		jmp	..@j12018
..@j12017:
		mov	word [bp-2],0
		jmp	..@j12021
..@j12018:
		mov	bx,word [bp+6]
		push	word [bx+12]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-2],ax
..@j12021:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
