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
	GLOBAL MATRIX$_$TMATRIX3_SINGLE_$__$$_DETERMINANT$$SINGLE
MATRIX$_$TMATRIX3_SINGLE_$__$$_DETERMINANT$$SINGLE:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	si,word [bp+4]
		mov	di,word [bp+4]
		mov	bx,word [bp+4]
		wait fld	dword [bx+32]
		wait fmul	dword [di+16]
		mov	bx,word [bp+4]
		mov	di,word [bp+4]
		wait fld	dword [di+28]
		wait fmul	dword [bx+20]
		wait fsubp	st1,st0
		wait fmul	dword [si]
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		mov	di,word [bp+4]
		wait fld	dword [di+32]
		wait fmul	dword [bx+12]
		mov	bx,word [bp+4]
		mov	di,word [bp+4]
		wait fld	dword [di+24]
		wait fmul	dword [bx+20]
		wait fsubp	st1,st0
		wait fmul	dword [si+4]
		wait fsubp	st1,st0
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		mov	di,word [bp+4]
		wait fld	dword [di+28]
		wait fmul	dword [bx+12]
		mov	bx,word [bp+4]
		mov	di,word [bp+4]
		wait fld	dword [di+24]
		wait fmul	dword [bx+16]
		wait fsubp	st1,st0
		wait fmul	dword [si+8]
		wait faddp	st1,st0
		wait fstp	dword [bp-4]
		DB	09bh
		wait fld	dword [bp-4]
		mov	sp,bp
		pop	bp
		ret	2
