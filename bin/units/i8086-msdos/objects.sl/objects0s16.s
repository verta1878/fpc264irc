BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL OBJECTS$_$TRECT_$__$$_UNION$TRECT
OBJECTS$_$TRECT_$__$$_UNION$TRECT:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,word [bp+4]
		lea	di,[bp-16]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		cmp	ax,word [bp-14]
		jg	..@j110
		jl	..@j111
		cmp	dx,word [bp-16]
		ja	..@j110
		jmp	..@j111
		jmp	..@j111
..@j110:
		mov	bx,word [bp+6]
		mov	ax,word [bp-16]
		mov	word [bx],ax
		mov	ax,word [bp-14]
		mov	word [bx+2],ax
..@j111:
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp-10]
		jg	..@j114
		jl	..@j115
		cmp	dx,word [bp-12]
		ja	..@j114
		jmp	..@j115
		jmp	..@j115
..@j114:
		mov	bx,word [bp+6]
		mov	ax,word [bp-12]
		mov	word [bx+4],ax
		mov	ax,word [bp-10]
		mov	word [bx+6],ax
..@j115:
		mov	bx,word [bp+6]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		cmp	ax,word [bp-6]
		jl	..@j118
		jg	..@j119
		cmp	dx,word [bp-8]
		jb	..@j118
		jmp	..@j119
		jmp	..@j119
..@j118:
		mov	bx,word [bp+6]
		mov	ax,word [bp-8]
		mov	word [bx+8],ax
		mov	ax,word [bp-6]
		mov	word [bx+10],ax
..@j119:
		mov	bx,word [bp+6]
		mov	dx,word [bx+12]
		mov	ax,word [bx+14]
		cmp	ax,word [bp-2]
		jl	..@j122
		jg	..@j123
		cmp	dx,word [bp-4]
		jb	..@j122
		jmp	..@j123
		jmp	..@j123
..@j122:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	word [bx+12],ax
		mov	ax,word [bp-2]
		mov	word [bx+14],ax
..@j123:
		mov	sp,bp
		pop	bp
		ret	4
