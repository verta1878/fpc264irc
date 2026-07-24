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
	GLOBAL TYPINFO_$$_GETFLOATPROP$TOBJECT$ANSISTRING$$EXTENDED
TYPINFO_$$_GETFLOATPROP$TOBJECT$ANSISTRING$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [bp+6]
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
		push	ax
		call	TYPINFO_$$_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TYPINFO_$$_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED
EXTERN	TYPINFO_$$_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
