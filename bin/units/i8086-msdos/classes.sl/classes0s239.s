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
	GLOBAL CLASSES$_$TFPLIST_$__$$_FOREACHCALL$TLISTCALLBACK$POINTER
CLASSES$_$TFPLIST_$__$$_FOREACHCALL$TLISTCALLBACK$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-8],ax
		mov	ax,word [bx+2]
		mov	word [bp-6],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-10],ax
		mov	word [bp-2],0
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jl	..@j5235
		dec	word [bp-2]
	ALIGN 2
..@j5236:
		inc	word [bp-2]
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jne	..@j5239
		jmp	..@j5240
..@j5239:
		push	word [bp-6]
		push	word [bp-4]
		push	word [bp+4]
		mov	ax,word [bp-8]
		call	ax
..@j5240:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jg	..@j5236
..@j5235:
		mov	sp,bp
		pop	bp
		ret	6
