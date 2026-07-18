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
	GLOBAL CLASSES$_$TFPLIST_$__$$_FIRST$$POINTER
CLASSES$_$TFPLIST_$__$$_FIRST$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		cmp	word [bx+4],0
		je	..@j4976
		jmp	..@j4977
..@j4976:
		mov	word [bp-2],0
		jmp	..@j4980
..@j4977:
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-2],ax
..@j4980:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
