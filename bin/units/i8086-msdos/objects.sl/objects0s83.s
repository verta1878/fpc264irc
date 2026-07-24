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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_ATDELETE$LONGINT
OBJECTS$_$TCOLLECTION_$__$$_ATDELETE$LONGINT:
		push	bp
		mov	bp,sp
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jg	..@j1937
		jl	..@j1936
		cmp	dx,0
		jae	..@j1937
		jmp	..@j1936
..@j1937:
		mov	bx,word [bp+8]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+6]
		jg	..@j1935
		jl	..@j1936
		cmp	dx,word [bp+4]
		ja	..@j1935
		jmp	..@j1936
		jmp	..@j1936
..@j1935:
		mov	bx,word [bp+8]
		sub	word [bx+4],1
		sbb	word [bx+6],0
		mov	bx,word [bp+8]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+6]
		jg	..@j1938
		jl	..@j1939
		cmp	dx,word [bp+4]
		ja	..@j1938
		jmp	..@j1939
		jmp	..@j1939
..@j1938:
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	ax,1
		adc	dx,0
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		mov	dx,word [bx+6]
		mov	cx,word [bp+4]
		mov	bx,word [bp+6]
		sub	ax,cx
		sbb	dx,bx
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j1939:
		jmp	..@j1946
..@j1936:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,-1
		push	ax
		push	word [bp+4]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+18]
		call	ax
..@j1946:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
