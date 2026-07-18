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
	GLOBAL SYSTEM_$$_LOWERCASE$CHAR$$CHAR
SYSTEM_$$_LOWERCASE$CHAR$$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	al,byte [bp+4]
		mov	ah,0
		sub	ax,65
		cmp	ax,26
		jb	..@j3920
..@j3920:
		jc	..@j3918
		jmp	..@j3919
..@j3918:
		mov	al,byte [bp+4]
		mov	ah,0
		add	ax,32
		mov	byte [bp-1],al
		jmp	..@j3923
..@j3919:
		mov	al,byte [bp+4]
		mov	byte [bp-1],al
..@j3923:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
