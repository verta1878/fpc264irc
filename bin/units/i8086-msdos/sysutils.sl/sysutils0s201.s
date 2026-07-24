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
	GLOBAL SYSUTILS_$$_FLOATTOSTRF$DOUBLE$TFLOATFORMAT$SMALLINT$SMALLINT$$ANSISTRING
SYSUTILS_$$_FLOATTOSTRF$DOUBLE$TFLOATFORMAT$SMALLINT$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+20]
		push	ax
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
		push	ax
		call	SYSUTILS_$$_FLOATTOSTRF$crc61419391
		mov	sp,bp
		pop	bp
		ret	18
EXTERN	SYSUTILS_$$_FLOATTOSTRF$crc61419391
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
