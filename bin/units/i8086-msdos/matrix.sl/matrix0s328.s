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
	GLOBAL MATRIX$_$TMATRIX3_DOUBLE_$__$$_DETERMINANT$$DOUBLE
MATRIX$_$TMATRIX3_DOUBLE_$__$$_DETERMINANT$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	si,word [bp+4]
		mov	di,word [bp+4]
		mov	bx,word [bp+4]
		wait fld	qword [bx+64]
		wait fmul	qword [di+32]
		mov	bx,word [bp+4]
		mov	di,word [bp+4]
		wait fld	qword [di+56]
		wait fmul	qword [bx+40]
		wait fsubp	st1,st0
		wait fmul	qword [si]
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		mov	di,word [bp+4]
		wait fld	qword [di+64]
		wait fmul	qword [bx+24]
		mov	bx,word [bp+4]
		mov	di,word [bp+4]
		wait fld	qword [di+48]
		wait fmul	qword [bx+40]
		wait fsubp	st1,st0
		wait fmul	qword [si+8]
		wait fsubp	st1,st0
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		mov	di,word [bp+4]
		wait fld	qword [di+56]
		wait fmul	qword [bx+24]
		mov	bx,word [bp+4]
		mov	di,word [bp+4]
		wait fld	qword [di+48]
		wait fmul	qword [bx+32]
		wait fsubp	st1,st0
		wait fmul	qword [si+16]
		wait faddp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
