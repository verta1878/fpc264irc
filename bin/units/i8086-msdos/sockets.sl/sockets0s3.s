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
	GLOBAL SOCKETS_$$_DONEWATT32
SOCKETS_$$_DONEWATT32:
		push	bp
		mov	bp,sp
		cmp	byte [TC_$SOCKETS_$$_WATT32READY],0
		jne	..@j16
		jmp	..@j17
..@j16:
		call	_sock_exit
		mov	byte [TC_$SOCKETS_$$_WATT32READY],0
..@j17:
		mov	sp,bp
		pop	bp
		ret
EXTERN	_sock_exit
EXTERN	TC_$SOCKETS_$$_WATT32READY
