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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_REMOVEITEM$TCOLLECTIONITEM
CLASSES$_$TCOLLECTION_$__$$_REMOVEITEM$TCOLLECTIONITEM:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+72]
		call	ax
		mov	bx,word [bp+6]
		push	word [bx+8]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_INDEXOFITEM$POINTER$TDIRECTION$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],-1
		jne	..@j4227
		jmp	..@j4228
..@j4227:
		mov	bx,word [bp+6]
		push	word [bx+8]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
..@j4228:
		mov	bx,word [bp+4]
		mov	word [bx+6],0
		push	word [bp+6]
		call	CLASSES$_$TCOLLECTION_$__$$_CHANGED
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TCOLLECTION_$__$$_CHANGED
EXTERN	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_INDEXOFITEM$POINTER$TDIRECTION$$SMALLINT
