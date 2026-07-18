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
	GLOBAL CONVUTILS$_$TCONVTYPEFACTOR_$__$$_FROMCOMMON$DOUBLE$$DOUBLE
CONVUTILS$_$TCONVTYPEFACTOR_$__$$_FROMCOMMON$DOUBLE$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+12]
		wait fld	qword [bp+4]
		wait fdiv	qword [bx+8]
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	10
