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
	GLOBAL TYPINFO_$$_SETTOSTRING$PPROPINFO$SMALLINT$$ANSISTRING
TYPINFO_$$_SETTOSTRING$PPROPINFO$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	TYPINFO_$$_SETTOSTRING$PPROPINFO$SMALLINT$BOOLEAN$$ANSISTRING
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TYPINFO_$$_SETTOSTRING$PPROPINFO$SMALLINT$BOOLEAN$$ANSISTRING
