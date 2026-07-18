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
	GLOBAL CLASSES$_$TPERSISTENT_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
CLASSES$_$TPERSISTENT_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+12]
		cmp	word [bx+2],0
		jne	..@j10904
		jmp	..@j10905
..@j10904:
		mov	bx,word [bp+12]
		mov	bx,word [bx+2]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jl	..@j10907
		inc	word [bp-2]
	ALIGN 2
..@j10908:
		dec	word [bp-2]
		mov	bx,word [bp+12]
		push	word [bx+2]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-4],ax
		push	word [bp-4]
		push	word [bp+12]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp-4]
		mov	bx,word [bx]
		mov	ax,word [bx]
		call	ax
		cmp	word [bp-2],0
		jg	..@j10908
..@j10907:
..@j10905:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
