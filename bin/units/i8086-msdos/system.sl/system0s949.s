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
	GLOBAL SYSTEM_$$_SETTHREADMANAGER$TTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
SYSTEM_$$_SETTHREADMANAGER$TTHREADMANAGER$TTHREADMANAGER$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_GETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
EXTERN	SYSTEM_$$_GETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
