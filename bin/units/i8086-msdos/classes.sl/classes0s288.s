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
	GLOBAL CLASSES$_$TLIST_$_DODESTUNIQUE$TLIST$TLIST_$$_MOVEELEMENTS$TLIST$TLIST
CLASSES$_$TLIST_$_DODESTUNIQUE$TLIST$TLIST_$$_MOVEELEMENTS$TLIST$TLIST:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+8]
		push	word [bx+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx+8]
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
		jl	..@j6304
		dec	word [bp-2]
	ALIGN 2
..@j6305:
		inc	word [bp-2]
		push	word [bp+4]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jl	..@j6306
		jmp	..@j6307
..@j6306:
		mov	bx,word [bp+8]
		push	word [bx+8]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
..@j6307:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jg	..@j6305
..@j6304:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
