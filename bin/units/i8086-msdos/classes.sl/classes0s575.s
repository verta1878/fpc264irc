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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_DESTROY
CLASSES$_$TCOMPONENT_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+4],0
		jg	..@j12579
		jmp	..@j12580
..@j12579:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j12580:
		push	word [bp+6]
		call	CLASSES$_$TCOMPONENT_$__$$_DESTROYING
		mov	bx,word [bp+6]
		cmp	word [bx+14],0
		jne	..@j12585
		jmp	..@j12586
..@j12585:
		mov	bx,word [bp+6]
		mov	bx,word [bx+14]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-2],ax
		jmp	..@j12590
	ALIGN 2
..@j12589:
		mov	bx,word [bp+6]
		push	word [bx+14]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		push	word [bx+14]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
		push	word [bp-4]
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp-4]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
		mov	bx,word [bp+6]
		cmp	word [bx+14],0
		je	..@j12608
		jmp	..@j12609
..@j12608:
		mov	word [bp-2],0
		jmp	..@j12612
..@j12609:
		mov	bx,word [bp+6]
		mov	bx,word [bx+14]
		mov	ax,word [bx+4]
		cmp	ax,word [bp-2]
		jl	..@j12613
		jmp	..@j12614
..@j12613:
		mov	bx,word [bp+6]
		mov	bx,word [bx+14]
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
..@j12614:
..@j12612:
		dec	word [bp-2]
..@j12590:
		cmp	word [bp-2],0
		jge	..@j12589
		jmp	..@j12591
..@j12591:
		mov	bx,word [bp+6]
		lea	ax,[bx+14]
		push	ax
		call	SYSUTILS_$$_FREEANDNIL$formal
..@j12586:
		push	word [bp+6]
		call	CLASSES$_$TCOMPONENT_$__$$_DESTROYCOMPONENTS
		mov	bx,word [bp+6]
		cmp	word [bx+6],0
		jne	..@j12621
		jmp	..@j12622
..@j12621:
		mov	bx,word [bp+6]
		push	word [bx+6]
		push	word [bp+6]
		call	CLASSES$_$TCOMPONENT_$__$$_REMOVECOMPONENT$TCOMPONENT
..@j12622:
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	CLASSES$_$TPERSISTENT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j12633
		jmp	..@j12632
..@j12633:
		cmp	word [bp+4],0
		jne	..@j12631
		jmp	..@j12632
..@j12631:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j12632:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TPERSISTENT_$__$$_DESTROY
EXTERN	CLASSES$_$TCOMPONENT_$__$$_REMOVECOMPONENT$TCOMPONENT
EXTERN	CLASSES$_$TCOMPONENT_$__$$_DESTROYCOMPONENTS
EXTERN	SYSUTILS_$$_FREEANDNIL$formal
EXTERN	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TCOMPONENT_$__$$_DESTROYING
