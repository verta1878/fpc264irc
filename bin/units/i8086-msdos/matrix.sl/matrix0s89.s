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
	GLOBAL MATRIX_$$_starstar$TVECTOR3_SINGLE$TVECTOR3_SINGLE$$SINGLE
MATRIX_$$_starstar$TVECTOR3_SINGLE$TVECTOR3_SINGLE$$SINGLE:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		wait fld	dword [bx]
		wait fmul	dword [si]
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+4]
		wait fmul	dword [bx+4]
		wait faddp	st1,st0
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		wait fld	dword [si+8]
		wait fmul	dword [bx+8]
		wait faddp	st1,st0
		wait fstp	dword [bp-4]
		DB	09bh
		wait fld	dword [bp-4]
		mov	sp,bp
		pop	bp
		ret	4
