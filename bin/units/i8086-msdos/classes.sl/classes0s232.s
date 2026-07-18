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
	GLOBAL CLASSES$_$TFPLIST_$__$$_INSERT$SMALLINT$POINTER
CLASSES$_$TFPLIST_$__$$_INSERT$SMALLINT$POINTER:
		push	bp
		mov	bp,sp
		cmp	word [bp+6],0
		jl	..@j5032
		jmp	..@j5034
..@j5034:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+6]
		jl	..@j5032
		jmp	..@j5033
..@j5032:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+6]
		call	CLASSES$_$TFPLIST_$__$$_ERROR$ANSISTRING$SMALLINT
..@j5033:
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+4]
		cmp	ax,word [si+6]
		je	..@j5041
		jmp	..@j5042
..@j5041:
		push	word [bp+8]
		call	CLASSES$_$TFPLIST_$__$$_EXPAND$$TFPLIST
..@j5042:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+6]
		jg	..@j5045
		jmp	..@j5046
..@j5045:
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp+6]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp+6]
		inc	ax
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		mov	dx,word [bp+6]
		sub	ax,dx
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j5046:
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp+6]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp+4]
		mov	word [bx+si],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		inc	ax
		mov	bx,word [bp+8]
		mov	word [bx+4],ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_EXPAND$$TFPLIST
EXTERN	CLASSES$_$TFPLIST_$__$$_ERROR$ANSISTRING$SMALLINT
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
