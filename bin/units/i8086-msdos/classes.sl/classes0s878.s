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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEUNICODESTRING$UNICODESTRING
CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEUNICODESTRING$UNICODESTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,21
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j21579
		mov	bx,word [bx-2]
..@j21579:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		push	word [bp+6]
		push	word [bp-2]
		push	word [bp-4]
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEDWORD$LONGWORD
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		ja	..@j21584
		jb	..@j21585
		cmp	ax,0
		ja	..@j21584
		jmp	..@j21585
..@j21584:
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		shl	ax,1
		rcl	dx,1
		push	dx
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
..@j21585:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEDWORD$LONGWORD
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
