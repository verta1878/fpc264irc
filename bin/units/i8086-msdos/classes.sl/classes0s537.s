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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENTINDEX$$SMALLINT
CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENTINDEX$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		cmp	word [bx+6],0
		jne	..@j12098
		jmp	..@j12097
..@j12098:
		mov	bx,word [bp+4]
		mov	bx,word [bx+6]
		cmp	word [bx+12],0
		jne	..@j12096
		jmp	..@j12097
..@j12096:
		mov	bx,word [bp+4]
		mov	bx,word [bx+6]
		push	word [bx+12]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j12105
..@j12097:
		mov	word [bp-2],-1
..@j12105:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
