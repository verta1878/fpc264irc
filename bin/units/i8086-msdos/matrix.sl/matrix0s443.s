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
	GLOBAL MATRIX_$$_assign$TMATRIX3_EXTENDED$$TMATRIX4_EXTENDED
MATRIX_$$_assign$TMATRIX3_EXTENDED$$TMATRIX4_EXTENDED:
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
		mov	si,word [bp+4]
		lea	di,[bx+20]
		push	ds
		pop	es
		lea	si,[si+20]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+30]
		DB	09bh
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
		mov	si,word [bp+4]
		lea	di,[bx+50]
		push	ds
		pop	es
		lea	si,[si+40]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	di,[bx+60]
		push	ds
		pop	es
		lea	si,[si+50]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+70]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	di,[bx+80]
		push	ds
		pop	es
		lea	si,[si+60]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	di,[bx+90]
		push	ds
		pop	es
		lea	si,[si+70]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	di,[bx+100]
		push	ds
		pop	es
		lea	si,[si+80]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+110]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+120]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+130]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+140]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	tword [bx+150]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	4
