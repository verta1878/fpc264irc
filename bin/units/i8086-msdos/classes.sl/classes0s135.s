BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TPARSER_$__$$_GETHEXVALUE$CHAR$$BYTE
CLASSES$_$TPARSER_$__$$_GETHEXVALUE$CHAR$$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	al,byte [bp+4]
		cmp	al,48
		jb	..@j2964
		sub	al,48
		sub	al,9
		jbe	..@j2965
		sub	al,8
		jb	..@j2964
		sub	al,5
		jbe	..@j2966
		sub	al,27
		jb	..@j2964
		sub	al,5
		jbe	..@j2967
		jmp	..@j2964
..@j2965:
		mov	al,byte [bp+4]
		mov	ah,0
		sub	ax,48
		mov	byte [bp-1],al
		jmp	..@j2963
..@j2966:
		mov	al,byte [bp+4]
		mov	ah,0
		sub	ax,55
		mov	byte [bp-1],al
		jmp	..@j2963
..@j2967:
		mov	al,byte [bp+4]
		mov	ah,0
		sub	ax,87
		mov	byte [bp-1],al
		jmp	..@j2963
..@j2964:
..@j2963:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
