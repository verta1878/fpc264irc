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
	GLOBAL MATRIX_$$_starstar$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$EXTENDED
MATRIX_$$_starstar$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	tword [bx]
		wait fld	tword [si]
		wait fmulp	st1,st0
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+10]
		wait fld	tword [bx+10]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+20]
		wait fld	tword [bx+20]
		wait fmulp	st1,st0
		wait faddp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
