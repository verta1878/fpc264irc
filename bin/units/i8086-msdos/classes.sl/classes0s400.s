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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_EXCHANGE$SMALLINT$SMALLINT
CLASSES$_$TSTRINGLIST_$__$$_EXCHANGE$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		cmp	word [bp+6],0
		jl	..@j9392
		jmp	..@j9394
..@j9394:
		mov	bx,word [bp+8]
		mov	ax,word [bx+22]
		cmp	ax,word [bp+6]
		jle	..@j9392
		jmp	..@j9393
..@j9392:
		push	word [bp+8]
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
..@j9393:
		cmp	word [bp+4],0
		jl	..@j9401
		jmp	..@j9403
..@j9403:
		mov	bx,word [bp+8]
		mov	ax,word [bx+22]
		cmp	ax,word [bp+4]
		jle	..@j9401
		jmp	..@j9402
..@j9401:
		push	word [bp+8]
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+4]
		call	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
..@j9402:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+124]
		call	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+6]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		mov	word [bp-2],ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+6]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si+2]
		mov	word [bp-4],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+20]
		mov	word [bp-8],ax
		mov	ax,word [bp+6]
		mov	di,ax
		mov	cl,2
		shl	di,cl
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		mov	bx,word [bp-8]
		mov	word [bx+di],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+20]
		mov	word [bp-6],ax
		mov	ax,word [bp+6]
		mov	di,ax
		mov	cl,2
		shl	di,cl
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si+2]
		mov	bx,word [bp-6]
		mov	word [bx+di+2],ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp-2]
		mov	word [bx+si],ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp-4]
		mov	word [bx+si+2],ax
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+122]
		call	ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
