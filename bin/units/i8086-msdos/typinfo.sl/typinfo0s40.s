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
	GLOBAL TYPINFO_$$_SETINT64PROP$TOBJECT$PPROPINFO$INT64
TYPINFO_$$_SETINT64PROP$TOBJECT$PPROPINFO$INT64:
		push	bp
		mov	bp,sp
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
