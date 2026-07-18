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
	GLOBAL SYSUTILS_$$_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$$BOOLEAN
SYSUTILS_$$_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+10]
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
		push	ax
		call	SYSUTILS_$$_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$TFORMATSETTINGS$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSUTILS_$$_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$TFORMATSETTINGS$$BOOLEAN
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
