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
	GLOBAL SYSUTILS_$$_TRYSTRTODATE$ANSISTRING$TDATETIME$$BOOLEAN
SYSUTILS_$$_TRYSTRTODATE$ANSISTRING$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		push	word [TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+10]
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_TRYSTRTODATE$ANSISTRING$TDATETIME$ANSISTRING$CHAR$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_TRYSTRTODATE$ANSISTRING$TDATETIME$ANSISTRING$CHAR$$BOOLEAN
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
