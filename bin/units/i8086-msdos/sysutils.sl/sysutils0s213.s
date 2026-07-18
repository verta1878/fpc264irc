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
	GLOBAL SYSUTILS_$$_CURRTOSTR$CURRENCY$$ANSISTRING
SYSUTILS_$$_CURRTOSTR$CURRENCY$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRF$CURRENCY$TFLOATFORMAT$SMALLINT$SMALLINT$$ANSISTRING
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSUTILS_$$_FLOATTOSTRF$CURRENCY$TFLOATFORMAT$SMALLINT$SMALLINT$$ANSISTRING
