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
	GLOBAL SYSUTILS_$$_STRTOFLOATDEF$ANSISTRING$EXTENDED$$EXTENDED
SYSUTILS_$$_STRTOFLOATDEF$ANSISTRING$EXTENDED$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
		push	ax
		call	SYSUTILS_$$_STRTOFLOATDEF$ANSISTRING$EXTENDED$TFORMATSETTINGS$$EXTENDED
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSUTILS_$$_STRTOFLOATDEF$ANSISTRING$EXTENDED$TFORMATSETTINGS$$EXTENDED
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
