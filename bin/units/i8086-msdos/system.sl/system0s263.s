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
	GLOBAL SYSTEM_$$_UPCASE$CHAR$$CHAR
SYSTEM_$$_UPCASE$CHAR$$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	al,byte [bp+4]
		mov	ah,0
		sub	ax,97
		cmp	ax,26
		jb	..@j3897
..@j3897:
		jc	..@j3895
		jmp	..@j3896
..@j3895:
		mov	al,byte [bp+4]
		mov	ah,0
		sub	ax,32
		mov	byte [bp-1],al
		jmp	..@j3900
..@j3896:
		mov	al,byte [bp+4]
		mov	byte [bp-1],al
..@j3900:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
