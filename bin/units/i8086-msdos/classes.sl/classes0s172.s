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
	GLOBAL CLASSES$_$TCOLLECTIONITEM_$__$$_SETINDEX$SMALLINT
CLASSES$_$TCOLLECTIONITEM_$__$$_SETINDEX$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+6]
		call	CLASSES$_$TCOLLECTIONITEM_$__$$_GETINDEX$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,-1
		jg	..@j3968
		jl	..@j3967
		cmp	dx,-1
		ja	..@j3968
		jmp	..@j3967
..@j3968:
		mov	ax,word [bp+4]
		cwd
		cmp	dx,word [bp-2]
		jne	..@j3966
		cmp	ax,word [bp-4]
		jne	..@j3966
		jmp	..@j3967
		jmp	..@j3967
..@j3966:
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		push	word [bx+8]
		push	word [bp-4]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_MOVE$SMALLINT$SMALLINT
		push	word [bp+6]
		mov	ax,1
		push	ax
		call	CLASSES$_$TCOLLECTIONITEM_$__$$_CHANGED$BOOLEAN
..@j3967:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TCOLLECTIONITEM_$__$$_CHANGED$BOOLEAN
EXTERN	CLASSES$_$TFPLIST_$__$$_MOVE$SMALLINT$SMALLINT
EXTERN	CLASSES$_$TCOLLECTIONITEM_$__$$_GETINDEX$$SMALLINT
