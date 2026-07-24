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
	GLOBAL MATRIX_$$_star$TMATRIX2_SINGLE$TMATRIX2_SINGLE$$TMATRIX2_SINGLE
MATRIX_$$_star$TMATRIX2_SINGLE$TMATRIX2_SINGLE$$TMATRIX2_SINGLE:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	byte [bp-9],0
		dec	byte [bp-9]
	ALIGN 2
..@j2485:
		inc	byte [bp-9]
		mov	bx,word [bp+6]
		mov	al,byte [bp-9]
		mov	ah,0
		mov	si,ax
		mov	cl,3
		shl	si,cl
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bx+si]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		wait fld	dword [bp-8]
		wait fmul	dword [bx]
		mov	bx,word [bp+4]
		wait fld	dword [bp-4]
		wait fmul	dword [bx+8]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-9]
		mov	ah,0
		mov	si,ax
		mov	cl,3
		shl	si,cl
		wait fstp	dword [bx+si]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	dword [bp-8]
		wait fmul	dword [bx+4]
		mov	bx,word [bp+4]
		wait fld	dword [bp-4]
		wait fmul	dword [bx+12]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		mov	al,byte [bp-9]
		mov	ah,0
		mov	si,ax
		mov	cl,3
		shl	si,cl
		wait fstp	dword [bx+si+4]
		DB	09bh
		cmp	byte [bp-9],1
		jb	..@j2485
		mov	sp,bp
		pop	bp
		ret	6
