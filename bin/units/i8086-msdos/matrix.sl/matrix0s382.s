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
	GLOBAL MATRIX$_$TMATRIX4_SINGLE_$__$$_DETERMINANT$$SINGLE
MATRIX$_$TMATRIX4_SINGLE_$__$$_DETERMINANT$$SINGLE:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		wait fld	dword [bx+20]
		wait fmul	dword [si]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+16]
		wait fmul	dword [bx+4]
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+60]
		wait fmul	dword [bx+40]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+56]
		wait fmul	dword [bx+44]
		wait fsubp	st1,st0
		wait fmulp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+24]
		wait fmul	dword [bx]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+16]
		wait fmul	dword [bx+8]
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+60]
		wait fmul	dword [bx+36]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+52]
		wait fmul	dword [bx+44]
		wait fsubp	st1,st0
		wait fmulp	st1,st0
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+28]
		wait fmul	dword [bx]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+16]
		wait fmul	dword [bx+12]
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+56]
		wait fmul	dword [bx+36]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+52]
		wait fmul	dword [bx+40]
		wait fsubp	st1,st0
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+24]
		wait fmul	dword [bx+4]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+20]
		wait fmul	dword [bx+8]
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+60]
		wait fmul	dword [bx+32]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+48]
		wait fmul	dword [bx+44]
		wait fsubp	st1,st0
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+28]
		wait fmul	dword [bx+4]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+20]
		wait fmul	dword [bx+12]
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+56]
		wait fmul	dword [bx+32]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+48]
		wait fmul	dword [bx+40]
		wait fsubp	st1,st0
		wait fmulp	st1,st0
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+28]
		wait fmul	dword [bx+8]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+24]
		wait fmul	dword [bx+12]
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+52]
		wait fmul	dword [bx+32]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	dword [si+48]
		wait fmul	dword [bx+36]
		wait fsubp	st1,st0
		wait fmulp	st1,st0
		wait faddp	st1,st0
		wait fstp	dword [bp-4]
		DB	09bh
		wait fld	dword [bp-4]
		mov	sp,bp
		pop	bp
		ret	2
