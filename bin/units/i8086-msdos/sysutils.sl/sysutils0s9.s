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
	GLOBAL SYSUTILS_$$_ANSISTRSCAN$PCHAR$CHAR$$PCHAR
SYSUTILS_$$_ANSISTRSCAN$PCHAR$CHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_STRSCAN$PCHAR$CHAR$$PCHAR
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_STRSCAN$PCHAR$CHAR$$PCHAR
