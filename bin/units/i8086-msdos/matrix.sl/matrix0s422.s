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
	GLOBAL MATRIX_$$_star$TMATRIX4_DOUBLE$TMATRIX4_DOUBLE$$TMATRIX4_DOUBLE
MATRIX_$$_star$TMATRIX4_DOUBLE$TMATRIX4_DOUBLE$$TMATRIX4_DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	byte [bp-33],0
		dec	byte [bp-33]
	ALIGN 2
..@j6060:
		inc	byte [bp-33]
		mov	bx,word [bp+6]
		mov	al,byte [bp-33]
		mov	ah,0
		mov	si,ax
		mov	cl,5
		shl	si,cl
		lea	di,[bp-32]
		push	ss
		pop	es
		lea	si,[bx+si]
		cld
		mov	cx,16
		rep
		movsw
		mov	bx,word [bp+4]
		wait fld	qword [bp-32]
		wait fmul	qword [bx]
		mov	bx,word [bp+4]
		wait fld	qword [bp-24]
		wait fmul	qword [bx+32]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	qword [bp-16]
		wait fmul	qword [bx+64]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	qword [bp-8]
		wait fmul	qword [bx+96]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-33]
		mov	ah,0
		mov	si,ax
		mov	cl,5
		shl	si,cl
		wait fstp	qword [bx+si]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bp-32]
		wait fmul	qword [bx+8]
		mov	bx,word [bp+4]
		wait fld	qword [bp-24]
		wait fmul	qword [bx+40]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	qword [bp-16]
		wait fmul	qword [bx+72]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	qword [bp-8]
		wait fmul	qword [bx+104]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-33]
		mov	ah,0
		mov	si,ax
		mov	cl,5
		shl	si,cl
		wait fstp	qword [bx+si+8]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bp-32]
		wait fmul	qword [bx+16]
		mov	bx,word [bp+4]
		wait fld	qword [bp-24]
		wait fmul	qword [bx+48]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	qword [bp-16]
		wait fmul	qword [bx+80]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	qword [bp-8]
		wait fmul	qword [bx+112]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-33]
		mov	ah,0
		mov	si,ax
		mov	cl,5
		shl	si,cl
		wait fstp	qword [bx+si+16]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bp-32]
		wait fmul	qword [bx+24]
		mov	bx,word [bp+4]
		wait fld	qword [bp-24]
		wait fmul	qword [bx+56]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	qword [bp-16]
		wait fmul	qword [bx+88]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	qword [bp-8]
		wait fmul	qword [bx+120]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-33]
		mov	ah,0
		mov	si,ax
		mov	cl,5
		shl	si,cl
		wait fstp	qword [bx+si+24]
		DB	09bh
		cmp	byte [bp-33],3
		jb	..@j6060
		mov	sp,bp
		pop	bp
		ret	6
