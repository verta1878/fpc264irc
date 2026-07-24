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
	GLOBAL TYPES$_$TPOINT_$__$$_equal$TPOINT$TPOINT$$BOOLEAN
TYPES$_$TPOINT_$__$$_equal$TPOINT$TPOINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		cmp	dx,word [si+2]
		jne	..@j157
		cmp	ax,word [si]
		jne	..@j157
		jmp	..@j158
		jmp	..@j157
..@j158:
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	dx,word [si+4]
		mov	ax,word [si+6]
		cmp	ax,word [bx+6]
		jne	..@j157
		cmp	dx,word [bx+4]
		jne	..@j157
		jmp	..@j156
		jmp	..@j157
..@j156:
		mov	byte [bp-1],1
		jmp	..@j159
..@j157:
		mov	byte [bp-1],0
..@j159:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
