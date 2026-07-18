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
	GLOBAL MATRIX_$$_star$TMATRIX2_SINGLE$TVECTOR2_SINGLE$$TVECTOR2_SINGLE
MATRIX_$$_star$TMATRIX2_SINGLE$TVECTOR2_SINGLE$$TVECTOR2_SINGLE:
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
		mov	bx,word [bp+8]
		wait fstp	dword [bx]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si]
		wait fmul	dword [bx+8]
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+4]
		wait fmul	dword [bx+12]
		wait faddp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	dword [bx+4]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	6
