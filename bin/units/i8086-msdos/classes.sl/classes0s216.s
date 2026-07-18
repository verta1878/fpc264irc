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
	GLOBAL CLASSES$_$TFPLIST_$__$$_PUT$SMALLINT$POINTER
CLASSES$_$TFPLIST_$__$$_PUT$SMALLINT$POINTER:
		push	bp
		mov	bp,sp
		cmp	word [bp+6],0
		jl	..@j4730
		jmp	..@j4732
..@j4732:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+6]
		jle	..@j4730
		jmp	..@j4731
..@j4730:
		push	word [bp+8]
		push	word [bp+6]
		call	CLASSES$_$TFPLIST_$__$$_RAISEINDEXERROR$SMALLINT
..@j4731:
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp+6]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp+4]
		mov	word [bx+si],ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TFPLIST_$__$$_RAISEINDEXERROR$SMALLINT
