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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_ADDSTRINGS$array_of_ANSISTRING
CLASSES$_$TSTRINGS_$__$$_ADDSTRINGS$array_of_ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		mov	dx,word [bp+4]
		add	dx,ax
		mov	word [bp-6],dx
		inc	word [bp-6]
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
		cmp	word [bp-6],ax
		jg	..@j8283
		jmp	..@j8284
..@j8283:
		push	word [bp+8]
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		mov	dx,word [bp+4]
		add	dx,ax
		inc	dx
		push	dx
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+74]
		call	ax
..@j8284:
		mov	ax,word [bp+4]
		cwd
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jl	..@j8298
		jg	..@j8300
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		jb	..@j8298
..@j8300:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j8299:
		add	word [bp-4],1
		adc	word [bp-2],0
		push	word [bp+8]
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jg	..@j8299
		jl	..@j8305
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		ja	..@j8299
..@j8305:
..@j8298:
		mov	sp,bp
		pop	bp
		ret	6
