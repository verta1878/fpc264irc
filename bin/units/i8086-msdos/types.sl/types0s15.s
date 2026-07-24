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
	GLOBAL TYPES$_$TPOINT_$__$$_DISTANCE$TPOINT$$EXTENDED
TYPES$_$TPOINT_$__$$_DISTANCE$TPOINT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+4]
		wait fild	dword [bx]
		mov	bx,word [bp+6]
		wait fild	dword [bx]
		wait fsubp	st1,st0
		wait fmul	st0,st0
		mov	bx,word [bp+4]
		wait fild	dword [bx+4]
		mov	bx,word [bp+6]
		wait fild	dword [bx+4]
		wait fsubp	st1,st0
		wait fmul	st0,st0
		wait faddp	st1,st0
		wait fsqrt
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
