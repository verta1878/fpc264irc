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
	GLOBAL TYPINFO_$$_GETPROPLIST$TOBJECT$PPROPLIST$$SMALLINT
TYPINFO_$$_GETPROPLIST$TOBJECT$PPROPLIST$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	TYPINFO_$$_GETPROPLIST$TCLASS$PPROPLIST$$SMALLINT
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TYPINFO_$$_GETPROPLIST$TCLASS$PPROPLIST$$SMALLINT
