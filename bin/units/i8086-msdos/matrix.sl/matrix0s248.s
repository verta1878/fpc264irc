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
	GLOBAL MATRIX$_$TMATRIX2_DOUBLE_$__$$_INVERSE$DOUBLE$$TMATRIX2_DOUBLE
MATRIX$_$TMATRIX2_DOUBLE_$__$$_INVERSE$DOUBLE$$TMATRIX2_DOUBLE:
		push	bp
		mov	bp,sp
		wait fld1
		wait fdiv	qword [bp+4]
		wait fstp	qword [bp+4]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	qword [bp+4]
		wait fmul	qword [bx+24]
		mov	bx,word [bp+12]
		wait fstp	qword [bx]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	qword [bx+8]
		wait fchs
		wait fmul	qword [bp+4]
		mov	bx,word [bp+12]
		wait fstp	qword [bx+8]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	qword [bx+16]
		wait fchs
		wait fmul	qword [bp+4]
		mov	bx,word [bp+12]
		wait fstp	qword [bx+16]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	qword [bp+4]
		wait fmul	qword [bx]
		mov	bx,word [bp+12]
		wait fstp	qword [bx+24]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	12
