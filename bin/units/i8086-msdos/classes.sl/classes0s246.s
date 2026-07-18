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
	GLOBAL CLASSES$_$TFPLIST_$__$$_DOAND$TFPLIST$TFPLIST
CLASSES$_$TFPLIST_$__$$_DOAND$TFPLIST$TFPLIST:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+4],0
		jne	..@j5378
		jmp	..@j5379
..@j5378:
		push	word [bp+8]
		call	CLASSES$_$TFPLIST_$__$$_CLEAR
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-4],ax
		mov	word [bp-2],0
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jl	..@j5385
		dec	word [bp-2]
	ALIGN 2
..@j5386:
		inc	word [bp-2]
		push	word [bp+4]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jge	..@j5387
		jmp	..@j5388
..@j5387:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
..@j5388:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jg	..@j5386
..@j5385:
		jmp	..@j5405
..@j5379:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jl	..@j5407
		inc	word [bp-2]
	ALIGN 2
..@j5408:
		dec	word [bp-2]
		push	word [bp+6]
		push	word [bp+8]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jl	..@j5409
		jmp	..@j5410
..@j5409:
		push	word [bp+8]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
..@j5410:
		cmp	word [bp-2],0
		jg	..@j5408
..@j5407:
..@j5405:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TFPLIST_$__$$_CLEAR
