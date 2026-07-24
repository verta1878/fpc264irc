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
	GLOBAL VARUTILS_$$_DUMPVARIANT$TEXT$TVARDATA
VARUTILS_$$_DUMPVARIANT$TEXT$TVARDATA:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word _$VARUTILS$_Ld13
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	VARUTILS_$$_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	VARUTILS_$$_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA
EXTERN	_$VARUTILS$_Ld13
