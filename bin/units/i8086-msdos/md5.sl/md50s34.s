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
	GLOBAL MD5_$$_MD2MATCH$TMDDIGEST$TMDDIGEST$$BOOLEAN
MD5_$$_MD2MATCH$TMDDIGEST$TMDDIGEST$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	MD5_$$_MDMATCH$TMDDIGEST$TMDDIGEST$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	MD5_$$_MDMATCH$TMDDIGEST$TMDDIGEST$$BOOLEAN
