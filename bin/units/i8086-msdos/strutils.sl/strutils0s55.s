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
	GLOBAL STRUTILS_$$_NATURALCOMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
STRUTILS_$$_NATURALCOMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		push	word [bp+4]
		mov	al,byte [TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+3]
		mov	ah,0
		push	ax
		mov	al,byte [TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+2]
		mov	ah,0
		push	ax
		call	STRUTILS_$$_NATURALCOMPARETEXT$ANSISTRING$ANSISTRING$CHAR$CHAR$$SMALLINT
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	STRUTILS_$$_NATURALCOMPARETEXT$ANSISTRING$ANSISTRING$CHAR$CHAR$$SMALLINT
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
