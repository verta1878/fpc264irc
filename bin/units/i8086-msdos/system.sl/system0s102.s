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
	GLOBAL SYSTEM_$$_ABS$INT64$$INT64
SYSTEM_$$_ABS$INT64$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,word [bp+10]
		cmp	cx,0
		jl	..@j1676
		jg	..@j1677
		cmp	dx,0
		jb	..@j1676
		ja	..@j1677
		cmp	ax,0
		jb	..@j1676
		ja	..@j1677
		cmp	bx,0
		jb	..@j1676
		jmp	..@j1677
..@j1676:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		not	cx
		not	bx
		not	dx
		neg	ax
		sbb	dx,-1
		sbb	cx,-1
		sbb	bx,-1
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-4],cx
		mov	word [bp-2],bx
		jmp	..@j1680
..@j1677:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
..@j1680:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	8
