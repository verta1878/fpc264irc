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
	GLOBAL SYSUTILS_$$_TRYSTRTODATE$SHORTSTRING$TDATETIME$CHAR$$BOOLEAN
SYSUTILS_$$_TRYSTRTODATE$SHORTSTRING$TDATETIME$CHAR$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+10]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_TRYSTRTODATE$SHORTSTRING$TDATETIME$ANSISTRING$CHAR$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSUTILS_$$_TRYSTRTODATE$SHORTSTRING$TDATETIME$ANSISTRING$CHAR$$BOOLEAN
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
