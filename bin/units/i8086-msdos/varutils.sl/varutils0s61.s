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
	GLOBAL VARUTILS_$$_DUMPVARIANT$TEXT$SHORTSTRING$VARIANT
VARUTILS_$$_DUMPVARIANT$TEXT$SHORTSTRING$VARIANT:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+22]
		push	ax
		mov	ax,word [bp+20]
		push	ax
		lea	ax,[bp+4]
		push	ax
		call	VARUTILS_$$_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA
		mov	sp,bp
		pop	bp
		ret	20
EXTERN	VARUTILS_$$_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA
