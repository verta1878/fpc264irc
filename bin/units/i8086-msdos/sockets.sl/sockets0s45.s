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
	GLOBAL SOCKETS_$$_GETPROTOBYNAME$PCHAR$$POINTER
SOCKETS_$$_GETPROTOBYNAME$PCHAR$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		call	_getprotobyname
		pop	word [bp-4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	_getprotobyname
