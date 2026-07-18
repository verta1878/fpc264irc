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
	GLOBAL MATRIX$_$TMATRIX3_EXTENDED_$__$$_INVERSE$EXTENDED$$TMATRIX3_EXTENDED
MATRIX$_$TMATRIX3_EXTENDED_$__$$_INVERSE$EXTENDED$$TMATRIX3_EXTENDED:
		push	bp
		mov	bp,sp
		wait fld1
		wait fld	tword [bp+4]
		wait fdivp	st1,st0
		wait fstp	tword [bp+4]
		DB	09bh
		mov	si,word [bp+16]
		mov	bx,word [bp+16]
		wait fld	tword [bx+80]
		wait fld	tword [si+40]
		wait fmulp	st1,st0
		mov	si,word [bp+16]
		mov	bx,word [bp+16]
		wait fld	tword [bx+50]
		wait fld	tword [si+70]
		wait fmulp	st1,st0
		wait fsubp	st1,st0
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+16]
		mov	si,word [bp+16]
		wait fld	tword [si+80]
		wait fld	tword [bx+10]
		wait fmulp	st1,st0
		mov	si,word [bp+16]
		mov	bx,word [bp+16]
		wait fld	tword [bx+20]
		wait fld	tword [si+70]
		wait fmulp	st1,st0
		wait fsubp	st1,st0
		wait fchs
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx+10]
		DB	09bh
		mov	bx,word [bp+16]
		mov	si,word [bp+16]
		wait fld	tword [si+50]
		wait fld	tword [bx+10]
		wait fmulp	st1,st0
		mov	si,word [bp+16]
		mov	bx,word [bp+16]
		wait fld	tword [bx+20]
		wait fld	tword [si+40]
		wait fmulp	st1,st0
		wait fsubp	st1,st0
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx+20]
		DB	09bh
		mov	bx,word [bp+16]
		mov	si,word [bp+16]
		wait fld	tword [si+80]
		wait fld	tword [bx+30]
		wait fmulp	st1,st0
		mov	bx,word [bp+16]
		mov	si,word [bp+16]
		wait fld	tword [si+50]
		wait fld	tword [bx+60]
		wait fmulp	st1,st0
		wait fsubp	st1,st0
		wait fchs
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx+30]
		DB	09bh
		mov	bx,word [bp+16]
		mov	si,word [bp+16]
		wait fld	tword [si+80]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		mov	bx,word [bp+16]
		mov	si,word [bp+16]
		wait fld	tword [si+20]
		wait fld	tword [bx+60]
		wait fmulp	st1,st0
		wait fsubp	st1,st0
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx+40]
		DB	09bh
		mov	bx,word [bp+16]
		mov	si,word [bp+16]
		wait fld	tword [si+50]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		mov	bx,word [bp+16]
		mov	si,word [bp+16]
		wait fld	tword [si+20]
		wait fld	tword [bx+30]
		wait fmulp	st1,st0
		wait fsubp	st1,st0
		wait fchs
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx+50]
		DB	09bh
		mov	bx,word [bp+16]
		mov	si,word [bp+16]
		wait fld	tword [si+70]
		wait fld	tword [bx+30]
		wait fmulp	st1,st0
		mov	bx,word [bp+16]
		mov	si,word [bp+16]
		wait fld	tword [si+40]
		wait fld	tword [bx+60]
		wait fmulp	st1,st0
		wait fsubp	st1,st0
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx+60]
		DB	09bh
		mov	bx,word [bp+16]
		mov	si,word [bp+16]
		wait fld	tword [si+70]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		mov	bx,word [bp+16]
		mov	si,word [bp+16]
		wait fld	tword [si+10]
		wait fld	tword [bx+60]
		wait fmulp	st1,st0
		wait fsubp	st1,st0
		wait fchs
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx+70]
		DB	09bh
		mov	bx,word [bp+16]
		mov	si,word [bp+16]
		wait fld	tword [si+40]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		mov	bx,word [bp+16]
		mov	si,word [bp+16]
		wait fld	tword [si+10]
		wait fld	tword [bx+30]
		wait fmulp	st1,st0
		wait fsubp	st1,st0
		wait fld	tword [bp+4]
		wait fmulp	st1,st0
		mov	bx,word [bp+14]
		wait fstp	tword [bx+80]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	14
