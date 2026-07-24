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
	GLOBAL OBJECTS$_$TRECT_$__$$_CONTAINS$TPOINT$$BOOLEAN
OBJECTS$_$TRECT_$__$$_CONTAINS$TPOINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,word [bp+4]
		lea	di,[bp-10]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		cmp	ax,word [bp-8]
		jl	..@j100
		jg	..@j97
		cmp	dx,word [bp-10]
		jbe	..@j100
		jmp	..@j97
		jmp	..@j97
..@j100:
		mov	bx,word [bp+6]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		cmp	ax,word [bp-8]
		jg	..@j99
		jl	..@j97
		cmp	dx,word [bp-10]
		ja	..@j99
		jmp	..@j97
		jmp	..@j97
..@j99:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	dx,word [bx+6]
		cmp	dx,word [bp-4]
		jl	..@j98
		jg	..@j97
		cmp	ax,word [bp-6]
		jbe	..@j98
		jmp	..@j97
		jmp	..@j97
..@j98:
		mov	bx,word [bp+6]
		mov	dx,word [bx+12]
		mov	ax,word [bx+14]
		cmp	ax,word [bp-4]
		jg	..@j96
		jl	..@j97
		cmp	dx,word [bp-6]
		ja	..@j96
		jmp	..@j97
		jmp	..@j97
..@j96:
		mov	byte [bp-1],1
		jmp	..@j101
..@j97:
		mov	byte [bp-1],0
..@j101:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
