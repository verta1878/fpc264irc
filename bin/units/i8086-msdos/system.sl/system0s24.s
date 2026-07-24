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
	GLOBAL SYSTEM_$$_BSFWORD$WORD$$BYTE
SYSTEM_$$_BSFWORD$WORD$$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,2
		lea	bx,[TC_$SYSTEM_$$_BSF8BIT]
		xor	cl,cl
		mov	ax,word [bp+4]
		test	al,al
		jnz	..@j101_1
		or	al,ah
		jz	..@j101_1
		add	cl,8
..@j101_1:
		xlatb
		add	al,cl
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_BSF8BIT
