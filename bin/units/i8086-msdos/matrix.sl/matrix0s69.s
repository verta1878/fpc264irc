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
	GLOBAL MATRIX_$$_star$TVECTOR2_EXTENDED$EXTENDED$$TVECTOR2_EXTENDED
MATRIX_$$_star$TVECTOR2_EXTENDED$EXTENDED$$TVECTOR2_EXTENDED:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx]
		wait fmulp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+14]
		wait fld	tword [bp+4]
		wait fld	tword [bx+10]
		wait fmulp	st1,st0
		mov	bx,word [bp+16]
		wait fstp	tword [bx+10]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	14
