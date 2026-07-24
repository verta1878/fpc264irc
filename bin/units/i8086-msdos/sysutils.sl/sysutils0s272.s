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
	GLOBAL SYSUTILS_$$_TIMESTAMPTOMSECS$TTIMESTAMP$$COMP
SYSUTILS_$$_TIMESTAMPTOMSECS$TTIMESTAMP$$COMP:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		wait fild	dword [bx+4]
		wait fild	qword [_$SYSUTILS$_Ld650]
		wait fmulp	st1,st0
		mov	bx,word [bp+4]
		wait fild	dword [bx]
		wait faddp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		wait fild	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	_$SYSUTILS$_Ld650
