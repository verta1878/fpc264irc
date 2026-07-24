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
	GLOBAL SYSUTILS_$$_FLOATTOTEXT$PCHAR$EXTENDED$TFLOATFORMAT$SMALLINT$SMALLINT$$LONGINT
SYSUTILS_$$_FLOATTOTEXT$PCHAR$EXTENDED$TFLOATFORMAT$SMALLINT$SMALLINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+22]
		push	word [bp+20]
		push	word [bp+18]
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
		push	ax
		call	SYSUTILS_$$_FLOATTOTEXT$crc274C3314
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	20
EXTERN	SYSUTILS_$$_FLOATTOTEXT$crc274C3314
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
