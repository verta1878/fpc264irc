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
	GLOBAL MATRIX$_$TMATRIX2_DOUBLE_$__$$_GET_COLUMN$BYTE$$TVECTOR2_DOUBLE
MATRIX$_$TMATRIX2_DOUBLE_$__$$_GET_COLUMN$BYTE$$TVECTOR2_DOUBLE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		mov	al,byte [bp+4]
		mov	ah,0
		mov	si,ax
		mov	cl,3
		shl	si,cl
		mov	di,word [bp+6]
		push	ds
		pop	es
		lea	si,[bx+si]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+8]
		mov	al,byte [bp+4]
		mov	ah,0
		mov	si,ax
		mov	cl,3
		shl	si,cl
		mov	di,word [bp+6]
		lea	di,[di+8]
		push	ds
		pop	es
		lea	si,[bx+si+16]
		cld
		mov	cx,4
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	6
