BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL STRUTILS_$$_DECODESOUNDEXINT$SMALLINT$$ANSISTRING
STRUTILS_$$_DECODESOUNDEXINT$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-6],0
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	ax,word [bp+4]
		cwd
		mov	cx,9
		idiv	cx
		mov	word [bp-4],dx
		mov	cx,word [bp+4]
		mov	ax,7282
		imul	cx
		mov	ax,cx
		mov	cl,15
		shr	ax,cl
		add	dx,ax
		mov	word [bp+4],dx
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		cmp	word [bp-2],3
		jl	..@j2525
		inc	word [bp-2]
	ALIGN 2
..@j2526:
		dec	word [bp-2]
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-6]
		push	ax
		mov	ax,word [bp+4]
		cwd
		mov	cx,7
		idiv	cx
		add	dx,48
		push	dx
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-6]
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	cx,word [bp+4]
		mov	ax,18725
		imul	cx
		mov	ax,cx
		sar	dx,1
		mov	cl,15
		shr	ax,cl
		add	dx,ax
		mov	word [bp+4],dx
		cmp	word [bp-2],3
		jg	..@j2526
..@j2525:
		cmp	word [bp-4],1
		jg	..@j2543
		jmp	..@j2544
..@j2543:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-6]
		push	ax
		mov	ax,word [bp+4]
		cwd
		mov	cx,26
		idiv	cx
		add	dx,48
		push	dx
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-6]
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	cx,word [bp+4]
		mov	ax,20165
		imul	cx
		mov	ax,cx
		mov	cl,3
		sar	dx,cl
		mov	cl,15
		shr	ax,cl
		add	dx,ax
		mov	word [bp+4],dx
..@j2544:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-6]
		push	ax
		mov	ax,word [bp+4]
		add	ax,65
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-6]
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_concat
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_assign
