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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_DOCLEAR
CLASSES$_$TCOLLECTION_$__$$_DOCLEAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		jmp	..@j4487
	ALIGN 2
..@j4486:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	CLASSES$_$TFPLIST_$__$$_LAST$$POINTER
		mov	word [bp-2],ax
		push	word [bp-2]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
..@j4487:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		cmp	word [bx+4],0
		jg	..@j4486
		jmp	..@j4488
..@j4488:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	CLASSES$_$TFPLIST_$__$$_LAST$$POINTER
