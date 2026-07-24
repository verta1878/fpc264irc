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
	GLOBAL STRUTILS_$$_ANSIREPLACESTR$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
STRUTILS_$$_ANSIREPLACESTR$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,1
		push	ax
		mov	ax,0
		push	ax
		call	STRUTILS_$$__MAKEREPLACEFLAGS$BOOLEAN$BOOLEAN$$TREPLACEFLAGS
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	STRUTILS_$$_STRINGREPLACE$crc429DFCAB
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	STRUTILS_$$_STRINGREPLACE$crc429DFCAB
EXTERN	STRUTILS_$$__MAKEREPLACEFLAGS$BOOLEAN$BOOLEAN$$TREPLACEFLAGS
