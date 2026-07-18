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
	GLOBAL CLASSES$_$TBASICACTION_$__$$_UNREGISTERCHANGES$TBASICACTIONLINK
CLASSES$_$TBASICACTION_$__$$_UNREGISTERCHANGES$TBASICACTIONLINK:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		mov	bx,word [bx+42]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-4],ax
		mov	word [bp-2],0
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jl	..@j13276
		dec	word [bp-2]
	ALIGN 2
..@j13277:
		inc	word [bp-2]
		mov	bx,word [bp+6]
		push	word [bx+42]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		cmp	ax,word [bp+4]
		je	..@j13278
		jmp	..@j13279
..@j13278:
		mov	bx,word [bp+4]
		mov	word [bx+6],0
		mov	bx,word [bp+6]
		push	word [bx+42]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
		jmp	..@j13276
..@j13279:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jg	..@j13277
..@j13276:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
