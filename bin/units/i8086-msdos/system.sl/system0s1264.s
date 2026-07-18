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
	GLOBAL SYSTEM_$$_DEBUGWRITE$SHORTSTRING
SYSTEM_$$_DEBUGWRITE$SHORTSTRING:
		push	bp
		mov	bp,sp
		mov	si,word [bp+4]
		cld
		lodsb
		mov	cl,al
		xor	ch,ch
		jcxz	..@j26497
		mov	ah,2
..@j26498:
		lodsb
		mov	dl,al
		int	byte 33
		loop	..@j26498
..@j26497:
		mov	sp,bp
		pop	bp
		ret	2
