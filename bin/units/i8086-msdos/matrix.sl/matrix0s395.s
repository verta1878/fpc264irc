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
	GLOBAL MATRIX_$$_star$TMATRIX4_SINGLE$TMATRIX4_SINGLE$$TMATRIX4_SINGLE
MATRIX_$$_star$TMATRIX4_SINGLE$TMATRIX4_SINGLE$$TMATRIX4_SINGLE:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	byte [bp-17],0
		dec	byte [bp-17]
	ALIGN 2
..@j5293:
		inc	byte [bp-17]
		mov	bx,word [bp+6]
		mov	al,byte [bp-17]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shl	si,cl
		lea	di,[bp-16]
		push	ss
		pop	es
		lea	si,[bx+si]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp+4]
		wait fld	dword [bp-16]
		wait fmul	dword [bx]
		mov	bx,word [bp+4]
		wait fld	dword [bp-12]
		wait fmul	dword [bx+16]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	dword [bp-8]
		wait fmul	dword [bx+32]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	dword [bp-4]
		wait fmul	dword [bx+48]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-17]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shl	si,cl
		wait fstp	dword [bx+si]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	dword [bp-16]
		wait fmul	dword [bx+4]
		mov	bx,word [bp+4]
		wait fld	dword [bp-12]
		wait fmul	dword [bx+20]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	dword [bp-8]
		wait fmul	dword [bx+36]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	dword [bp-4]
		wait fmul	dword [bx+52]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-17]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shl	si,cl
		wait fstp	dword [bx+si+4]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	dword [bp-16]
		wait fmul	dword [bx+8]
		mov	bx,word [bp+4]
		wait fld	dword [bp-12]
		wait fmul	dword [bx+24]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	dword [bp-8]
		wait fmul	dword [bx+40]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	dword [bp-4]
		wait fmul	dword [bx+56]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-17]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shl	si,cl
		wait fstp	dword [bx+si+8]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	dword [bp-16]
		wait fmul	dword [bx+12]
		mov	bx,word [bp+4]
		wait fld	dword [bp-12]
		wait fmul	dword [bx+28]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	dword [bp-8]
		wait fmul	dword [bx+44]
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		wait fld	dword [bp-4]
		wait fmul	dword [bx+60]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-17]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shl	si,cl
		wait fstp	dword [bx+si+12]
		DB	09bh
		cmp	byte [bp-17],3
		jb	..@j5293
		mov	sp,bp
		pop	bp
		ret	6
