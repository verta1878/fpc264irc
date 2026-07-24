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
	GLOBAL CLASSES$_$TFPLIST_$__$$_MOVE$SMALLINT$SMALLINT
CLASSES$_$TFPLIST_$__$$_MOVE$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+6],0
		jl	..@j5072
		jmp	..@j5074
..@j5074:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		dec	ax
		cmp	ax,word [bp+6]
		jl	..@j5072
		jmp	..@j5073
..@j5072:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+6]
		call	CLASSES$_$TFPLIST_$__$$_ERROR$ANSISTRING$SMALLINT
..@j5073:
		cmp	word [bp+4],0
		jl	..@j5081
		jmp	..@j5083
..@j5083:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		dec	ax
		cmp	ax,word [bp+4]
		jl	..@j5081
		jmp	..@j5082
..@j5081:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_ERROR$ANSISTRING$SMALLINT
..@j5082:
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp+6]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-2],ax
		mov	ax,word [bp+4]
		cmp	ax,word [bp+6]
		jg	..@j5092
		jmp	..@j5093
..@j5092:
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp+6]
		inc	ax
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp+6]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		sub	ax,dx
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		jmp	..@j5100
..@j5093:
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp+4]
		inc	ax
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp+6]
		mov	dx,word [bp+4]
		sub	ax,dx
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j5100:
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
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_ERROR$ANSISTRING$SMALLINT
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
