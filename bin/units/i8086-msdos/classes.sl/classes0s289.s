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
	GLOBAL CLASSES$_$TLIST_$__$$_DOAND$TLIST$TLIST
CLASSES$_$TLIST_$__$$_DOAND$TLIST$TLIST:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+4],0
		jne	..@j6326
		jmp	..@j6327
..@j6326:
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
		jl	..@j6335
		dec	word [bp-2]
	ALIGN 2
..@j6336:
		inc	word [bp-2]
		push	word [bp+4]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jge	..@j6337
		jmp	..@j6338
..@j6337:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
..@j6338:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jg	..@j6336
..@j6335:
		jmp	..@j6355
..@j6327:
		push	word [bp+8]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jl	..@j6357
		inc	word [bp-2]
	ALIGN 2
..@j6358:
		dec	word [bp-2]
		push	word [bp+6]
		push	word [bp+8]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jl	..@j6361
		jmp	..@j6362
..@j6361:
		push	word [bp+8]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_DELETE$SMALLINT
..@j6362:
		cmp	word [bp-2],0
		jg	..@j6358
..@j6357:
..@j6355:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TLIST_$__$$_DELETE$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
