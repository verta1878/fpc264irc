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
	GLOBAL SOCKETS_$$_NTOHS$WORD$$WORD
SOCKETS_$$_NTOHS$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		call	SOCKETS_$$_HTONS$WORD$$WORD
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SOCKETS_$$_HTONS$WORD$$WORD
