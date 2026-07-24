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
	GLOBAL SOCKETS_$$_STRTONETADDR$ANSISTRING$$TINADDR
SOCKETS_$$_STRTONETADDR$ANSISTRING$$TINADDR:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		call	SOCKETS_$$_INET_ADDR$ANSISTRING$$LONGWORD
		mov	bx,word [bp+6]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SOCKETS_$$_INET_ADDR$ANSISTRING$$LONGWORD
