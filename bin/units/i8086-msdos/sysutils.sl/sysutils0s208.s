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
	GLOBAL SYSUTILS_$$_CURRTOSTRF$CURRENCY$TFLOATFORMAT$SMALLINT$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_$$_CURRTOSTRF$CURRENCY$TFLOATFORMAT$SMALLINT$TFORMATSETTINGS$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+20]
		push	ax
		push	word [bp+18]
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,19
		push	ax
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRF$crc81228EB2
		mov	sp,bp
		pop	bp
		ret	18
EXTERN	SYSUTILS_$$_FLOATTOSTRF$crc81228EB2
