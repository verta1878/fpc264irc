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
	GLOBAL SYSUTILS_$$_WRAPTEXT$ANSISTRING$SMALLINT$$ANSISTRING
SYSUTILS_$$_WRAPTEXT$ANSISTRING$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	ax,word _$SYSUTILS$_Ld644
		push	ax
		mov	ax,word _$SYSUTILS$_Ld645
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_WRAPTEXT$ANSISTRING$ANSISTRING$TSYSCHARSET$SMALLINT$$ANSISTRING
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSUTILS_$$_WRAPTEXT$ANSISTRING$ANSISTRING$TSYSCHARSET$SMALLINT$$ANSISTRING
EXTERN	_$SYSUTILS$_Ld645
EXTERN	_$SYSUTILS$_Ld644
