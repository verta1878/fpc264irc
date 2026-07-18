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
	GLOBAL SYSUTILS_$$_FINDCMDLINESWITCH$ANSISTRING$$BOOLEAN
SYSUTILS_$$_FINDCMDLINESWITCH$ANSISTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		mov	ax,word _$SYSUTILS$_Ld643
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_FINDCMDLINESWITCH$ANSISTRING$TSYSCHARSET$BOOLEAN$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS_$$_FINDCMDLINESWITCH$ANSISTRING$TSYSCHARSET$BOOLEAN$$BOOLEAN
EXTERN	_$SYSUTILS$_Ld643
