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
	GLOBAL DOS_$$_SETINTVEC$BYTE$FARPOINTER
DOS_$$_SETINTVEC$BYTE$FARPOINTER:
		push	bp
		mov	bp,sp
		push	ds
		mov	al,byte [bp+8]
		mov	ah,37
		lds	dx,[bp+4]
		int	byte 33
		pop	ds
		mov	sp,bp
		pop	bp
		ret	6
