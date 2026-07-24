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
	GLOBAL SYSTEM_$$_BSRQWORD$QWORD$$BYTE
SYSTEM_$$_BSRQWORD$QWORD$$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,2
		lea	bx,[TC_$SYSTEM_$$_BSR8BIT]
		mov	cl,48
		mov	ax,word [bp+10]
		test	ax,ax
		jnz	..@j112_1
		mov	cl,32
		or	ax,word [bp+8]
		jnz	..@j112_1
		mov	cl,16
		or	ax,word [bp+6]
		jnz	..@j112_1
		xor	cl,cl
		mov	ax,word [bp+4]
..@j112_1:
		test	ah,ah
		jz	..@j113_1
		add	cl,8
		mov	al,ah
..@j113_1:
		xlatb
		add	al,cl
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	TC_$SYSTEM_$$_BSR8BIT
