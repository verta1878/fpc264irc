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
	GLOBAL CLASSES$_$TCOLLECTIONITEM_$__$$_GETINDEX$$SMALLINT
CLASSES$_$TCOLLECTIONITEM_$__$$_GETINDEX$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		cmp	word [bx+6],0
		jne	..@j3862
		jmp	..@j3863
..@j3862:
		mov	bx,word [bp+4]
		mov	bx,word [bx+6]
		push	word [bx+8]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j3870
..@j3863:
		mov	word [bp-2],-1
..@j3870:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
