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
	GLOBAL FGL$_$TFPSLIST_$__$$_DEREF$SMALLINT$SMALLINT
FGL$_$TFPSLIST_$__$$_DEREF$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+8]
		mov	ax,word [bp+6]
		mul	word [bx+8]
		mov	bx,word [bp+8]
		mov	dx,word [bx+2]
		add	dx,ax
		mov	word [bp-2],dx
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mul	word [bx+8]
		mov	bx,word [bp+8]
		mov	dx,word [bx+2]
		add	dx,ax
		mov	word [bp-4],dx
	ALIGN 2
..@j177:
		push	word [bp+8]
		push	word [bp-2]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		je	..@j184
		jmp	..@j185
..@j184:
		jmp	..@j179
..@j185:
		mov	bx,word [bp+8]
		mov	dx,word [bx+8]
		mov	ax,word [bp-2]
		add	ax,dx
		mov	word [bp-2],ax
		jmp	..@j177
..@j179:
		mov	sp,bp
		pop	bp
		ret	6
