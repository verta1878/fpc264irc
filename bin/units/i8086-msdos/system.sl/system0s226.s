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
	GLOBAL SYSTEM$_$TEXTENDED80REC_$__$$_FRACTION$$EXTENDED
SYSTEM$_$TEXTENDED80REC_$__$$_FRACTION$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+4]
		push	word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		call	fpc_frac_real
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_frac_real
