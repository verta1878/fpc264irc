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
	GLOBAL CLASSES$_$TFPLIST_$__$$_EXCHANGE$SMALLINT$SMALLINT
CLASSES$_$TFPLIST_$__$$_EXCHANGE$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+6]
		jle	..@j4926
		jmp	..@j4928
..@j4928:
		cmp	word [bp+6],0
		jl	..@j4926
		jmp	..@j4927
..@j4926:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+6]
		call	CLASSES$_$TFPLIST_$__$$_ERROR$ANSISTRING$SMALLINT
..@j4927:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jle	..@j4935
		jmp	..@j4937
..@j4937:
		cmp	word [bp+4],0
		jl	..@j4935
		jmp	..@j4936
..@j4935:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_ERROR$ANSISTRING$SMALLINT
..@j4936:
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp+6]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-2],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	di,ax
		shl	di,1
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	bx,word [bp-4]
		mov	word [bx+di],ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-2]
		mov	word [bx+si],ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TFPLIST_$__$$_ERROR$ANSISTRING$SMALLINT
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
