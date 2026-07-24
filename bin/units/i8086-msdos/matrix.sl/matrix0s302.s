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
	GLOBAL MATRIX$_$TMATRIX3_SINGLE_$__$$_INVERSE$SINGLE$$TMATRIX3_SINGLE
MATRIX$_$TMATRIX3_SINGLE_$__$$_INVERSE$SINGLE$$TMATRIX3_SINGLE:
		push	bp
		mov	bp,sp
		wait fld1
		wait fdiv	dword [bp+4]
		wait fstp	dword [bp+4]
		DB	09bh
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		wait fld	dword [bx+32]
		wait fmul	dword [si+16]
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		wait fld	dword [bx+20]
		wait fmul	dword [si+28]
		wait fsubp	st1,st0
		wait fmul	dword [bp+4]
		mov	bx,word [bp+8]
		wait fstp	dword [bx]
		DB	09bh
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	dword [si+32]
		wait fmul	dword [bx+4]
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		wait fld	dword [bx+8]
		wait fmul	dword [si+28]
		wait fsubp	st1,st0
		wait fchs
		wait fmul	dword [bp+4]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+4]
		DB	09bh
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	dword [si+20]
		wait fmul	dword [bx+4]
		mov	si,word [bp+10]
		mov	bx,word [bp+10]
		wait fld	dword [bx+8]
		wait fmul	dword [si+16]
		wait fsubp	st1,st0
		wait fmul	dword [bp+4]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+8]
		DB	09bh
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	dword [si+32]
		wait fmul	dword [bx+12]
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	dword [si+20]
		wait fmul	dword [bx+24]
		wait fsubp	st1,st0
		wait fchs
		wait fmul	dword [bp+4]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+12]
		DB	09bh
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	dword [si+32]
		wait fmul	dword [bx]
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	dword [si+8]
		wait fmul	dword [bx+24]
		wait fsubp	st1,st0
		wait fmul	dword [bp+4]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+16]
		DB	09bh
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	dword [si+20]
		wait fmul	dword [bx]
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	dword [si+8]
		wait fmul	dword [bx+12]
		wait fsubp	st1,st0
		wait fchs
		wait fmul	dword [bp+4]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+20]
		DB	09bh
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	dword [si+28]
		wait fmul	dword [bx+12]
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	dword [si+16]
		wait fmul	dword [bx+24]
		wait fsubp	st1,st0
		wait fmul	dword [bp+4]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+24]
		DB	09bh
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	dword [si+28]
		wait fmul	dword [bx]
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	dword [si+4]
		wait fmul	dword [bx+24]
		wait fsubp	st1,st0
		wait fchs
		wait fmul	dword [bp+4]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+28]
		DB	09bh
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	dword [si+16]
		wait fmul	dword [bx]
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		wait fld	dword [si+4]
		wait fmul	dword [bx+12]
		wait fsubp	st1,st0
		wait fmul	dword [bp+4]
		mov	bx,word [bp+8]
		wait fstp	dword [bx+32]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	8
