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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_ATINSERT$LONGINT$POINTER
OBJECTS$_$TCOLLECTION_$__$$_ATINSERT$LONGINT$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		cmp	ax,0
		jg	..@j2050
		jl	..@j2049
		cmp	dx,0
		jae	..@j2050
		jmp	..@j2049
..@j2050:
		mov	bx,word [bp+10]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+8]
		jg	..@j2048
		jl	..@j2049
		cmp	dx,word [bp+6]
		jae	..@j2048
		jmp	..@j2049
		jmp	..@j2049
..@j2048:
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		mov	dx,word [si+4]
		mov	ax,word [si+6]
		cmp	ax,word [bx+10]
		jne	..@j2052
		cmp	dx,word [bx+8]
		jne	..@j2052
		jmp	..@j2051
		jmp	..@j2052
..@j2051:
		mov	ax,word [bp+10]
		push	ax
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		mov	dx,word [si+8]
		mov	cx,word [si+10]
		mov	si,word [bx+12]
		mov	ax,word [bx+14]
		add	si,dx
		adc	ax,cx
		push	ax
		push	si
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+16]
		call	ax
..@j2052:
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		mov	dx,word [si+8]
		mov	ax,word [si+10]
		cmp	ax,word [bx+6]
		jg	..@j2057
		jl	..@j2058
		cmp	dx,word [bx+4]
		ja	..@j2057
		jmp	..@j2058
		jmp	..@j2058
..@j2057:
		mov	bx,word [bp+10]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+8]
		jg	..@j2059
		jl	..@j2060
		cmp	dx,word [bp+6]
		ja	..@j2059
		jmp	..@j2060
		jmp	..@j2060
..@j2059:
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		mov	bx,word [bp+10]
		mov	cx,word [bx+4]
		mov	bx,word [bx+6]
		sub	cx,1
		sbb	bx,0
		mov	word [bp-4],cx
		mov	word [bp-2],bx
		cmp	ax,word [bp-2]
		jg	..@j2064
		jl	..@j2066
		cmp	dx,word [bp-4]
		ja	..@j2064
..@j2066:
		add	word [bp-4],1
		adc	word [bp-2],0
	ALIGN 2
..@j2065:
		sub	word [bp-4],1
		sbb	word [bp-2],0
		mov	bx,word [bp+10]
		mov	cx,word [bx+2]
		mov	word [bp-6],cx
		mov	cx,word [bp-4]
		mov	bx,word [bp-2]
		add	cx,1
		adc	bx,0
		mov	di,cx
		shl	di,1
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		mov	cx,word [bp-4]
		mov	si,cx
		shl	si,1
		mov	cx,word [bx+si]
		mov	bx,word [bp-6]
		mov	word [bx+di],cx
		cmp	ax,word [bp-2]
		jl	..@j2065
		jg	..@j2069
		cmp	dx,word [bp-4]
		jb	..@j2065
..@j2069:
..@j2064:
..@j2060:
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		mov	ax,word [bp+6]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp+4]
		mov	word [bx+si],ax
		mov	bx,word [bp+10]
		add	word [bx+4],1
		adc	word [bx+6],0
		jmp	..@j2072
..@j2058:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-2
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+18]
		call	ax
..@j2072:
		jmp	..@j2079
..@j2049:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-1
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+18]
		call	ax
..@j2079:
		mov	sp,bp
		pop	bp
		ret	8
