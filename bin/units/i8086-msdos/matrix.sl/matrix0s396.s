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
	GLOBAL MATRIX_$$_star$TMATRIX4_SINGLE$TVECTOR4_SINGLE$$TVECTOR4_SINGLE
MATRIX_$$_star$TMATRIX4_SINGLE$TVECTOR4_SINGLE$$TVECTOR4_SINGLE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si]
		wait fmul	dword [bx]
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+4]
		wait fmul	dword [bx+4]
		wait faddp	st1,st0
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+8]
		wait fmul	dword [bx+8]
		wait faddp	st1,st0
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+12]
		wait fmul	dword [bx+12]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	dword [bx]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si]
		wait fmul	dword [bx+16]
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+4]
		wait fmul	dword [bx+20]
		wait faddp	st1,st0
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+8]
		wait fmul	dword [bx+24]
		wait faddp	st1,st0
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+12]
		wait fmul	dword [bx+28]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	dword [bx+4]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si]
		wait fmul	dword [bx+32]
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+4]
		wait fmul	dword [bx+36]
		wait faddp	st1,st0
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+8]
		wait fmul	dword [bx+40]
		wait faddp	st1,st0
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+12]
		wait fmul	dword [bx+44]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	dword [bx+8]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si]
		wait fmul	dword [bx+48]
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+4]
		wait fmul	dword [bx+52]
		wait faddp	st1,st0
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+8]
		wait fmul	dword [bx+56]
		wait faddp	st1,st0
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+12]
		wait fmul	dword [bx+60]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	dword [bx+12]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	6
