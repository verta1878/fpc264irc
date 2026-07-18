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
	GLOBAL OBJECTS$_$TRECT_$__$$_INTERSECT$TRECT
OBJECTS$_$TRECT_$__$$_INTERSECT$TRECT:
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
		jl	..@j128
		jg	..@j129
		cmp	dx,word [bp-16]
		jb	..@j128
		jmp	..@j129
		jmp	..@j129
..@j128:
		mov	bx,word [bp+6]
		mov	ax,word [bp-16]
		mov	word [bx],ax
		mov	ax,word [bp-14]
		mov	word [bx+2],ax
..@j129:
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp-10]
		jl	..@j132
		jg	..@j133
		cmp	dx,word [bp-12]
		jb	..@j132
		jmp	..@j133
		jmp	..@j133
..@j132:
		mov	bx,word [bp+6]
		mov	ax,word [bp-12]
		mov	word [bx+4],ax
		mov	ax,word [bp-10]
		mov	word [bx+6],ax
..@j133:
		mov	bx,word [bp+6]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		cmp	ax,word [bp-6]
		jg	..@j136
		jl	..@j137
		cmp	dx,word [bp-8]
		ja	..@j136
		jmp	..@j137
		jmp	..@j137
..@j136:
		mov	bx,word [bp+6]
		mov	ax,word [bp-8]
		mov	word [bx+8],ax
		mov	ax,word [bp-6]
		mov	word [bx+10],ax
..@j137:
		mov	bx,word [bp+6]
		mov	dx,word [bx+12]
		mov	ax,word [bx+14]
		cmp	ax,word [bp-2]
		jg	..@j140
		jl	..@j141
		cmp	dx,word [bp-4]
		ja	..@j140
		jmp	..@j141
		jmp	..@j141
..@j140:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	word [bx+12],ax
		mov	ax,word [bp-2]
		mov	word [bx+14],ax
..@j141:
		mov	ax,word [bp+6]
		push	ax
		call	OBJECTS_$$_CHECKEMPTY$TRECT
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	OBJECTS_$$_CHECKEMPTY$TRECT
