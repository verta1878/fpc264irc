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
	GLOBAL TYPINFO_$$_SETSETPROP$TOBJECT$ANSISTRING$ANSISTRING
TYPINFO_$$_SETSETPROP$TOBJECT$ANSISTRING$ANSISTRING:
		push	bp
		mov	bp,sp
		push	word [bp+8]
		push	word [bp+8]
		push	word [bp+6]
		call	TYPINFO_$$_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
		push	ax
		push	word [bp+4]
		call	TYPINFO_$$_SETSETPROP$TOBJECT$PPROPINFO$ANSISTRING
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TYPINFO_$$_SETSETPROP$TOBJECT$PPROPINFO$ANSISTRING
EXTERN	TYPINFO_$$_FINDPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
