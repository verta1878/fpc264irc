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
	GLOBAL SYSUTILS_$$_FLOATTOSTR$CURRENCY$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_$$_FLOATTOSTR$CURRENCY$TFORMATSETTINGS$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+14]
		push	ax
		lea	ax,[bp+6]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,15
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRFINTL$crcBE2DB201
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSUTILS_$$_FLOATTOSTRFINTL$crcBE2DB201
