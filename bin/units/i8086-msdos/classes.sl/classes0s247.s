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
	GLOBAL CLASSES$_$TFPLIST_$__$$_DOSRCUNIQUE$TFPLIST$TFPLIST
CLASSES$_$TFPLIST_$__$$_DOSRCUNIQUE$TFPLIST$TFPLIST:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+4],0
		jne	..@j5425
		jmp	..@j5426
..@j5425:
		push	word [bp+8]
		call	CLASSES$_$TFPLIST_$__$$_CLEAR
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-4],ax
		mov	word [bp-2],0
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jl	..@j5432
		dec	word [bp-2]
	ALIGN 2
..@j5433:
		inc	word [bp-2]
		push	word [bp+4]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jl	..@j5434
		jmp	..@j5435
..@j5434:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
..@j5435:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jg	..@j5433
..@j5432:
		jmp	..@j5452
..@j5426:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jl	..@j5454
		inc	word [bp-2]
	ALIGN 2
..@j5455:
		dec	word [bp-2]
		push	word [bp+6]
		push	word [bp+8]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jge	..@j5456
		jmp	..@j5457
..@j5456:
		push	word [bp+8]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
..@j5457:
		cmp	word [bp-2],0
		jg	..@j5455
..@j5454:
..@j5452:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TFPLIST_$__$$_CLEAR
