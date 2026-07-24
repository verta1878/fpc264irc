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
	GLOBAL SOCKETS_$$_INITWATT32$$BOOLEAN
SOCKETS_$$_INITWATT32$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	byte [TC_$SOCKETS_$$_WATT32READY],0
		jne	..@j5
		jmp	..@j6
..@j5:
		mov	byte [bp-1],1
		jmp	..@j3
..@j6:
		call	_sock_init
		cmp	dx,0
		jne	..@j10
		cmp	ax,0
		jne	..@j10
		jmp	..@j9
..@j9:
		mov	byte [TC_$SOCKETS_$$_WATT32READY],1
		jmp	..@j11
..@j10:
		mov	byte [TC_$SOCKETS_$$_WATT32READY],0
..@j11:
		mov	al,byte [TC_$SOCKETS_$$_WATT32READY]
		mov	byte [bp-1],al
..@j3:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	_sock_init
EXTERN	TC_$SOCKETS_$$_WATT32READY
