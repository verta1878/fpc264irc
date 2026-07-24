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
	GLOBAL MATRIX_$$_assign$TMATRIX2_DOUBLE$$TMATRIX4_DOUBLE
MATRIX_$$_assign$TMATRIX2_DOUBLE$$TMATRIX4_DOUBLE:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		mov	si,word [bp+4]
		mov	di,ax
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	di,[bx+8]
		push	ds
		pop	es
		lea	si,[si+8]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+16]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+24]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	di,[bx+32]
		push	ds
		pop	es
		lea	si,[si+16]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	di,[bx+40]
		push	ds
		pop	es
		lea	si,[si+24]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+48]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+56]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+64]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+72]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+80]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+88]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+96]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+104]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+112]
		DB	09bh
		mov	bx,word [bp+6]
		wait fldz
		wait fstp	qword [bx+120]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	4
