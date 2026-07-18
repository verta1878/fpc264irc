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
	GLOBAL TYPES$_$TSIZE_$__$$_minus$TSIZE$TSIZE$$TSIZE
TYPES$_$TSIZE_$__$$_minus$TSIZE$TSIZE$$TSIZE:
		push	bp
		mov	bp,sp
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	ax,word [si]
		mov	dx,word [si+2]
		mov	cx,word [bx]
		mov	bx,word [bx+2]
		sub	ax,cx
		sbb	dx,bx
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	ax,word [si+4]
		mov	dx,word [si+6]
		mov	cx,word [bx+4]
		mov	bx,word [bx+6]
		sub	ax,cx
		sbb	dx,bx
		mov	bx,word [bp+8]
		mov	word [bx+4],ax
		mov	word [bx+6],dx
		mov	sp,bp
		pop	bp
		ret	6
