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
	GLOBAL SYSUTILS_$$_FLOATTOSTR$DOUBLE$$ANSISTRING
SYSUTILS_$$_FLOATTOSTR$DOUBLE$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+12]
		push	ax
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
		push	ax
		call	SYSUTILS_$$_FLOATTOSTR$DOUBLE$TFORMATSETTINGS$$ANSISTRING
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSUTILS_$$_FLOATTOSTR$DOUBLE$TFORMATSETTINGS$$ANSISTRING
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
