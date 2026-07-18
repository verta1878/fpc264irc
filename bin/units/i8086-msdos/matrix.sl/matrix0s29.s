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
	GLOBAL MATRIX$_$TVECTOR2_DOUBLE_$__$$_SQUARED_LENGTH$$DOUBLE
MATRIX$_$TVECTOR2_DOUBLE_$__$$_SQUARED_LENGTH$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		wait fld	qword [bx]
		wait fmul	qword [si]
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		wait fld	qword [si+8]
		wait fmul	qword [bx+8]
		wait faddp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
