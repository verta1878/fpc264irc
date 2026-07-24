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
	GLOBAL CLASSES$_$TLIST_$__$$_EXTRACT$POINTER$$POINTER
CLASSES$_$TLIST_$__$$_EXTRACT$POINTER$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		push	word [bx+2]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_EXTRACT$POINTER$$POINTER
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,word [bp-4]
		jne	..@j5750
		jmp	..@j5751
..@j5750:
		push	word [bp+6]
		push	word [bp-2]
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
..@j5751:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_EXTRACT$POINTER$$POINTER
