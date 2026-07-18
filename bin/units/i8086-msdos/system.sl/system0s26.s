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
	GLOBAL SYSTEM_$$_BSFDWORD$LONGWORD$$BYTE
SYSTEM_$$_BSFDWORD$LONGWORD$$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,2
		lea	bx,[TC_$SYSTEM_$$_BSF8BIT]
		xor	cl,cl
		mov	ax,word [bp+4]
		test	ax,ax
		jnz	..@j108_1
		or	ax,word [bp+6]
		jz	..@j109_1
		mov	cl,16
..@j108_1:
		test	al,al
		jnz	..@j109_1
		add	cl,8
		mov	al,ah
..@j109_1:
		xlatb
		add	al,cl
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$SYSTEM_$$_BSF8BIT
