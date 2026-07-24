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
	GLOBAL MATRIX_$$_star$TMATRIX3_DOUBLE$TMATRIX3_DOUBLE$$TMATRIX3_DOUBLE
MATRIX_$$_star$TMATRIX3_DOUBLE$TMATRIX3_DOUBLE$$TMATRIX3_DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	byte [bp-25],0
		dec	byte [bp-25]
	ALIGN 2
..@j4081:
		inc	byte [bp-25]
		mov	bx,word [bp+6]
		mov	al,byte [bp-25]
		mov	ah,0
		mov	si,ax
		mov	ax,24
		mul	si
		mov	si,ax
		lea	di,[bp-24]
		push	ss
		pop	es
		lea	si,[bx+si]
		cld
		mov	cx,12
		rep
		movsw
		mov	bx,word [bp+4]
		wait fld	qword [bp-24]
		wait fmul	qword [bx]
		mov	bx,word [bp+4]
		wait fld	qword [bp-16]
		wait fmul	qword [bx+24]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	qword [bp-8]
		wait fmul	qword [bx+48]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-25]
		mov	ah,0
		mov	si,ax
		mov	ax,24
		mul	si
		mov	si,ax
		wait fstp	qword [bx+si]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bp-24]
		wait fmul	qword [bx+8]
		mov	bx,word [bp+4]
		wait fld	qword [bp-16]
		wait fmul	qword [bx+32]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	qword [bp-8]
		wait fmul	qword [bx+56]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-25]
		mov	ah,0
		mov	si,ax
		mov	ax,24
		mul	si
		mov	si,ax
		wait fstp	qword [bx+si+8]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bp-24]
		wait fmul	qword [bx+16]
		mov	bx,word [bp+4]
		wait fld	qword [bp-16]
		wait fmul	qword [bx+40]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	qword [bp-8]
		wait fmul	qword [bx+64]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-25]
		mov	ah,0
		mov	si,ax
		mov	ax,24
		mul	si
		mov	si,ax
		wait fstp	qword [bx+si+16]
		DB	09bh
		cmp	byte [bp-25],2
		jb	..@j4081
		mov	sp,bp
		pop	bp
		ret	6
