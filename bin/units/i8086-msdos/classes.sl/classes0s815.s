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
	GLOBAL CLASSES$_$TREADER_$__$$_FIXUPREFERENCES
CLASSES$_$TREADER_$__$$_FIXUPREFERENCES:
		push	bp
		mov	bp,sp
		sub	sp,6
		push	word [bp+4]
		call	CLASSES$_$TREADER_$__$$_DOFIXUPREFERENCES
		call	CLASSES_$$_GLOBALFIXUPREFERENCES
		mov	bx,word [bp+4]
		mov	bx,word [bx+17]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-6],ax
		mov	word [bp-2],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jl	..@j18792
		dec	word [bp-2]
	ALIGN 2
..@j18793:
		inc	word [bp-2]
		mov	bx,word [bp+4]
		push	word [bx+17]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-4],ax
		push	word [bp-4]
		mov	bx,word [bp-4]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jg	..@j18793
..@j18792:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES_$$_GLOBALFIXUPREFERENCES
EXTERN	CLASSES$_$TREADER_$__$$_DOFIXUPREFERENCES
