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
	GLOBAL SYSTEM_$$_SETNOTHREADMANAGER
SYSTEM_$$_SETNOTHREADMANAGER:
		push	bp
		mov	bp,sp
		mov	ax,word TC_$SYSTEM_$$_NOTHREADMANAGER
		push	ax
		call	SYSTEM_$$_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
EXTERN	TC_$SYSTEM_$$_NOTHREADMANAGER
