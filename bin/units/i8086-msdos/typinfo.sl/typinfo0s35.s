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
	GLOBAL TYPINFO_$$_GETENUMPROP$TOBJECT$PPROPINFO$$ANSISTRING
TYPINFO_$$_GETENUMPROP$TOBJECT$PPROPINFO$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx]
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETORDPROP$TOBJECT$PPROPINFO$$INT64
		push	dx
		call	TYPINFO_$$_GETENUMNAME$PTYPEINFO$SMALLINT$$ANSISTRING
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TYPINFO_$$_GETENUMNAME$PTYPEINFO$SMALLINT$$ANSISTRING
EXTERN	TYPINFO_$$_GETORDPROP$TOBJECT$PPROPINFO$$INT64
