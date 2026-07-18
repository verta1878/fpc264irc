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
	GLOBAL MATRIX$_$TMATRIX4_DOUBLE_$__$$_DETERMINANT$$DOUBLE
MATRIX$_$TMATRIX4_DOUBLE_$__$$_DETERMINANT$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		wait fld	qword [bx+40]
		wait fmul	qword [si]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+32]
		wait fmul	qword [bx+8]
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+120]
		wait fmul	qword [bx+80]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+112]
		wait fmul	qword [bx+88]
		wait fsubp	st1,st0
		wait fmulp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+48]
		wait fmul	qword [bx]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+32]
		wait fmul	qword [bx+16]
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+120]
		wait fmul	qword [bx+72]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+104]
		wait fmul	qword [bx+88]
		wait fsubp	st1,st0
		wait fmulp	st1,st0
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+56]
		wait fmul	qword [bx]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+32]
		wait fmul	qword [bx+24]
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+112]
		wait fmul	qword [bx+72]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+104]
		wait fmul	qword [bx+80]
		wait fsubp	st1,st0
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+48]
		wait fmul	qword [bx+8]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+40]
		wait fmul	qword [bx+16]
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+120]
		wait fmul	qword [bx+64]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+96]
		wait fmul	qword [bx+88]
		wait fsubp	st1,st0
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+56]
		wait fmul	qword [bx+8]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+40]
		wait fmul	qword [bx+24]
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+112]
		wait fmul	qword [bx+64]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+96]
		wait fmul	qword [bx+80]
		wait fsubp	st1,st0
		wait fmulp	st1,st0
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+56]
		wait fmul	qword [bx+16]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+48]
		wait fmul	qword [bx+24]
		wait fsubp	st1,st0
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+104]
		wait fmul	qword [bx+64]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+96]
		wait fmul	qword [bx+72]
		wait fsubp	st1,st0
		wait fmulp	st1,st0
		wait faddp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
