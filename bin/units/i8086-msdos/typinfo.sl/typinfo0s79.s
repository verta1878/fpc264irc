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
	GLOBAL TYPINFO_$$_SETFLOATPROP$TOBJECT$ANSISTRING$EXTENDED
TYPINFO_$$_SETFLOATPROP$TOBJECT$ANSISTRING$EXTENDED:
		push	bp
		mov	bp,sp
		push	word [bp+16]
		push	word [bp+16]
		push	word [bp+14]
		call	TYPINFO_$$_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
		push	ax
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_SETFLOATPROP$TOBJECT$PPROPINFO$EXTENDED
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	TYPINFO_$$_SETFLOATPROP$TOBJECT$PPROPINFO$EXTENDED
EXTERN	TYPINFO_$$_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
