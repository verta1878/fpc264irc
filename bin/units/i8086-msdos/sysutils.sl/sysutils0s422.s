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
	GLOBAL SYSUTILS_$$_SUPPORTS$IUNKNOWN$TCLASS$$BOOLEAN
SYSUTILS_$$_SUPPORTS$IUNKNOWN$TCLASS$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-4]
		push	ax
		call	SYSUTILS_$$_SUPPORTS$IUNKNOWN$TCLASS$formal$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_SUPPORTS$IUNKNOWN$TCLASS$formal$$BOOLEAN
