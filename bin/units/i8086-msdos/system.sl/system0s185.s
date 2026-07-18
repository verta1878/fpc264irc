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
	GLOBAL SYSTEM_$$_HI$BYTE$$BYTE
SYSTEM_$$_HI$BYTE$$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	al,byte [bp+4]
		mov	ah,0
		mov	cl,4
		shr	ax,cl
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
