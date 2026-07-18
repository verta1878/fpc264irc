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
	GLOBAL SOCKETS_$$_HOSTADDRTOSTR$TINADDR$$ANSISTRING
SOCKETS_$$_HOSTADDRTOSTR$TINADDR$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	SOCKETS_$$_INET_NTOA$TINADDR$$ANSISTRING
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SOCKETS_$$_INET_NTOA$TINADDR$$ANSISTRING
