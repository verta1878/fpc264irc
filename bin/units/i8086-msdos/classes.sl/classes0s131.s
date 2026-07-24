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
	GLOBAL CLASSES$_$TPARSER_$__$$_ISNUMBER$$BOOLEAN
CLASSES$_$TPARSER_$__$$_ISNUMBER$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j2937
..@j2937:
		mov	al,0
		jnc	..@j2938
		inc	ax
..@j2938:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
