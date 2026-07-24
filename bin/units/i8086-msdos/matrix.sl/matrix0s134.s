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
	GLOBAL MATRIX_$$_minus$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED
MATRIX_$$_minus$TVECTOR3_EXTENDED$TVECTOR3_EXTENDED$$TVECTOR3_EXTENDED:
		push	bp
		mov	bp,sp
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	tword [bx]
		wait fld	tword [si]
		wait fsubrp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+10]
		wait fld	tword [bx+10]
		wait fsubrp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	tword [bx+10]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+20]
		wait fld	tword [bx+20]
		wait fsubrp	st1,st0
		mov	bx,word [bp+8]
		wait fstp	tword [bx+20]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	6
