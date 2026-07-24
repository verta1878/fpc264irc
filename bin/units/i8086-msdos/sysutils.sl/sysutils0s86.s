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
	GLOBAL SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,word _$SYSUTILS$_Ld623
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-32
		push	ax
		call	SYSUTILS_$$_INTERNALCHANGECASE$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_INTERNALCHANGECASE$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING
EXTERN	_$SYSUTILS$_Ld623
