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
	GLOBAL PORTS$_$TPORT_$__$$_WRITEPORT$WORD$BYTE
PORTS$_$TPORT_$__$$_WRITEPORT$WORD$BYTE:
		push	bp
		mov	bp,sp
		mov	dx,word [bp+6]
		mov	al,byte [bp+4]
		out	dx,al
		mov	sp,bp
		pop	bp
		ret	6
