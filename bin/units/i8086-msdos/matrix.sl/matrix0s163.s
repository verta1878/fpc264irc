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
	GLOBAL MATRIX_$$_minus$TVECTOR4_SINGLE$SINGLE$$TVECTOR4_SINGLE
MATRIX_$$_minus$TVECTOR4_SINGLE$SINGLE$$TVECTOR4_SINGLE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		wait fld	dword [bp+4]
		wait fsubr	dword [bx]
		mov	bx,word [bp+10]
		wait fstp	dword [bx]
		DB	09bh
		mov	bx,word [bp+8]
		wait fld	dword [bp+4]
		wait fsubr	dword [bx+4]
		mov	bx,word [bp+10]
		wait fstp	dword [bx+4]
		DB	09bh
		mov	bx,word [bp+8]
		wait fld	dword [bp+4]
		wait fsubr	dword [bx+8]
		mov	bx,word [bp+10]
		wait fstp	dword [bx+8]
		DB	09bh
		mov	bx,word [bp+8]
		wait fld	dword [bp+4]
		wait fsubr	dword [bx+12]
		mov	bx,word [bp+10]
		wait fstp	dword [bx+12]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	8
