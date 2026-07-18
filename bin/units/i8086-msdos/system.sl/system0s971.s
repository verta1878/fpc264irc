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
	GLOBAL SYSTEM_$$_NOTHREADSETPRIORITY$WORD$LONGINT$$BOOLEAN
SYSTEM_$$_NOTHREADSETPRIORITY$WORD$LONGINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		call	SYSTEM_$$_NOTHREADERROR
		mov	byte [bp-1],0
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_NOTHREADERROR
