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
	GLOBAL DOS_$$_GETINTVEC$BYTE$FARPOINTER
DOS_$$_GETINTVEC$BYTE$FARPOINTER:
		push	bp
		mov	bp,sp
		mov	al,byte [bp+6]
		mov	ah,53
		int	byte 33
		xchg	ax,bx
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	ax,es
		mov	word [bx+2],ax
		mov	sp,bp
		pop	bp
		ret	4
