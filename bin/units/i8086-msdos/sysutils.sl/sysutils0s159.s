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
	GLOBAL SYSUTILS_$$_FORMATBUF$formal$LONGWORD$formal$LONGWORD$array_of_const$$LONGWORD
SYSUTILS_$$_FORMATBUF$formal$LONGWORD$formal$LONGWORD$array_of_const$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+18]
		push	ax
		push	word [bp+16]
		push	word [bp+14]
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,word TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
		push	ax
		call	SYSUTILS_$$_FORMATBUF$crc0DCC39D0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	SYSUTILS_$$_FORMATBUF$crc0DCC39D0
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
