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
	GLOBAL CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [si+6]
		je	..@j4846
		jmp	..@j4847
..@j4846:
		push	word [bp+6]
		call	CLASSES$_$TFPLIST_$__$$_EXPAND$$TFPLIST
..@j4847:
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	si,word [bp+6]
		mov	ax,word [si+4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp+4]
		mov	word [bx+si],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		inc	ax
		mov	bx,word [bp+6]
		mov	word [bx+4],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_EXPAND$$TFPLIST
