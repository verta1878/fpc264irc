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
	GLOBAL CLASSES$_$TFPLIST_$__$$_ADDLIST$TFPLIST
CLASSES$_$TFPLIST_$__$$_ADDLIST$TFPLIST:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	dx,word [bx+4]
		mov	ax,word [si+4]
		add	ax,dx
		mov	bx,word [bp+6]
		cmp	ax,word [bx+6]
		jg	..@j4825
		jmp	..@j4826
..@j4825:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	dx,word [bx+4]
		mov	ax,word [si+4]
		add	ax,dx
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_SETCAPACITY$SMALLINT
..@j4826:
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-4],ax
		mov	word [bp-2],0
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jl	..@j4834
		dec	word [bp-2]
	ALIGN 2
..@j4835:
		inc	word [bp-2]
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jg	..@j4835
..@j4834:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TFPLIST_$__$$_SETCAPACITY$SMALLINT
