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
	GLOBAL CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jl	..@j4872
		jmp	..@j4874
..@j4874:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jle	..@j4872
		jmp	..@j4873
..@j4872:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_ERROR$ANSISTRING$SMALLINT
..@j4873:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		dec	ax
		mov	bx,word [bp+6]
		mov	word [bx+4],ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bp+4]
		inc	ax
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	dx,word [bp+4]
		sub	ax,dx
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+6]
		cmp	word [bx+6],256
		jg	..@j4891
		jmp	..@j4890
..@j4891:
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		mov	cl,2
		shr	ax,cl
		mov	bx,word [bp+6]
		cmp	ax,word [bx+4]
		jg	..@j4889
		jmp	..@j4890
..@j4889:
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		shr	ax,1
		mov	bx,word [bp+6]
		mov	word [bx+6],ax
		mov	bx,word [bp+6]
		lea	ax,[bx+2]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
..@j4890:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_ERROR$ANSISTRING$SMALLINT
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
