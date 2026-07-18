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
	GLOBAL STRUTILS_$$_INTTOROMAN$LONGINT$$ANSISTRING
STRUTILS_$$_INTTOROMAN$LONGINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	word [bp-2],13
		inc	word [bp-2]
	ALIGN 2
..@j3738:
		dec	word [bp-2]
		jmp	..@j3740
	ALIGN 2
..@j3739:
		mov	bx,word [bp-2]
		shl	bx,1
		mov	ax,word [TC_$STRUTILS$_$INTTOROMAN$LONGINT$$ANSISTRING_$$_ARABICS+bx-2]
		cwd
		mov	cx,word [bp+4]
		mov	bx,word [bp+6]
		sub	cx,ax
		sbb	bx,dx
		mov	word [bp+4],cx
		mov	word [bp+6],bx
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		mov	bx,word [bp-2]
		shl	bx,1
		push	word [TC_$STRUTILS$_$INTTOROMAN$LONGINT$$ANSISTRING_$$_ROMANS+bx-2]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j3740:
		mov	bx,word [bp-2]
		shl	bx,1
		mov	ax,word [TC_$STRUTILS$_$INTTOROMAN$LONGINT$$ANSISTRING_$$_ARABICS+bx-2]
		cwd
		cmp	dx,word [bp+6]
		jl	..@j3739
		jg	..@j3741
		cmp	ax,word [bp+4]
		jbe	..@j3739
		jmp	..@j3741
		jmp	..@j3741
..@j3741:
		cmp	word [bp-2],1
		jg	..@j3738
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_concat
EXTERN	TC_$STRUTILS$_$INTTOROMAN$LONGINT$$ANSISTRING_$$_ROMANS
EXTERN	TC_$STRUTILS$_$INTTOROMAN$LONGINT$$ANSISTRING_$$_ARABICS
EXTERN	fpc_ansistr_assign
