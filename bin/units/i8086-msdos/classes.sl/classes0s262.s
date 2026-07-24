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
	GLOBAL CLASSES$_$TLIST_$__$$_SETCOUNT$SMALLINT
CLASSES$_$TLIST_$__$$_SETCOUNT$SMALLINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jg	..@j5810
		jmp	..@j5811
..@j5810:
		jmp	..@j5813
	ALIGN 2
..@j5812:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bx+4]
		dec	ax
		push	ax
		call	CLASSES$_$TLIST_$__$$_DELETE$SMALLINT
..@j5813:
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jg	..@j5812
		jmp	..@j5814
..@j5814:
		jmp	..@j5819
..@j5811:
		mov	bx,word [bp+6]
		push	word [bx+2]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_SETCOUNT$SMALLINT
..@j5819:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_SETCOUNT$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_DELETE$SMALLINT
