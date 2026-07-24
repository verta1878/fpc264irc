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
	GLOBAL CLASSES$_$TFPLIST_$__$$_FOREACHCALL$TLISTSTATICCALLBACK$POINTER
CLASSES$_$TFPLIST_$__$$_FOREACHCALL$TLISTSTATICCALLBACK$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-6],ax
		mov	word [bp-2],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jl	..@j5252
		dec	word [bp-2]
	ALIGN 2
..@j5253:
		inc	word [bp-2]
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jne	..@j5256
		jmp	..@j5257
..@j5256:
		push	word [bp-4]
		push	word [bp+4]
		mov	ax,word [bp+6]
		call	ax
..@j5257:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jg	..@j5253
..@j5252:
		mov	sp,bp
		pop	bp
		ret	6
