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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_ATPUT$LONGINT$POINTER
OBJECTS$_$TCOLLECTION_$__$$_ATPUT$LONGINT$POINTER:
		push	bp
		mov	bp,sp
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		cmp	ax,0
		jg	..@j2036
		jl	..@j2035
		cmp	dx,0
		jae	..@j2036
		jmp	..@j2035
..@j2036:
		mov	bx,word [bp+10]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+8]
		jg	..@j2034
		jl	..@j2035
		cmp	dx,word [bp+6]
		ja	..@j2034
		jmp	..@j2035
		jmp	..@j2035
..@j2034:
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		mov	ax,word [bp+6]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp+4]
		mov	word [bx+si],ax
		jmp	..@j2039
..@j2035:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,-1
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+18]
		call	ax
..@j2039:
		mov	sp,bp
		pop	bp
		ret	8
