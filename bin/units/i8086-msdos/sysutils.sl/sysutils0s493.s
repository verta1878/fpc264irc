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
	GLOBAL SYSUTILS_$$_DO_DISKDATA$BYTE$BOOLEAN$$INT64
SYSUTILS_$$_DO_DISKDATA$BYTE$BOOLEAN$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,74
		mov	ax,304
		push	ax
		call	SYSTEM_$$_RUNERROR$WORD
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_RUNERROR$WORD
