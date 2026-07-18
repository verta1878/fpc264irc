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
	GLOBAL MATRIX$_$TMATRIX2_DOUBLE_$__$$_TRANSPOSE$$TMATRIX2_DOUBLE
MATRIX$_$TMATRIX2_DOUBLE_$__$$_TRANSPOSE$$TMATRIX2_DOUBLE:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		mov	si,word [bp+6]
		mov	di,ax
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		lea	di,[si+8]
		push	ds
		pop	es
		lea	si,[bx+16]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+16]
		push	ds
		pop	es
		lea	si,[si+8]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+24]
		push	ds
		pop	es
		lea	si,[si+24]
		cld
		mov	cx,4
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	4
