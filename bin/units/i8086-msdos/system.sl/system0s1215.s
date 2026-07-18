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
	GLOBAL SYSTEM_$$_GETDIR$BYTE$UNICODESTRING
SYSTEM_$$_GETDIR$BYTE$UNICODESTRING:
		push	bp
		mov	bp,sp
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_DO_GETDIR$BYTE$UNICODESTRING
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_DO_GETDIR$BYTE$UNICODESTRING
