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
	GLOBAL MATRIX$_$TMATRIX3_EXTENDED_$__$$_TRANSPOSE$$TMATRIX3_EXTENDED
MATRIX$_$TMATRIX3_EXTENDED_$__$$_TRANSPOSE$$TMATRIX3_EXTENDED:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		mov	si,word [bp+6]
		mov	di,ax
		push	ds
		pop	es
		cld
		mov	cx,5
		rep
		movsw
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		lea	di,[si+10]
		push	ds
		pop	es
		lea	si,[bx+30]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+20]
		push	ds
		pop	es
		lea	si,[si+60]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+30]
		push	ds
		pop	es
		lea	si,[si+10]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+40]
		push	ds
		pop	es
		lea	si,[si+40]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+50]
		push	ds
		pop	es
		lea	si,[si+70]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+60]
		push	ds
		pop	es
		lea	si,[si+20]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+70]
		push	ds
		pop	es
		lea	si,[si+50]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		lea	di,[bx+80]
		push	ds
		pop	es
		lea	si,[si+80]
		cld
		mov	cx,5
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	4
