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
	GLOBAL TYPINFO_$$_SETTOSTRING$PPROPINFO$SMALLINT$BOOLEAN$$ANSISTRING
TYPINFO_$$_SETTOSTRING$PPROPINFO$SMALLINT$BOOLEAN$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		push	word [bp+6]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	TYPINFO_$$_SETTOSTRING$PTYPEINFO$SMALLINT$BOOLEAN$$ANSISTRING
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	TYPINFO_$$_SETTOSTRING$PTYPEINFO$SMALLINT$BOOLEAN$$ANSISTRING
