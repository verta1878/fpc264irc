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
	GLOBAL SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRCAT$PCHAR$PCHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		call	SYSUTILS_$$_STREND$PCHAR$$PCHAR
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_STRCOPY$PCHAR$PCHAR$$PCHAR
EXTERN	SYSUTILS_$$_STREND$PCHAR$$PCHAR
