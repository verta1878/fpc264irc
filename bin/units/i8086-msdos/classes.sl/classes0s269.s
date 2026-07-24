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
	GLOBAL CLASSES$_$TLIST_$__$$_ADDLIST$TLIST
CLASSES$_$TLIST_$__$$_ADDLIST$TLIST:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		push	word [bx+2]
		mov	bx,word [bp+4]
		push	word [bx+2]
		call	CLASSES$_$TFPLIST_$__$$_ADDLIST$TFPLIST
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-4],ax
		mov	word [bp-2],0
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jl	..@j6029
		dec	word [bp-2]
	ALIGN 2
..@j6030:
		inc	word [bp-2]
		push	word [bp+4]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		test	ax,ax
		jne	..@j6031
		jmp	..@j6032
..@j6031:
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
..@j6032:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jg	..@j6030
..@j6029:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_ADDLIST$TFPLIST
