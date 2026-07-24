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
	GLOBAL MATRIX_$$_assign$TMATRIX4_EXTENDED$$TMATRIX3_SINGLE
MATRIX_$$_assign$TMATRIX4_EXTENDED$$TMATRIX3_SINGLE:
		push	bp
		mov	bp,sp
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	tword [bx]
		wait fstp	dword [si]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+10]
		wait fstp	dword [bx+4]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+20]
		wait fstp	dword [bx+8]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+40]
		wait fstp	dword [bx+12]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+50]
		wait fstp	dword [bx+16]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+60]
		wait fstp	dword [bx+20]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+80]
		wait fstp	dword [bx+24]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+90]
		wait fstp	dword [bx+28]
		DB	09bh
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	tword [si+100]
		wait fstp	dword [bx+32]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	4
