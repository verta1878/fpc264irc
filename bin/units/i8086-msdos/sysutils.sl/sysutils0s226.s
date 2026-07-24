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
	GLOBAL SYSUTILS_$$_STRTOBOOLDEF$ANSISTRING$BOOLEAN$$BOOLEAN
SYSUTILS_$$_STRTOBOOLDEF$ANSISTRING$BOOLEAN$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		lea	ax,[bp-1]
		push	ax
		call	SYSUTILS_$$_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN
		test	al,al
		je	..@j7476
		jmp	..@j7477
..@j7476:
		mov	al,byte [bp+4]
		mov	byte [bp-1],al
..@j7477:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN
