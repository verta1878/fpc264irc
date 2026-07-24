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
	GLOBAL MATRIX_$$_assign$TMATRIX3_EXTENDED$$TMATRIX2_EXTENDED
MATRIX_$$_assign$TMATRIX3_EXTENDED$$TMATRIX2_EXTENDED:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		mov	si,word [bp+4]
		mov	di,ax
		push	ds
		pop	es
		cld
		mov	cx,5
		rep
		movsw
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		lea	di,[si+10]
		push	ds
		pop	es
		lea	si,[bx+10]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	di,[bx+20]
		push	ds
		pop	es
		lea	si,[si+30]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	di,[bx+30]
		push	ds
		pop	es
		lea	si,[si+40]
		cld
		mov	cx,5
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	4
