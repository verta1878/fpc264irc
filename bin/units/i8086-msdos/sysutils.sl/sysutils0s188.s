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
	GLOBAL SYSUTILS_$$_FLOATTOSTR$SINGLE$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_$$_FLOATTOSTR$SINGLE$TFORMATSETTINGS$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,10
		wait fld	dword [bp+6]
		wait fstp	tword [bp-10]
		DB	09bh
		mov	ax,word [bp+10]
		push	ax
		lea	ax,[bp-10]
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
		mov	ax,2
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRFINTL$crcBE2DB201
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSUTILS_$$_FLOATTOSTRFINTL$crcBE2DB201
