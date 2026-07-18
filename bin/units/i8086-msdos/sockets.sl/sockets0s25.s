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
	GLOBAL SOCKETS_$$_FD_CLR$LONGINT$TFDSET
SOCKETS_$$_FD_CLR$LONGINT$TFDSET:
		push	bp
		mov	bp,sp
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		call	SOCKETS_$$_FPFD_CLR$LONGINT$TFDSET
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SOCKETS_$$_FPFD_CLR$LONGINT$TFDSET
