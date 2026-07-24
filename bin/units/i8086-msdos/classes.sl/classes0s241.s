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
	GLOBAL CLASSES$_$TFPLIST_$__$$_COPYMOVE$TFPLIST
CLASSES$_$TFPLIST_$__$$_COPYMOVE$TFPLIST:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+6]
		call	CLASSES$_$TFPLIST_$__$$_CLEAR
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-4],ax
		mov	word [bp-2],0
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jl	..@j5269
		dec	word [bp-2]
	ALIGN 2
..@j5270:
		inc	word [bp-2]
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jg	..@j5270
..@j5269:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TFPLIST_$__$$_CLEAR
