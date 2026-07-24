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
	GLOBAL CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		jl	..@j4719
		jmp	..@j4721
..@j4721:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jle	..@j4719
		jmp	..@j4720
..@j4719:
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_RAISEINDEXERROR$SMALLINT
..@j4720:
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_RAISEINDEXERROR$SMALLINT
