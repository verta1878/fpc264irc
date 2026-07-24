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
	GLOBAL CONVUTILS_$$_CHECKFAMILY$TCONVFAMILY$$BOOLEAN
CONVUTILS_$$_CHECKFAMILY$TCONVFAMILY$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [TC_$CONVUTILS_$$_THEFAMILIES]
		test	bx,bx
		je	..@j140
		mov	bx,word [bx-2]
		inc	bx
..@j140:
		cmp	bx,word [bp+4]
		mov	al,0
		jle	..@j141
		inc	ax
..@j141:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$CONVUTILS_$$_THEFAMILIES
