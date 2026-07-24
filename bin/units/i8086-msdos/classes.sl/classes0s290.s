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
	GLOBAL CLASSES$_$TLIST_$__$$_DOSRCUNIQUE$TLIST$TLIST
CLASSES$_$TLIST_$__$$_DOSRCUNIQUE$TLIST$TLIST:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+4],0
		jne	..@j6377
		jmp	..@j6378
..@j6377:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
		push	word [bp+6]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-4],ax
		mov	word [bp-2],0
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jl	..@j6386
		dec	word [bp-2]
	ALIGN 2
..@j6387:
		inc	word [bp-2]
		push	word [bp+4]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jl	..@j6388
		jmp	..@j6389
..@j6388:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
..@j6389:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jg	..@j6387
..@j6386:
		jmp	..@j6406
..@j6378:
		push	word [bp+8]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jl	..@j6408
		inc	word [bp-2]
	ALIGN 2
..@j6409:
		dec	word [bp-2]
		push	word [bp+6]
		push	word [bp+8]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jge	..@j6412
		jmp	..@j6413
..@j6412:
		push	word [bp+8]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_DELETE$SMALLINT
..@j6413:
		cmp	word [bp-2],0
		jg	..@j6409
..@j6408:
..@j6406:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TLIST_$__$$_DELETE$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
