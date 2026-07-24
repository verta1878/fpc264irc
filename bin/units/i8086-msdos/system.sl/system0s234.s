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
	GLOBAL SYSTEM$_$TDOUBLEREC_$__$$_FRACTION$$EXTENDED
SYSTEM$_$TDOUBLEREC_$__$$_FRACTION$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+4]
		wait fld	qword [bx]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_frac_real
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_frac_real
