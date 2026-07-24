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
	GLOBAL MATRIX_$$_assign$TMATRIX2_EXTENDED$$TMATRIX3_EXTENDED
MATRIX_$$_assign$TMATRIX2_EXTENDED$$TMATRIX3_EXTENDED:
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
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	di,[bx+10]
		push	ds
		pop	es
		lea	si,[si+10]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+20]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	di,[bx+30]
		push	ds
		pop	es
		lea	si,[si+20]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	di,[bx+40]
		push	ds
		pop	es
		lea	si,[si+30]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+50]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+60]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+70]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+80]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	4
