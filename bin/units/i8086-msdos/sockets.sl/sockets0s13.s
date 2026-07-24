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
	GLOBAL SOCKETS_$$_FPRECVFROM$LONGINT$POINTER$LONGINT$LONGINT$PINETSOCKADDR$PSOCKLEN$$LONGINT
SOCKETS_$$_FPRECVFROM$LONGINT$POINTER$LONGINT$LONGINT$PINETSOCKADDR$PSOCKLEN$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		push	word [bp+6]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+16]
		push	word [bp+20]
		push	word [bp+18]
		call	_recvfrom
		add	sp,18
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	18
EXTERN	_recvfrom
