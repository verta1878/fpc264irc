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
	GLOBAL MATRIX$_$TMATRIX2_EXTENDED_$__$$_INVERSE$EXTENDED$$TMATRIX2_EXTENDED
MATRIX$_$TMATRIX2_EXTENDED_$__$$_INVERSE$EXTENDED$$TMATRIX2_EXTENDED:
		push	bp
		mov	bp,sp
		wait fld1
		wait fld	tword [bp+4]
		wait fdivp	st1,st0
		wait fstp	tword [bp+4]
		DB	09bh
		mov	bx,word [bp+16]
		wait fld	tword [bp+4]
		wait fld	tword [bx+30]
		wait fmulp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+16]
		wait fld	tword [bx+10]
		wait fchs
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx+10]
		DB	09bh
		mov	bx,word [bp+16]
		wait fld	tword [bx+20]
		wait fchs
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx+20]
		DB	09bh
		mov	bx,word [bp+16]
		wait fld	tword [bp+4]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx+30]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	14
