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
	GLOBAL CLASSES$_$TFPLIST_$__$$_PACK
CLASSES$_$TFPLIST_$__$$_PACK:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-2],0
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [bp-8],ax
		mov	ax,word [bp-8]
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-4],0
		cmp	ax,word [bp-4]
		jl	..@j5134
		dec	word [bp-4]
	ALIGN 2
..@j5135:
		inc	word [bp-4]
		mov	bx,word [bp-8]
		cmp	word [bx],0
		jne	..@j5136
		jmp	..@j5137
..@j5136:
		mov	bx,word [bp-6]
		mov	si,word [bp-8]
		mov	dx,word [si]
		mov	word [bx],dx
		add	word [bp-6],2
		inc	word [bp-2]
..@j5137:
		add	word [bp-8],2
		cmp	ax,word [bp-4]
		jg	..@j5135
..@j5134:
		mov	bx,word [bp+4]
		mov	ax,word [bp-2]
		mov	word [bx+4],ax
		mov	sp,bp
		pop	bp
		ret	2
